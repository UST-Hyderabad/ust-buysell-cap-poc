using { ust.buysell.procurement as procurement } from '../db/procurement';

service ProjectsysService {
    entity projects as projection on procurement.Project {
        *
    };
    entity WBSElements as projection on procurement.WBSElements;

    entity SalesOrderHeader as projection on procurement.SalesOrderHeader;
    entity SalesOrderItem as projection on procurement.SalesOrderItem;


    entity PurchaseDocumentHeader as projection on procurement.PurchaseDocumentHeader;
    entity PurchaseOrderItem as projection on procurement.PurchaseOrderItem;

    action UpsertPROJ() returns String;
    action UpsertWBS() returns String;
}


