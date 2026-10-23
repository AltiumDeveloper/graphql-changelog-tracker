# gateway-changelog-23-Jan-2025

## 🔴 Breaking Changes (75)

### Customization

#### 🔍 Query

- Field 'gloCusExtensionPointDefinitions' was removed from object type 'Query'
- Field 'gloCusExtensionPointScript' was removed from object type 'Query'
- Field 'gloCusExtensionPointScriptTemplate' was removed from object type 'Query'
- Field 'Query.gloCusExtensionPoints' changed type from 'GloCusExtensionPointConnection' to '[GloCusExtensionPoint!]!'
- Argument 'first: Int' was removed from field 'Query.gloCusExtensionPoints'
- Argument 'after: String' was removed from field 'Query.gloCusExtensionPoints'
- Argument 'last: Int' was removed from field 'Query.gloCusExtensionPoints'
- Argument 'before: String' was removed from field 'Query.gloCusExtensionPoints'

#### ✏️ Mutation

- Field 'gloCusCreateExtensionPoint' was removed from object type 'Mutation'
- Field 'gloCusDeleteExtensionPoint' was removed from object type 'Mutation'
- Field 'gloCusExecuteDryRun' (deprecated) was removed from object type 'Mutation'
- Field 'gloCusExecuteExtensionPoint' was removed from object type 'Mutation'
- Field 'gloCusUpdateExtensionPointAssignment' was removed from object type 'Mutation'
- Field 'gloCusUpdateExtensionPointConfiguration' (deprecated) was removed from object type 'Mutation'
- Field 'gloCusUpdateExtensionPointConfigurations' was removed from object type 'Mutation'

#### Types

- Type 'GloCusCreateExtensionPointPayload' was removed
- Type 'GloCusDeleteExtensionPointPayload' was removed
- Type 'GloCusExecuteDryRunPayload' was removed
- Type 'GloCusExecuteExtensionPointPayload' was removed
- Type 'GloCusExtensionPointConfigurationParameter' was removed
- Type 'GloCusExtensionPointConnection' was removed
- Type 'GloCusExtensionPointDefinition' was removed
- Type 'GloCusExtensionPointDefinitionConnection' was removed
- Type 'GloCusExtensionPointDefinitionEdge' was removed
- Type 'GloCusExtensionPointDefinitionScriptTemplate' was removed
- Type 'GloCusExtensionPointEdge' was removed
- Type 'GloCusExtensionPointParameterDefinition' was removed
- Type 'GloCusGetExtensionPointScriptTemplatePayload' was removed
- Type 'GloCusGetExtensionScriptPointPayload' was removed
- Type 'GloCusUpdateExtensionPointAssignmentPayload' was removed
- Type 'GloCusUpdateExtensionPointConfigurationPayload' was removed
- Type 'GloCusUpdateExtensionPointConfigurationsPayload' was removed
- Type 'GloCusCreateExtensionPointInput' was removed
- Type 'GloCusDeleteExtensionPointInput' was removed
- Type 'GloCusExecuteDryRunInput' was removed
- Type 'GloCusExecuteExtensionPointInput' was removed
- Type 'GloCusExecuteExtensionPointInputModelInput' was removed
- Type 'GloCusExecuteScriptFileInput' was removed
- Type 'GloCusExtensionPointConfigurationParameterInput' was removed
- Type 'GloCusExtensionPointDefinitionFilterInput' was removed
- Type 'GloCusExtensionPointDefinitionSortInput' was removed
- Type 'GloCusExtensionPointScriptParameterInput' was removed
- Type 'GloCusGetExtensionPointScriptInput' was removed
- Type 'GloCusGetExtensionPointScriptTemplateInput' was removed
- Type 'GloCusStringOperationFilterInput' was removed
- Type 'GloCusUpdateExtensionPointAssignmentInput' was removed
- Type 'GloCusUpdateExtensionPointConfigurationInput' was removed
- Type 'GloCusUpdateExtensionPointConfigurationsInput' was removed
- Type 'GloCusUpdateWithExistingScriptInput' was removed
- Type 'GloCusUpdateWithScriptFileInput' was removed
- Type 'GloCusUpdateWithWorkflowAssignmentInput' was removed
- 'GloCusAssignment' kind changed from 'ObjectTypeDefinition' to 'InterfaceTypeDefinition'

#### Fields

- Field 'assignment' was removed from object type 'GloCusExtensionPoint'
- Field 'createdAt' was removed from object type 'GloCusExtensionPoint'
- Field 'definitionId' was removed from object type 'GloCusExtensionPoint'
- Field 'updatedAt' was removed from object type 'GloCusExtensionPoint'
- Field 'GloCusExtensionPoint.configurationParameters' changed type from '[GloCusExtensionPointConfigurationParameter]' to '[GloCusExtensionPointParameter!]!'
- Field 'GloCusScriptExecutionInfo.status' changed type from 'String!' to 'GloCusScriptExecutionStatus!'

#### Input / Payload

- Input field 'description' was removed from input object type 'GloCusAssignmentFilterInput'
- Input field 'GloCusAssignmentFilterInput.assignmentId' changed type from 'GloCusStringOperationFilterInput' to 'GloCusStringTypeFilterInput'
- Input field 'GloCusAssignmentFilterInput.name' changed type from 'GloCusStringOperationFilterInput' to 'GloCusStringTypeFilterInput'
- Input field 'description' was removed from input object type 'GloCusAssignmentSortInput'
- Input field 'definitionId' was removed from input object type 'GloCusExtensionPointFilterInput'
- Input field 'createdAt' was removed from input object type 'GloCusExtensionPointFilterInput'
- Input field 'updatedAt' was removed from input object type 'GloCusExtensionPointFilterInput'
- Input field 'assignment' was removed from input object type 'GloCusExtensionPointFilterInput'
- Input field 'definitionId' was removed from input object type 'GloCusExtensionPointSortInput'
- Input field 'createdAt' was removed from input object type 'GloCusExtensionPointSortInput'
- Input field 'updatedAt' was removed from input object type 'GloCusExtensionPointSortInput'
- Input field 'assignment' was removed from input object type 'GloCusExtensionPointSortInput'
- Input field 'extensionPointId' was removed from input object type 'GloCusUpdateWithScriptAssignmentInput'
- Input field 'scriptAssignmentId' was removed from input object type 'GloCusUpdateWithScriptAssignmentInput'
- Input field 'scriptId' of type 'String!' was added to input object type 'GloCusUpdateWithScriptAssignmentInput'
- Input field 'scriptVersionId' of type 'String!' was added to input object type 'GloCusUpdateWithScriptAssignmentInput'
- Input field 'assignmentId' of type 'String!' was added to input object type 'GloCusUpdateWithScriptAssignmentInput'


---

## ⚠️ Dangerous Changes (1)

### Customization

#### Types

- Enum value 'DEFAULT' was added to enum 'GloCusAssignmentType'


---

## ✅ Non-Breaking Changes (178)

### Customization

#### ✏️ Mutation

- Field 'gloCusAddAssignment' was added to object type 'Mutation'
- Argument 'input: GloCusAddAssignmentInput!' added to 'Mutation.gloCusAddAssignment'
- Field 'gloCusDeleteAssignment' was added to object type 'Mutation'
- Argument 'input: GloCusDeleteAssignmentInput!' added to 'Mutation.gloCusDeleteAssignment'
- Field 'gloCusExecuteAssignment' was added to object type 'Mutation'
- Argument 'input: GloCusExecuteAssignmentInput!' added to 'Mutation.gloCusExecuteAssignment'
- Field 'gloCusUpdateAssignment' was added to object type 'Mutation'
- Argument 'input: GloCusUpdateAssignmentInput!' added to 'Mutation.gloCusUpdateAssignment'
- Field 'gloCusUpdateAssignmentConfigurations' was added to object type 'Mutation'
- Argument 'input: GloCusUpdateAssignmentConfigurationsInput!' added to 'Mutation.gloCusUpdateAssignmentConfigurations'

#### Types

- Type 'GloCusAddAssignmentPayload' was added
- Object type 'GloCusAddAssignmentPayload' has description 'Represents output value for extension point assignment creation.'
- Type 'GloCusAssignmentConfigurationParameter' was added
- Type 'GloCusAssignmentConnection' was added
- Object type 'GloCusAssignmentConnection' has description 'A connection to a list of items.'
- Type 'GloCusAssignmentEdge' was added
- Object type 'GloCusAssignmentEdge' has description 'An edge in a connection.'
- Type 'GloCusAssignmentParameter' was added
- Object type 'GloCusAssignmentParameter' has description 'Parameter for the assignment.'
- Type 'GloCusDefaultAssignment' was added
- 'GloCusDefaultAssignment' object implements 'GloCusAssignment' interface
- Type 'GloCusDeleteAssignmentPayload' was added
- Object type 'GloCusDeleteAssignmentPayload' has description 'Represents output value for assignment deletion.'
- Type 'GloCusExecuteAssignmentPayload' was added
- Object type 'GloCusExecuteAssignmentPayload' has description 'Represents output value for assignment execution.'
- Type 'GloCusExtensionPointParameter' was added
- Type 'GloCusJsonArrayOfAssignmentConfigurationParameter' was added
- Type 'GloCusScriptAssignment' was added
- 'GloCusScriptAssignment' object implements 'GloCusAssignment' interface
- Type 'GloCusUpdateAssignmentConfigurationsPayload' was added
- Type 'GloCusUpdateAssignmentPayload' was added
- Object type 'GloCusUpdateAssignmentPayload' has description 'Represents output value for updating extension point assignment.'
- Type 'GloCusWorkflowAssignment' was added
- 'GloCusWorkflowAssignment' object implements 'GloCusAssignment' interface
- Type 'GloCusScriptExecutionStatus' was added
- Enum value 'UNKNOWN' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'PENDING' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'RUNNING' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'STOPPING' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'STOPPED' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'PROVISIONING' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'DEPROVISIONING' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'ACTIVATING' was added to enum 'GloCusScriptExecutionStatus'
- Enum value 'DEACTIVATING' was added to enum 'GloCusScriptExecutionStatus'
- Type 'GloCusAddAssignmentInput' was added
- Object type 'GloCusAddAssignmentInput' has description 'Represents input value for extension point assignment creation.'
- Type 'GloCusAssignmentExecutionParameterInput' was added
- Type 'GloCusAssignmentParameterInput' was added
- Object type 'GloCusAssignmentParameterInput' has description 'Parameter for the assignment.'
- Type 'GloCusBooleanOperationFilterInput' was added
- Type 'GloCusDeleteAssignmentInput' was added
- Object type 'GloCusDeleteAssignmentInput' has description 'Represents input value for assignment deletion.'
- Type 'GloCusExecuteAssignmentInput' was added
- Object type 'GloCusExecuteAssignmentInput' has description 'Represents input value for assignment execution.'
- Type 'GloCusUpdateAssignmentConfigurationInput' was added
- Object type 'GloCusUpdateAssignmentConfigurationInput' has description 'Represents input value for updating assignment configuration.'
- Type 'GloCusUpdateAssignmentConfigurationsInput' was added
- Object type 'GloCusUpdateAssignmentConfigurationsInput' has description 'Represents input value for updating multiple eassignment configuration.'
- Type 'GloCusUpdateAssignmentInput' was added
- Object type 'GloCusUpdateAssignmentInput' has description 'Represents input value for extension point assignment update.'
- Type 'GloCusUpdateWithScriptFileAssignmentInput' was added
- Object type 'GloCusUpdateWithScriptFileAssignmentInput' has description 'Represents input value for updating with script file assignment.'
- Type 'GloCusUpdateWorkflowAssignmentInput' was added
- Object type 'GloCusUpdateWorkflowAssignmentInput' has description 'Represents input value for updating with workflow assignment.'
- Description 'Assignment represents a link between extension point and script that will be executed.' was removed from object type 'GloCusAssignment'
- Description 'Extension point is a place in the system which can be extended with custom behaviour.' was removed from object type 'GloCusExtensionPoint'
- Description 'Type of the assignment.' was removed from object type 'GloCusAssignmentType'
- Description 'Assignment represents a link between extension point and script that will be executed.' was removed from object type 'GloCusAssignmentFilterInput'
- Description 'Assignment represents a link between extension point and script that will be executed.' was removed from object type 'GloCusAssignmentSortInput'
- Description 'Extension point is a place in the system which can be extended with custom behaviour.' was removed from object type 'GloCusExtensionPointFilterInput'
- Description 'Extension point is a place in the system which can be extended with custom behaviour.' was removed from object type 'GloCusExtensionPointSortInput'

#### Arguments

- Argument 'first: Int' added to 'GloCusExtensionPoint.assignments'
- Argument 'after: String' added to 'GloCusExtensionPoint.assignments'
- Argument 'last: Int' added to 'GloCusExtensionPoint.assignments'
- Argument 'before: String' added to 'GloCusExtensionPoint.assignments'
- Argument 'where: GloCusAssignmentFilterInput' added to 'GloCusExtensionPoint.assignments'
- Argument 'order: [GloCusAssignmentSortInput!]' added to 'GloCusExtensionPoint.assignments'

#### Fields

- Field 'assignmentId' was added to object type 'GloCusAddAssignmentPayload'
- Field 'name' was added to object type 'GloCusAssignmentConfigurationParameter'
- Field 'value' was added to object type 'GloCusAssignmentConfigurationParameter'
- Field 'edges' was added to object type 'GloCusAssignmentConnection'
- Field 'nodes' was added to object type 'GloCusAssignmentConnection'
- Field 'pageInfo' was added to object type 'GloCusAssignmentConnection'
- Field 'totalCount' was added to object type 'GloCusAssignmentConnection'
- Field 'cursor' was added to object type 'GloCusAssignmentEdge'
- Field 'node' was added to object type 'GloCusAssignmentEdge'
- Field 'name' was added to object type 'GloCusAssignmentParameter'
- Field 'value' was added to object type 'GloCusAssignmentParameter'
- Field 'active' was added to object type 'GloCusDefaultAssignment'
- Field 'assignmentId' was added to object type 'GloCusDefaultAssignment'
- Field 'configurationParameters' was added to object type 'GloCusDefaultAssignment'
- Field 'configurationParams' was added to object type 'GloCusDefaultAssignment'
- Field 'createdAt' was added to object type 'GloCusDefaultAssignment'
- Field 'createdBy' was added to object type 'GloCusDefaultAssignment'
- Field 'description' was added to object type 'GloCusDefaultAssignment'
- Field 'lastModifiedAt' was added to object type 'GloCusDefaultAssignment'
- Field 'lastModifiedBy' was added to object type 'GloCusDefaultAssignment'
- Field 'name' was added to object type 'GloCusDefaultAssignment'
- Field 'type' was added to object type 'GloCusDefaultAssignment'
- Field 'assignmentId' was added to object type 'GloCusDeleteAssignmentPayload'
- Field 'scriptExecutionId' was added to object type 'GloCusExecuteAssignmentPayload'
- Field 'description' was added to object type 'GloCusExtensionPointParameter'
- Field 'name' was added to object type 'GloCusExtensionPointParameter'
- Field 'gloCusValue' was added to object type 'GloCusJsonArrayOfAssignmentConfigurationParameter'
- Field 'json' was added to object type 'GloCusJsonArrayOfAssignmentConfigurationParameter'
- Field 'active' was added to object type 'GloCusScriptAssignment'
- Field 'assignmentId' was added to object type 'GloCusScriptAssignment'
- Field 'configurationParameters' was added to object type 'GloCusScriptAssignment'
- Field 'createdAt' was added to object type 'GloCusScriptAssignment'
- Field 'createdBy' was added to object type 'GloCusScriptAssignment'
- Field 'description' was added to object type 'GloCusScriptAssignment'
- Field 'lastModifiedAt' was added to object type 'GloCusScriptAssignment'
- Field 'lastModifiedBy' was added to object type 'GloCusScriptAssignment'
- Field 'name' was added to object type 'GloCusScriptAssignment'
- Field 'scriptFileToken' was added to object type 'GloCusScriptAssignment'
- Field 'scriptId' was added to object type 'GloCusScriptAssignment'
- Field 'scriptVersionId' was added to object type 'GloCusScriptAssignment'
- Field 'type' was added to object type 'GloCusScriptAssignment'
- Field 'success' was added to object type 'GloCusUpdateAssignmentConfigurationsPayload'
- Field 'assignmentId' was added to object type 'GloCusUpdateAssignmentPayload'
- Field 'type' was added to object type 'GloCusUpdateAssignmentPayload'
- Field 'active' was added to object type 'GloCusWorkflowAssignment'
- Field 'assignmentId' was added to object type 'GloCusWorkflowAssignment'
- Field 'configurationParameters' was added to object type 'GloCusWorkflowAssignment'
- Field 'configurationParams' was added to object type 'GloCusWorkflowAssignment'
- Field 'createdAt' was added to object type 'GloCusWorkflowAssignment'
- Field 'createdBy' was added to object type 'GloCusWorkflowAssignment'
- Field 'description' was added to object type 'GloCusWorkflowAssignment'
- Field 'lastModifiedAt' was added to object type 'GloCusWorkflowAssignment'
- Field 'lastModifiedBy' was added to object type 'GloCusWorkflowAssignment'
- Field 'name' was added to object type 'GloCusWorkflowAssignment'
- Field 'type' was added to object type 'GloCusWorkflowAssignment'
- Field 'workflowId' was added to object type 'GloCusWorkflowAssignment'
- Field 'assignments' was added to object type 'GloCusExtensionPoint'
- Field 'description' was added to object type 'GloCusExtensionPoint'
- Field 'inputParameters' was added to object type 'GloCusExtensionPoint'
- Field 'outputParameters' was added to object type 'GloCusExtensionPoint'
- Field 'scriptDescription' was added to object type 'GloCusExtensionPoint'
- Field 'scriptName' was added to object type 'GloCusExtensionPoint'
- Field 'scriptText' was added to object type 'GloCusExtensionPoint'

#### Input / Payload

- Input field 'extensionPointId' of type 'String!' was added to input object type 'GloCusAddAssignmentInput'
- Input field 'configurationParameters' of type '[GloCusAssignmentParameterInput!]!' was added to input object type 'GloCusAddAssignmentInput'
- Input field 'name' of type 'String!' was added to input object type 'GloCusAssignmentExecutionParameterInput'
- Input field 'value' of type 'String!' was added to input object type 'GloCusAssignmentExecutionParameterInput'
- Input field 'name' of type 'String!' was added to input object type 'GloCusAssignmentParameterInput'
- Input field 'value' of type 'String!' was added to input object type 'GloCusAssignmentParameterInput'
- Input field 'eq' of type 'Boolean' was added to input object type 'GloCusBooleanOperationFilterInput'
- Input field 'neq' of type 'Boolean' was added to input object type 'GloCusBooleanOperationFilterInput'
- Input field 'assignmentId' of type 'String!' was added to input object type 'GloCusDeleteAssignmentInput'
- Input field 'assignmentId' of type 'String!' was added to input object type 'GloCusExecuteAssignmentInput'
- Input field 'parameters' of type '[GloCusAssignmentExecutionParameterInput!]' was added to input object type 'GloCusExecuteAssignmentInput'
- Input field 'assignmentId' of type 'String!' was added to input object type 'GloCusUpdateAssignmentConfigurationInput'
- Input field 'configurationParameters' of type '[GloCusAssignmentParameterInput!]!' was added to input object type 'GloCusUpdateAssignmentConfigurationInput'
- Input field 'configurations' of type '[GloCusUpdateAssignmentConfigurationInput!]!' was added to input object type 'GloCusUpdateAssignmentConfigurationsInput'
- Input field 'script' of type 'GloCusUpdateWithScriptAssignmentInput' was added to input object type 'GloCusUpdateAssignmentInput'
- Input field 'scriptFile' of type 'GloCusUpdateWithScriptFileAssignmentInput' was added to input object type 'GloCusUpdateAssignmentInput'
- Input field 'workflow' of type 'GloCusUpdateWorkflowAssignmentInput' was added to input object type 'GloCusUpdateAssignmentInput'
- Input field 'scriptFileToken' of type 'String' was added to input object type 'GloCusUpdateWithScriptFileAssignmentInput'
- Input field 'assignmentId' of type 'String!' was added to input object type 'GloCusUpdateWithScriptFileAssignmentInput'
- Input field 'name' of type 'String' was added to input object type 'GloCusUpdateWithScriptFileAssignmentInput'
- Input field 'description' of type 'String' was added to input object type 'GloCusUpdateWithScriptFileAssignmentInput'
- Input field 'workflowId' of type 'String' was added to input object type 'GloCusUpdateWorkflowAssignmentInput'
- Input field 'assignmentId' of type 'String!' was added to input object type 'GloCusUpdateWorkflowAssignmentInput'
- Input field 'name' of type 'String' was added to input object type 'GloCusUpdateWorkflowAssignmentInput'
- Input field 'description' of type 'String' was added to input object type 'GloCusUpdateWorkflowAssignmentInput'
- Input field 'createdBy' of type 'GloCusStringTypeFilterInput' was added to input object type 'GloCusAssignmentFilterInput'
- Input field 'lastModifiedBy' of type 'GloCusStringTypeFilterInput' was added to input object type 'GloCusAssignmentFilterInput'
- Input field 'createdAt' of type 'DateTimeOperationFilterInput' was added to input object type 'GloCusAssignmentFilterInput'
- Input field 'lastModifiedAt' of type 'DateTimeOperationFilterInput' was added to input object type 'GloCusAssignmentFilterInput'
- Input field 'active' of type 'GloCusBooleanOperationFilterInput' was added to input object type 'GloCusAssignmentFilterInput'
- Input field 'createdBy' of type 'SortEnumType' was added to input object type 'GloCusAssignmentSortInput'
- Input field 'createdAt' of type 'SortEnumType' was added to input object type 'GloCusAssignmentSortInput'
- Input field 'lastModifiedBy' of type 'SortEnumType' was added to input object type 'GloCusAssignmentSortInput'
- Input field 'lastModifiedAt' of type 'SortEnumType' was added to input object type 'GloCusAssignmentSortInput'
- Input field 'active' of type 'SortEnumType' was added to input object type 'GloCusAssignmentSortInput'
- Input field 'name' of type 'String' was added to input object type 'GloCusUpdateWithScriptAssignmentInput'
- Input field 'description' of type 'String' was added to input object type 'GloCusUpdateWithScriptAssignmentInput'

### Design

#### Fields

- Field 'downloadUrl' was added to object type 'DesReleaseVariant'


