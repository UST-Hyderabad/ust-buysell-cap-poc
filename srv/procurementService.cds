using { ust.buysell.procurement as procurement } from '../db/procurement';

using { OP_API_PROJECT_V3_0001.Project } from './external/OP_API_PROJECT_V3_0001';

service ProjectsysService {
    entity projects as projection on procurement.Project {
        *
    };
    entity WBSElements as projection on procurement.WBSElements;

    entity SalesOrderHeader as projection on procurement.SalesOrderHeader;
    entity SalesOrderItem as projection on procurement.SalesOrderItem;


    entity PurchaseDocumentHeader as projection on procurement.PurchaseDocumentHeader;
    entity PurchaseOrderItem as projection on procurement.PurchaseOrderItem;

    entity temp as projection on Project;

    action UpsertPROJ() returns String;
    action UpsertWBS() returns String;
}


