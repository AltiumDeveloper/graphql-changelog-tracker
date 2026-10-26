# gateway-changelog-30-Apr-2026

## 🔴 Breaking Changes (3)

### Design

#### Types

- Type 'RuleCheckExecutionOrigin_Preview' was removed

#### Arguments

- Argument 'origins: [RuleCheckExecutionOrigin_Preview!]' was removed from field 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId'

#### Fields

- Field 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId' changed type from 'RuleCheckExecution_Preview!' to 'RuleCheckAggregateExecution_Preview!'


---

## ⚠️ Dangerous Changes (2)

### Design

#### Types

- Enum value 'SKIPPED' was added to enum 'RuleCheckExecutionStatus_Preview'

#### Arguments

- Argument 'where: RuleCheckExecution_PreviewFilterInput' added to 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId'


---

## ✅ Non-Breaking Changes (82)

### Design

#### Types

- Type 'RuleCheckAggregateExecution_Preview' was added
- Object type 'RuleCheckAggregateExecution_Preview' has description '**Experimental** Represents the aggregated result of one or more rule check executions for a design.'
- Type 'RuleCheckExecutionReason_Preview' was added
- Enum value 'CHANGE' was added to enum 'RuleCheckExecutionReason_Preview'
- Enum value 'PROCESS' was added to enum 'RuleCheckExecutionReason_Preview'
- Enum value 'REGENERATION' was added to enum 'RuleCheckExecutionReason_Preview'
- Enum value 'RELEASE' was added to enum 'RuleCheckExecutionReason_Preview'
- Object type 'RuleCheckExecutionReason_Preview' has description '**Experimental** Reason why the rule check execution was triggered, which can be used for filtering and distinguishing different types of rule check executions.'
- Type 'RuleCheckExecutionSource_Preview' was added
- Enum value 'SYSTEM' was added to enum 'RuleCheckExecutionSource_Preview'
- Enum value 'USER' was added to enum 'RuleCheckExecutionSource_Preview'
- Object type 'RuleCheckExecutionSource_Preview' has description '**Experimental** Source of the rule check execution, identifying whether it was triggered by a user or by the system.'
- Type 'RuleCheckExecution_PreviewFilterInput' was added
- Object type 'RuleCheckExecution_PreviewFilterInput' has description '**Experimental** Represents the execution of rule checks against a design.'
- Type 'RuleCheckExecutionConfigurationInput_Preview' was added
- Object type 'RuleCheckExecutionConfigurationInput_Preview' has description '**Experimental** Represents the configuration of rule check execution, allowing to override certain traits of the rule check execution.'
- Type 'RuleCheckExecutionConfigurationItemInput_Preview' was added
- Object type 'RuleCheckExecutionConfigurationItemInput_Preview' has description '**Experimental** Represents the rule check configuration for a specific rule check execution, allowing to override certain traits of the rule check execution.'
- Type 'RuleCheckExecutionInput_Preview' was added
- Object type 'RuleCheckExecutionInput_Preview' has description '**Experimental** Represents the input for executing rule checks on a design.'
- Type 'RuleCheckExecutionReason_PreviewOperationFilterInput' was added
- Object type 'RuleCheckExecutionReason_PreviewOperationFilterInput' has description '**Experimental**'
- Type 'RuleCheckExecutionSource_PreviewOperationFilterInput' was added
- Object type 'RuleCheckExecutionSource_PreviewOperationFilterInput' has description '**Experimental**'

#### Arguments

- Argument 'input: RuleCheckExecutionInput_Preview!' added to 'DesignPreviewMutations.executeRuleCheck'
- Argument 'id: ID!' added to 'DesignPreviewQueries.ruleCheckExecution'
- Argument 'ids: [ID!]!' added to 'DesignPreviewQueries.ruleCheckExecutions'
- Argument 'designId: ID!' added to 'DesignPreviewQueries.ruleCheckExecutionsByDesignId'
- Argument 'revisionId: String' added to 'DesignPreviewQueries.ruleCheckExecutionsByDesignId'
- Argument 'where: RuleCheckExecution_PreviewFilterInput' added to 'DesignPreviewQueries.ruleCheckExecutionsByDesignId'

#### Fields

- Field 'designId' was added to object type 'RuleCheckAggregateExecution_Preview'
- Field 'executions' was added to object type 'RuleCheckAggregateExecution_Preview'
- Field 'revisionId' was added to object type 'RuleCheckAggregateExecution_Preview'
- Field 'ruleChecks' was added to object type 'RuleCheckAggregateExecution_Preview'
- Field 'status' was added to object type 'RuleCheckAggregateExecution_Preview'
- Field 'violations' was added to object type 'RuleCheckAggregateExecution_Preview'
- Field 'executeRuleCheck' was added to object type 'DesignPreviewMutations'
- Field 'ruleCheckExecution' was added to object type 'DesignPreviewQueries'
- Field 'ruleCheckExecutions' was added to object type 'DesignPreviewQueries'
- Field 'ruleCheckExecutionsByDesignId' was added to object type 'DesignPreviewQueries'
- Field 'actualErrorReportLevel' was added to object type 'RuleCheck_Preview'
- Field 'finishedAt' was added to object type 'RuleCheckExecution_Preview'
- Field 'id' was added to object type 'RuleCheckExecution_Preview'
- Field 'reason' was added to object type 'RuleCheckExecution_Preview'
- Field 'source' was added to object type 'RuleCheckExecution_Preview'
- Field 'startedAt' was added to object type 'RuleCheckExecution_Preview'
- Field 'startedByUserId' was added to object type 'RuleCheckExecution_Preview'
- Field 'RuleCheckExecution_Preview.revisionId' changed type from 'String' to 'String!'
- Field 'RuleCheckExecution_Preview.ruleChecks' changed type from '[RuleCheckPastDefinition_Preview!]' to '[RuleCheckPastDefinition_Preview!]!'
- Field 'RuleCheckExecution_Preview.violations' changed type from '[RuleViolation_Preview!]' to '[RuleViolation_Preview!]!'
- Field 'actualErrorReportLevel' was added to object type 'RuleCheckPastDefinition_Preview'
- Field 'currentRule' was added to object type 'RuleCheckPastDefinition_Preview'
- Field 'ruleCheck' was added to object type 'RuleViolation_Preview'
- Field 'RuleViolation_Preview.ruleDescription' is deprecated
- Directive 'deprecated' was added to 'RuleViolation_Preview.ruleDescription'
- Field 'RuleViolation_Preview.ruleName' is deprecated
- Directive 'deprecated' was added to 'RuleViolation_Preview.ruleName'
- Field 'RuleViolation_Preview.ruleNameWithVariant' changed type from 'String' to 'String!'
- Field 'RuleViolation_Preview.ruleType' is deprecated
- Directive 'deprecated' was added to 'RuleViolation_Preview.ruleType'

#### Input / Payload

- Input field 'and' of type '[RuleCheckExecution_PreviewFilterInput!]' was added to input object type 'RuleCheckExecution_PreviewFilterInput'
- Input field 'or' of type '[RuleCheckExecution_PreviewFilterInput!]' was added to input object type 'RuleCheckExecution_PreviewFilterInput'
- Input field 'reason' of type 'RuleCheckExecutionReason_PreviewOperationFilterInput' was added to input object type 'RuleCheckExecution_PreviewFilterInput'
- Input field 'source' of type 'RuleCheckExecutionSource_PreviewOperationFilterInput' was added to input object type 'RuleCheckExecution_PreviewFilterInput'
- Input field 'ruleChecks' of type '[RuleCheckExecutionConfigurationItemInput_Preview!]' was added to input object type 'RuleCheckExecutionConfigurationInput_Preview'
- Input field 'errorReportLevel' of type 'DesignDataErrorReportLevel_Preview!' was added to input object type 'RuleCheckExecutionConfigurationItemInput_Preview'
- Input field 'ruleCheckId' of type 'ID!' was added to input object type 'RuleCheckExecutionConfigurationItemInput_Preview'
- Input field 'configuration' of type 'RuleCheckExecutionConfigurationInput_Preview' was added to input object type 'RuleCheckExecutionInput_Preview'
- Input field 'designId' of type 'ID!' was added to input object type 'RuleCheckExecutionInput_Preview'
- Input field 'idempotencyToken' of type 'String!' was added to input object type 'RuleCheckExecutionInput_Preview'
- Input field 'reason' of type 'RuleCheckExecutionReason_Preview!' was added to input object type 'RuleCheckExecutionInput_Preview'
- Input field 'revisionId' of type 'String' was added to input object type 'RuleCheckExecutionInput_Preview'
- Input field 'source' of type 'RuleCheckExecutionSource_Preview!' was added to input object type 'RuleCheckExecutionInput_Preview'
- Input field 'eq' of type 'RuleCheckExecutionReason_Preview' was added to input object type 'RuleCheckExecutionReason_PreviewOperationFilterInput'
- Input field 'in' of type '[RuleCheckExecutionReason_Preview!]' was added to input object type 'RuleCheckExecutionReason_PreviewOperationFilterInput'
- Input field 'neq' of type 'RuleCheckExecutionReason_Preview' was added to input object type 'RuleCheckExecutionReason_PreviewOperationFilterInput'
- Input field 'nin' of type '[RuleCheckExecutionReason_Preview!]' was added to input object type 'RuleCheckExecutionReason_PreviewOperationFilterInput'
- Input field 'eq' of type 'RuleCheckExecutionSource_Preview' was added to input object type 'RuleCheckExecutionSource_PreviewOperationFilterInput'
- Input field 'in' of type '[RuleCheckExecutionSource_Preview!]' was added to input object type 'RuleCheckExecutionSource_PreviewOperationFilterInput'
- Input field 'neq' of type 'RuleCheckExecutionSource_Preview' was added to input object type 'RuleCheckExecutionSource_PreviewOperationFilterInput'
- Input field 'nin' of type '[RuleCheckExecutionSource_Preview!]' was added to input object type 'RuleCheckExecutionSource_PreviewOperationFilterInput'

### System Design

#### Input / Payload

- Input field 'tags' of type '[String!]' was added to input object type 'SysSdmCreateSystemModelVersionInput'


