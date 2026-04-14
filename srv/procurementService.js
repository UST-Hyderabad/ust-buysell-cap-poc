const cds = require("@sap/cds");

function mapAllFields(data) {
    return {
        salesOrder: data.SalesContract,

        // Organization
        salesOrganization: data.SalesOrganization,
        distributionChannel: data.DistributionChannel,
        division: data.OrganizationDivision,
        salesGroup: data.SalesGroup,
        salesOffice: data.SalesOffice,
        soldToParty: data.SoldToParty,

        // Dates
        createdOn: data.CreationDate,
        createdBy: data.CreatedByUser,
        lastChangedOn: data.LastChangeDate,
        documentDate: data.SalesContractDate,
        purchaseOrderDate: data.CustomerPurchaseOrderDate,
        validityStartDate: data.SalesContractValidityStartDate,
        validityEndDate: data.SalesContractValidityEndDate,

        // Commercial
        netValue: Number(data.TotalNetAmount),

        currency: data.TransactionCurrency
            ? { code: data.TransactionCurrency }
            : null,

        // Document
        salesDocumentType: data.SalesContractType,
        customerPurchaseOrder: data.PurchaseOrderByCustomer,
        purchaseOrderType: data.CustomerPurchaseOrderType,
        precedingDocument: data.ReferenceSDDocument,

        // Payment
        paymentMethod: data.PaymentMethod,

        // Status
        approvalStatus: data.SalesDocApprovalStatus,
        approvalReason: data.SalesContractApprovalReason,
        overallProcessingStatus: data.OverallSDProcessStatus,
        overallCreditStatus: data.TotalCreditCheckStatus,
        overallRejectionStatus: data.OverallSDDocumentRejectionSts
    };
}

function mapSalesOrderItem(data) {
    return {
        // Keys
        salesOrder: data.SalesContract,
        itemNumber: data.SalesContractItem,

        // Basic
        wbsElement: data.WBSElement,
        material: data.Material,
        enteredMaterial: data.Material,
        customerMaterial: data.MaterialByCustomer,

        shortText: data.SalesContractItemText,
        itemCategory: data.SalesContractItemCategory,

        higherLevelItem: data.HigherLevelItem,

        // Quantity
        orderQuantity: Number(data.RequestedQuantity),
        salesUnit: data.RequestedQuantityUnit,

        // Weight
        grossWeight: Number(data.ItemGrossWeight),
        netWeight: Number(data.ItemNetWeight),
        weightUnit: data.ItemWeightUnit,

        // Volume
        volume: Number(data.ItemVolume),
        volumeUnit: data.ItemVolumeUnit,

        // Pricing
        netValueItem: Number(data.NetAmount),

        currency: data.TransactionCurrency
            ? { code: data.TransactionCurrency }
            : null,

        // Material / Plant
        materialGroup: data.MaterialGroup,
        plant: data.ProductionPlant,
        storageLocation: data.StorageLocation,
        shippingPoint: data.ShippingPoint,

        // Batch
        batch: data.Batch,

        // Incoterms (if you later extend CDS)
        // incotermsClassification: data.IncotermsClassification,

        // Payment
        // (not directly in your item CDS)

        // Status
        rejectionReason: data.SalesDocumentRjcnReason,
        billingBlockItem: data.ItemBillingBlockReason,

        // Profitability
        profitCenter: data.ProfitCenter,

        // Reference
        referenceDocument: data.ReferenceSDDocument,
        referenceItem: data.ReferenceSDDocumentItem,

        // Validity
        validityStartDate: data.SalesContractValidityStartDate,
        validityEndDate: data.SalesContractValidityEndDate
    };
}

module.exports = cds.service.impl(async function () {

    const s4SalesContract = await cds.connect.to("ZAPI_SALES_CONTRACT_SRV");

    this.on('UpsertSalesContractData', async (req) => {

        try {

            const headers = await s4SalesContract.run(
                SELECT.from('A_SalesContract').limit(1)
            );

            if (!headers.length) {
                return { message: 'No header data found' };
            }
            
            const contractIds = headers.map(h => h.SalesContract);

            const items = await s4SalesContract.run(
                SELECT.from('A_SalesContractItem')
                    .where({ SalesContract: { in: contractIds } })
            );

            const itemsByContract = {};
            for (const item of items) {
                if (!itemsByContract[item.SalesContract]) {
                    itemsByContract[item.SalesContract] = [];
                }
                itemsByContract[item.SalesContract].push(item);
            }
            console.log(itemsByContract);
            for (const header of headers) {
                console.log(` Processing Contract: ${header.SalesContract}`);
                const contractItems = itemsByContract[header.SalesContract] || [];
                const wbsList = contractItems
                    .map(i => i.WBSElement)
                    .filter(Boolean);

                const uniqueWBS = [...new Set(wbsList)];
                const wbsElement = uniqueWBS.length ? uniqueWBS[0] : null;
                const mappedHeader = mapAllFields(header);

                mappedHeader.wbsElement = wbsElement;
                
                await UPSERT.into('SalesOrderHeader').entries(mappedHeader);
                const mappedItems = contractItems.map(item => {
                    const mappedItem = mapSalesOrderItem(item);
                    mappedItem.salesOrder = mappedHeader.salesOrder;
                    console.log(
                        ` Item: ${item.SalesContractItem} | WBS: ${item.WBSElement || 'N/A'}`
                    );

                    return mappedItem;
                });

               
                if (mappedItems.length > 0) {
                    await UPSERT.into('SalesOrderItem').entries(mappedItems);
                }

                console.log(` Finished Contract: ${header.SalesContract}`);
            }

            return { message: 'Header & Item upsert successful' };

        } catch (error) {
            console.error("Error occurred:", error);
            return { error: error.message };
        }

    });

});