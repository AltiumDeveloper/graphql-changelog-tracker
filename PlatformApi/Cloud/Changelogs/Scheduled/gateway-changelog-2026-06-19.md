# gateway-changelog-19-Jun-2026

## 🔴 Breaking Changes (30)

### Design

#### ✏️ Mutation

- Field 'design' (deprecated) was removed from object type 'Mutation'

#### Types

- Type 'DesignMutations' was removed
- Type 'DesignPreviewMutations' was removed
- Type 'RuleCheck_Preview' was removed
- Type 'RuleCheckConfiguration_Preview' was removed
- Type 'RuleCheckExecutionPart_Preview' was removed
- Type 'RuleViolationRelatedObject_Preview' was removed

#### Fields

- Field 'latestGenerationByFileId' was removed from object type 'DesignPreviewQueries'
- Field 'DesignPreviewQueries.latestGeneration' changed type from 'DesignDataGeneration_Preview!' to 'DesignDataGeneration_Preview'
- Field 'DesignPreviewQueries.latestGenerationByUploadId' changed type from 'DesignDataGeneration_Preview!' to 'DesignDataGeneration_Preview'
- Field 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId' changed type from 'RuleCheckAggregateExecution_Preview!' to 'RuleCheckAggregateExecution_Preview'
- Field 'DesignPreviewQueries.ruleCheckAggregateResultsByReleaseId' changed type from 'RuleCheckAggregateExecution_Preview!' to 'RuleCheckAggregateExecution_Preview'
- Field 'DesignPreviewQueries.ruleCheckById' changed type from 'RuleCheck_Preview' to 'RuleCheck'
- Field 'DesignPreviewQueries.ruleCheckConfiguration' changed type from 'RuleCheckConfiguration_Preview!' to 'RuleCheckConfiguration!'
- Field 'DesignPreviewQueries.ruleCheckExecutions' changed type from '[RuleCheckExecution_Preview]!' to '[RuleCheckExecution_Preview]'
- Field 'DesignPreviewQueries.ruleCheckExecutionsByDesignId' changed type from '[RuleCheckExecution_Preview!]!' to '[RuleCheckExecution_Preview!]'
- Field 'DesignPreviewQueries.ruleCheckExecutionsByReleaseId' changed type from '[RuleCheckExecution_Preview!]!' to '[RuleCheckExecution_Preview!]'
- Field 'DesignPreviewQueries.ruleCheckLatestExecution' changed type from 'RuleCheckExecution_Preview!' to 'RuleCheckExecution_Preview'
- Field 'DesignPreviewQueries.ruleChecksByAuth' changed type from '[RuleCheck_Preview!]!' to '[RuleCheck!]!'
- Field 'DesignPreviewQueries.ruleChecksByIds' changed type from '[RuleCheck_Preview]!' to '[RuleCheck]!'
- Field 'DesignRuleCheckExecuteOnUploadPayload.ruleCheckExecution_Preview' changed type from 'RuleCheckExecution_Preview' to 'RuleCheckExecution!'
- Field 'DesignRuleCheckExecutePayload.ruleCheckExecution_Preview' changed type from 'RuleCheckExecution_Preview' to 'RuleCheckExecution!'
- Field 'RuleCheckAggregateExecution_Preview.parts' changed type from '[RuleCheckExecutionPart_Preview!]!' to '[RuleCheckExecutionPart!]!'
- Field 'RuleCheckAggregateExecution_Preview.ruleChecks' changed type from '[RuleCheckExecutionPart_Preview!]' to '[RuleCheckExecutionPart!]'
- Field 'RuleCheckExecution_Preview.parts' changed type from '[RuleCheckExecutionPart_Preview!]!' to '[RuleCheckExecutionPart!]!'
- Field 'RuleCheckExecution_Preview.ruleChecks' changed type from '[RuleCheckExecutionPart_Preview!]' to '[RuleCheckExecutionPart!]'
- Field 'RuleViolation_Preview.boundingRectangle' changed type from 'DesignDataRectangle_Preview' to 'RuleViolationRectangle'
- Field 'RuleViolation_Preview.location' changed type from 'DesignDataLocation_Preview' to 'RuleViolationLocation'
- Field 'RuleViolation_Preview.relatedObjects' changed type from '[RuleViolationRelatedObject_Preview!]!' to '[RuleViolationRelatedObject!]!'
- Field 'RuleViolation_Preview.ruleCheck' changed type from 'RuleCheckExecutionPart_Preview!' to 'RuleCheckExecutionPart!'


---

## ✅ Non-Breaking Changes (166)

### Design

#### Types

- Type 'DesignDataGeneration' was added
- Object type 'DesignDataGeneration' has description '**Experimental** Represents a design data generation process and its result.'
- Type 'LatestGenerationQueries' was added
- Object type 'LatestGenerationQueries' has description '**Experimental** The entry point for queries related to the latest design data generation.'
- Type 'RuleCheck' was added
- Object type 'RuleCheck' has description '**Experimental** Represents a rule check definition.'
- Type 'RuleCheckAggregateExecution' was added
- Object type 'RuleCheckAggregateExecution' has description '**Experimental** Represents the aggregated result of one or more rule check executions for a design.'
- Type 'RuleCheckConfiguration' was added
- Object type 'RuleCheckConfiguration' has description '**Experimental** Represents current rule check configuration.'
- Type 'RuleCheckExecution' was added
- Object type 'RuleCheckExecution' has description '**Experimental** Represents the execution of rule checks against a design.'
- Type 'RuleCheckExecutionPart' was added
- Object type 'RuleCheckExecutionPart' has description '**Experimental** Represents the definition of a single rule check (one part of the execution) at the time of execution and it\'s current status.'
- Type 'RuleCheckExecutionQueries' was added
- Object type 'RuleCheckExecutionQueries' has description '**Experimental** The entry point for queries related to design rule checks.'
- Type 'RuleCheckQueries' was added
- Object type 'RuleCheckQueries' has description '**Experimental** The entry point for queries related to design rule checks.'
- Type 'RuleViolation' was added
- Object type 'RuleViolation' has description '**Experimental** Represents a violation detected during a rule check execution.'
- Type 'RuleViolationLocation' was added
- Object type 'RuleViolationLocation' has description '**Experimental** Represents a 2D coordinate location associated with a rule violation.'
- Type 'RuleViolationRectangle' was added
- Object type 'RuleViolationRectangle' has description '**Experimental** Represents an axis-aligned bounding rectangle associated with a rule violation.'
- Type 'RuleViolationRelatedObject' was added
- Object type 'RuleViolationRelatedObject' has description '**Experimental** Represents a design object related to a rule violation.'

#### Arguments

- Argument 'designId: ID!' added to 'LatestGenerationQueries.byDesignId'
- Argument 'revisionId: String' added to 'LatestGenerationQueries.byDesignId'
- Argument 'uploadId: String!' added to 'LatestGenerationQueries.byUploadId'
- Argument 'designId: ID!' added to 'RuleCheckExecutionQueries.byDesignId'
- Argument 'revisionId: String!' added to 'RuleCheckExecutionQueries.byDesignId'
- Argument 'where: RuleCheckExecutionFilterInput' added to 'RuleCheckExecutionQueries.byDesignId'
- Argument 'designId: ID!' added to 'RuleCheckExecutionQueries.byDesignIdAggregated'
- Argument 'revisionId: String' added to 'RuleCheckExecutionQueries.byDesignIdAggregated'
- Argument 'where: RuleCheckExecutionFilterInput' added to 'RuleCheckExecutionQueries.byDesignIdAggregated'
- Argument 'id: ID!' added to 'RuleCheckExecutionQueries.byId'
- Argument 'ids: [ID!]!' added to 'RuleCheckExecutionQueries.byIds'
- Argument 'designId: ID!' added to 'RuleCheckExecutionQueries.byReleaseId'
- Argument 'releaseId: ID!' added to 'RuleCheckExecutionQueries.byReleaseId'
- Argument 'where: RuleCheckExecutionFilterInput' added to 'RuleCheckExecutionQueries.byReleaseId'
- Argument 'designId: ID!' added to 'RuleCheckExecutionQueries.byReleaseIdAggregated'
- Argument 'releaseId: ID!' added to 'RuleCheckExecutionQueries.byReleaseIdAggregated'
- Argument 'where: RuleCheckExecutionFilterInput' added to 'RuleCheckExecutionQueries.byReleaseIdAggregated'
- Argument 'id: ID!' added to 'RuleCheckQueries.byId'
- Argument 'ids: [ID!]!' added to 'RuleCheckQueries.byIds'

#### Fields

- Field 'designData_Preview' was added to object type 'DesignDataGeneration'
- Field 'designId' was added to object type 'DesignDataGeneration'
- Field 'message' was added to object type 'DesignDataGeneration'
- Field 'revisionId' was added to object type 'DesignDataGeneration'
- Field 'status' was added to object type 'DesignDataGeneration'
- Field 'uploadId' was added to object type 'DesignDataGeneration'
- Field 'byDesignId' was added to object type 'LatestGenerationQueries'
- Field 'byUploadId' was added to object type 'LatestGenerationQueries'
- Field 'actualErrorReportLevel' was added to object type 'RuleCheck'
- Field 'defaultErrorReportLevel' was added to object type 'RuleCheck'
- Field 'description' was added to object type 'RuleCheck'
- Field 'id' was added to object type 'RuleCheck'
- Field 'name' was added to object type 'RuleCheck'
- Field 'type' was added to object type 'RuleCheck'
- Field 'designId' was added to object type 'RuleCheckAggregateExecution'
- Field 'executions' was added to object type 'RuleCheckAggregateExecution'
- Field 'parts' was added to object type 'RuleCheckAggregateExecution'
- Field 'revisionId' was added to object type 'RuleCheckAggregateExecution'
- Field 'status' was added to object type 'RuleCheckAggregateExecution'
- Field 'violations' was added to object type 'RuleCheckAggregateExecution'
- Field 'features' was added to object type 'RuleCheckConfiguration'
- Field 'staleStatusThreshold' was added to object type 'RuleCheckConfiguration'
- Field 'designId' was added to object type 'RuleCheckExecution'
- Field 'finishedAt' was added to object type 'RuleCheckExecution'
- Field 'id' was added to object type 'RuleCheckExecution'
- Field 'parts' was added to object type 'RuleCheckExecution'
- Field 'reason' was added to object type 'RuleCheckExecution'
- Field 'revisionId' was added to object type 'RuleCheckExecution'
- Field 'source' was added to object type 'RuleCheckExecution'
- Field 'startedAt' was added to object type 'RuleCheckExecution'
- Field 'startedByUserId' was added to object type 'RuleCheckExecution'
- Field 'status' was added to object type 'RuleCheckExecution'
- Field 'uploadId' was added to object type 'RuleCheckExecution'
- Field 'violations' was added to object type 'RuleCheckExecution'
- Field 'actualErrorReportLevel' was added to object type 'RuleCheckExecutionPart'
- Field 'currentRule' was added to object type 'RuleCheckExecutionPart'
- Field 'defaultErrorReportLevel' was added to object type 'RuleCheckExecutionPart'
- Field 'description' was added to object type 'RuleCheckExecutionPart'
- Field 'id' was added to object type 'RuleCheckExecutionPart'
- Field 'name' was added to object type 'RuleCheckExecutionPart'
- Field 'status' was added to object type 'RuleCheckExecutionPart'
- Field 'type' was added to object type 'RuleCheckExecutionPart'
- Field 'byDesignId' was added to object type 'RuleCheckExecutionQueries'
- Field 'byDesignIdAggregated' was added to object type 'RuleCheckExecutionQueries'
- Field 'byId' was added to object type 'RuleCheckExecutionQueries'
- Field 'byIds' was added to object type 'RuleCheckExecutionQueries'
- Field 'byReleaseId' was added to object type 'RuleCheckExecutionQueries'
- Field 'byReleaseIdAggregated' was added to object type 'RuleCheckExecutionQueries'
- Field 'byAuth' was added to object type 'RuleCheckQueries'
- Field 'byId' was added to object type 'RuleCheckQueries'
- Field 'byIds' was added to object type 'RuleCheckQueries'
- Field 'configuration' was added to object type 'RuleCheckQueries'
- Field 'boundingRectangle' was added to object type 'RuleViolation'
- Field 'documentId' was added to object type 'RuleViolation'
- Field 'errorReportLevel' was added to object type 'RuleViolation'
- Field 'errorText' was added to object type 'RuleViolation'
- Field 'location' was added to object type 'RuleViolation'
- Field 'relatedObjects' was added to object type 'RuleViolation'
- Field 'ruleCheck' was added to object type 'RuleViolation'
- Field 'ruleFailureCode' was added to object type 'RuleViolation'
- Field 'variantId' was added to object type 'RuleViolation'
- Field 'variantName' was added to object type 'RuleViolation'
- Field 'x' was added to object type 'RuleViolationLocation'
- Field 'y' was added to object type 'RuleViolationLocation'
- Field 'bottom' was added to object type 'RuleViolationRectangle'
- Field 'left' was added to object type 'RuleViolationRectangle'
- Field 'right' was added to object type 'RuleViolationRectangle'
- Field 'top' was added to object type 'RuleViolationRectangle'
- Field 'boundingRectangle' was added to object type 'RuleViolationRelatedObject'
- Field 'designator' was added to object type 'RuleViolationRelatedObject'
- Field 'documentId' was added to object type 'RuleViolationRelatedObject'
- Field 'location' was added to object type 'RuleViolationRelatedObject'
- Field 'name' was added to object type 'RuleViolationRelatedObject'
- Field 'type' was added to object type 'RuleViolationRelatedObject'
- Field 'uniqueId' was added to object type 'RuleViolationRelatedObject'
- Field 'variantId' was added to object type 'RuleViolationRelatedObject'
- Field 'variantName' was added to object type 'RuleViolationRelatedObject'
- Field 'version' was added to object type 'DesignData_Preview'
- Field 'DesignPreviewQueries.latestGeneration' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.latestGeneration'
- Field 'DesignPreviewQueries.latestGenerationByUploadId' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.latestGenerationByUploadId'
- Field 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId'
- Field 'DesignPreviewQueries.ruleCheckAggregateResultsByReleaseId' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckAggregateResultsByReleaseId'
- Field 'DesignPreviewQueries.ruleCheckById' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckById'
- Field 'DesignPreviewQueries.ruleCheckConfiguration' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckConfiguration'
- Field 'DesignPreviewQueries.ruleCheckExecution' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckExecution'
- Field 'DesignPreviewQueries.ruleCheckExecutions' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckExecutions'
- Field 'DesignPreviewQueries.ruleCheckExecutionsByDesignId' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckExecutionsByDesignId'
- Field 'DesignPreviewQueries.ruleCheckExecutionsByReleaseId' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckExecutionsByReleaseId'
- Field 'DesignPreviewQueries.ruleCheckLatestExecution' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleCheckLatestExecution'
- Field 'DesignPreviewQueries.ruleChecksByAuth' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleChecksByAuth'
- Field 'DesignPreviewQueries.ruleChecksByIds' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewQueries.ruleChecksByIds'
- Field 'latestGeneration' was added to object type 'DesignQueries'
- Field 'ruleCheck' was added to object type 'DesignQueries'
- Field 'ruleCheckExecution' was added to object type 'DesignQueries'
- Field 'ruleCheckExecution' was added to object type 'DesignRuleCheckExecuteOnUploadPayload'
- Field 'DesignRuleCheckExecuteOnUploadPayload.ruleCheckExecution_Preview' is deprecated
- Directive 'deprecated' was added to 'DesignRuleCheckExecuteOnUploadPayload.ruleCheckExecution_Preview'
- Field 'ruleCheckExecution' was added to object type 'DesignRuleCheckExecutePayload'
- Field 'DesignRuleCheckExecutePayload.ruleCheckExecution_Preview' is deprecated
- Directive 'deprecated' was added to 'DesignRuleCheckExecutePayload.ruleCheckExecution_Preview'
- Field 'RuleViolation_Preview.ruleNameWithVariant' is deprecated
- Directive 'deprecated' was added to 'RuleViolation_Preview.ruleNameWithVariant'

#### Input / Payload

- Input field 'clientExecutionId' of type 'String' was added to input object type 'DesignRuleCheckExecuteInput'
- Input field 'DesignRuleCheckExecuteInput.idempotencyToken' changed type from 'String!' to 'String'
- Directive 'deprecated' was added to input field 'idempotencyToken' in input object 'DesignRuleCheckExecuteInput'
- Input field 'clientExecutionId' of type 'String' was added to input object type 'DesignRuleCheckExecuteOnUploadInput'
- Input field 'DesignRuleCheckExecuteOnUploadInput.idempotencyToken' changed type from 'String!' to 'String'
- Directive 'deprecated' was added to input field 'idempotencyToken' in input object 'DesignRuleCheckExecuteOnUploadInput'


