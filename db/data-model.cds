namespace datamodel.db;

using {
    cuid,
    managed
} from '@sap/cds/common';
using {reusable.types as types} from './ReusableTypes';


entity businessPartner : cuid {

    BP_ROLE      : Integer;
    EMAIL        : types.Email;
    PHONE_NUMBER : types.PhoneNumber;
    FAX_NUMBER   : Integer;
    WEB_ADDRESS  : String;
    ADDRESS      : Association to one address;
    BP_ID        : Integer;
    COMPANY_NAME : String;
}

entity address : cuid {

    CITY            : String;
    POSTAL_CODE     : Integer;
    STREET          : String;
    BUILDING        : String;
    COUNTRY         : String;
    VAL_START_DATE  : Date;
    VAL_END_DATE    : Date;
    LATITUDE        : Decimal(15, 10);
    LONGITUDE       : Decimal(15, 10);
    businessPartner : Association to one businessPartner
                          on businessPartner.ADDRESS = $self;
}

@assert.unique: {
  EMAIL: [EMAIL],
  PHONE_NO: [PHONE_NO]
}

entity employee : cuid, types.Name, managed {
    DOB           : Date;
    AGE           : Integer;
    SEX           : types.Gender;
    LANGUAGE      : String;
    PHONE_NO      : types.PhoneNumber not null;
    EMAIL         : types.Email not null;
    LOGIN_NAME    : String;
    CURRENCY      : String(3);
    SALARY_AMOUNT : types.AmountT;
    ACCOUNT_NO    : Integer;
    BANK_ID       : Integer;
    BANK_NAME     : String;
}

entity product : cuid {

    PRODUCT_ID     : String;
    TYPE_CODE      : String;
    CATEGORY       : String;
    SUPPLIER       : Association to one businessPartner;
    TAX_TARIF_CODE : Integer;
    MEASURE_UNIT   : String;
    WEIGHT_MEASURE : Decimal;
    WEIGHT_UNIT    : String;
    CURRENCY_CODE  : String(3);
    PRICE          : Decimal;
    WIDTH          : Decimal;
    DEPTH          : Decimal;
    HEIGHT         : Decimal;
    DIM_UNIT       : String;
    DESCRIPTION    : String
}

entity purchaseorder : cuid, types.Amount {
    PURCHASE_ORDER_ID : Integer;
    PARTNER           : Association to one businessPartner;
    LIFECYCLE_STATUS  : String;
    OVERALL_STATUS    : String;
    Criticality       : Integer;
    poitems           : Composition of many poitems
                            on poitems.PARENT_KEY = $self
}

entity poitems : cuid, types.Amount {
    PARENT_KEY  : Association to purchaseorder;
    TOTAL_ITEMS : Integer;
    PRODUCT     : Association to product;
}
