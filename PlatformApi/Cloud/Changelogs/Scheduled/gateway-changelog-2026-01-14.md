# gateway-changelog-14-Jan-2026

## 🔴 Breaking Changes (1)

### Design

#### Fields

- Field 'DesProject.latestRevision' changed type from 'DesVcsRevision!' to 'DesVcsRevision'


---

## ✅ Non-Breaking Changes (22)

### Design

#### Fields

- Field 'revisionId' was added to object type 'DesComponent'

### Library Management

#### 🔍 Query

- Field 'desPartSearchByManufacturerPartIds' was added to object type 'Query'
- Argument 'items: [DesPartManufacturerPartIdInput!]!' added to 'Query.desPartSearchByManufacturerPartIds'
- Argument 'options: DesPartSearchByManufacturerPartIdsOptionsInput' added to 'Query.desPartSearchByManufacturerPartIds'

#### Types

- Type 'DesPartManufacturerPartId' was added
- Object type 'DesPartManufacturerPartId' has description 'Represents the part manufacturer name and part number.'
- Type 'DesPartSearchByManufacturerPartIdsResultItem' was added
- Object type 'DesPartSearchByManufacturerPartIdsResultItem' has description 'Represents a search result item.'
- Type 'DesPartManufacturerPartIdInput' was added
- Object type 'DesPartManufacturerPartIdInput' has description 'Represents the part manufacturer name and part number.'
- Type 'DesPartSearchByManufacturerPartIdsOptionsInput' was added
- Object type 'DesPartSearchByManufacturerPartIdsOptionsInput' has description 'Represents the search options.'

#### Fields

- Field 'manufacturerName' was added to object type 'DesPartManufacturerPartId'
- Field 'mpn' was added to object type 'DesPartManufacturerPartId'
- Field 'part' was added to object type 'DesPartSearchByManufacturerPartIdsResultItem'
- Field 'requested' was added to object type 'DesPartSearchByManufacturerPartIdsResultItem'
- Field 'clickUrl' was added to object type 'DesPartCompanyOffer'
- Field 'overallHealthCheckStatuses' was added to object type 'DesPartSearchFixedFacets'

#### Input / Payload

- Input field 'manufacturerName' of type 'String!' was added to input object type 'DesPartManufacturerPartIdInput'
- Input field 'mpn' of type 'String!' was added to input object type 'DesPartManufacturerPartIdInput'
- Input field 'partProvidersFilter' of type 'DesPartPartProvidersFilterInput' was added to input object type 'DesPartSearchByManufacturerPartIdsOptionsInput'
- Input field 'hasComponentsUsages' of type 'Boolean' was added to input object type 'DesPartSearchFilterInput'


