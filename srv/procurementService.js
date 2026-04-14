const cds = require('@sap/cds');
const { INSERT, UPSERT, SELECT } = require('@sap/cds/lib/ql/cds-ql');

module.exports = cds.service.impl(async function () {
    const { PurchaseDocumentHeader, PurchaseOrderItem } = this.entities;




    const PO_api = await cds.connect.to('ZAPI_PURCHASEORDER_PROCESS_SRV');

    this.on('LoadPOData', async (req) => {

        function parseODataDate(odataDateStr) {
            if (!odataDateStr) return null;
            const match = odataDateStr.match(/\/Date\((.*?)\)\//);
            if (match && match[1]) {

                return new Date(parseInt(match[1], 10));
            }
            return null;
        }



        const resultEkko = await PO_api.send({
            method: 'GET',
            path: '/A_PurOrdAccountAssignment?$select=PurchaseOrder,PurchaseOrderItem,WBSElementInternalID&$filter=WBSElementExternalID ne null'
        });

        const purchaseOrders = [];
        const purchaseOrderItems = [];
        await Promise.all(

            resultEkko.map(async (item) => {
                try {
                    const PurchaseOrders = item.PurchaseOrder;
                    const PurchaseOrderItems = item.PurchaseOrderItem;
                    const WBSElementInternalID = item.WBSElementInternalID;

                    let res_PurchaseOrders = await PO_api.send({
                        method: 'GET',
                        path: `/A_PurchaseOrder?$filter=PurchaseOrder eq '${PurchaseOrders}'`
                    });
                   // console.log(res_PurchaseOrders);

                    res_PurchaseOrders = res_PurchaseOrders.map(item => ({
                        ...item,
                        WBSElement: WBSElementInternalID
                    }));
                    purchaseOrders.push(...res_PurchaseOrders);
                    //doubt to get all Items or only Items with WBS Element but leads data inconsistency?
                    let res_PurchaseOrderItems = await PO_api.send({
                        method: 'GET',
                        path: `A_PurchaseOrderItem?$format=json&$filter=PurchaseOrder eq '${PurchaseOrders}' and PurchaseOrderItem eq '${PurchaseOrderItems}'`
                    });
                    // console.log(res_PurchaseOrderItems);

                    res_PurchaseOrderItems = res_PurchaseOrderItems.map(item => ({
                        ...item,
                        WBSElement: WBSElementInternalID
                    }));
                    purchaseOrderItems.push(...res_PurchaseOrderItems);
                } catch (error) {
                    console.log(error);
                }

            })
        )
        

        const vPurchaseDocumentHeader = purchaseOrders.map(po => ({
            EBELN: po.PurchaseOrder || '',
            PSPNR: po.WBSElement || '',
            BUKRS: po.CompanyCode || '',
            BSART: po.PurchaseOrderType || '',
            LOEKZ: po.PurchasingDocumentDeletionCode || '',
            STATU: po.PurchasingProcessingStatus || '',
            AEDAT: parseODataDate(po.CreationDate),
            ERNAM: po.CreatedByUser || '',
            LIFNR: po.Supplier || '',
            SPRAS: po.Language || '',
            ZTERM: po.PaymentTerms || '',
            ZBD1T: parseFloat(po.CashDiscount1Days) || 0,
            ZBD2T: parseFloat(po.CashDiscount2Days) || 0,
            ZBD1P: parseFloat(po.CashDiscount1Percent) || 0,
            ZBD2P: parseFloat(po.CashDiscount2Percent) || 0,
            EKORG: po.PurchasingOrganization || '',
            EKGRP: po.PurchasingGroup || '',
            WAERS: po.DocumentCurrency || '',
            WKURS: parseFloat(po.ExchangeRate) || 0,
            KUFIX: po.ExchangeRateIsFixed ? 'X' : '',
            BEDAT: parseODataDate(po.PurchaseOrderDate),
            KDATB: parseODataDate(po.ValidityStartDate),
            KDATE: parseODataDate(po.ValidityEndDate),
            SUBMI: po.PurchasingCollectiveNumber || '',
            VERKF: po.SupplierRespSalesPersonName || '',
            TELF1: po.SupplierPhoneNumber || '',
            LLIEF: po.SupplyingSupplier || '',
            RESWK: po.SupplyingPlant || '',
            INCO1: po.IncotermsClassification || '',
            LIFRE: po.InvoicingParty || '',
            FRGRL: po.ReleaseIsNotCompleted ? 'X' : ''
        }));
        //console.log(vPurchaseDocumentHeader)

        await UPSERT.into(PurchaseDocumentHeader).entries(vPurchaseDocumentHeader);
        
        const vPurchaseOrderItem = purchaseOrderItems.map(item => {
            return {
                EBELN_EBELN: item.PurchaseOrder || '',
                EBELN_PSPNR: item.WBSElement || '',
                EBELP: item.PurchaseOrderItem || '',
                UNIQUEID: (item.PurchaseOrder || '') + (item.PurchaseOrderItem || ''),
                LOEKZ: item.PurchasingDocumentDeletionCode || '',
                TXZ01: item.PurchaseOrderItemText || '',
                MATNR: item.Material || '',
                WERKS: item.Plant || '',
                LGORT: item.StorageLocation || '',
                MATKL: item.MaterialGroup || '',
                INFNR: item.PurchasingInfoRecord || '',
                IDNLF: item.SupplierMaterialNumber || '',
                MENGE: parseFloat(item.OrderQuantity) || 0,
                MEINS: item.PurchaseOrderQuantityUnit || '',
                BPRME: item.OrderPriceUnit || '',
                BPUMZ: parseInt(item.OrderPriceUnitToOrderUnitNmrtr, 10) || 0,
                BPUMN: parseInt(item.OrdPriceUnitToOrderUnitDnmntr, 10) || 0,
                NETPR: parseFloat(item.NetPriceAmount) || 0,
                PEINH: parseInt(item.NetPriceQuantity, 10) || 0,
                MWSKZ: item.TaxCode || '',
                TXDAT: parseODataDate(item.TaxDeterminationDate),
                TAX_COUNTRY: item.TaxCountry || '',
                PRSDR: item.PriceIsToBePrinted ? 'X' : '',
                UEBTO: parseFloat(item.OverdelivTolrtdLmtRatioInPct) || 0,
                UEBTK: item.UnlimitedOverdeliveryIsAllowed ? 'X' : '',
                UNTTO: parseFloat(item.UnderdelivTolrtdLmtRatioInPct) || 0,
                BWTAR: item.ValuationType || '',
                ELIKZ: item.IsCompletelyDelivered ? 'X' : '',
                EREKZ: item.IsFinallyInvoiced ? 'X' : '',
                PSTYP: item.PurchaseOrderItemCategory || '',
                KNTTP: item.AccountAssignmentCategory || '',
                VRTKZ: item.MultipleAcctAssgmtDistribution || '',
                TWRKZ: item.PartialInvoiceDistribution || '',
                WEPOS: item.GoodsReceiptIsExpected ? 'X' : '',
                WEUNB: item.GoodsReceiptIsNonValuated ? 'X' : '',
                REPOS: item.InvoiceIsExpected ? 'X' : '',
                WEBRE: item.InvoiceIsGoodsReceiptBased ? 'X' : '',
                KONNR: item.PurchaseContract || '',
                KTPNR: parseFloat(item.PurchaseContractItem) || 0,
                EVERS: item.ShippingInstruction || '',
                KUNNR: item.Customer || '',
                NTGEW: parseFloat(item.ItemNetWeight) || 0,
                GEWEI: item.ItemWeightUnit || ''
            };
        });
        //console.log(vPurchaseOrderItem);
        await UPSERT.into(PurchaseOrderItem).entries(vPurchaseOrderItem);

    });

});      