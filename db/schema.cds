using { managed, sap, cuid } from '@sap/cds/common';
namespace sap.odspoc.schgroup;

// type SchedulingGrpType : String @assert.range enum {
//     MAIN;
//     SUB;    
// }

type ShortString: String(30);

// entity SchedulingGroupConfig: cuid, managed {
//     schedulingGroupType: String(111);
//     attributeName: String(111);
// }


@assert.unique : {
   schedulingGroupType: [ schedulingGroupType ]
}
entity SchedulingGroupConfiguration : cuid, managed {
    //schedulingGroupType: Association to SchedulingGroupTypes;
    schedulingGroupType: ShortString;
    description: String(111);
    attributes: Composition of many SchedulingGroupConfigAttributeName on attributes.parent = $self;    
}

// @assert.unique : {
//    attribute: [ attribute, parent ]
// }
entity SchedulingGroupConfigAttributeName: cuid, managed {
    attribute: Attribute;
    parent: Association to SchedulingGroupConfiguration;   
}

type Attribute : Association to Attributes;

// @cds.odata.valuelist
// @fiori.draft.enabled
entity Attributes: cuid, managed {
    attributeView: String(111);
    attributeViewDescription: String(111); 
    attributeName: String(111);
    @readonly
    attributeNameDescription: String(111);
}

// entity SchedulingGroupTypes {
//   key code : Integer enum {
//         MAIN  = 0;
//         SUB   = 1;
//       };
//   name : localized String;
// };