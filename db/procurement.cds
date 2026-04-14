namespace ust.buysell.procurement;

using {Currency} from '@sap/cds/common';


@title: 'Project Definition'
entity Project {
    key PSPNR             : String(8) not null @title: 'Project';

        PSPID             : String(24)         @title: 'Project Definition';
        POST1             : String(40)         @title: 'Description';
        OBJNR             : String(22)         @title: 'Object Number';

        ERNAM             : String(12)         @title: 'Created By';
        ERDAT             : Date               @title: 'Created On';
        AENAM             : String(12)         @title: 'Changed By';
        AEDAT             : Date               @title: 'Changed On';

        KIMSK             : String(24)         @title: 'WBS Short ID Selection Mask';
        AUTOD             : String(1)          @title: 'Auto Transfer from WBS to Project Definition';
        STSPD             : String(8)          @title: 'Status Profile for Project Definition';
        STSPR             : String(8)          @title: 'Status Profile for WBS Element';

        VERNR             : String(8)          @title: 'Number of the Responsible Person';
        VERNA             : String(25)         @title: 'Name of Responsible Person';
        ASTNR             : String(8)          @title: 'Applicant Number';
        ASTNA             : String(25)         @title: 'Applicant';

        VBUKR             : String(4)          @title: 'Company Code for the Project';
        VGSBR             : String(4)          @title: 'Business Area for the Project';
        VKOKR             : String(4)          @title: 'Controlling Area for the Project';
        PRCTR             : String(10)         @title: 'Profit Center';
        PWHIE             : Currency           @title: 'WBS Currency';
        ZUORD             : String(24)         @title: 'Network Assignment';

        TRMEQ             : String(1)          @title: 'Indicator: WBS Dates Detailed by Activity Dates';
        PLFAZ             : Date               @title: 'Project Planned Start Date';
        PLSEZ             : Date               @title: 'Project Planned Finish Date';
        WERKS             : String(4)          @title: 'Plant';
        KALID             : String(2)          @title: 'Factory Calendar Key';
        VGPLF             : String(1)          @title: 'Planning Method for Project Basic Dates';

        EWPLF             : String(1)          @title: 'Planning Method for Project Basic Dates';
        ZTEHT             : String(3)          @title: 'Time Unit in Time Scheduling';
        NZANZ             : String(1)          @title: 'Indicator: Network Header Visible to End User';
        PLNAW             : String(1)          @title: 'Application of the Task List';

        VPROF             : String(7)          @title: 'Network Profile';
        PROFL             : String(7)          @title: 'Project Profile';
        BPROF             : String(6)          @title: 'Budget Profile';
        TXTSP             : String(1)          @title: 'Language Key';

        KOSTL             : String(10)         @title: 'Cost Center';
        KTRG              : String(12)         @title: 'Cost Object';

        AEDTE             : Date               @title: 'Date of Last Scheduling (Basic Dates)';
        AEDTP             : Date               @title: 'Date of Last Scheduling (Forecast)';


        BERST             : String(16)         @title: 'Authorization Key for Project Master Data';
        BERTR             : String(16)         @title: 'Authorization Key for Project Dates (WBS)';
        BERKO             : String(16)         @title: 'Authorization Key for Costs and Revenues';
        BERBU             : String(16)         @title: 'Authorization Key for Project Budget';

        SPSNR             : String(8)          @title: 'Current Number for Standard Project';

        BESTA             : String(1)          @title: 'Project Stock';
        SCOPE             : String(15)         @title: 'Object Class';
        XSTAT             : String(1)          @title: 'Statistical WBS Element';
        TXJCD             : String(15)         @title: 'Tax Jurisdiction';

        ZSCHM             : String(7)          @title: 'Interest Profile for Project/Order';
        SCPRF             : String(12)         @title: 'Profile for WBS Scheduling';
        IMPRF             : String(6)          @title: 'Investment Measure Profile';
        FMPRF             : String(6)          @title: 'Payment Plan Profile';

        ABGSL             : String(40)         @title: 'Results Analysis Key';
        POSTU             : String(40)         @title: 'PS Short Description (All Caps)';
        PPROF             : String(6)          @title: 'Planning Profile';
        PLINT             : String(1)          @title: 'Indicator for Integrated Planning';


        LOEVM             : String(1)          @title: 'Deletion Indicator';
        INACT             : String(1)          @title: 'Indicator: Project Definition Inactive';
        KZBWS             : String(1)          @title: 'Valuation of Special Stock';
        SMPRF             : String(7)          @title: 'Simulation Profile';
        FLGVRG            : String(1)          @title: 'Indicator: Bottom-Up Calculation with Activity Dates';
        GRTOP             : String(1)          @title: 'Indicator: Automatic Requirements Grouping';

        PGPRF             : String(6)          @title: 'Distribution Profile';
        STORT             : String(10)         @title: 'Location';
        LOGSYSTEM         : String(10)         @title: 'Logical System';

        KZERB             : String(1)          @title: 'Indicator: Project Summarization via Master Data';
        PARGR             : String(4)          @title: 'Partner Determination Procedure';


        FUNC_AREA         : String(16)         @title: 'Functional Area';
        VKORG             : String(4)          @title: 'Sales Organization';
        VTWEG             : String(2)          @title: 'Distribution Channel';
        SPART             : String(2)          @title: 'Division';

        DPPPROF           : String(8)          @title: 'Dynamic Item Processor Profile';
        VPKSTU            : String(2)          @title: 'Node Level';

        PSPID_EDIT        : String(24)         @title: 'Project Number (External) Edited';


        VNAME             : String(6)          @title: 'Joint Venture';
        RECID             : String(2)          @title: 'Recovery Indicator';
        ETYPE             : String(3)          @title: 'Equity Type';
        OTYPE             : String(4)          @title: 'Joint Venture Object Type';
        JIBCL             : String(15)         @title: 'JIB/JIBE Class';
        JIBSA             : String(5)          @title: 'JIB/JIBE Subclass A';


        EEW_PROJ_PS_DUMMY : String(1)          @title: 'Dummy Function in Length 1';

        ZZADMIN           : String(8)          @title: 'Admin ID';

        ZZADMINNAME       : String(25)         @title: 'Admin Name';
        ZZCNTRCD          : String(2)          @title: 'Country Code';
        ZZPGID            : String(24)         @title: 'Program ID';
        ZZPJSGST          : String(6)          @title: 'Project Stage';
        ZZLDPCID          : String(6)          @title: 'LDP Customer ID';
        ZZOPPORID         : String(30)         @title: 'Opportunity ID';
        ZZCUNO            : String(10)         @title: 'Customer Number';
        ZZ_PLAN_WAERS     : Currency           @title: 'Plan Currency';
        ZZMASTAGID        : String(3)          @title: 'Master Agreement ID';
        ZZ_COUNTRY_KEY    : String(1)          @title: 'Country Key';

        SCHTYP            : String(1)          @title: 'Scheduling Scenario';
        SPROG             : Date               @title: 'Forecast Start Date of Project Definition';
        EPROG             : Date               @title: 'Forecast Finish Date for Project Definition';


        ORDER_PROC_MODE   : String(1)          @title: 'Procurement Mode for Order Master Data';
        SETTLEMENTTYPE    : String(2)          @title: 'Enterprise Project Settlement Type';
        SLWID             : String(7)          @title: 'Key Word ID for User-Defined Fields';

        USR00             : String(20)         @title: 'User Field 20 Char (1)';
        USR01             : String(20)         @title: 'User Field 20 Char (2)';
        USR02             : String(10)         @title: 'User Field 10 Char (1)';
        USR03             : String(10)         @title: 'User Field 10 Char (2)';
        USR04             : Decimal(13, 3)     @title: 'User Field Quantity (10.3)';
        USE04             : String(3)          @title: 'Unit for USR04';
        USR05             : Decimal(13, 3)     @title: 'User Field Quantity (10.3)';
        USE05             : String(3)          @title: 'Unit for USR05';
        USR06             : Decimal(13, 3)     @title: 'User Field Value (10.3)';
        USE06             : String(5)          @title: 'Unit for USR06';
        USR07             : Decimal(13, 3)     @title: 'User Field Value (10.3)';
        USE07             : String(5)          @title: 'Unit for USR07';
        USR08             : Date               @title: 'User Field Date (1)';
        USR09             : Date               @title: 'User Field Date (2)';
        USR10             : String(5)          @title: 'User-Defined Indicator (1)';
        USR11             : String(1)          @title: 'User-Defined Indicator (2)';

        CPD_UPDAT         : String(40)         @title: 'Time Stamp';
        FERC_IND          : String(4)          @title: 'Regulatory Indicator';

        AVC_PROFILE       : String(6)          @title: 'Budget Availability Control Profile';
        AVC_ACTIVE        : String(1)          @title: 'Availability Control Indicator (AVC)';

        CPCURR            : Currency           @title: 'Custom Project Currency';
        PROJ_STATUS       : String(3)          @title: 'Status Combination';

        to_WBSElement     : Composition of many WBSElements
                                on to_WBSElement.PSPHI = $self;
}


@title: 'WBS Elements'
entity WBSElements {


    key PSPNR                  : String(8) not null @title: 'WBS Element ID';
        POSID                  : String(24)         @title: 'WBS Element';
        POST1                  : String(40)         @title: 'Description';
        OBJNR                  : String(22)         @title: 'Object Number';
        PSPHI                  : Association to Project;
        POSKI                  : String(16)         @title: 'WBS Identification';
        ERNAM                  : String(12)         @title: 'Created By';
        ERDAT                  : Date               @title: 'Created On';
        AENAM                  : String(12)         @title: 'Last Changed By';
        AEDAT                  : Date               @title: 'Last Changed On';
        VERNR                  : String(8)          @title: 'Responsible Person ID';
        VERNA                  : String(25)         @title: 'Responsible Person';
        ASTNR                  : String(8)          @title: 'Applicant ID';
        ASTNA                  : String(25)         @title: 'Applicant';
        PBUKR                  : String(4)          @title: 'Company Code';
        PGSBR                  : String(4)          @title: 'Business Area';
        PKOKR                  : String(4)          @title: 'Controlling Area';
        PRCTR                  : String(10)         @title: 'Profit Center';
        PRART                  : String(2)          @title: 'WBS Type';
        STUFE                  : Integer            @title: 'Hierarchy Level';
        PLAKZ                  : String(1)          @title: 'Account Assignment Element';
        BELKZ                  : String(1)          @title: 'Billing Element';
        FAKKZ                  : String(1)          @title: 'Invoicing Element';
        NPFAZ                  : String(1)          @title: 'Network Assignment';
        ZUORD                  : String(1)          @title: 'WBS Assignment';
        TRMEQ                  : String(1)          @title: 'Deadline Element';
        KVEWE                  : String(1)          @title: 'Condition Usage';
        KAPPL                  : String(2)          @title: 'Application';
        KALSM                  : String(6)          @title: 'Costing Sheet';
        ZSCHL                  : String(6)          @title: 'Overhead Key';
        ABGSL                  : String(6)          @title: 'Result Analysis Key';
        AKOKR                  : String(4)          @title: 'Actual Controlling Area';
        AKSTL                  : String(10)         @title: 'Actual Cost Center';
        FKOKR                  : String(4)          @title: 'Settlement Controlling Area';
        FKSTL                  : String(10)         @title: 'Settlement Cost Center';
        FABKL                  : String(2)          @title: 'Factory Calendar';
        PSPRI                  : String(1)          @title: 'Priority';
        EQUNR                  : String(18)         @title: 'Equipment Number';
        TPLNR                  : String(30)         @title: 'Functional Location';
        PWPOS                  : String(5)          @title: 'Plan Currency';
        WERKS                  : String(4)          @title: 'Plant';
        TXTSP                  : String(1)          @title: 'Language';
        SLWID                  : String(7)          @title: 'Field Selection Key';
        USR00                  : String(20)         @title: 'User Field 1';
        USR01                  : String(20)         @title: 'User Field 2';
        USR02                  : String(10)         @title: 'User Field 3';
        USR03                  : String(10)         @title: 'User Field 4';
        USR04                  : Decimal(13, 3)     @title: 'User Quantity 1';
        USE04                  : String(3)          @title: 'User Qty 1 Unit';
        USR05                  : Decimal(13, 3)     @title: 'User Quantity 2';
        USE05                  : String(3)          @title: 'User Qty 2 Unit';
        USR06                  : Decimal(13, 3)     @title: 'User Currency 1';
        USE06                  : String(5)          @title: 'User Currency 1 Key';
        USR07                  : Decimal(13, 3)     @title: 'User Currency 2';
        USE07                  : String(5)          @title: 'User Currency 2 Key';
        USR08                  : Date               @title: 'User Date 1';
        USR09                  : Date               @title: 'User Date 2';
        USR10                  : String(1)          @title: 'User Flag 1';
        USR11                  : String(1)          @title: 'User Flag 2';
        KOSTL                  : String(10)         @title: 'Responsible Cost Center';
        KTRG                   : String(12)         @title: 'Cost Object';
        BERST                  : String(16)         @title: 'Statistical Key Figure';
        BERTR                  : String(16)         @title: 'Stat. Key Figure (Target)';
        BERKO                  : String(16)         @title: 'Stat. Key Figure (Header)';
        BERBU                  : String(16)         @title: 'Stat. Key Figure (Budget)';
        CLASF                  : String(1)          @title: 'Classification';
        SPSNR                  : String(8)          @title: 'Summarization WBS Element';
        SCOPE                  : String(18)         @title: 'Object Class';
        XSTAT                  : String(1)          @title: 'Statistical Element';
        TXJCD                  : String(15)         @title: 'Tax Jurisdiction';
        ZSCHM                  : String(7)          @title: 'Interest Calc. Schema';
        IMPRF                  : String(6)          @title: 'Investment Profile';
        EVGEW                  : Decimal(8, 2)      @title: 'EV Weighting Factor';
        AENNR                  : String(12)         @title: 'Change Number';
        SUBPR                  : String(12)         @title: 'Sub-Project';
        POSTU                  : String(40)         @title: 'Long Description';
        PLINT                  : String(1)          @title: 'Planning Indicator';
        LOEVM                  : String(1)          @title: 'Deletion Flag';
        KZBWS                  : String(1)          @title: 'Valuation Indicator';
        FPLNR                  : String(10)         @title: 'Billing Plan';
        TADAT                  : Date               @title: 'Deadline Date';
        IZWEK                  : String(2)          @title: 'Investment Reason';
        ISIZE                  : String(2)          @title: 'Investment Scale';
        IUMKZ                  : String(5)          @title: 'Environmental Protection';
        ABUKR                  : String(4)          @title: 'Appropriation Request Co. Code';
        GRPKZ                  : String(1)          @title: 'Group WBS Element';
        PGPRF                  : String(6)          @title: 'Project Profile';
        LOGSYSTEM              : String(10)         @title: 'Logical System';
        PSPNR_LOGS             : String(8)          @title: 'WBS ID (Logical System)';
        STORT                  : String(10)         @title: 'Location';
        FUNC_AREA              : String(16)         @title: 'Functional Area';
        KLVAR                  : String(4)          @title: 'Costing Variant';
        KALNR                  : String(12)         @title: 'Cost Estimate Number';
        POSID_EDIT             : String(24)         @title: 'WBS Short ID';
        PSPKZ                  : String(1)          @title: 'Ext. Planning Indicator';
        MATNR                  : String(40)         @title: 'Material Number';
        VLPSP                  : String(8)          @title: 'Lead WBS Element';
        VLPKZ                  : String(1)          @title: 'Lead WBS Indicator';
        SORT1                  : String(10)         @title: 'Sort Field 1';
        SORT2                  : String(10)         @title: 'Sort Field 2';
        SORT3                  : String(10)         @title: 'Sort Field 3';
        VNAME                  : String(6)          @title: 'Joint Venture';
        RECID                  : String(2)          @title: 'Recovery Indicator';
        ETYPE                  : String(3)          @title: 'Equity Type';
        OTYPE                  : String(4)          @title: 'JV Object Type';
        JIBCL                  : String(3)          @title: 'JIB Class';
        JIBSA                  : String(5)          @title: 'JIB Subclass A';
        CGPL_GUID16            : String(32)         @title: 'cProjects GUID';
        CGPL_LOGSYS            : String(10)         @title: 'cProjects Logical System';
        CGPL_OBJTYPE           : String(3)          @title: 'cProjects Object Type';
        ADPSP                  : String(40)         @title: 'Additional Comparison WBS';
        RFIPPNT                : String(20)         @title: 'Reference IP Point';
        EEW_PRPS_PS_DUMMY      : String(1)          @title: 'Enhancement Dummy';
        RFUND                  : String(10)         @title: 'Fund';
        RGRANT_NBR             : String(20)         @title: 'Grant Number';
        FUND_FIX_ASSIGN        : String(1)          @title: 'Fund Fixed Assignment';
        GRANT_FIX_ASSIGNED     : String(1)          @title: 'Grant Fixed Assignment';
        FUNC_AREA_FIX_ASSIGNED : String(1)          @title: 'Functional Area Fixed';
        SPONSOREDPROG          : String(20)         @title: 'Sponsored Program';
        SETTLEMENTELEMENT      : String(1)          @title: 'Settlement Element';
        SETTLMTRULEINHERITED   : String(1)          @title: 'Settlement Rule Inherited';
        SETTLEMENTOBJECT       : String(22)         @title: 'Settlement Object';
        CPD_UPDAT              : Decimal(15, 0)     @title: 'CPD Last Updated';
        FERC_IND               : String(4)          @title: 'FERC Indicator';
        PRPS_STATUS            : Integer            @title: 'WBS Status';
        POSNR_PRPS             : String(6)          @title: 'Sales Document Item';
        VBELN_PRPS             : String(10)         @title: 'Sales Document';
        ZZADMIN                : String(8)          @title: 'Project Admin ID';
        ZZADMINNAME            : String(25)         @title: 'Project Administrator';
        ZZCNTRCD               : String(2)          @title: 'Contract Terms Code';
        ZZPJSGST               : String(6)          @title: 'Project Stage Status';
        ZZLDPCID               : String(6)          @title: 'Lead Practice';
        ZZOFFERING             : String(6)          @title: 'Market Offering';
        ZZSOLSEID              : String(6)          @title: 'Market Segment';
        ZZOPPORID              : String(30)         @title: 'Opportunity ID';
        ZZ_PLAN_WAERS          : String(5)          @title: 'Planning Currency';
        ZZRAREFID              : String(30)         @title: 'Solution Object ID';
        ZZ_LINEITEM_ID         : String(6)          @title: 'BRIM Line Item ID';
        ZZ_COUNTRY_KEY         : String(3)          @title: 'Country Key';
        ZCPM_AMR_FSST          : Date               @title: 'AMR Forecast Start Date';
        ZCPM_AMR_FSFT          : Date               @title: 'AMR Forecast Finish Date';

        to_soHeader            : Association to many SalesOrderHeader
                                     on to_soHeader.wbsElement = PSPNR;
        to_soItem              : Association to many SalesOrderItem
                                     on to_soItem.wbsElement = PSPNR;

        to_poHeader            : Association to many PurchaseDocumentHeader
                                     on to_poHeader.PSPNR = PSPNR;
        to_poItem              : Association to many PurchaseOrderItem
                                     on to_poItem.PSPNR = PSPNR;

}


entity SalesOrderHeader {

    key salesOrder                         : String(10); // VBELN
    key wbsElement                         : String(8); // PSPNR
        createdOn                          : Date; // ERDAT
        createdTime                        : Time; // ERZET
        createdBy                          : String(12); // ERNAM
        quotationValidFrom                 : Date; // ANGDT
        quotationValidTo                   : Date; // BNDDT
        documentDate                       : Date; // AUDAT
        salesDocumentCategory              : String(1); // VBTYP
        transactionGroup                   : String(1); // TRVOG
        salesDocumentType                  : String(4); // AUART
        orderReason                        : String(3); // AUGRU

        warrantyDate                       : Date; // GWLDT
        collectiveNumber                   : String(10); // SUBMI
        deliveryBlock                      : String(2); // LIFSK
        billingBlock                       : String(2); // FAKSK
        netValue                           : Decimal(15, 2); // NETWR
        currency                           : Currency; // WAERK
        salesOrganization                  : String(4); // VKORG
        distributionChannel                : String(2); // VTWEG
        division                           : String(2); // SPART
        salesGroup                         : String(4); // VKGRP
        salesOffice                        : String(4); // VKBUR
        businessArea                       : String(4); // GSBER
        costCenter                         : String(10); // GSKST
        validityStartDate                  : Date; // GUEBG
        validityEndDate                    : Date; // GUEEN
        pricingDocument                    : String(10); // KNUMV
        requestedDeliveryDate              : Date; // VDATU
        deliveryDateTypeRule               : String(2); // DELIVERY_DATE_TYPE_RULE
        pricingGroup                       : String(2); // VPRGR
        completeDeliveryIndicator          : String(1); // AUTLF
        salesDocumentIndicator             : String(2); // VBKLA
        salesDocumentIndicator2            : String(2); // VBKLT
        pricingProcedure                   : String(6); // KALSM
        shippingCondition                  : String(2); // VSBED
        billingType                        : String(4); // FKARA
        probability                        : Decimal(5, 2); // AWAHR
        description                        : String(40); // KTEXT
        customerPurchaseOrder              : String(35); // BSTNK
        purchaseOrderType                  : String(4); // BSARK
        purchaseOrderDate                  : Date; // BSTDK
        purchaseOrderTime                  : Time; // BSTZD
        yourReference                      : String(20); // IHREZ
        contactPerson                      : String(12); // BNAME
        telephoneNumber                    : String(16); // TELF1
        numberOfReminders                  : Integer; // MAHZA
        lastReminderDate                   : Date; // MAHDT
        soldToParty                        : String(10); // KUNNR
        costCenterAccount                  : String(10); // KOSTL
        statisticsGroup                    : String(2); // STAFO
        documentCurrency                   : String(5); // STWAE
        lastChangedOn                      : Date; // AEDAT
        customerGroup1                     : String(3); // KVGR1
        customerGroup2                     : String(3); // KVGR2
        customerGroup3                     : String(3); // KVGR3
        customerGroup4                     : String(3); // KVGR4
        customerGroup5                     : String(3); // KVGR5
        agreementNumber                    : String(10); // KNUMA
        controllingArea                    : String(4); // KOKRS
        exchangeRateType                   : String(4); // KURST
        creditControlArea                  : String(4); // KKBER
        creditAccount                      : String(10); // KNKLI
        creditGroup                        : String(4); // GRUPP
        creditRepresentativeGroup          : String(3); // SBGRP
        creditRiskCategory                 : String(2); // CTLPC
        creditCurrency                     : String(5); // CMWAE
        creditReleaseDate                  : Date; // CMFRE
        nextCreditCheckDate                : Date; // CMNUP
        creditNextReviewDate               : Date; // CMNGV
        releasedCreditValue                : Decimal(15, 2); // AMTBL
        lastCreditCheckDate                : Date; // CM_LAST_CHECK
        hierarchyTypePricing               : String(2); // HITYP_PR
        universalSalesRelevance            : String(1); // CUSTH_UNIV_SALES_RELVNCE
        branchUuid                         : String(36); // CUSTH_BRANCH_UUID
        usageIndicator                     : String(3); // ABRVW
        usageIndicatorDescription          : String(30); // ABDIS
        precedingDocument                  : String(10); // VGBEL
        objectNumber                       : String(22); // OBJNR
        companyCode                        : String(4); // BUKRS_VF
        taxClassification1                 : String(1); // TAXK1
        taxClassification2                 : String(1); // TAXK2
        taxClassification3                 : String(1); // TAXK3
        taxClassification4                 : String(1); // TAXK4
        taxClassification5                 : String(1); // TAXK5
        taxClassification6                 : String(1); // TAXK6
        taxClassification7                 : String(1); // TAXK7
        taxClassification8                 : String(1); // TAXK8
        taxClassification9                 : String(1); // TAXK9
        referenceDocumentNumber            : String(16); // XBLNR
        assignmentNumber                   : String(18); // ZUONR
        precedingDocumentCategory          : String(1); // VGTYP
        pricingProcedureCustomer           : String(6); // KALSM_CH
        settlementGroup                    : String(6); // AGRZR
        orderNumber                        : String(12); // AUFNR
        qualityNotificationNumber          : String(12); // QMNUM
        documentGroupNumber                : String(10); // VBELN_GRP
        schemeGroup                        : String(4); // SCHEME_GRP
        callOffPartner                     : String(10); // ABRUF_PART
        releaseOrderDate                   : Date; // ABHOD
        releaseOrderTime                   : Time; // ABHOV
        releaseOrderStatus                 : String(2); // ABHOB
        routeSchedule                      : String(10); // RPLNR
        deliveryTime                       : Time; // VZEIT
        vatRegistrationNumber              : String(20); // STCEG_L
        taxDepartureCountry                : String(3); // LANDTX
        externalGoodsReceiptIndicator      : String(1); // XEGDR
        enqueueGroup                       : String(2); // ENQUEUE_GRP
        paymentAuthorizationDate           : Date; // DAT_FZAU
        fundsManagementPostingDate         : Date; // FMBDAT
        versionNumber                      : String(10); // VSNMR_V
        technicalHandle                    : String(22); // HANDLE
        productLine                        : String(10); // PROLI
        dangerousGoodsIndicator            : String(1); // CONT_DG
        crmGuid                            : String(32); // CRM_GUID
        updateTimestamp                    : String(20); // UPD_TMSTMP
        measurementServiceId               : String(10); // MSR_ID
        transportationManagementControlKey : String(4); // TM_CTRL_KEY
        oilIndustryBusinessLocation        : String(10); // OIPBL
        lastChangedByUser                  : String(12); // LAST_CHANGED_BY_USER
        handoverLocation                   : String(10); // HANDOVERLOC
        externalBusinessSystemId           : String(10); // EXT_BUS_SYST_ID
        externalReferenceDocumentId        : String(35); // EXT_REF_DOC_ID
        externalRevisionTimestamp          : String(20); // EXT_REV_TMSTMP
        approvalStatus                     : String(2); // APM_APPROVAL_STATUS
        approvalReason                     : String(40); // APM_APPROVAL_REASON
        rejectionReason                    : String(40); // APM_REJECTION_REASON
        solutionOrderId                    : String(20); // SOLUTION_ORDER_ID
        externalCommunicationSystemType    : String(10); // EXT_COMM_SYST_TYPE
        retroPurchaseDocumentCreation      : String(1); // RETRO_PURCHDOC_CREATION
        crossItemPricingDate               : Date; // CROSSITEM_PRC_DATE
        dataAging                          : String(8); // _DATAAGING

        overallRejectionStatus             : String(1); // ABSTK
        confirmationStatus                 : String(1); // BESTK

        creditStatusStaticCheck            : String(1); // CMPSC
        creditStatusDynamicCheck           : String(1); // CMPSD
        creditStatusPartialRelease         : String(1); // CMPSI
        creditStatusManualRelease          : String(1); // CMPSJ
        creditStatusNextCheck              : String(1); // CMPSK
        creditStatusCentralManagement      : String(1); // CMPS_CM
        creditStatusTechnicalError         : String(1); // CMPS_TE

        overallCreditStatus                : String(1); // CMGST
        overallProcessingStatus            : String(1); // COSTA
        deliveryBlockStatus                : String(1); // DCSTK
        billingBlockStatus                 : String(1); // FKSAK
        billingStatus                      : String(1); // FMSTK
        billingStatusHeader                : String(1); // FSSTK
        overallProcessingStatusDocument    : String(1); // GBSTK
        deliveryBlockStatusHeader          : String(1); // LFGSK
        deliveryStatus                     : String(1); // LFSTK
        deliveryStatusHeader               : String(1); // LSSTK
        manualCompletionIndicator          : String(1); // MANEK
        billingBlockStatusHeader2          : String(1); // RFGSK
        billingStatusItem                  : String(1); // RFSTK
        overallBlockStatus                 : String(1); // SPSTG
        transportationStatus               : String(1); // TRSTA

        incompletionStatusHeader           : String(1); // UVALL
        incompletionStatusItem             : String(1); // UVALS
        billingIncompletionStatusHeader    : String(1); // UVFAK
        billingIncompletionStatusItem      : String(1); // UVFAS
        pricingIncompletionStatus          : String(1); // UVPRS
        deliveryIncompletionStatusHeader   : String(1); // UVVLK
        deliveryIncompletionStatusItem     : String(1); // UVVLS

        incompletionProcedure1             : String(1); // UVK01
        incompletionProcedure2             : String(1); // UVK02
        incompletionProcedure3             : String(1); // UVK03
        incompletionProcedure4             : String(1); // UVK04
        incompletionProcedure5             : String(1); // UVK05

        incompletionStatusSales1           : String(1); // UVS01
        incompletionStatusSales2           : String(1); // UVS02
        incompletionStatusSales3           : String(1); // UVS03
        incompletionStatusSales4           : String(1); // UVS04
        incompletionStatusSales5           : String(1); // UVS05

        goodsMovementStatus                : String(1); // WBSTK

        totalEmcStatus                     : String(1); // TOTAL_EMCST
        totalSlcStatus                     : String(1); // TOTAL_SLCST
        totalLcStatus                      : String(1); // TOTAL_LCCST
        totalPcStatus                      : String(1); // TOTAL_PCSTA
        totalDangerousGoodsStatus          : String(1); // TOTAL_DGSTA
        totalSafetyDataSheetStatus         : String(1); // TOTAL_SDSSTA

        bobProcessingStatus                : String(1); // BOB_STATUS
        downPaymentClearingStatusHeader    : String(1); // DP_CLEAR_STA_HDR
        b2bMessageProcessingStatus         : String(1); // B2B_MSG_PROCESSING_STATUS
        deliveryRelatedBillingStatusTotal  : String(1); // TOTAL_DELIV_RELTD_BILLG_STA
        sdmVersion                         : String(10); // SDM_VERSION
        dummySalesDocIncludeEew            : String(1); // DUMMY_SALESDOC_INCL_EEW_PS

        cgtoShipmentId                     : String(20); // /CGTO/SHIPMENTID
        cgtoCoiId                          : String(20); // /CGTO/COIID
        cgtoTreatmentOrderId               : String(20); // /CGTO/TREATMENTORDERID
        cgtoTherapyId                      : String(20); // /CGTO/THERAPYID
        cgtoTherapyIdName                  : String(40); // /CGTO/THERAPYIDNAME
        cgtoTherapyType                    : String(20); // /CGTO/THERAPYTYPE
        cgtoTherapyTypeName                : String(40); // /CGTO/THERAPYTYPENAME
        cgtoClinicalTrialSubjectId         : String(30); // /CGTO/CLINICALTRIALSUBJECTID
        cgtoPatientId                      : String(20); // /CGTO/PATIENTID
        cgtoCityPharmacyRefNumber          : String(30); // /CGTO/CITYPHARMACYREFNUMBER

        ctcoStudyId                        : String(20); // /CTCO/STUDY_ID
        ctcoProtocolId                     : String(20); // /CTCO/PROTOCOL_ID
        ctcoSiteId                         : String(20); // /CTCO/SITE_ID
        ctcoNoRegularCheck                 : String(1); // /CTCO/NO_REGRUL_CHECK
        ctcoPushEpoch                      : String(10); // /CTCO/PUSH_EPOCH

        globalLogReferenceHeader           : String(40); // GLO_LOG_REF1_HD

        dmbeDealNumber                     : String(20); // /DMBE/DEALNUMBER
        dmbeEvgIdRenewal                   : String(20); // /DMBE/EVGIDRENEWAL
        dmbeEvgIdCancel                    : String(20); // /DMBE/EVGIDCANCEL

        zapcgkhIndicator                   : String(10); // ZAPCGKH
        apcgkExtendHeader                  : String(10); // APCGK_EXTENDH
        zabdathDate                        : Date; // ZABDATH
        ad01FareReference                  : String(20); // AD01FAREG
        ad01BaseDocument                   : String(20); // AD01BASDOC
        lastVoucherNumber                  : String(20); // LASTVCHR

        publicSectorBudgetDate             : Date; // PSM_BUDAT

        fashionCustomerGroup6              : String(3); // FSH_KVGR6
        fashionCustomerGroup7              : String(3); // FSH_KVGR7
        fashionCustomerGroup8              : String(3); // FSH_KVGR8
        fashionCustomerGroup9              : String(3); // FSH_KVGR9
        fashionCustomerGroup10             : String(3); // FSH_KVGR10

        fashionReregistration              : String(1); // FSH_REREG
        fashionCqCheck                     : String(1); // FSH_CQ_CHECK
        fashionVersionStatus               : String(2); // FSH_VRSN_STATUS
        fashionTransaction                 : String(10); // FSH_TRANSACTION
        fashionValueAddedService           : String(10); // FSH_VAS_CG
        fashionCandidateDate               : Date; // FSH_CANDATE
        fashionSeasonSegment               : String(4); // FSH_SS
        fashionOsStgChange                 : String(1); // FSH_OS_STG_CHANGE

        constructionIndicator              : String(10); // J_3GKBAUL
        millApplicationId                  : String(10); // MILL_APPL_ID
        tasIndicator                       : String(1); // TAS
        betcIndicator                      : String(1); // BETC
        modificationAllowed                : String(1); // MOD_ALLOW
        cancellationAllowed                : String(1); // CANCEL_ALLOW
        paymentMethod                      : String(4); // PAY_METHOD
        businessPartnerNumber              : String(10); // BPN
        reportingFrequency                 : String(4); // REP_FREQ
        logicalSystem                      : String(10); // LOGSYSB
        pricingCalculationIndicator        : String(1); // KALCD
        multipleIndicator                  : String(1); // MULTI
        specialPaymentIndicator            : String(4); // SPPAYM
        warrantyClaimHeader                : String(20); // WTYSC_CLM_HDR
        vbakStatus                         : String(2); // VBAK_STATUS

        technicalFields                    : String(50); // TECH_FIELDS
        extensionIndicator                 : String(10); // EXT
        cgtoHeaderIndicator                : String(10); // CGTO_HEADER
        studyDataIndicator                 : String(10); // STUDY_DATA
        to_item                            : Composition of many SalesOrderItem
                                                 on to_item.salesOrder = salesOrder;
};

entity SalesOrderItem {
    key salesOrder                 : String(10); // VBELN
    key itemNumber                 : String(6); // POSNR
    key wbsElement                 : String(8); // PSPNR
        material                   : String(40); // MATNR
        enteredMaterial            : String(40); // MATWA
        pricingReferenceMaterial   : String(40); // PMATN
        batch                      : String(20); // CHARG
        materialGroup              : String(9); // MATKL
        shortText                  : String(40); // ARKTX

        itemCategory               : String(8); // PSTYV
        itemType                   : String(8); // POSAR
        processCode                : String(10); // PROCESS_CODE

        deliveryRelevant           : Boolean; // LFREL
        billingRelevant            : Boolean; // FKREL
        higherLevelItem            : String(6); // UEPOS
        alternativeItem            : String(6); // GRPOS
        rejectionReason            : String(2); // ABGRU

        productHierarchy           : String(18); // PRODH
        universalSalesParentNode   : String(40); // PRODH_UNIV_SALES_PARNT_NODID
        universalSalesOrigin       : String(10); // PRODH_UNIV_SALES_DET_ORIGIN
        universalBatchParentNode   : String(40); // PRODH_UNIV_BATDET_PARNT_NODID
        universalBatchOrigin       : String(10); // PRODH_UNIV_BATDET_DET_ORIGIN

        targetValue                : Decimal(15, 3); // ZWERT
        targetQuantity             : Decimal(15, 3); // ZMENG
        targetUnit                 : String(3); // ZIEME

        numeratorTargetQty         : Integer; // UMZIZ
        denominatorTargetQty       : Integer; // UMZIN

        baseUnit                   : String(5); // MEINS
        substitutionNumerator      : Integer; // SUBSTN_NUMERATOR
        substitutionDenominator    : Integer; // SUBSTN_DENOMINATOR

        scaleQuantity              : Decimal(15, 3); // SMENG

        roundingQuantity           : Decimal(15, 3); // ABLFZ
        roundingDate               : Date; // ABDAT
        roundingFactor             : Decimal(5, 2); // ABSFZ

        externalItemNumber         : String(10); // POSEX
        customerMaterial           : String(35); // KDMAT

        usageIndicator             : String(4); // KBVER
        usageIndicator2            : String(4); // KEVER

        salesGroup                 : String(5); // VKGRU
        usageIndicatorSales        : String(3); // VKAUS
        deliveryGroup              : String(5); // GRKOR

        fixedQuantity              : Decimal(15, 3); // FMENG
        unlimitedOverdelivery      : String(10); // UEBTK
        overdeliveryTolerance      : Decimal(5, 2); // UEBTO
        underdeliveryTolerance     : Decimal(5, 2); // UNTTO

        billingBlockItem           : String(2); // FAKSP

        replacementPart            : Boolean; // ATPKZ
        billingIndex               : Boolean; // RKFKF

        division                   : String(2); // SPART
        businessArea               : String(4); // GSBER

        netValueItem               : Decimal(15, 2); // NETWR
        currency                   : Currency; // WAERK

        partialDeliveryItem        : Integer; // ANTLF
        partialDeliveryIndicator   : String(1); // KZTLF

        resourceId                 : String(20); // RESOURCE_ID
        batchSplitAllowed          : Boolean; // CHSPL

        orderQuantity              : Decimal(15, 3); // KWMENG
        requiredQuantity           : Decimal(15, 3); // LSMENG
        confirmedQuantity          : Decimal(15, 3); // KBMENG
        cumulativeQuantity         : Decimal(15, 3); // KLMENG

        salesUnit                  : String(3); // VRKME
        numeratorConversion        : Integer; // UMVKZ
        denominatorConversion      : Integer; // UMVKN

        grossWeight                : Decimal(15, 3); // BRGEW
        netWeight                  : Decimal(15, 3); // NTGEW
        weightUnit                 : String(3); // GEWEI

        volume                     : Decimal(15, 3); // VOLUM
        volumeUnit                 : String(3); // VOLEH

        originatingDocument        : String(10); // VBELV
        precedingItem              : String(6); // POSNV
        referenceDocument          : String(10); // VGBEL
        referenceItem              : String(6); // VGPOS

        originReference            : String(10); // VOREF
        updateIndicator            : String(1); // UPFLU
        completionIndicator        : String(1); // ERLRE

        deliveryPriority           : String(2); // LPRIO

        plant                      : String(4); // WERKS
        storageLocation            : String(4); // LGORT
        shippingPoint              : String(4); // VSTEL
        route                      : String(6); // ROUTE

        billOfMaterialKey          : String(8); // STKEY
        billOfMaterialDate         : Date; // STDAT
        billOfMaterialNumber       : String(8); // STLNR
        billOfMaterialItem         : String(8); // STPOS

        probability                : Decimal(5, 2); // AWAHR

        createdOn                  : Date; // ERDAT
        createdBy                  : String(12); // ERNAM
        createdTime                : Time; // ERZET

        taxClassification1         : String(1); // TAXM1
        taxClassification2         : String(1); // TAXM2
        taxClassification3         : String(1); // TAXM3
        taxClassification4         : String(1); // TAXM4
        taxClassification5         : String(1); // TAXM5
        taxClassification6         : String(1); // TAXM6
        taxClassification7         : String(1); // TAXM7
        taxClassification8         : String(1); // TAXM8
        taxClassification9         : String(1); // TAXM9

        confirmedQuantityDelivery  : Decimal(15, 3); // VBEAF
        confirmedQuantitySchedule  : Decimal(15, 3); // VBEAV
        referenceIndicator         : String(1); // VGREF

        netPrice                   : Decimal(15, 2); // NETPR
        pricingUnit                : Integer; // KPEIN
        pricingUnitOfMeasure       : String(3); // KMEIN

        debitCreditIndicator       : String(1); // SHKZG
        cashDiscountIndicator      : Boolean; // SKTOF

        checkingGroup              : String(4); // MTVFP
        collectiveBillingIndicator : Boolean; // SUMBD

        priceGroup                 : String(4); // KONDM
        accountAssignmentGroup     : String(5); // KTGRM

        bonusIndicator             : Boolean; // BONUS
        commissionGroup            : String(5); // PROVG
        europeanArticleNumber      : String(18); // EANNR

        pricingSource              : String(5); // PRSOK
        valuationType              : String(10); // BWTAR
        valuationDescription       : String(40); // BWTEX

        batchManagementRequired    : Boolean; // XCHPF
        batchCharacteristic        : String(8); // XCHAR
        batchBillingVariant        : String(10); // BATCH_BILLING_VARIANT

        deliveryQuantity           : Decimal(15, 3); // LFMNG
        statisticsGroup            : String(5); // STAFO

        costValue                  : Decimal(15, 2); // WAVWR

        subtotal1                  : Decimal(15, 2); // KZWI1
        subtotal2                  : Decimal(15, 2); // KZWI2
        subtotal3                  : Decimal(15, 2); // KZWI3
        subtotal4                  : Decimal(15, 2); // KZWI4
        subtotal5                  : Decimal(15, 2); // KZWI5
        subtotal6                  : Decimal(15, 2); // KZWI6

        exchangeRate               : Decimal(10, 5); // STCUR
        lastChangedOn              : Date; // AEDAT

        eanUpc                     : String(18); // EAN11
        fixedQuantityIndicator     : Boolean; // FIXMG

        profitCenter               : String(10); // PRCTR

        materialGroup1             : String(5); // MVGR1
        materialGroup2             : String(5); // MVGR2
        materialGroup3             : String(5); // MVGR3
        materialGroup4             : String(5); // MVGR4
        materialGroup5             : String(5); // MVGR5

        componentQuantity          : Decimal(15, 3); // KMPMG
        reasonForSubstitution      : String(4); // SUGRD

        specialStockIndicator      : String(1); // SOBKZ
        assignmentIndicator        : String(1); // VPZUO

        promotionGroupId           : String(20); // BOB_FG_ID
        promotionId                : String(20); // BOB_PROMOTION_ID

        profitabilitySegment       : String(10); // PAOBJNR
        frozenProfitabilitySegment : String(10); // FREEZE_PAOBJNR
        orderNumber                : String(12); // AUFNR

        planningMaterial           : String(40); // VPMAT
        planningPlant              : String(4); // VPWRK

        baseUnitPlanning           : String(3); // PRBME
        referenceUnit              : String(3); // UMREF

        accountAssignmentCategory  : String(2); // KNTTP
        consumptionPosting         : String(1); // KZVBR

        serialNumberProfile        : String(4); // SERNR
        objectNumber               : String(22); // OBJNR
}


entity PurchaseDocumentHeader {
    key EBELN                 : String(10)     @title: 'Purchasing Document Number';
    key PSPNR                 : String(8)      @title: 'Key of WBSElemnt';
        BUKRS                 : String(4)      @title: 'Company Code';
        BSTYP                 : String(1)      @title: 'Purchasing Document Category';
        BSART                 : String(4)      @title: 'Purchasing Document Type';
        BSAKZ                 : String(1)      @title: 'Control Indicator for Purchasing Document Type';
        LOEKZ                 : String(1)      @title: 'Deletion Indicator in Purchasing Document';
        STATU                 : String(2)      @title: 'Status of Purchasing Document';
        AEDAT                 : Date           @title: 'Date on Which Record Was Created';
        ERNAM                 : String(12)     @title: 'Name of Person who Created the Object';
        PINCR                 : String(5)      @title: 'Item Number Interval';
        LPONR                 : String(5)      @title: 'Last Item Number';
        LIFNR                 : String(10)     @title: 'Vendor Account Number';
        SPRAS                 : String(1)      @title: 'Language Key';
        ZTERM                 : String(4)      @title: 'Terms of Payment Key';
        ZBD1T                 : Decimal(3, 0)  @title: 'Cash (Prompt Payment) Discount Days 1';
        ZBD2T                 : Decimal(3, 0)  @title: 'Cash (Prompt Payment) Discount Days 2';
        ZBD3T                 : Decimal(3, 0)  @title: 'Cash (Prompt Payment) Discount Days 3';
        ZBD1P                 : Decimal(5, 3)  @title: 'Cash Discount Percentage 1';
        ZBD2P                 : Decimal(5, 3)  @title: 'Cash Discount Percentage 2';
        EKORG                 : String(4)      @title: 'Purchasing Organization';
        EKGRP                 : String(3)      @title: 'Purchasing Group';
        WAERS                 : String(5)      @title: 'Currency Key';
        WKURS                 : Decimal(9, 5)  @title: 'Exchange Rate';
        KUFIX                 : String(1)      @title: 'Indicator: Fixing of Exchange Rate';
        BEDAT                 : Date           @title: 'Purchasing Document Date';
        KDATB                 : Date           @title: 'Start of Validity Period';
        KDATE                 : Date           @title: 'End of Validity Period';
        BWBDT                 : Date           @title: 'Closing Date for Applications';
        ANGDT                 : Date           @title: 'Deadline for Submission of Bid/Quotation';
        BNDDT                 : Date           @title: 'Binding Period for Quotation';
        GWLDT                 : Date           @title: 'Warranty Date';
        AUSNR                 : String(10)     @title: 'Bid Invitation Number';
        ANGNR                 : String(10)     @title: 'Quotation Number';
        IHRAN                 : Date           @title: 'Quotation Submission Date';
        IHREZ                 : String(12)     @title: 'Your Reference';
        VERKF                 : String(30)     @title: 'Responsible Salesperson at Vendor Office';
        TELF1                 : String(16)     @title: 'Vendor Telephone Number';
        LLIEF                 : String(10)     @title: 'Supplying Vendor';
        KUNNR                 : String(10)     @title: 'Customer Number';
        KONNR                 : String(10)     @title: 'Number of Principal Purchase Agreement';
        ABGRU                 : String(2)      @title: 'Field Not Used';
        AUTLF                 : String(1)      @title: 'Complete Delivery Stipulated for Each Purchase Order';
        WEAKT                 : String(1)      @title: 'Indicator: Goods Receipt Message';
        RESWK                 : String(4)      @title: 'Supplying (Issuing) Plant in Stock Transport Order';
        LBLIF                 : String(10)     @title: 'Field Not Used';
        INCO1                 : String(3)      @title: 'Incoterms (Part 1)';
        INCO2                 : String(28)     @title: 'Incoterms (Part 2)';
        KTWRT                 : Decimal(15, 2) @title: 'Target Value for Header Area per Distribution';
        SUBMI                 : String(10)     @title: 'Collective Number';
        KNUMV                 : String(10)     @title: 'Number of the Document Condition';
        KALSM                 : String(6)      @title: 'Procedure (Pricing, Output Control, Acct. Det., Costing)';
        STAFO                 : String(6)      @title: 'Update Group for Statistics Update';
        LIFRE                 : String(10)     @title: 'Different Invoicing Party';
        EXNUM                 : String(10)     @title: 'Number of Foreign Trade Data in MM and SD Documents';
        UNSEZ                 : String(12)     @title: 'Our Reference';
        LOGSY                 : String(10)     @title: 'Logical System';
        UPINC                 : String(5)      @title: 'Item Number Interval for Subitems';
        STAKO                 : String(1)      @title: 'Document with Time-Dependent Conditions';
        FRGGR                 : String(2)      @title: 'Release Group';
        FRGSX                 : String(2)      @title: 'Release Strategy';
        FRGKE                 : String(1)      @title: 'Release Indicator: Purchasing Document';
        FRGZU                 : String(8)      @title: 'Release Status';
        FRGRL                 : String(1)      @title: 'Release Not Yet Completely Effected';
        to_PurchaseOrderItems : Composition of many PurchaseOrderItem
                                    on  to_PurchaseOrderItems.EBELN = EBELN
                                    and to_PurchaseOrderItems.PSPNR = PSPNR;
};

entity PurchaseOrderItem {
    key EBELN       : String(10)     @title: 'Purchasing Document Number';
    key PSPNR       : String(8)      @title: 'WBS Elemnet ID';
    key EBELP       : String(5)      @title: 'Item Number of Purchasing Document';
        UNIQUEID    : String(15)     @title: 'Concatenation of EBELN and EBELP';
        LOEKZ       : String(1)      @title: 'Deletion Indicator in Purchasing Document';
        STATU       : String(1)      @title: 'Origin of a Purchasing Document Item';
        AEDAT       : Date           @title: 'Purchasing Document Item Change Date';
        TXZ01       : String(40)     @title: 'Short Text';
        MATNR       : String(40)     @title: 'Material Number';
        EMATN       : String(40)     @title: 'Material number';
        BUKRS       : String(4)      @title: 'Company Code';
        WERKS       : String(4)      @title: 'Plant';
        LGORT       : String(4)      @title: 'Storage Location';
        BEDNR       : String(10)     @title: 'Requirement Tracking Number';
        MATKL       : String(9)      @title: 'Material Group';
        INFNR       : String(10)     @title: 'Purchasing Info Record Number';
        IDNLF       : String(35)     @title: 'Material Number Used by Supplier';
        KTMNG       : Decimal(13, 3) @title: 'Target Quantity';
        MENGE       : Decimal(13, 3) @title: 'Purchase Order Quantity';
        MEINS       : String(3)      @title: 'Purchase Order Unit of Measure';
        BPRME       : String(3)      @title: 'Order Price Unit (Purchasing)';
        BPUMZ       : Integer        @title: 'Numerator for Conversion of Order Price Unit into Order Unit';
        BPUMN       : Integer        @title: 'Denominator for Conv. of Order Price Unit into Order Unit';
        UMREZ       : Integer        @title: 'Numerator for Conversion of Order Unit to Base Unit';
        UMREN       : Integer        @title: 'Denominator for Conversion of Order Unit to Base Unit';
        NETPR       : Decimal(11, 2) @title: 'Net Price in Purchasing Document (in Document Currency)';
        PEINH       : Integer        @title: 'Price Unit';
        NETWR       : Decimal(13, 2) @title: 'Net Order Value in PO Currency';
        BRTWR       : Decimal(13, 2) @title: 'Gross order value in PO currency';
        AGDAT       : Date           @title: 'Deadline for Submission of Bid/Quotation';
        WEBAZ       : Integer        @title: 'Goods receipt processing time in days';
        MWSKZ       : String(2)      @title: 'Tax on sales/purchases code';
        TXDAT_FROM  : Date           @title: 'Valid-From Date of the Tax Rate';
        TXDAT       : Date           @title: 'Date for Determining Tax Rates';
        TAX_COUNTRY : String(3)      @title: 'Tax Reporting Country/Region';
        BONUS       : String(2)      @title: 'Settlement Group 1 (Purchasing)';
        INSMK       : String(1)      @title: 'Stock Type';
        SPINF       : String(1)      @title: 'Indicator: Update Info Record';
        PRSDR       : String(1)      @title: 'Price Printout';
        SCHPR       : String(1)      @title: 'Indicator: Estimated Price';
        MAHNZ       : Integer        @title: 'Number of Reminders/Expediters';
        MAHN1       : Integer        @title: 'Number of Days for First Reminder/Expediter';
        MAHN2       : Integer        @title: 'Number of Days for Second Reminder/Expediter';
        MAHN3       : Integer        @title: 'Number of Days for Third Reminder/Expediter';
        UEBTO       : Decimal(3, 1)  @title: 'Overdelivery Tolerance';
        UEBTK       : String(1)      @title: 'Over delivery Allowed';
        UNTTO       : Decimal(3, 1)  @title: 'Underdelivery Tolerance';
        BWTAR       : String(10)     @title: 'Valuation Type';
        BWTTY       : String(1)      @title: 'Valuation Category';
        ABSKZ       : String(1)      @title: 'RejectionIndicator';
        AGMEM       : String(3)      @title: 'Internal Comment Quotation';
        ELIKZ       : String(1)      @title: 'DeliveryCompletedIndicator';
        EREKZ       : String(1)      @title: 'Final Invoice Indicator';
        PSTYP       : String(1)      @title: 'Item category in Purchasing Document';
        KNTTP       : String(1)      @title: 'Account Assignment Category';
        KZVBR       : String(1)      @title: 'Consumption posting';
        VRTKZ       : String(1)      @title: 'Distribution Indicator for Multiple Account Assignment';
        TWRKZ       : String(1)      @title: 'Partial invoice indicator';
        WEPOS       : String(1)      @title: 'Goods Receipt Indicator';
        WEUNB       : String(1)      @title: 'Goods Receipt, Non-Valuated';
        REPOS       : String(1)      @title: 'Invoice Receipt Indicator';
        WEBRE       : String(1)      @title: 'Indicator: GR-Based Invoice Verification';
        KZABS       : String(1)      @title: 'Order Acknowledgment Requirement';
        LABNR       : String(20)     @title: 'Order Acknowledgment Number';
        KONNR       : String(10)     @title: 'Number of principal purchase agreement';
        KTPNR       : Decimal(5, 0)  @title: 'Item Number of Principal Purchase Agreement'; //DOUBT
        ABDAT       : Date           @title: 'Reconciliation date for agreed cumulative quantity';
        ABFTZ       : Decimal(13, 3) @title: 'Agreed Cumulative Quantity';
        ETFZ1       : Decimal(3, 0)  @title: 'Firm Zone (Go-Ahead for Production)';
        ETFZ2       : Decimal(3, 0)  @title: 'Trade-Off Zone (Go-Ahead for Materials Procurement)';
        KZSTU       : String(1)      @title: 'Firm/Trade-Off Zones Binding with Regard to Mat. Planning';
        NOTKZ       : String(1)      @title: 'Exclusion in Outline Agreement Item with Material Class';
        LMEIN       : String(3)      @title: 'Base Unit of Measure';
        EVERS       : String(2)      @title: 'Shipping Instructions';
        ZWERT       : Decimal(13, 2) @title: 'Target Value for Outline Agreement in Document Currency';
        NAVNW       : Decimal(13, 2) @title: 'Non-deductible input tax';
        ABMNG       : Decimal(13, 3) @title: 'Standard release order quantity';
        PRDAT       : Date           @title: 'Date of Price Determination';
        BSTYP       : String(1)      @title: 'Purchasing Document Category';
        EFFWR       : Decimal(13, 2) @title: 'Effective value of item'; //Doubt
        XOBLR       : String(1)      @title: 'Item affects commitments';
        KUNNR       : String(10)     @title: 'Customer';
        ADRNR       : String(10)     @title: 'Manual address number in purchasing document item';
        EKKOL       : String(4)      @title: 'Condition Group with Supplier';
        SKTOF       : String(1)      @title: 'Item Does Not Qualify for Cash Discount';
        STAFO       : String(6)      @title: 'Update Group for statistics update';
        PLIFZ       : Decimal(3, 0)  @title: 'Planned Delivery Time in Days';
        NTGEW       : Decimal(13, 3) @title: 'Net Weight';
        GEWEI       : String(3)      @title: 'Unit of Weight'
};
