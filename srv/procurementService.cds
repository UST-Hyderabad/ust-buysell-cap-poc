using { ust.buysell.procurement as procurement } from '../db/procurement';
using { ZAPI_SALES_CONTRACT_SRV as S4HSales} from './external/ZAPI_SALES_CONTRACT_SRV';

service ProjectsysService {
    entity projects as projection on procurement.Project {
        *
    };
    entity WBSElements as projection on procurement.WBSElements;

    entity SalesOrderHeader as projection on procurement.SalesOrderHeader;
    entity SalesOrderItem as projection on procurement.SalesOrderItem;


    entity PurchaseDocumentHeader as projection on procurement.PurchaseDocumentHeader;
    entity PurchaseOrderItem as projection on procurement.PurchaseOrderItem;
    
    entity temp as projection on S4HSales.A_SalesContract;
    entity temp1 as projection on S4HSales.A_SalesContractItem;
    action UpsertSalesContract() returns String;
    action UpsertSalesContractItem() returns String;
}


