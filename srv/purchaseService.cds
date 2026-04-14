using {ust.buysell.masterdata.projectsys as projectsysdb} from '../db/projectsys';
using {ust.buysell.masterdata.purchase as purchase} from '../db/purchaseSchema';

service PurchaseService {
    entity PurchaseDocumentHeader as projection on purchase.PurchaseDocumentHeader;
    entity PurchaseOrderItem      as projection on purchase.PurchaseOrderItem;
}
