using {datamodel.db as db} from '../db/data-model';

@path: '/EmployeeSRV'
service EmployeeService {


    entity businessPartner as projection on db.businessPartner;
    entity address         as projection on db.address;
    entity employee        as projection on db.employee;
    entity product         as projection on db.product;
    entity purchaseorder   as projection on db.purchaseorder;
    entity poitems         as projection on db.poitems;
    
    
    
}
