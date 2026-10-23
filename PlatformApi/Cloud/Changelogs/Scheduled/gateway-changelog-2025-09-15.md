# gateway-changelog-15-Sep-2025

## ✅ Non-Breaking Changes (90)

### Supply

#### 🔍 Query

- Field 'supPartGroupById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.supPartGroupById'
- Field 'supPartGroupByPartId' was added to object type 'Query'
- Argument 'partId: ID!' added to 'Query.supPartGroupByPartId'
- Field 'supPartGroupsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.supPartGroupsByIds'

#### Types

- Type 'SupPartFamily' was added
- 'SupPartFamily' object implements 'SupPartFamilyEntity' interface
- Object type 'SupPartFamily' has description '`SupPartFamily` contains the relevant information related to a part family.
It exists in a hierarchy of other part families, they can contain children which represent other part families or
`partGroups` which represent the leaves of the hierarchy tree.'
- Type 'SupPartFamilyDocument' was added
- Object type 'SupPartFamilyDocument' has description '`SupPartFamilyDocument` contains the details for the documentation provided for a Part Family.
`url` contains a link to the given document.
`updatedAt` is the time we last updated this document.'
- Type 'SupPartFamilyFeatureMetadata' was added
- Object type 'SupPartFamilyFeatureMetadata' has description '`SupPartFamilyFeatureMetadata` contains additional information about a given feature.'
- Type 'SupPartFamilyKeyFeature' was added
- Object type 'SupPartFamilyKeyFeature' has description '`SupPartFamilyKeyFeature` contains the key details for a Part Family feature.'
- Type 'SupPartFamilyTag' was added
- Object type 'SupPartFamilyTag' has description '`SupPartFamilyTag` represents additional metadata for a Part Family.'
- Type 'SupPartGroup' was added
- 'SupPartGroup' object implements 'SupPartFamilyEntity' interface
- Object type 'SupPartGroup' has description '`SupPartGroup` contains the relevant information relating to a part group.
It represents the leaves of the Part Family hierarchy, and contain the parts represented by this group.'
- Type 'SupPartFamilyEntity' was added
- Object type 'SupPartFamilyEntity' has description 'Shared Fields between `SupPartFamily` and `SupPartGroup`.'
- Type 'SupPartFamilyDocumentType' was added
- Enum value 'APPLICATION_NOTE' was added to enum 'SupPartFamilyDocumentType'
- Enum value 'BROCHURE' was added to enum 'SupPartFamilyDocumentType'
- Enum value 'DATASHEET' was added to enum 'SupPartFamilyDocumentType'
- Enum value 'FLYER' was added to enum 'SupPartFamilyDocumentType'
- Enum value 'GUIDE' was added to enum 'SupPartFamilyDocumentType'
- Enum value 'MANUAL' was added to enum 'SupPartFamilyDocumentType'
- Enum value 'OTHER' was added to enum 'SupPartFamilyDocumentType'
- Enum value 'REPORT' was added to enum 'SupPartFamilyDocumentType'
- Object type 'SupPartFamilyDocumentType' has description 'Valid document types for Part Family documentation.'
- Type 'SupPartFamilyFeatureValueType' was added
- Enum value 'ENUMERATION' was added to enum 'SupPartFamilyFeatureValueType'
- Enum value 'RANGE' was added to enum 'SupPartFamilyFeatureValueType'
- Enum value 'SCALAR' was added to enum 'SupPartFamilyFeatureValueType'
- Enum value 'STRING' was added to enum 'SupPartFamilyFeatureValueType'
- Object type 'SupPartFamilyFeatureValueType' has description 'Valid types a features value can take.'

#### Arguments

- Argument 'type: SupPartFamilyDocumentType' added to 'SupPartGroup.documents'

#### Fields

- Field 'applicationIDs' was added to object type 'SupPartFamily'
- Field 'categoryID' was added to object type 'SupPartFamily'
- Field 'children' was added to object type 'SupPartFamily'
- Field 'familyType' was added to object type 'SupPartFamily'
- Field 'id' was added to object type 'SupPartFamily'
- Field 'keyFeatures' was added to object type 'SupPartFamily'
- Field 'manufacturerID' was added to object type 'SupPartFamily'
- Field 'overview' was added to object type 'SupPartFamily'
- Field 'parent' was added to object type 'SupPartFamily'
- Field 'partGroups' was added to object type 'SupPartFamily'
- Field 'siblings' was added to object type 'SupPartFamily'
- Field 'subtitle' was added to object type 'SupPartFamily'
- Field 'tags' was added to object type 'SupPartFamily'
- Field 'title' was added to object type 'SupPartFamily'
- Field 'description' was added to object type 'SupPartFamilyDocument'
- Field 'type' was added to object type 'SupPartFamilyDocument'
- Field 'updatedAt' was added to object type 'SupPartFamilyDocument'
- Field 'url' was added to object type 'SupPartFamilyDocument'
- Field 'name' was added to object type 'SupPartFamilyFeatureMetadata'
- Field 'value' was added to object type 'SupPartFamilyFeatureMetadata'
- Field 'group' was added to object type 'SupPartFamilyKeyFeature'
- Field 'metadata' was added to object type 'SupPartFamilyKeyFeature'
- Field 'name' was added to object type 'SupPartFamilyKeyFeature'
- Field 'units' was added to object type 'SupPartFamilyKeyFeature'
- Field 'value' was added to object type 'SupPartFamilyKeyFeature'
- Field 'valueType' was added to object type 'SupPartFamilyKeyFeature'
- Field 'type' was added to object type 'SupPartFamilyTag'
- Field 'value' was added to object type 'SupPartFamilyTag'
- Field 'applicationIDs' was added to object type 'SupPartGroup'
- Field 'categoryID' was added to object type 'SupPartGroup'
- Field 'documents' was added to object type 'SupPartGroup'
- Field 'id' was added to object type 'SupPartGroup'
- Field 'keyFeatures' was added to object type 'SupPartGroup'
- Field 'manufacturerID' was added to object type 'SupPartGroup'
- Field 'overview' was added to object type 'SupPartGroup'
- Field 'parent' was added to object type 'SupPartGroup'
- Field 'partIDs' was added to object type 'SupPartGroup'
- Field 'referenceDesignIDs' was added to object type 'SupPartGroup'
- Field 'siblings' was added to object type 'SupPartGroup'
- Field 'subtitle' was added to object type 'SupPartGroup'
- Field 'tags' was added to object type 'SupPartGroup'
- Field 'title' was added to object type 'SupPartGroup'
- Field 'applicationIDs' was added to interface 'SupPartFamilyEntity'
- Field 'categoryID' was added to interface 'SupPartFamilyEntity'
- Field 'id' was added to interface 'SupPartFamilyEntity'
- Field 'keyFeatures' was added to interface 'SupPartFamilyEntity'
- Field 'manufacturerID' was added to interface 'SupPartFamilyEntity'
- Field 'overview' was added to interface 'SupPartFamilyEntity'
- Field 'subtitle' was added to interface 'SupPartFamilyEntity'
- Field 'tags' was added to interface 'SupPartFamilyEntity'
- Field 'title' was added to interface 'SupPartFamilyEntity'


