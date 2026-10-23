# gateway-changelog-18-Feb-2026

## ✅ Non-Breaking Changes (47)

### Library Management

#### 🔍 Query

- Field 'desPartGlobalSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.desPartGlobalSearch'
- Argument 'before: String' added to 'Query.desPartGlobalSearch'
- Argument 'first: Int' added to 'Query.desPartGlobalSearch'
- Argument 'last: Int' added to 'Query.desPartGlobalSearch'
- Argument 'order: DesPartGlobalSearchSortInput' added to 'Query.desPartGlobalSearch'
- Argument 'where: DesPartGlobalSearchFilterInput' added to 'Query.desPartGlobalSearch'

#### Types

- Type 'DesPartGlobalPart' was added
- Object type 'DesPartGlobalPart' has description 'Represents global the part details.'
- Type 'DesPartGlobalSearchConnection' was added
- Object type 'DesPartGlobalSearchConnection' has description 'A connection to a list of items.'
- Type 'DesPartGlobalSearchEdge' was added
- Object type 'DesPartGlobalSearchEdge' has description 'An edge in a connection.'
- Type 'DesPartGlobalSearchFacets' was added
- Object type 'DesPartGlobalSearchFacets' has description 'Represents the search facets.'
- Type 'DesPartGlobalSearchFixedFacets' was added
- Object type 'DesPartGlobalSearchFixedFacets' has description 'Represents fixed search facets.'
- Type 'DesPartGlobalSearchItem' was added
- Object type 'DesPartGlobalSearchItem' has description 'Represents a global search item with links to supply part and platform part.'
- Type 'DesPartGlobalSearchFilterInput' was added
- Object type 'DesPartGlobalSearchFilterInput' has description 'Represents the filter for global searching parts.'
- Type 'DesPartGlobalSearchSortInput' was added
- Object type 'DesPartGlobalSearchSortInput' has description 'Represents the input for sorting parts.'

#### Fields

- Field 'siliconExpertPart' was added to object type 'DesPartGlobalPart'
- Field 'supplyPart' was added to object type 'DesPartGlobalPart'
- Field 'z2DataPart' was added to object type 'DesPartGlobalPart'
- Field 'edges' was added to object type 'DesPartGlobalSearchConnection'
- Field 'nodes' was added to object type 'DesPartGlobalSearchConnection'
- Field 'pageInfo' was added to object type 'DesPartGlobalSearchConnection'
- Field 'searchFacets' was added to object type 'DesPartGlobalSearchConnection'
- Field 'totalCount' was added to object type 'DesPartGlobalSearchConnection'
- Field 'cursor' was added to object type 'DesPartGlobalSearchEdge'
- Field 'node' was added to object type 'DesPartGlobalSearchEdge'
- Field 'attributeFacets' was added to object type 'DesPartGlobalSearchFacets'
- Field 'fixedFacets' was added to object type 'DesPartGlobalSearchFacets'
- Field 'categoryNames' was added to object type 'DesPartGlobalSearchFixedFacets'
- Field 'manufacturerNames' was added to object type 'DesPartGlobalSearchFixedFacets'
- Field 'globalPart' was added to object type 'DesPartGlobalSearchItem'
- Field 'part' was added to object type 'DesPartGlobalSearchItem'
- Field 'medianPrice1000' was added to object type 'DesPartProviderPart'

#### Input / Payload

- Input field 'attributes' of type '[DesPartSearchAttributeFilterInput!]' was added to input object type 'DesPartGlobalSearchFilterInput'
- Input field 'categoryName' of type '[String!]' was added to input object type 'DesPartGlobalSearchFilterInput'
- Input field 'keyword' of type 'String' was added to input object type 'DesPartGlobalSearchFilterInput'
- Input field 'attribute' of type 'DesPartAttributeSortInput' was added to input object type 'DesPartGlobalSearchSortInput'
- Input field 'manufacturerName' of type 'SortEnumType' was added to input object type 'DesPartGlobalSearchSortInput'
- Input field 'mpn' of type 'SortEnumType' was added to input object type 'DesPartGlobalSearchSortInput'
- Input field 'hasUsages' of type 'Boolean' was added to input object type 'DesPartSearchFilterInput'


