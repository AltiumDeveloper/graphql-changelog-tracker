# gateway-changelog-25-May-2026

## 🔴 Breaking Changes (38)

### Design

#### Types

- Type 'DesignDataErrorReportLevel_Preview' was removed
- Type 'DesignDataGenerationStatus_Preview' was removed
- Type 'DesignDataObjectType_Preview' was removed
- Type 'DesignDataVariationKind_Preview' was removed
- Type 'RuleCheckExecutionReason_Preview' was removed
- Type 'RuleCheckExecutionSource_Preview' was removed
- Type 'RuleCheckExecutionStatus_Preview' was removed
- Type 'RuleCheckType_Preview' was removed
- Type 'RuleFailureCode_Preview' was removed
- Type 'RuleViolationErrorReportLevel_Preview' was removed

#### Fields

- Field 'DesignDataCustomCheckConfigurationItem_Preview.errorReportLevel' changed type from 'DesignDataErrorReportLevel_Preview!' to 'String!'
- Field 'DesignDataGeneration_Preview.status' changed type from 'DesignDataGenerationStatus_Preview!' to 'String!'
- Field 'DesignDataVariation_Preview.kind' changed type from 'DesignDataVariationKind_Preview!' to 'String!'
- Field 'RuleCheck_Preview.actualErrorReportLevel' changed type from 'DesignDataErrorReportLevel_Preview!' to 'String!'
- Field 'RuleCheck_Preview.defaultErrorReportLevel' changed type from 'DesignDataErrorReportLevel_Preview!' to 'String!'
- Field 'RuleCheck_Preview.type' changed type from 'RuleCheckType_Preview!' to 'String!'
- Field 'RuleCheckAggregateExecution_Preview.status' changed type from 'RuleCheckExecutionStatus_Preview!' to 'String!'
- Field 'RuleCheckExecution_Preview.reason' changed type from 'RuleCheckExecutionReason_Preview!' to 'String!'
- Field 'RuleCheckExecution_Preview.source' changed type from 'RuleCheckExecutionSource_Preview!' to 'String!'
- Field 'RuleCheckExecution_Preview.status' changed type from 'RuleCheckExecutionStatus_Preview!' to 'String!'
- Field 'RuleCheckPastDefinition_Preview.actualErrorReportLevel' changed type from 'DesignDataErrorReportLevel_Preview!' to 'String!'
- Field 'RuleCheckPastDefinition_Preview.defaultErrorReportLevel' changed type from 'DesignDataErrorReportLevel_Preview!' to 'String!'
- Field 'RuleCheckPastDefinition_Preview.type' changed type from 'RuleCheckType_Preview!' to 'String!'
- Field 'RuleViolation_Preview.errorReportLevel' changed type from 'RuleViolationErrorReportLevel_Preview!' to 'String!'
- Field 'RuleViolation_Preview.ruleFailureCode' changed type from 'RuleFailureCode_Preview' to 'String'
- Field 'RuleViolation_Preview.ruleType' changed type from 'RuleCheckType_Preview!' to 'String!'
- Field 'RuleViolationRelatedObject_Preview.type' changed type from 'DesignDataObjectType_Preview!' to 'String!'

#### Input / Payload

- Input field 'RuleCheckExecutionConfigurationItemInput_Preview.errorReportLevel' changed type from 'DesignDataErrorReportLevel_Preview!' to 'String!'
- Input field 'RuleCheckExecutionInput_Preview.reason' changed type from 'RuleCheckExecutionReason_Preview!' to 'String!'
- Input field 'RuleCheckExecutionInput_Preview.source' changed type from 'RuleCheckExecutionSource_Preview!' to 'String!'
- Input field 'RuleCheckExecutionReason_PreviewOperationFilterInput.eq' changed type from 'RuleCheckExecutionReason_Preview' to 'String'
- Input field 'RuleCheckExecutionReason_PreviewOperationFilterInput.in' changed type from '[RuleCheckExecutionReason_Preview!]' to '[String!]'
- Input field 'RuleCheckExecutionReason_PreviewOperationFilterInput.neq' changed type from 'RuleCheckExecutionReason_Preview' to 'String'
- Input field 'RuleCheckExecutionReason_PreviewOperationFilterInput.nin' changed type from '[RuleCheckExecutionReason_Preview!]' to '[String!]'
- Input field 'RuleCheckExecutionSource_PreviewOperationFilterInput.eq' changed type from 'RuleCheckExecutionSource_Preview' to 'String'
- Input field 'RuleCheckExecutionSource_PreviewOperationFilterInput.in' changed type from '[RuleCheckExecutionSource_Preview!]' to '[String!]'
- Input field 'RuleCheckExecutionSource_PreviewOperationFilterInput.neq' changed type from 'RuleCheckExecutionSource_Preview' to 'String'
- Input field 'RuleCheckExecutionSource_PreviewOperationFilterInput.nin' changed type from '[RuleCheckExecutionSource_Preview!]' to '[String!]'


---

## ⚠️ Dangerous Changes (1)

### Design

#### Arguments

- Argument 'isClosed: Boolean!' (with default value) added to 'DesWorkspace.workflows'


---

## ✅ Non-Breaking Changes (4)

### Design

#### Fields

- Field 'workflowType' was added to object type 'DesWorkflow'
- Field 'workflowType' was added to object type 'DesWorkflowDefinition'

#### Input / Payload

- Input field 'workflowType' of type 'StringOperationFilterInput' was added to input object type 'DesWorkflowDefinitionFilterInput'
- Input field 'workflowType' of type 'StringOperationFilterInput' was added to input object type 'DesWorkflowFilterInput'


