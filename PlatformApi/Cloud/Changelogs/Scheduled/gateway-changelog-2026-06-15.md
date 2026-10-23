# gateway-changelog-15-Jun-2026

## ⚠️ Dangerous Changes (1)

### Library Management

#### 🔍 Query

- Argument 'minCoverage: Float!' (with default value) added to 'Query.desPartSearchSuggestions'


---

## ✅ Non-Breaking Changes (48)

### Library Management

#### 🔍 Query

- Field 'desPartSearchInference' was added to object type 'Query'
- Argument 'where: DesPartSearchInferenceFilterInput!' added to 'Query.desPartSearchInference'

#### Types

- Type 'DesPartSearchInferenceCategorySuggestion' was added
- Object type 'DesPartSearchInferenceCategorySuggestion' has description 'Represents a suggested category for an inferred search.'
- Type 'DesPartSearchInferenceResult' was added
- Object type 'DesPartSearchInferenceResult' has description 'Represents inferred part search criteria.'
- Type 'DesPartSearchInferenceStrippedSpan' was added
- Object type 'DesPartSearchInferenceStrippedSpan' has description 'Represents a term stripped from the original query during inference.'
- Type 'DesPartSearchInferenceSuggestedAttribute' was added
- Object type 'DesPartSearchInferenceSuggestedAttribute' has description 'Represents an inferred search attribute.'
- Type 'DesPartSearchInferenceFilterInput' was added
- Object type 'DesPartSearchInferenceFilterInput' has description 'Filter for inferring part search criteria from a keyword.'

#### Fields

- Field 'category' was added to object type 'DesPartSearchInferenceCategorySuggestion'
- Field 'count' was added to object type 'DesPartSearchInferenceCategorySuggestion'
- Field 'attributes' was added to object type 'DesPartSearchInferenceResult'
- Field 'category' was added to object type 'DesPartSearchInferenceResult'
- Field 'manufacturer' was added to object type 'DesPartSearchInferenceResult'
- Field 'normalizedQuery' was added to object type 'DesPartSearchInferenceResult'
- Field 'strippedQuery' was added to object type 'DesPartSearchInferenceResult'
- Field 'strippedSpans' was added to object type 'DesPartSearchInferenceResult'
- Field 'suggestedCategories' was added to object type 'DesPartSearchInferenceResult'
- Field 'attributeShortnames' was added to object type 'DesPartSearchInferenceStrippedSpan'
- Field 'end' was added to object type 'DesPartSearchInferenceStrippedSpan'
- Field 'start' was added to object type 'DesPartSearchInferenceStrippedSpan'
- Field 'text' was added to object type 'DesPartSearchInferenceStrippedSpan'
- Field 'attribute' was added to object type 'DesPartSearchInferenceSuggestedAttribute'
- Field 'displayValues' was added to object type 'DesPartSearchInferenceSuggestedAttribute'
- Field 'name' was added to object type 'DesPartSearchInferenceSuggestedAttribute'
- Field 'shortname' was added to object type 'DesPartSearchInferenceSuggestedAttribute'
- Field 'unitsSymbol' was added to object type 'DesPartSearchInferenceSuggestedAttribute'
- Field 'values' was added to object type 'DesPartSearchInferenceSuggestedAttribute'

#### Input / Payload

- Input field 'attributes' of type '[DesPartSearchAttributeFilterInput!]' was added to input object type 'DesPartSearchInferenceFilterInput'
- Input field 'categories' of type '[String!]' was added to input object type 'DesPartSearchInferenceFilterInput'
- Input field 'inStockOnly' of type 'Boolean' was added to input object type 'DesPartSearchInferenceFilterInput'
- Input field 'keyword' of type 'String!' was added to input object type 'DesPartSearchInferenceFilterInput'
- Input field 'manufacturers' of type '[String!]' was added to input object type 'DesPartSearchInferenceFilterInput'

### System Design

#### Types

- Type 'SysSdmAuthoringApplication' was added
- Object type 'SysSdmAuthoringApplication' has description '**Experimental**'
- Type 'SysSdmSystemModelVersionMetadata' was added
- Object type 'SysSdmSystemModelVersionMetadata' has description '**Experimental**'

#### Fields

- Field 'applicationId' was added to object type 'SysSdmAuthoringApplication'
- Field 'name' was added to object type 'SysSdmAuthoringApplication'
- Field 'version' was added to object type 'SysSdmAuthoringApplication'
- Field 'authoringApplication' was added to object type 'SysSdmSystemModelVersionMetadata'
- Field 'createdAt' was added to object type 'SysSdmSystemModelVersionMetadata'
- Field 'createdBy' was added to object type 'SysSdmSystemModelVersionMetadata'
- Field 'tags' was added to object type 'SysSdmSystemModelVersionMetadata'
- Field 'metadata' was added to object type 'SysSdmSystemModelVersion'


