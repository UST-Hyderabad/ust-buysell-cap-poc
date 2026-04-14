namespace ust.buysell.masterdata.projectsys;

using {Currency} from '@sap/cds/common';


@title      : 'Project Definition'
entity PROJ {
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
        SCOPE             : String(15)          @title: 'Object Class';
        XSTAT             : String(1)          @title: 'Statistical WBS Element';
        TXJCD             : String(15)         @title: 'Tax Jurisdiction';

        ZSCHM             : String(7)          @title: 'Interest Profile for Project/Order';
        SCPRF             : String(12)         @title: 'Profile for WBS Scheduling';
        IMPRF             : String(6)          @title: 'Investment Measure Profile';
        FMPRF             : String(6)          @title: 'Payment Plan Profile';

        ABGSL             : String(40)          @title: 'Results Analysis Key';
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
        JIBCL             : String(15)          @title: 'JIB/JIBE Class';
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

        CPD_UPDAT         : String(40)     @title: 'Time Stamp';
        FERC_IND          : String(4)          @title: 'Regulatory Indicator';

        AVC_PROFILE       : String(6)          @title: 'Budget Availability Control Profile';
        AVC_ACTIVE        : String(1)          @title: 'Availability Control Indicator (AVC)';

        CPCURR            : Currency           @title: 'Custom Project Currency';
        PROJ_STATUS       : String(3)          @title: 'Status Combination';

        to_WBSElement     : Composition of many WBSElements
                                on to_WBSElement.PSPHI = $self;
}


@title      : 'WBS Elements'
entity WBSElements {
    key PSPNR                  : String(8) not null @title: 'WBS Element ID';
        POSID                  : String(24)         @title: 'WBS Element';
        POST1                  : String(40)         @title: 'Description';
        OBJNR                  : String(22)         @title: 'Object Number';
        PSPHI                  : Association to PROJ;
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
        USR10                  : String(1)            @title: 'User Flag 1';
        USR11                  : String(1)            @title: 'User Flag 2';
        KOSTL                  : String(10)         @title: 'Responsible Cost Center';
        KTRG                   : String(12)         @title: 'Cost Object';
        BERST                  : String(16)         @title: 'Statistical Key Figure';
        BERTR                  : String(16)         @title: 'Stat. Key Figure (Target)';
        BERKO                  : String(16)         @title: 'Stat. Key Figure (Header)';
        BERBU                  : String(16)         @title: 'Stat. Key Figure (Budget)';
        CLASF                  : String(1)          @title: 'Classification';
        SPSNR                  : String(8)          @title: 'Summarization WBS Element';
        SCOPE                  : String(18)          @title: 'Object Class';
        XSTAT                  : String(1)          @title: 'Statistical Element';
        TXJCD                  : String(15)         @title: 'Tax Jurisdiction';
        ZSCHM                  : String(7)          @title: 'Interest Calc. Schema';
        IMPRF                  : String(6)          @title: 'Investment Profile';
        EVGEW                  : Decimal(8, 2)      @title: 'EV Weighting Factor';
        AENNR                  : String(12)         @title: 'Change Number';
        SUBPR                  : String(12)         @title: 'Sub-Project';
        POSTU                  : String(40)         @title: 'Long Description';
        PLINT                  : String(1)          @title: 'Planning Indicator';
        LOEVM                  : String(1)            @title: 'Deletion Flag';
        KZBWS                  : String(1)          @title: 'Valuation Indicator';
        FPLNR                  : String(10)         @title: 'Billing Plan';
        TADAT                  : Date               @title: 'Deadline Date';
        IZWEK                  : String(2)          @title: 'Investment Reason';
        ISIZE                  : String(2)          @title: 'Investment Scale';
        IUMKZ                  : String(5)          @title: 'Environmental Protection';
        ABUKR                  : String(4)          @title: 'Appropriation Request Co. Code';
        GRPKZ                  : String(1)            @title: 'Group WBS Element';
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
        FUND_FIX_ASSIGN        : String(1)            @title: 'Fund Fixed Assignment';
        GRANT_FIX_ASSIGNED     : String(1)            @title: 'Grant Fixed Assignment';
        FUNC_AREA_FIX_ASSIGNED : String(1)            @title: 'Functional Area Fixed';
        SPONSOREDPROG          : String(20)         @title: 'Sponsored Program';
        SETTLEMENTELEMENT      : String(1)            @title: 'Settlement Element';
        SETTLMTRULEINHERITED   : String(1)            @title: 'Settlement Rule Inherited';
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
}
