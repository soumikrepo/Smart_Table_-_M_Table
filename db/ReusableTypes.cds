namespace reusable.types;


type Email       : String @assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
type PhoneNumber : String @assert.format: '^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';

type Gender      : String(1) enum {
    male         = 'M';
    female       = 'F';
    noBinary     = 'N';
    noDisclosure = 'D';
    selfDescribe = 'S';
};

type AmountT     : Decimal(10, 2);

aspect Name {

    FIRST_NAME  : String not null;
    MIDDLE_NAME : String;
    LAST_NAME   : String not null;
}

aspect Amount {

    CURRENCY_CODE : String(3);
    GROSS_AMOUNT  : AmountT;
    NET_AMOUNT    : AmountT;
    TAX_AMOUNT    : AmountT;
}
