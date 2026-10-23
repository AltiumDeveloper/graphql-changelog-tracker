# gateway-changelog-05-Jun-2026

## 🔴 Breaking Changes (27)

### Common

#### Types

- Type 'UploadRuleCheckExecutionInput_Preview' was removed

### Design

#### ✏️ Mutation

- Field 'designExecuteRuleCheck_Preview' was removed from object type 'Mutation'
- Field 'designExecuteRuleCheckOnUpload_Preview' was removed from object type 'Mutation'
- Field 'designRegisterUpload_Preview' was removed from object type 'Mutation'

#### Types

- Type 'DesignUploadResult_Preview' was removed
- Type 'DesignDataDesignUploadRegistrationInput_Preview' was removed
- Type 'DesignRuleCheckExecutionInput_Preview' was removed
- Type 'RuleCheckExecution_PreviewFilterInput' was removed
- Type 'RuleCheckExecutionConfigurationInput_Preview' was removed
- Type 'RuleCheckExecutionConfigurationItemInput_Preview' was removed
- Type 'RuleCheckExecutionReason_PreviewOperationFilterInput' was removed
- Type 'RuleCheckExecutionSource_PreviewOperationFilterInput' was removed

#### Arguments

- Type for argument 'input' on field 'DesignPreviewMutations.executeRuleCheck' changed from 'DesignRuleCheckExecutionInput_Preview!' to 'DesignRuleCheckExecuteInput!'
- Type for argument 'input' on field 'DesignPreviewMutations.executeRuleCheckOnUpload' changed from 'UploadRuleCheckExecutionInput_Preview!' to 'DesignRuleCheckExecuteOnUploadInput!'
- Type for argument 'input' on field 'DesignPreviewMutations.registerDesignUpload' changed from 'DesignDataDesignUploadRegistrationInput_Preview!' to 'DesignRegisterUploadInput!'
- Type for argument 'where' on field 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId' changed from 'RuleCheckExecution_PreviewFilterInput' to 'RuleCheckExecutionFilterInput'
- Type for argument 'where' on field 'DesignPreviewQueries.ruleCheckAggregateResultsByReleaseId' changed from 'RuleCheckExecution_PreviewFilterInput' to 'RuleCheckExecutionFilterInput'
- Type for argument 'where' on field 'DesignPreviewQueries.ruleCheckExecutionsByDesignId' changed from 'RuleCheckExecution_PreviewFilterInput' to 'RuleCheckExecutionFilterInput'
- Type for argument 'where' on field 'DesignPreviewQueries.ruleCheckExecutionsByReleaseId' changed from 'RuleCheckExecution_PreviewFilterInput' to 'RuleCheckExecutionFilterInput'

#### Fields

- Field 'DesignDataComponent_Preview.tagTypes' changed type from '[String!]!' to '[String!]'
- Field 'DesignPreviewMutations.registerDesignUpload' changed type from 'DesignUploadResult_Preview!' to 'UploadRegistrationResult!'
- Field 'RuleCheckAggregateExecution_Preview.ruleChecks' changed type from '[RuleCheckExecutionPart_Preview!]!' to '[RuleCheckExecutionPart_Preview!]'
- Field 'RuleCheckExecution_Preview.ruleChecks' changed type from '[RuleCheckExecutionPart_Preview!]!' to '[RuleCheckExecutionPart_Preview!]'

### Library Management

#### Fields

- Field 'DesPartBomUsage.alternativeForElementIds' changed type from '[String!]!' to '[String!]'
- Field 'DesPartBomUsage.alternativePartsForElementIds' changed type from '[DesPartBomAlternativePartsEntry!]!' to '[DesPartBomAlternativePartsEntry!]'
- Field 'DesPartProjectUsage.alternativeForElementIds' changed type from '[String!]!' to '[String!]'
- Field 'DesPartProjectUsage.alternativePartsForElementIds' changed type from '[DesPartBomAlternativePartsEntry!]!' to '[DesPartBomAlternativePartsEntry!]'


---

## ⚠️ Dangerous Changes (8)

### Design

#### ✏️ Mutation

- Argument 'reason' was removed from '@deprecated'

#### Fields

- Argument 'reason' was removed from '@deprecated'
- Argument 'reason' was removed from '@deprecated'
- Argument 'reason' was removed from '@deprecated'
- Argument 'reason' was removed from '@deprecated'
- Argument 'reason' was removed from '@deprecated'
- Argument 'reason' was removed from '@deprecated'
- Argument 'reason' was removed from '@deprecated'


---

## ✅ Non-Breaking Changes (84)

### Common

#### Types

- Type 'UploadRegistrationResult' was added
- Object type 'UploadRegistrationResult' has description '**Experimental**'

#### Fields

- Field 'uploadId' was added to object type 'UploadRegistrationResult'

### Design

#### ✏️ Mutation

- Field 'designRegisterUpload' was added to object type 'Mutation'
- Argument 'input: DesignRegisterUploadInput!' added to 'Mutation.designRegisterUpload'
- Field 'designRuleCheckExecute' was added to object type 'Mutation'
- Argument 'input: DesignRuleCheckExecuteInput!' added to 'Mutation.designRuleCheckExecute'
- Field 'designRuleCheckExecuteOnUpload' was added to object type 'Mutation'
- Argument 'input: DesignRuleCheckExecuteOnUploadInput!' added to 'Mutation.designRuleCheckExecuteOnUpload'
- Deprecation reason on field 'Mutation.design' has changed from 'Use top-level design mutations (e.g. designRegisterUpload_Preview, designExecuteRuleCheck_Preview, designExecuteRuleCheckOnUpload_Preview) instead. This field will be removed in a future version.' to 'Use top-level design mutations (e.g. designRegisterUpload, designRuleCheckExecute, designRuleCheckExecuteOnUpload) instead. This field will be removed in a future version.'

#### Types

- Type 'DesignRegisterUploadPayload' was added
- Object type 'DesignRegisterUploadPayload' has description '**Experimental**'
- Type 'DesignRuleCheckExecuteOnUploadPayload' was added
- Object type 'DesignRuleCheckExecuteOnUploadPayload' has description '**Experimental**'
- Type 'DesignRuleCheckExecutePayload' was added
- Object type 'DesignRuleCheckExecutePayload' has description '**Experimental**'
- Type 'DesignRegisterUploadInput' was added
- Object type 'DesignRegisterUploadInput' has description '**Experimental** Represents input value for generate design data mutation.'
- Type 'DesignRuleCheckExecuteInput' was added
- Object type 'DesignRuleCheckExecuteInput' has description '**Experimental** Represents the input for executing rule checks on a design.'
- Type 'DesignRuleCheckExecuteOnUploadInput' was added
- Object type 'DesignRuleCheckExecuteOnUploadInput' has description '**Experimental** Represents the input for executing rule checks on an upload.'
- Type 'DesignRuleCheckExecutionConfigurationInput' was added
- Object type 'DesignRuleCheckExecutionConfigurationInput' has description '**Experimental** Represents the configuration of rule check execution, allowing to override certain traits of the rule check execution.'
- Type 'DesignRuleCheckExecutionConfigurationItemInput' was added
- Object type 'DesignRuleCheckExecutionConfigurationItemInput' has description '**Experimental** Represents the rule check configuration for a specific rule check execution, allowing to override certain traits of the rule check execution.'
- Type 'RuleCheckExecutionFilterInput' was added
- Object type 'RuleCheckExecutionFilterInput' has description '**Experimental** Represents the execution of rule checks against a design.'
- Type 'RuleCheckExecutionReasonOperationFilterInput' was added
- Object type 'RuleCheckExecutionReasonOperationFilterInput' has description '**Experimental**'
- Type 'RuleCheckExecutionSourceOperationFilterInput' was added
- Object type 'RuleCheckExecutionSourceOperationFilterInput' has description '**Experimental**'

#### Fields

- Field 'designUploadResult' was added to object type 'DesignRegisterUploadPayload'
- Field 'ruleCheckExecution_Preview' was added to object type 'DesignRuleCheckExecuteOnUploadPayload'
- Field 'ruleCheckExecution_Preview' was added to object type 'DesignRuleCheckExecutePayload'
- Deprecation reason on field 'DesignDataComponent_Preview.tagTypes' has changed from 'Use ComponentType instead.' to 'Use componentType instead.'
- Deprecation reason on field 'DesignDataComponent_Preview.uniqueId' has changed from 'Use DesignComponentId instead.' to 'Use designComponentId instead.'
- Deprecation reason on field 'DesignDataPart_Preview.uniqueId' has changed from 'Use DesignPartId instead.' to 'Use designPartId instead.'
- Deprecation reason on field 'DesignMutations.preview' has changed from 'Use top-level design mutations (e.g. designRegisterUpload_Preview, designExecuteRuleCheck_Preview, designExecuteRuleCheckOnUpload_Preview) instead. This field will be removed in a future version.' to 'Use top-level design mutations (e.g. designRegisterUpload, designRuleCheckExecute, designRuleCheckExecuteOnUpload) instead. This field will be removed in a future version.'
- Deprecation reason on field 'DesignPreviewMutations.executeRuleCheck' has changed from 'Use top-level designExecuteRuleCheck_Preview mutation instead. This mutation will be removed in a future version.' to 'Use top-level designRuleCheckExecute mutation instead. This mutation will be removed in a future version.'
- Deprecation reason on field 'DesignPreviewMutations.executeRuleCheckOnUpload' has changed from 'Use top-level designExecuteRuleCheckOnUpload_Preview mutation instead. This mutation will be removed in a future version.' to 'Use top-level designRuleCheckExecuteOnUpload mutation instead. This mutation will be removed in a future version.'
- Deprecation reason on field 'DesignPreviewMutations.registerDesignUpload' has changed from 'Use top-level designRegisterUpload_Preview mutation instead. This mutation will be removed in a future version.' to 'Use top-level designRegisterUpload mutation instead. This mutation will be removed in a future version.'

#### Input / Payload

- Input field 'designId' of type 'ID!' was added to input object type 'DesignRegisterUploadInput'
- Input field 'fileId' of type 'String!' was added to input object type 'DesignRegisterUploadInput'
- Input field 'configuration' of type 'DesignRuleCheckExecutionConfigurationInput' was added to input object type 'DesignRuleCheckExecuteInput'
- Input field 'designId' of type 'ID!' was added to input object type 'DesignRuleCheckExecuteInput'
- Input field 'idempotencyToken' of type 'String!' was added to input object type 'DesignRuleCheckExecuteInput'
- Input field 'reason' of type 'String!' was added to input object type 'DesignRuleCheckExecuteInput'
- Input field 'revisionId' of type 'String' was added to input object type 'DesignRuleCheckExecuteInput'
- Input field 'source' of type 'String!' was added to input object type 'DesignRuleCheckExecuteInput'
- Input field 'configuration' of type 'DesignRuleCheckExecutionConfigurationInput' was added to input object type 'DesignRuleCheckExecuteOnUploadInput'
- Input field 'idempotencyToken' of type 'String!' was added to input object type 'DesignRuleCheckExecuteOnUploadInput'
- Input field 'reason' of type 'String!' was added to input object type 'DesignRuleCheckExecuteOnUploadInput'
- Input field 'source' of type 'String!' was added to input object type 'DesignRuleCheckExecuteOnUploadInput'
- Input field 'uploadId' of type 'String!' was added to input object type 'DesignRuleCheckExecuteOnUploadInput'
- Input field 'ruleChecks' of type '[DesignRuleCheckExecutionConfigurationItemInput!]' was added to input object type 'DesignRuleCheckExecutionConfigurationInput'
- Input field 'errorReportLevel' of type 'String!' was added to input object type 'DesignRuleCheckExecutionConfigurationItemInput'
- Input field 'name' of type 'String' was added to input object type 'DesignRuleCheckExecutionConfigurationItemInput'
- Input field 'ruleCheckId' of type 'ID!' was added to input object type 'DesignRuleCheckExecutionConfigurationItemInput'
- Input field 'and' of type '[RuleCheckExecutionFilterInput!]' was added to input object type 'RuleCheckExecutionFilterInput'
- Input field 'or' of type '[RuleCheckExecutionFilterInput!]' was added to input object type 'RuleCheckExecutionFilterInput'
- Input field 'reason' of type 'RuleCheckExecutionReasonOperationFilterInput' was added to input object type 'RuleCheckExecutionFilterInput'
- Input field 'source' of type 'RuleCheckExecutionSourceOperationFilterInput' was added to input object type 'RuleCheckExecutionFilterInput'
- Input field 'eq' of type 'String' was added to input object type 'RuleCheckExecutionReasonOperationFilterInput'
- Input field 'in' of type '[String!]' was added to input object type 'RuleCheckExecutionReasonOperationFilterInput'
- Input field 'neq' of type 'String' was added to input object type 'RuleCheckExecutionReasonOperationFilterInput'
- Input field 'nin' of type '[String!]' was added to input object type 'RuleCheckExecutionReasonOperationFilterInput'
- Input field 'eq' of type 'String' was added to input object type 'RuleCheckExecutionSourceOperationFilterInput'
- Input field 'in' of type '[String!]' was added to input object type 'RuleCheckExecutionSourceOperationFilterInput'
- Input field 'neq' of type 'String' was added to input object type 'RuleCheckExecutionSourceOperationFilterInput'
- Input field 'nin' of type '[String!]' was added to input object type 'RuleCheckExecutionSourceOperationFilterInput'

### Library Management

#### 🔍 Query

- Field 'desPartGlobalPartByIds' was added to object type 'Query'
- Argument 'globalPartIds: [String!]!' added to 'Query.desPartGlobalPartByIds'

#### Types

- Type 'DesPartGlobalAlternativeItem' was added
- Object type 'DesPartGlobalAlternativeItem' has description 'An alternative global part.'
- Type 'DesPartGlobalAlternativesResult' was added
- Object type 'DesPartGlobalAlternativesResult' has description 'The result of a global part alternatives lookup, grouped by provider.'

#### Fields

- Field 'part' was added to object type 'DesPartGlobalAlternativeItem'
- Field 'providerInfo' was added to object type 'DesPartGlobalAlternativeItem'
- Field 'siliconExpertParts' was added to object type 'DesPartGlobalAlternativesResult'
- Field 'supplyParts' was added to object type 'DesPartGlobalAlternativesResult'
- Field 'z2DataParts' was added to object type 'DesPartGlobalAlternativesResult'
- Field 'alternatives' was added to object type 'DesPartGlobalPart'
- Field 'globalPartId' was added to object type 'DesPartGlobalPart'


