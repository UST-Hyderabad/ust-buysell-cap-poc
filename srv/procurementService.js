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

    this.on('UpsertSalesContract', async (req) => {

        try {

            const headerData = await s4SalesContract.run(
                SELECT.from('A_SalesContract').limit(10)
            );

            if (!headerData.length) {
                return { message: 'No data found' };
            }

            for (const header of headerData) {

                // ✅ Get items for each contract
                const items = await s4SalesContract.run(
                    SELECT.from('A_SalesContractItem')
                        .where({ SalesContract: header.SalesContract })
                );

                // ✅ Extract WBS
                const wbsList = items
                    .map(i => i.WBSElement)
                    .filter(Boolean);

                const uniqueWBS = [...new Set(wbsList)];

                let wbsElement = null;

                if (uniqueWBS.length > 0) {
                    wbsElement = uniqueWBS[0];
                }

                // ✅ Map header
                const mapped = mapAllFields(header);

                mapped.wbsElement = wbsElement;

                // ✅ UPSERT each record
                await UPSERT.into('SalesOrderHeader').entries(mapped);

                console.log(`Upserted: ${mapped.salesOrder}`);
            }

            return { message: 'Bulk upsert successful' };

        } catch (error) {
            console.error("Error occurred:", error);
            return { error: error.message };
        }

    });

    this.on('UpsertSalesContractItem', async (req) => {

        const data = await s4SalesContract.run(
            SELECT.from('A_SalesContractItem').limit(5)
        );
        console.log(data);
        if (!data.length) {
            return { message: 'No item data found' };
        }

        for (const item of data) {

            const mapped = mapSalesOrderItem(item);

            await UPSERT.into('SalesOrderItem').entries(mapped);
        }

        return { message: 'Item upsert successful' };
    });

});