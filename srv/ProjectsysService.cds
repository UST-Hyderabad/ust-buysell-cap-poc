using { ust.buysell.masterdata.projectsys as projectsysdb } from '../db/projectsys';

service ProjectsysService {
    entity projects as projection on projectsysdb.PROJ {
        *
    };
    entity WBSElements as projection on projectsysdb.WBSElements;

    entity SalesOrderHeader as projection on projectsysdb.SalesOrderHeader;
    entity SalesOrderItem as projection on projectsysdb.SalesOrderItem;


    entity PurchaseDocumentHeader as projection on projectsysdb.PurchaseDocumentHeader;
    entity PurchaseOrderItem as projection on projectsysdb.PurchaseOrderItem;
}


