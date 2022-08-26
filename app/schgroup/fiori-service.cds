using SchedulingGroup from '../../srv/schgroup-service';

annotate SchedulingGroup.SchedulingGroupConfiguration with @(
 UI: {
    HeaderInfo: {
      TypeName: 'Scheduling Group',
      TypeNamePlural: 'Scheduling Groups',
      Title: {
        Label: 'Scheduling Group ID',
        Value: ID
      },
      Description: { Value: description }
    },
    HeaderFacets: [       
        {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Type', Label:'Scheduling Group'}
    ],
    FieldGroup#Type: {
      Data:[
        {$Type: 'UI.DataField', Value: schedulingGroupType},
        {$Type: 'UI.DataField', Value: description}
      ]
    },
    Facets: [
      {$Type: 'UI.ReferenceFacet', Label: 'Attributes', Target: 'attributes/@UI.LineItem' },
    ],
    SelectionFields: [ ID, schedulingGroupType, description ],
    LineItem: [
        {$Type: 'UI.DataField', Value: schedulingGroupType, Label:'Scheduling Group Type'},
        {$Type: 'UI.DataField', Value: description, Label:'Description'}
    ],
    }
 );

annotate SchedulingGroup.SchedulingGroupConfiguration with {
     ID @( Common.Label: 'Scheduling Group ID');
     schedulingGroupType @( Common.Label: 'Scheduling Group Type');
     description @( Common.Label: 'Description');
};

annotate SchedulingGroup.SchedulingGroupConfigAttributeName with {
	attribute @(
    Common: {
				ValueListMapping: {
					Label: '{i18n>Attributes}',
					CollectionPath: 'Attributes',
					Parameters: [
					{ $Type:'Common.ValueListParameterInOut', LocalDataProperty: attribute_ID, ValueListProperty: 'ID' },
					{ $Type:'Common.ValueListParameterDisplayOnly',  ValueListProperty: 'attributeViewDescription' },
					{ $Type:'Common.ValueListParameterDisplayOnly', ValueListProperty: 'attributeNameDescription' },
					],
				}
			}
	);
}

annotate SchedulingGroup.Attributes with {

    ID @title : 'ID';
    attributeView @title : 'View';
    attributeViewDescription @title : 'View Description';
    attributeName @title : 'Name';
    attributeNameDescription @title : 'Name Description'; 

};



 annotate  SchedulingGroup.SchedulingGroupConfigAttributeName with @(
 	UI: {
 		LineItem: [
 			{$Type: 'UI.DataField',Value: attribute_ID, Label: 'ID'},
 			{$Type: 'UI.DataField',Value: attribute.attributeNameDescription, Label: 'Attribute Name'},
 		],
    },
  Common: {
        SideEffects #AttributeSelected   : {
            SourceProperties : [attribute_ID],
            TargetEntities   : [attribute],
            // TargetProperties : ['SchedulingGroupConfiguration']
        }
  }
);