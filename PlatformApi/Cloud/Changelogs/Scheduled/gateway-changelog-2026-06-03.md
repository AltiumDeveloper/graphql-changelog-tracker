# gateway-changelog-03-Jun-2026

## 🔴 Breaking Changes (7)

### Design

#### Types

- Type 'RuleCheckPastDefinition_Preview' was removed
- Type 'RuleCheckExecutionInput_Preview' was removed

#### Arguments

- Type for argument 'input' on field 'DesignPreviewMutations.executeRuleCheck' changed from 'RuleCheckExecutionInput_Preview!' to 'DesignRuleCheckExecutionInput_Preview!'

#### Fields

- Field 'ruleCheckLatestExecutionByUploadId' was removed from object type 'DesignPreviewQueries'
- Field 'RuleCheckAggregateExecution_Preview.ruleChecks' changed type from '[RuleCheckPastDefinition_Preview!]!' to '[RuleCheckExecutionPart_Preview!]!'
- Field 'RuleCheckExecution_Preview.ruleChecks' changed type from '[RuleCheckPastDefinition_Preview!]!' to '[RuleCheckExecutionPart_Preview!]!'
- Field 'RuleViolation_Preview.ruleCheck' changed type from 'RuleCheckPastDefinition_Preview!' to 'RuleCheckExecutionPart_Preview!'


---

## ⚠️ Dangerous Changes (3)

### Design

#### Types

- Enum value 'HARNESS_ENTITY' was added to enum 'DesContentTypeKind'
- Enum value 'HARNESS_ENTITY_TEMPLATE' was added to enum 'DesContentTypeKind'
- Enum value 'HARNESS_MODEL_TEMPLATES_CATALOG' was added to enum 'DesFolderType'


---

## ✅ Non-Breaking Changes (54)

### Common

#### Types

- Type 'UploadRuleCheckExecutionInput_Preview' was added
- Object type 'UploadRuleCheckExecutionInput_Preview' has description '**Experimental** Represents the input for executing rule checks on an upload.'

#### Input / Payload

- Input field 'configuration' of type 'RuleCheckExecutionConfigurationInput_Preview' was added to input object type 'UploadRuleCheckExecutionInput_Preview'
- Input field 'idempotencyToken' of type 'String!' was added to input object type 'UploadRuleCheckExecutionInput_Preview'
- Input field 'reason' of type 'String!' was added to input object type 'UploadRuleCheckExecutionInput_Preview'
- Input field 'source' of type 'String!' was added to input object type 'UploadRuleCheckExecutionInput_Preview'
- Input field 'uploadId' of type 'String!' was added to input object type 'UploadRuleCheckExecutionInput_Preview'

### Design

#### ✏️ Mutation

- Field 'designExecuteRuleCheck_Preview' was added to object type 'Mutation'
- Argument 'input: DesignRuleCheckExecutionInput_Preview!' added to 'Mutation.designExecuteRuleCheck_Preview'
- Field 'designExecuteRuleCheckOnUpload_Preview' was added to object type 'Mutation'
- Argument 'input: UploadRuleCheckExecutionInput_Preview!' added to 'Mutation.designExecuteRuleCheckOnUpload_Preview'
- Field 'designRegisterUpload_Preview' was added to object type 'Mutation'
- Argument 'input: DesignDataDesignUploadRegistrationInput_Preview!' added to 'Mutation.designRegisterUpload_Preview'
- Field 'Mutation.design' is deprecated
- Directive 'deprecated' was added to 'Mutation.design'

#### Types

- Type 'RuleCheckConfiguration_Preview' was added
- Object type 'RuleCheckConfiguration_Preview' has description '**Experimental** Represents current rule check configuration.'
- Type 'RuleCheckExecutionPart_Preview' was added
- Object type 'RuleCheckExecutionPart_Preview' has description '**Experimental** Represents the definition of a single rule check (one part of the execution) at the time of execution and it\'s current status.'
- Type 'DesignRuleCheckExecutionInput_Preview' was added
- Object type 'DesignRuleCheckExecutionInput_Preview' has description '**Experimental** Represents the input for executing rule checks on a design.'

#### Arguments

- Argument 'input: UploadRuleCheckExecutionInput_Preview!' added to 'DesignPreviewMutations.executeRuleCheckOnUpload'

#### Fields

- Field 'features' was added to object type 'RuleCheckConfiguration_Preview'
- Field 'staleStatusThreshold' was added to object type 'RuleCheckConfiguration_Preview'
- Field 'actualErrorReportLevel' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'currentRule' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'defaultErrorReportLevel' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'description' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'id' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'name' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'status' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'type' was added to object type 'RuleCheckExecutionPart_Preview'
- Field 'DesignMutations.preview' is deprecated
- Directive 'deprecated' was added to 'DesignMutations.preview'
- Field 'executeRuleCheckOnUpload' was added to object type 'DesignPreviewMutations'
- Field 'DesignPreviewMutations.executeRuleCheckOnUpload' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewMutations.executeRuleCheckOnUpload'
- Field 'DesignPreviewMutations.executeRuleCheck' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewMutations.executeRuleCheck'
- Field 'DesignPreviewMutations.registerDesignUpload' is deprecated
- Directive 'deprecated' was added to 'DesignPreviewMutations.registerDesignUpload'
- Field 'ruleCheckConfiguration' was added to object type 'DesignPreviewQueries'
- Field 'parts' was added to object type 'RuleCheckAggregateExecution_Preview'
- Field 'RuleCheckAggregateExecution_Preview.ruleChecks' is deprecated
- Directive 'deprecated' was added to 'RuleCheckAggregateExecution_Preview.ruleChecks'
- Field 'parts' was added to object type 'RuleCheckExecution_Preview'
- Field 'RuleCheckExecution_Preview.ruleChecks' is deprecated
- Directive 'deprecated' was added to 'RuleCheckExecution_Preview.ruleChecks'

#### Input / Payload

- Input field 'configuration' of type 'RuleCheckExecutionConfigurationInput_Preview' was added to input object type 'DesignRuleCheckExecutionInput_Preview'
- Input field 'designId' of type 'ID!' was added to input object type 'DesignRuleCheckExecutionInput_Preview'
- Input field 'idempotencyToken' of type 'String!' was added to input object type 'DesignRuleCheckExecutionInput_Preview'
- Input field 'reason' of type 'String!' was added to input object type 'DesignRuleCheckExecutionInput_Preview'
- Input field 'revisionId' of type 'String' was added to input object type 'DesignRuleCheckExecutionInput_Preview'
- Input field 'source' of type 'String!' was added to input object type 'DesignRuleCheckExecutionInput_Preview'


