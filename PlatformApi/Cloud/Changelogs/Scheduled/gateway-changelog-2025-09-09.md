# gateway-changelog-09-Sep-2025

## ✅ Non-Breaking Changes (51)

### Platform

#### 🔍 Query

- Field 'solBldScaffoldingStatus' was added to object type 'Query'
- Argument 'jobId: ID!' added to 'Query.solBldScaffoldingStatus'
- Field 'solSolutionsByPage' was added to object type 'Query'
- Argument 'pageNumber: Int!' added to 'Query.solSolutionsByPage'
- Argument 'pageSize: Int!' added to 'Query.solSolutionsByPage'

#### ✏️ Mutation

- Field 'solBldScaffolding' was added to object type 'Mutation'
- Argument 'input: SolBldScaffoldingInput!' added to 'Mutation.solBldScaffolding'

#### Types

- Type 'SolBldScaffoldingPayload' was added
- Type 'SolBldScaffoldingStatusPayload' was added
- Type 'SolBldScaffoldingInput' was added

#### Fields

- Field 'jobId' was added to object type 'SolBldScaffoldingPayload'
- Field 'solutionId' was added to object type 'SolBldScaffoldingStatusPayload'
- Field 'status' was added to object type 'SolBldScaffoldingStatusPayload'
- Field 'simulationIds' was added to object type 'SolSolution'
- Field 'SolSolution.simulationIds' is deprecated
- Directive 'deprecated' was added to 'SolSolution.simulationIds'
- Field 'SolSolution.createdById' is deprecated
- Directive 'deprecated' was added to 'SolSolution.createdById'
- Field 'SolSolution.modifiedById' is deprecated
- Directive 'deprecated' was added to 'SolSolution.modifiedById'

#### Input / Payload

- Input field 'documentFileId' of type 'String!' was added to input object type 'SolBldScaffoldingInput'
- Input field 'previewFileId' of type 'String' was added to input object type 'SolBldScaffoldingInput'

### Supply

#### Types

- Type 'SupRefCategoryBucket' was added
- Type 'SupRefDesignTypeBucket' was added
- Type 'SupRefEvaluationKit' was added
- Type 'SupRefDesignType' was added
- Enum value 'DEMOSTRATION' was added to enum 'SupRefDesignType'
- Enum value 'DEVELOPMENT' was added to enum 'SupRefDesignType'
- Enum value 'EVALUATION' was added to enum 'SupRefDesignType'
- Enum value 'EXPANSION' was added to enum 'SupRefDesignType'
- Enum value 'REFERENCE_DESIGN' was added to enum 'SupRefDesignType'
- Enum value 'STARTER' was added to enum 'SupRefDesignType'
- Enum value 'SYSTEM' was added to enum 'SupRefDesignType'

#### Arguments

- Argument 'size: Int' (with default value) added to 'SupRefDesignResultSet.categoryAgg'
- Argument 'size: Int' (with default value) added to 'SupRefDesignResultSet.typeAgg'

#### Fields

- Field 'categoryId' was added to object type 'SupRefCategoryBucket'
- Field 'count' was added to object type 'SupRefCategoryBucket'
- Field 'count' was added to object type 'SupRefDesignTypeBucket'
- Field 'type' was added to object type 'SupRefDesignTypeBucket'
- Field 'partId' was added to object type 'SupRefEvaluationKit'
- Field 'previewImages' was added to object type 'SupRefEvaluationKit'
- Field 'title' was added to object type 'SupRefEvaluationKit'
- Field 'evaluationKits' was added to object type 'SupRefDesign'
- Field 'type' was added to object type 'SupRefDesign'
- Field 'SupRefDesign.evaluationKitIds' is deprecated
- Directive 'deprecated' was added to 'SupRefDesign.evaluationKitIds'
- Field 'categoryAgg' was added to object type 'SupRefDesignResultSet'
- Field 'typeAgg' was added to object type 'SupRefDesignResultSet'
- Field 'html' was added to object type 'SupRefKeyFeature'
- Field 'revisionDate' was added to object type 'SupRefResource'

#### Input / Payload

- Input field 'types' of type '[SupRefDesignType!]' was added to input object type 'SupRefDesignFilterInput'


