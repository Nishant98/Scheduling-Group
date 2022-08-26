using {sap.odspoc.schgroup as sg} from '../db/schema';


@(path: '/schgroup')
service SchedulingGroup @(requires : 'admin'){
    @odata.draft.enabled
    entity SchedulingGroupConfiguration as projection on sg.SchedulingGroupConfiguration;
    // @odata.draft.enabled
    entity SchedulingGroupConfigAttributeName as projection on sg.SchedulingGroupConfigAttributeName;
    // @cds.odata.valuelist
    // @odata.draft.enabled
    // @odata.draft.enabled: null
    @odata.draft.enabled
    entity Attributes as projection on sg.Attributes;
}

// annotate SchedulingGroup.Attributes with @Capabilities.Insertable: false;

annotate cuid with {
	ID @Core.Computed
}