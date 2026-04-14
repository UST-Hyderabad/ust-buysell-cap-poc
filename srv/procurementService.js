const cds = require("@sap/cds");
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

module.exports = cds.service.impl(async function () {

    const { projects, WBSElements } = this.entities;
    const s4hprojects = await cds.connect.to("OP_API_PROJECT_V3_0001");

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
});