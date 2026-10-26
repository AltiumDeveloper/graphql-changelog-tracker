# gateway-changelog-05-Dec-2025

## 🔴 Breaking Changes (4)

### Library Management

#### 🔍 Query

- Argument 'partId: String!' was removed from field 'Query.desPartById'
- Argument 'id: ID!' added to 'Query.desPartById'

#### Fields

- Field 'partId' was removed from object type 'DesPart'
- Field 'partSourceName' was removed from object type 'DesPartSellerWithOffers'


---

## ✅ Non-Breaking Changes (128)

### Common

#### Types

- Object type 'SortEnumType' has description 'Represents the sort direction.'

### Library Management

#### 🔍 Query

- Field 'desPartByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.desPartByIds'
- Field 'desPartSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.desPartSearch'
- Argument 'before: String' added to 'Query.desPartSearch'
- Argument 'first: Int' added to 'Query.desPartSearch'
- Argument 'last: Int' added to 'Query.desPartSearch'
- Argument 'order: [DesPartSortInput!]' added to 'Query.desPartSearch'
- Argument 'where: DesPartSearchFilterInput' added to 'Query.desPartSearch'

#### Types

- Type 'DesPartBomUsage' was added
- Object type 'DesPartBomUsage' has description 'Represents a BOM usage.'
- Type 'DesPartComponentUsage' was added
- Object type 'DesPartComponentUsage' has description 'Represents a component usage.'
- Type 'DesPartFacetRange' was added
- Object type 'DesPartFacetRange' has description 'Represents a facet range.'
- Type 'DesPartProjectUsage' was added
- Object type 'DesPartProjectUsage' has description 'Represents a project usage.'
- Type 'DesPartSearchAttributeFacet' was added
- Object type 'DesPartSearchAttributeFacet' has description 'Represents an attribute facet.'
- Type 'DesPartSearchConnection' was added
- Object type 'DesPartSearchConnection' has description 'A connection to a list of items.'
- Type 'DesPartSearchEdge' was added
- Object type 'DesPartSearchEdge' has description 'An edge in a connection.'
- Type 'DesPartSearchFacets' was added
- Object type 'DesPartSearchFacets' has description 'Represents the search facets.'
- Type 'DesPartSearchFacetValue' was added
- Object type 'DesPartSearchFacetValue' has description 'Represents a search facet value.'
- Type 'DesPartSearchFixedFacets' was added
- Object type 'DesPartSearchFixedFacets' has description 'Represents fixed search facets.'
- Type 'DesPartSource' was added
- Object type 'DesPartSource' has description 'Represents a part source.'
- Type 'DesPartUsages' was added
- Object type 'DesPartUsages' has description 'Represents the usages of a part.'
- Type 'DesPartAttributeSortInput' was added
- Object type 'DesPartAttributeSortInput' has description 'Represents the input for sorting by attribute.'
- Type 'DesPartPartProvidersFilterInput' was added
- Object type 'DesPartPartProvidersFilterInput' has description 'Represents the filter for part providers.'
- Type 'DesPartSearchAttributeFilterInput' was added
- Object type 'DesPartSearchAttributeFilterInput' has description 'Represents the filter for searching by attribute.'
- Type 'DesPartSearchFilterInput' was added
- Object type 'DesPartSearchFilterInput' has description 'Represents the filter for searching parts.'
- Type 'DesPartSearchUsagesFilterInput' was added
- Object type 'DesPartSearchUsagesFilterInput' has description 'Represents the filter for searching by usages.'
- Type 'DesPartSortInput' was added
- Object type 'DesPartSortInput' has description 'Represents the input for sorting parts.'
- Object type 'DesPartAttribute' has description 'Represents a part attribute.'
- Object type 'DesPartCategory' has description 'Represents a part category.'
- Object type 'DesPartCompany' has description 'Represents a company.'
- Object type 'DesPartCompanyOffer' has description 'Represents a company offer.'
- Object type 'DesPartDocument' has description 'Represents a part document.'
- Object type 'DesPartDocumentCollection' has description 'Represents a collection of part documents.'
- Object type 'DesPartPricePoint' has description 'The price points of the offer, sorted by minimum order quantity.'
- Object type 'DesPartProviderPart' has description 'Represents a provider part.'
- Object type 'DesPartSellerWithOffers' has description 'Represents a seller with offers.'
- Object type 'DesPartSpec' has description 'Represents a part specification.'
- Object type 'DesPartSupplyPart' has description 'Represents a supply part.'

#### Fields

- Field 'designators' was added to object type 'DesPartBomUsage'
- Field 'elementIds' was added to object type 'DesPartBomUsage'
- Field 'id' was added to object type 'DesPartBomUsage'
- Field 'linkedComponentsIds' was added to object type 'DesPartBomUsage'
- Field 'id' was added to object type 'DesPartComponentUsage'
- Field 'partChoiceIds' was added to object type 'DesPartComponentUsage'
- Field 'from' was added to object type 'DesPartFacetRange'
- Field 'to' was added to object type 'DesPartFacetRange'
- Field 'designators' was added to object type 'DesPartProjectUsage'
- Field 'elementIds' was added to object type 'DesPartProjectUsage'
- Field 'id' was added to object type 'DesPartProjectUsage'
- Field 'linkedComponentsIds' was added to object type 'DesPartProjectUsage'
- Field 'variantId' was added to object type 'DesPartProjectUsage'
- Field 'attributeId' was added to object type 'DesPartSearchAttributeFacet'
- Field 'range' was added to object type 'DesPartSearchAttributeFacet'
- Field 'values' was added to object type 'DesPartSearchAttributeFacet'
- Field 'edges' was added to object type 'DesPartSearchConnection'
- Field 'nodes' was added to object type 'DesPartSearchConnection'
- Field 'pageInfo' was added to object type 'DesPartSearchConnection'
- Field 'searchFacets' was added to object type 'DesPartSearchConnection'
- Field 'totalCount' was added to object type 'DesPartSearchConnection'
- Field 'cursor' was added to object type 'DesPartSearchEdge'
- Field 'node' was added to object type 'DesPartSearchEdge'
- Field 'attributeFacets' was added to object type 'DesPartSearchFacets'
- Field 'fixedFacets' was added to object type 'DesPartSearchFacets'
- Field 'count' was added to object type 'DesPartSearchFacetValue'
- Field 'value' was added to object type 'DesPartSearchFacetValue'
- Field 'categoryNames' was added to object type 'DesPartSearchFixedFacets'
- Field 'hasBomOrProjectUsages' was added to object type 'DesPartSearchFixedFacets'
- Field 'manufacturerNames' was added to object type 'DesPartSearchFixedFacets'
- Field 'name' was added to object type 'DesPartSource'
- Field 'partSourceGuid' was added to object type 'DesPartSource'
- Field 'assemblyVariants' was added to object type 'DesPartUsages'
- Field 'bomReleaseUsages' was added to object type 'DesPartUsages'
- Field 'componentUsages' was added to object type 'DesPartUsages'
- Field 'consolidatedBomReleasesUsages' was added to object type 'DesPartUsages'
- Field 'projectUsages' was added to object type 'DesPartUsages'
- Field 'wipBomUsages' was added to object type 'DesPartUsages'
- Field 'wipConsolidatedBomUsages' was added to object type 'DesPartUsages'
- Field 'id' was added to object type 'DesPart'
- Field 'usages' was added to object type 'DesPart'
- Field 'customPartSource' was added to object type 'DesPartSellerWithOffers'

#### Input / Payload

- Input field 'attributeId' of type 'String!' was added to input object type 'DesPartAttributeSortInput'
- Input field 'direction' of type 'SortEnumType!' was added to input object type 'DesPartAttributeSortInput'
- Input field 'hasAltiumPartProvider' of type 'Boolean' was added to input object type 'DesPartPartProvidersFilterInput'
- Input field 'hasCustomPartProvider' of type 'Boolean' was added to input object type 'DesPartPartProvidersFilterInput'
- Input field 'hasSiliconExpertPartProvider' of type 'Boolean' was added to input object type 'DesPartPartProvidersFilterInput'
- Input field 'hasZ2DataPartProvider' of type 'Boolean' was added to input object type 'DesPartPartProvidersFilterInput'
- Input field 'attributeId' of type 'String!' was added to input object type 'DesPartSearchAttributeFilterInput'
- Input field 'values' of type '[String!]!' was added to input object type 'DesPartSearchAttributeFilterInput'
- Input field 'attributes' of type '[DesPartSearchAttributeFilterInput!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'categoryName' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'customPartSourceName' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'hasBomOrProjectsUsages' of type 'Boolean' was added to input object type 'DesPartSearchFilterInput'
- Input field 'keyword' of type 'String' was added to input object type 'DesPartSearchFilterInput'
- Input field 'manufacturerName' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'mpn' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'partProviders' of type 'DesPartPartProvidersFilterInput' was added to input object type 'DesPartSearchFilterInput'
- Input field 'supplierName' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'supplierPartNumber' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'usages' of type '[DesPartSearchUsagesFilterInput!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'id' of type 'ID!' was added to input object type 'DesPartSearchUsagesFilterInput'
- Input field 'variantId' of type 'String' was added to input object type 'DesPartSearchUsagesFilterInput'
- Input field 'attribute' of type 'DesPartAttributeSortInput' was added to input object type 'DesPartSortInput'
- Input field 'categoryName' of type 'SortEnumType' was added to input object type 'DesPartSortInput'
- Input field 'manufacturerName' of type 'SortEnumType' was added to input object type 'DesPartSortInput'
- Input field 'mpn' of type 'SortEnumType' was added to input object type 'DesPartSortInput'

### Supply

#### 🔍 Query

- Field 'supSolutionTemplateApplications' was added to object type 'Query'
- Argument 'limit: Int!' (with default value) added to 'Query.supSolutionTemplateApplications'
- Argument 'start: Int!' (with default value) added to 'Query.supSolutionTemplateApplications'

#### Input / Payload

- Input field 'hasAIModels' of type 'Boolean' was added to input object type 'SupSolutionTemplateFilterInput'


