using {datamodel.db as db} from './data-model';

annotate db.businessPartner with {
    ID            @title: '{i18n>ID_OF_BP}';
    BP_ROLE       @title: '{i18n>BP_ROLE}';
    EMAIL_ADDRESS @title: '{i18n>EMAIL_ADDRESS}';
    PHONE_NUMBER  @title: '{i18n>PHONE_NUMBER}';
    FAX_NUMBER    @title: '{i18n>FAX_NUMBER}';
    WEB_ADDRESS   @title: '{i18n>WEB_ADDRESS}';
    ADDRESS       @title: '{i18n>ADDRESS}';
    BP_ID         @title: '{i18n>BP_ID}';
    COMPANY_NAME  @title: '{i18n>COMPANY_NAME}';
};

annotate db.address with {
    ID             @title: '{i18n>ID_OF_ADDRESS}';
    CITY           @title: '{i18n>CITY}';
    POSTAL_CODE    @title: '{i18n>POSTAL_CODE}';
    STREET         @title: '{i18n>STREET}';
    BUILDING       @title: '{i18n>BUILDING}';
    COUNTRY        @title: '{i18n>COUNTRY}';
    VAL_START_DATE @title: '{i18n>VAL_START_DATE}';
    VAL_END_DATE   @title: '{i18n>VAL_END_DATE}';
    LATITUDE       @title: '{i18n>LATITUDE}';
    LONGITUDE      @title: '{i18n>LONGITUDE}';

};

annotate db.employee with {
    ID            @title: '{i18n>ID_OF_EMP}';
    FIRST_NAME    @title: '{i18n>FIRST_NAME}';
    MIDDLE_NAME   @title: '{i18n>MIDDLE_NAME}';
    LAST_NAME     @title: '{i18n>LAST_NAME}';
    DOB           @title: '{i18n>DOB}';
    AGE           @title: '{i18n>AGE}';
    SEX           @title: '{i18n>SEX}';
    LANGUAGE      @title: '{i18n>LANGUAGE}';
    PHONE_NO      @title: '{i18n>PHONE_NO}';
    EMAIL         @title: '{i18n>EMAIL}';
    LOGIN_NAME    @title: '{i18n>LOGIN_NAME}';
    CURRENCY      @title: '{i18n>CURRENCY}';
    SALARY_AMOUNT @title: '{i18n>SALARY_AMOUNT}';
    ACCOUNT_NO    @title: '{i18n>ACCOUNT_NO}';
    BANK_ID       @title: '{i18n>BANK_ID}';
    BANK_NAME     @title: '{i18n>BANK_NAME}';
};

annotate db.product with {
    ID             @title: '{i18n>ID_OF_PRODUCT}';
    PRODUCT_ID     @title: '{i18n>PRODUCT_ID}';
    TYPE_CODE      @title: '{i18n>TYPE_CODE}';
    CATEGORY       @title: '{i18n>CATEGORY}';
    SUPPLIER       @title: '{i18n>SUPPLIER}';
    TAX_TARIF_CODE @title: '{i18n>TAX_TARIF_CODE}';
    MEASURE_UNIT   @title: '{i18n>MEASURE_UNIT}';
    WEIGHT_MEASURE @title: '{i18n>WEIGHT_MEASURE}';
    WEIGHT_UNIT    @title: '{i18n>WEIGHT_UNIT}';
    CURRENCY_CODE  @title: '{i18n>CURRENCY_CODE}';
    PRICE          @title: '{i18n>PRICE}';
    WIDTH          @title: '{i18n>WIDTH}';
    DEPTH          @title: '{i18n>DEPTH}';
    HEIGHT         @title: '{i18n>HEIGHT}';
    DIM_UNIT       @title: '{i18n>DIM_UNIT}';
    DESCRIPTION    @title: '{i18n>DESCRIPTION}';
};

annotate db.purchaseorder with {
    ID                @title: '{i18n>ID_PO}';
    PURCHASE_ORDER_ID @title: '{i18n>PURCHASE_ORDER_ID}';
    PARTNER           @title: '{i18n>PARTNER}';
    LIFECYCLE_STATUS  @title: '{i18n>LIFECYCLE_STATUS}';
    OVERALL_STATUS    @title: '{i18n>OVERALL_STATUS}';
    Criticality       @title: '{i18n>Criticality}';
    GROSS_AMOUNT      @title: '{i18n>GROSS_AMOUNT}';
    NET_AMOUNT        @title: '{i18n>NET_AMOUNT}';
    TAX_AMOUNT        @title: '{i18n>TAX_AMOUNT}';
    CURRENCY_CODE     @title: '{i18n>TAX_AMOUNT}';
};

annotate db.poitems with {
    ID            @title: '{i18n>ID_POI}';
    PARENT_KEY    @title: '{i18n>PARENT_KEY}';
    TOTAL_ITEMS   @title: '{i18n>TOTAL_ITEMS}';
    PRODUCT       @title: '{i18n>PRODUCT_ID_POI}';
    GROSS_AMOUNT  @title: '{i18n>GROSS_AMOUNT}';
    NET_AMOUNT    @title: '{i18n>NET_AMOUNT}';
    TAX_AMOUNT    @title: '{i18n>TAX_AMOUNT}';
    CURRENCY_CODE @title: '{i18n>TAX_AMOUNT}';
};
