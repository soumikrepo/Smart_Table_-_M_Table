using { EmployeeService } from './employee-service';

annotate EmployeeService.businessPartner with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: true
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate EmployeeService.address with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: true
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate EmployeeService.employee with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: true
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate EmployeeService.product with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: true
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate EmployeeService.purchaseorder with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: true
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate EmployeeService.poitems with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: true
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});





