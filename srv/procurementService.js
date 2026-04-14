const cds = require('@sap/cds');

const { UPSERT, SELECT } = require("@sap/cds/lib/ql/cds-ql");



const mapS4ToPROJ = (p) => ({
    PSPNR: p.ProjectInternalID,
    PSPID: p.ProjectExternalID,
    POST1: p.ProjectDescription,
    OBJNR: p.ProjectObject || "",
    ERNAM: p.CreatedByUser,
    ERDAT: p.CreationDate,
    AENAM: p.LastChangedByUser,
    AEDAT: p.LastChangeDate,
    KIMSK: p.WBSElementMaskID || "",
    AUTOD: "",
    STSPD: p.StatusProfile || "",
    STSPR: p.WBSStatusProfile || "",
    VERNR: p.ResponsiblePerson,
    VERNA: p.ResponsiblePersonName,
    ASTNR: p.ApplicantCode,
    ASTNA: p.ApplicantName,
    VBUKR: p.CompanyCode,
    VGSBR: p.BusinessArea,
    VKOKR: p.ControllingArea,
    PRCTR: p.ProfitCenter,
    PWHIE_code: p.Currency || "",
    ZUORD: "",
    TRMEQ: "",
    PLFAZ: p.PlannedStartDate,
    PLSEZ: p.PlannedEndDate,
    WERKS: p.Plant,
    KALID: p.FactoryCalendar,
    VGPLF: p.PlanningMethForProjBasicDate,
    EWPLF: p.PlanningMethForProjFcstdDate,
    ZTEHT: p.SchedulingDurationUnit,
    NZANZ: "",
    PLNAW: "",
    VPROF: p.NetworkProfile,
    PROFL: p.ProjectProfileCode,
    BPROF: p.BudgetProfile,
    TXTSP: p.Language || "",
    KOSTL: "",
    KTRG: "",
    AEDTE: p.BasicDatesLastScheduledDate,
    AEDTP: p.FcstdDatesLastScheduledDate,
    BERST: "",
    BERTR: "",
    BERKO: "",
    BERBU: "",
    SPSNR: "",
    BESTA: p.ProjectHasOwnStock ? "X" : "",
    SCOPE: p.ControllingObjectClass,
    XSTAT: p.WBSIsStatisticalWBSElement ? "X" : "",
    TXJCD: p.TaxJurisdiction,
    ZSCHM: p.ProjInterestCalcProfile,
    SCPRF: p.WBSSchedulingProfile,
    IMPRF: p.InvestmentProfile,
    FMPRF: "",
    ABGSL: p.ResultAnalysisInternalID,
    POSTU: p.ProjectDescription || "",
    PPROF: p.PlanningProfile,
    PLINT: p.WBSIsMarkedForIntegratedPlng ? "X" : "",
    LOEVM: "",
    INACT: "",
    KZBWS: p.InventorySpecialStockValnType || "",
    SMPRF: p.SimulationProfile,
    FLGVRG: "",
    GRTOP: p.WBSIsMarkedForAutomReqmtGrpg ? "X" : "",
    PGPRF: p.DistributionProfile,
    STORT: p.WorkCenterLocation,
    LOGSYSTEM: "",
    KZERB: "",
    PARGR: p.PartnerDeterminationProcedure,
    FUNC_AREA: p.FunctionalArea,
    VKORG: p.SalesOrganization,
    VTWEG: p.DistributionChannel,
    SPART: p.Division,
    DPPPROF: p.DynItemProcessorPrfl,
    VPKSTU: "0",
    PSPID_EDIT: p.ProjectExternalID,
    VNAME: p.JointVenture,
    RECID: p.JointVentureCostRecoveryCode,
    ETYPE: p.JointVentureEquityType,
    OTYPE: p.JointVentureObjectType,
    JIBCL: p.JntIntrstBillgClass,
    JIBSA: p.JntIntrstBillgSubClass,
    EEW_PROJ_PS_DUMMY: "",
    ZZADMIN: "",
    ZZADMINNAME: "",
    ZZCNTRCD: "",
    ZZPGID: "",
    ZZPJSGST: "",
    ZZLDPCID: "",
    ZZOPPORID: "",
    ZZCUNO: "",
    ZZ_PLAN_WAERS_code: "",
    ZZMASTAGID: "",
    ZZ_COUNTRY_KEY: "",
    SCHTYP: p.SchedulingScenario,
    SPROG: p.ForecastedStartDate,
    EPROG: p.ForecastedEndDate,
    ORDER_PROC_MODE: "",
    SETTLEMENTTYPE: "",
    SLWID: "",
    USR00: "",
    USR01: "",
    USR02: "",
    USR03: "",
    USR04: 0,
    USE04: "",
    USR05: 0,
    USE05: "",
    USR06: 0,
    USE06: "",
    USR07: 0,
    USE07: "",
    USR08: null,
    USR09: null,
    USR10: "",
    USR11: "",
    CPD_UPDAT: "",
    FERC_IND: "",
    AVC_PROFILE: "",
    AVC_ACTIVE: "",
    CPCURR_code: p.Currency || "",
    PROJ_STATUS: p.StatusCombinationCode?.toString() || ""
});


const mapS4ToWBS = (p) => ({
    PSPNR: p.WBSElementInternalID,
    POSID: p.WBSElementExternalID,
    POSID_EDIT: p.WBSElementShortID,
    PSPHI: { PSPNR: p.ProjectInternalID },
    POST1: p.WBSDescription,
    POSTU: p.WBSElementLangBsdDescription,
    VERNR: p.ResponsiblePerson,
    VERNA: p.ResponsiblePersonName,
    ASTNR: p.ApplicantCode,
    ASTNA: p.ApplicantName,
    PBUKR: p.CompanyCode,
    PGSBR: p.BusinessArea,
    PKOKR: p.ControllingArea,
    FUNC_AREA: p.FunctionalArea,
    PRCTR: p.ProfitCenter,
    KOSTL: p.ResponsibleCostCenter,
    WERKS: p.Plant,
    SLWID: p.FreeDefinedTableFieldSemantic,
    FABKL: p.FactoryCalendar,
    PSPRI: p.PriorityCode,
    PWPOS: p.Currency,
    KALSM: p.CostingSheet,
    KOSTL: p.CostCenter,
    FKSTL: p.RequestingCostCenter,
    BELKZ: p.WBSElementIsBillingElement ? 'X' : '',
    XSTAT: p.WBSIsStatisticalWBSElement ? 'X' : '',
    PLAKZ: p.WBSIsAccountAssignmentElement ? 'X' : '',
    PLINT: p.WBSElementIsPlanningElement ? 'X' : '',
    PRART: p.ProjectType,
    STORT: p.WorkCenterLocation,
    ABGSL: p.ResultAnalysisInternalID,
    TXJCD: p.TaxJurisdiction,
    TPLNR: p.FunctionalLocation,
    ERNAM: p.CreatedByUser,
    ERDAT: p.CreationDate,
    AENAM: p.LastChangedByUser,
    AEDAT: p.LastChangeDate,
    AKOKR: p.RespCostCenterControllingArea,
    EQUNR: p.Equipment,
    AENNR: p.ProjectObjectChangeNumber,
    STUFE: p.WBSElementHierarchyLevel,
    ZSCHL: p.OverheadCode,
    ADPSP: p.ReferenceElement,
    ZSCHM: p.ProjInterestCalcProfile,
    EVGEW: p.ProgressAnlysAggregationWeight,
    FKOKR: p.ReqgCostCenterControllingArea,
    TXTSP: p.Language,
    LOEVM: p.IsMarkedForDeletion ? 'X' : '',
    GRPKZ: p.WBSElementIsGroupingWBSElement,
    KZBWS: p.WBSElementIsUsedInProjSmmry ? 'X' : '',
    KLVAR: p.CostingVariant,
    TADAT: p.BasicStartDate,
    ZCPM_AMR_FSST: p.ForecastedStartDate,
    ZCPM_AMR_FSFT: p.ForecastedEndDate,
    VNAME: p.JointVenture,
    RECID: p.JointVentureCostRecoveryCode,
    ETYPE: p.JointVentureEquityType,
    OTYPE: p.JntVntrProjectType,
    JIBCL: p.JntIntrstBillgClass,
    JIBSA: p.JntIntrstBillgSubClass,
    SUBPR: p.SubProject,
    IZWEK: p.InvestmentReason,
    ISIZE: p.InvestmentScale,
    IUMKZ: p.EnvironmentalInvestmentReason,
    ABUKR: p.RequestingCompanyCode,
    NPFAZ: p.NetworkAssignmentType,
    KTRG: p.CostObject,
    FPLNR: p.BillingPlan,
    SCOPE: p.ControllingObjectClass,
    USR00: p.FreeDefinedAttribute01,
    USR01: p.FreeDefinedAttribute02,
    USR02: p.FreeDefinedAttribute03,
    USR03: p.FreeDefinedAttribute04,
    USR04: p.FreeDefinedQuantity1,
    USE04: p.FreeDefinedQuantity1Unit,
    USR05: p.FreeDefinedQuantity2,
    USE05: p.FreeDefinedQuantity2Unit,
    USR06: p.FreeDefinedAmount1,
    USE06: p.FreeDefinedAmount1Currency,
    USR07: p.FreeDefinedAmount2,
    USE07: p.FreeDefinedAmount2Currency,
    USR08: p.FreeDefinedDate1,
    USR09: p.FreeDefinedDate2,
    USR10: p.FreeDefinedIndicator1 ? 'X' : '',
    USR11: p.FreeDefinedIndicator2 ? 'X' : '',
    STSMA: p.StatusProfile,
    VERTN: p.DistributionProfile,
    ASTNR: p.ApplicantCode
});

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
    const s4hprojects = await cds.connect.to("OP_API_PROJECT_V3_0001");


    const { projects, WBSElements } = this.entities;

    this.on('UpsertPROJ', async (req) => {
        try {

            const data = await s4hprojects.run(
                SELECT.from('Project')
                    .columns([
                        'ProjectInternalID',
                        'ProjectExternalID',
                        'ProjectDescription',

                        'CompanyCode',
                        'ControllingArea',
                        'ProfitCenter',
                        'BusinessArea',
                        'Plant',

                        'CreatedByUser',
                        'CreationDate',
                        'LastChangedByUser',
                        'LastChangeDate',

                        'ResponsiblePerson',
                        'ResponsiblePersonName',
                        'ApplicantCode',
                        'ApplicantName',

                        'PlannedStartDate',
                        'PlannedEndDate',
                        'ForecastedStartDate',
                        'ForecastedEndDate',

                        'FactoryCalendar',
                        'SchedulingDurationUnit',

                        'ProjectProfileCode',
                        'BudgetProfile',
                        'PlanningProfile',
                        'InvestmentProfile',
                        'NetworkProfile',
                        'WBSSchedulingProfile',

                        'ProjInterestCalcProfile',
                        'ResultAnalysisInternalID',
                        'ControllingObjectClass',

                        'DistributionProfile',
                        'PartnerDeterminationProcedure',

                        'FunctionalArea',
                        'SalesOrganization',
                        'DistributionChannel',
                        'Division',

                        'DynItemProcessorPrfl',

                        'JointVenture',
                        'JointVentureCostRecoveryCode',
                        'JointVentureEquityType',
                        'JointVentureObjectType',
                        'JntIntrstBillgClass',
                        'JntIntrstBillgSubClass',

                        'SimulationProfile',
                        'SchedulingScenario',

                        'Currency',
                        'TaxJurisdiction',
                        'WorkCenterLocation',

                        'PlanningMethForProjBasicDate',
                        'PlanningMethForProjFcstdDate',

                        'WBSIsStatisticalWBSElement',
                        'WBSIsMarkedForIntegratedPlng',
                        'ProjectHasOwnStock',
                        'InventorySpecialStockValnType',
                        'WBSIsMarkedForAutomReqmtGrpg',

                        'StatusProfile',
                        'WBSStatusProfile',
                        'StatusCombinationCode',

                        'BasicDatesLastScheduledDate',
                        'FcstdDatesLastScheduledDate'
                    ])
                    .limit(1)
            );

            const transformed = data.map(mapS4ToPROJ);

            const tx = cds.tx(req);

            await tx.run(
                UPSERT.into(projects).entries(transformed)
            );

            return {
                message: "Upsert Successful",
                count: transformed.length
            };

        } catch (err) {
            console.error("Error in UpsertPROJ:", err);
            req.error(500, err.message);
        }
    });

    this.on('UpsertWBS', async (req) => {
        try {
            const tx = cds.tx(req)
            const data = await s4hprojects.run(SELECT.from('WBSElement').limit(2));
            const transformed = data.map(mapS4ToWBS);
            console.log("data", data);
            console.log("transformed", transformed);
            await tx.run(UPSERT.into(WBSElements).entries(transformed));
            return {
                message: "Upsert Successful",
                count: transformed.length
            };
        } catch (err) {
            console.error("Error in UpsertPROJ:", err);
            req.error(500, err.message);
        }
    })

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

    })

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
