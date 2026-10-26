# gateway-changelog-11-Jun-2026

## ✅ Non-Breaking Changes (88)

### Renesas (preview)

#### Fields

- Field 'bestPreviewImage' was added to object type 'SupSoftwareProject'
- Field 'previewImages' was added to object type 'SupSoftwareProject'

### Supply

#### 🔍 Query

- Field 'supRefDesignsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.supRefDesignsByIds'
- Field 'supSolutionTemplateRefDesignSearch' was added to object type 'Query'
- Argument 'filter: SupSolutionTemplateRefDesignFilterInput' added to 'Query.supSolutionTemplateRefDesignSearch'
- Argument 'limit: Int!' added to 'Query.supSolutionTemplateRefDesignSearch'
- Argument 'order: [SupSolutionTemplateRefDesignOrderInput!]' added to 'Query.supSolutionTemplateRefDesignSearch'
- Argument 'q: String!' added to 'Query.supSolutionTemplateRefDesignSearch'
- Argument 'start: Int!' added to 'Query.supSolutionTemplateRefDesignSearch'

#### ✏️ Mutation

- Field 'supSolutionTemplateIndexSolutionTemplate' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateIndexSolutionTemplateInput!' added to 'Mutation.supSolutionTemplateIndexSolutionTemplate'

#### Types

- Type 'SupSolutionTemplateIndexSolutionTemplatePayload' was added
- Object type 'SupSolutionTemplateIndexSolutionTemplatePayload' has description 'Payload associated with indexing a solution template.'
- Type 'SupSolutionTemplateRefDesignApplicationBucket' was added
- Object type 'SupSolutionTemplateRefDesignApplicationBucket' has description 'Aggregation bucket for applications with application identifier + counts.'
- Type 'SupSolutionTemplateRefDesignPublisherBucket' was added
- Object type 'SupSolutionTemplateRefDesignPublisherBucket' has description 'Aggregation bucket for reference design publishers with company identifier + counts.'
- Type 'SupSolutionTemplateRefDesignResultSet' was added
- Object type 'SupSolutionTemplateRefDesignResultSet' has description 'Reference designs with pagination, aggregation information.'
- Type 'SupSolutionTemplateRefDesignTagBucket' was added
- Object type 'SupSolutionTemplateRefDesignTagBucket' has description 'Aggregation bucket for reference design tags with name + counts.'
- Type 'SupSolutionTemplateRefDesignTypeBucket' was added
- Object type 'SupSolutionTemplateRefDesignTypeBucket' has description 'Aggregation bucket for reference design types with type + counts.'
- Type 'SupSolutionTemplateIndexSolutionTemplateError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateIndexSolutionTemplateError'
- Type 'SupSolutionTemplateRefDesign' was added
- Member 'SupRefDesign' was added to Union type 'SupSolutionTemplateRefDesign'
- Member 'SupSolutionTemplate' was added to Union type 'SupSolutionTemplateRefDesign'
- Object type 'SupSolutionTemplateRefDesign' has description 'Union type for solution template and reference design types.'
- Type 'SupSolutionTemplateRefDesignSortDirection' was added
- Enum value 'ASC' was added to enum 'SupSolutionTemplateRefDesignSortDirection'
- Enum value 'DESC' was added to enum 'SupSolutionTemplateRefDesignSortDirection'
- Object type 'SupSolutionTemplateRefDesignSortDirection' has description 'Specifies the sort direction for ordering results.'
- Type 'SupSolutionTemplateRefDesignType' was added
- Enum value 'DEMONSTRATION' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'DEVELOPMENT' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'EVALUATION' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'EXAMPLE' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'EXPANSION' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'REFERENCE_DESIGN' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'SOLUTION_TEMPLATE' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'STARTER' was added to enum 'SupSolutionTemplateRefDesignType'
- Enum value 'SYSTEM' was added to enum 'SupSolutionTemplateRefDesignType'
- Type 'SupSolutionTemplateIndexSolutionTemplateInput' was added
- Type 'SupSolutionTemplateRefDesignFilterInput' was added
- Object type 'SupSolutionTemplateRefDesignFilterInput' has description 'Input for filtering reference designs by additional conditions.'
- Type 'SupSolutionTemplateRefDesignOrderInput' was added
- Object type 'SupSolutionTemplateRefDesignOrderInput' has description 'Input for ordering solution templates or reference designs by one or more fields.'

#### Arguments

- Argument 'size: Int' (with default value) added to 'SupSolutionTemplateRefDesignResultSet.applicationAgg'
- Argument 'size: Int' (with default value) added to 'SupSolutionTemplateRefDesignResultSet.publisherAgg'
- Argument 'size: Int' (with default value) added to 'SupSolutionTemplateRefDesignResultSet.tagAgg'
- Argument 'size: Int' (with default value) added to 'SupSolutionTemplateRefDesignResultSet.typeAgg'

#### Fields

- Field 'errors' was added to object type 'SupSolutionTemplateIndexSolutionTemplatePayload'
- Field 'success' was added to object type 'SupSolutionTemplateIndexSolutionTemplatePayload'
- Field 'applicationId' was added to object type 'SupSolutionTemplateRefDesignApplicationBucket'
- Field 'count' was added to object type 'SupSolutionTemplateRefDesignApplicationBucket'
- Field 'count' was added to object type 'SupSolutionTemplateRefDesignPublisherBucket'
- Field 'publisherId' was added to object type 'SupSolutionTemplateRefDesignPublisherBucket'
- Field 'applicationAgg' was added to object type 'SupSolutionTemplateRefDesignResultSet'
- Field 'hits' was added to object type 'SupSolutionTemplateRefDesignResultSet'
- Field 'publisherAgg' was added to object type 'SupSolutionTemplateRefDesignResultSet'
- Field 'results' was added to object type 'SupSolutionTemplateRefDesignResultSet'
- Field 'tagAgg' was added to object type 'SupSolutionTemplateRefDesignResultSet'
- Field 'typeAgg' was added to object type 'SupSolutionTemplateRefDesignResultSet'
- Field 'count' was added to object type 'SupSolutionTemplateRefDesignTagBucket'
- Field 'name' was added to object type 'SupSolutionTemplateRefDesignTagBucket'
- Field 'count' was added to object type 'SupSolutionTemplateRefDesignTypeBucket'
- Field 'type' was added to object type 'SupSolutionTemplateRefDesignTypeBucket'
- Field 'releaseDate' was added to object type 'SupSolutionTemplate'

#### Input / Payload

- Input field 'solutionTemplateIds' of type '[ID!]!' was added to input object type 'SupSolutionTemplateIndexSolutionTemplateInput'
- Input field 'applicationIds' of type '[String]' was added to input object type 'SupSolutionTemplateRefDesignFilterInput'
- Input field 'categoryIds' of type '[String]' was added to input object type 'SupSolutionTemplateRefDesignFilterInput'
- Input field 'hasEvalBoard' of type 'Boolean' was added to input object type 'SupSolutionTemplateRefDesignFilterInput'
- Input field 'isVerified' of type 'Boolean' was added to input object type 'SupSolutionTemplateRefDesignFilterInput'
- Input field 'publisherIds' of type '[String]' was added to input object type 'SupSolutionTemplateRefDesignFilterInput'
- Input field 'statuses' of type '[SupSolutionTemplateStatus]' was added to input object type 'SupSolutionTemplateRefDesignFilterInput'
- Input field 'tags' of type '[String]' was added to input object type 'SupSolutionTemplateRefDesignFilterInput'
- Input field 'createdAt' of type 'SupSolutionTemplateRefDesignSortDirection' was added to input object type 'SupSolutionTemplateRefDesignOrderInput'
- Input field 'stableName' of type 'SupSolutionTemplateRefDesignSortDirection' was added to input object type 'SupSolutionTemplateRefDesignOrderInput'
- Input field 'title' of type 'SupSolutionTemplateRefDesignSortDirection' was added to input object type 'SupSolutionTemplateRefDesignOrderInput'
- Input field 'type' of type 'SupSolutionTemplateRefDesignSortDirection' was added to input object type 'SupSolutionTemplateRefDesignOrderInput'
- Input field 'updatedAt' of type 'SupSolutionTemplateRefDesignSortDirection' was added to input object type 'SupSolutionTemplateRefDesignOrderInput'
- Input field 'releaseDate' of type 'DateTime' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'requirementTemplate' of type 'String' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'releaseDate' of type 'SortEnumType' was added to input object type 'SupSolutionTemplateSortInput'
- Input field 'releaseDate' of type 'DateTime' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'requirementTemplate' of type 'String' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'


