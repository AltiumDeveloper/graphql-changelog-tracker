# gateway-changelog-28-Nov-2025

## 🔴 Breaking Changes (1)

### Supply

#### Input / Payload

- Input field 'stableName' of type 'String!' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'


---

## ⚠️ Dangerous Changes (1)

### Supply

#### Types

- Enum value 'SUP_SOLUTION_TEMPLATE_STABLE_NAME_IS_EXISTED' was added to enum 'SupSolutionTemplateErrorCode'


---

## ✅ Non-Breaking Changes (139)

### Insights

#### 🔍 Query

- Field 'desWorkspaceInsNotificationSettings' was added to object type 'Query'
- Field 'desWorkspaceInsSettings' was added to object type 'Query'

#### ✏️ Mutation

- Field 'desWorkspaceInsUnsubscribeFromNotifications' was added to object type 'Mutation'
- Argument 'input: DesWorkspaceInsUnsubscribeFromNotificationsInput!' added to 'Mutation.desWorkspaceInsUnsubscribeFromNotifications'
- Field 'desWorkspaceInsUpdateNotificationSettings' was added to object type 'Mutation'
- Argument 'input: DesWorkspaceInsNotificationSettingsInput!' added to 'Mutation.desWorkspaceInsUpdateNotificationSettings'
- Field 'desWorkspaceInsUpdateSettings' was added to object type 'Mutation'
- Argument 'input: DesWorkspaceInsUserSettingsInput!' added to 'Mutation.desWorkspaceInsUpdateSettings'

#### Types

- Type 'DesWorkspaceInsNotificationRecipientSettings' was added
- Object type 'DesWorkspaceInsNotificationRecipientSettings' has description 'Recipients configuration applied to insight notifications.'
- Type 'DesWorkspaceInsNotificationSettings' was added
- Object type 'DesWorkspaceInsNotificationSettings' has description 'Notification settings defined for the current user.'
- Type 'DesWorkspaceInsProjectsSettings' was added
- Object type 'DesWorkspaceInsProjectsSettings' has description 'Project-level preferences affecting insight generation and visibility.'
- Type 'DesWorkspaceInsRecipientGroup' was added
- Object type 'DesWorkspaceInsRecipientGroup' has description 'Group recipient for notifications.'
- Type 'DesWorkspaceInsRecipientUser' was added
- Object type 'DesWorkspaceInsRecipientUser' has description 'User recipient for notifications.'
- Type 'DesWorkspaceInsUpdateNotificationSettingsPayload' was added
- Object type 'DesWorkspaceInsUpdateNotificationSettingsPayload' has description 'Payload returned after updating notification settings.'
- Type 'DesWorkspaceInsUserSettings' was added
- Object type 'DesWorkspaceInsUserSettings' has description 'User settings related to insights.'
- Type 'DesWorkspaceInsUserSettingsPayload' was added
- Object type 'DesWorkspaceInsUserSettingsPayload' has description 'Payload returning user settings for insight notifications and filters.'
- Type 'DesWorkspaceInsNotificationRecipientSettingsInput' was added
- Object type 'DesWorkspaceInsNotificationRecipientSettingsInput' has description 'Recipients configuration for insight notifications.'
- Type 'DesWorkspaceInsNotificationSettingsInput' was added
- Object type 'DesWorkspaceInsNotificationSettingsInput' has description 'Notification settings that control delivery of insight updates.'
- Type 'DesWorkspaceInsProjectSettingsInput' was added
- Object type 'DesWorkspaceInsProjectSettingsInput' has description 'User-level project filtering preferences for insights.'
- Type 'DesWorkspaceInsRecipientGroupInput' was added
- Object type 'DesWorkspaceInsRecipientGroupInput' has description 'Group recipient reference for notifications.'
- Type 'DesWorkspaceInsRecipientUserInput' was added
- Object type 'DesWorkspaceInsRecipientUserInput' has description 'User recipient reference for notifications.'
- Type 'DesWorkspaceInsUnsubscribeFromNotificationsInput' was added
- Object type 'DesWorkspaceInsUnsubscribeFromNotificationsInput' has description 'Input for removing a user from insight notifications.'
- Type 'DesWorkspaceInsUserSettingsInput' was added
- Object type 'DesWorkspaceInsUserSettingsInput' has description 'User-specific settings that control insight experience.'
- Object type 'DesWorkspaceInsInitializeInsightsIfRequiredPayload' has description 'Payload returned when initializing insights on first use.'
- Object type 'DesWorkspaceInsInsight' has description 'Insight aggregated from workspace signals and related resources.'
- Object type 'DesWorkspaceInsInsightAssemblyVariantLink' has description 'Link to an assembly variant associated with the insight.'
- Object type 'DesWorkspaceInsInsightBomLink' has description 'Link to a work-in-progress BOM associated with the insight.'
- Object type 'DesWorkspaceInsInsightBomReleaseLink' has description 'Link to a released BOM associated with the insight.'
- Object type 'DesWorkspaceInsInsightComponentLink' has description 'Link to a component associated with the insight.'
- Object type 'DesWorkspaceInsInsightComponentRevisionLink' has description 'Link to a component revision associated with the insight.'
- Object type 'DesWorkspaceInsInsightConsolidatedBomLink' has description 'Link to a consolidated BOM associated with the insight.'
- Object type 'DesWorkspaceInsInsightConsolidatedBomReleaseLink' has description 'Link to a consolidated BOM release associated with the insight.'
- Object type 'DesWorkspaceInsInsightDataChangedAction' has description 'History entry capturing changes to an insight\'s data payloads.'
- Object type 'DesWorkspaceInsInsightEntityLinksChangedAction' has description 'History entry capturing changes to linked entities.'
- Object type 'DesWorkspaceInsInsightErrorPayload' has description 'Standard error payload returned by insight mutations.'
- Object type 'DesWorkspaceInsInsightHistoryTransaction' has description 'A point-in-time collection of actions recorded for an insight.'
- Object type 'DesWorkspaceInsInsightPartLink' has description 'Link to a part associated with the insight.'
- Object type 'DesWorkspaceInsInsightPartRequestLinkGql' has description 'Link to a part request task associated with the insight.'
- Object type 'DesWorkspaceInsInsightProjectLink' has description 'Link to a project associated with the insight.'
- Object type 'DesWorkspaceInsInsightSeverityChangedAction' has description 'History entry representing a severity change on an insight.'
- Object type 'DesWorkspaceInsInsightStatusChangedAction' has description 'History entry representing a status change on an insight.'
- Object type 'DesWorkspaceInsInsightTaskLinkGql' has description 'Link to a task associated with the insight.'
- Object type 'DesWorkspaceInsInsightTaskLinksChangedAction' has description 'History entry capturing changes to linked tasks.'
- Object type 'DesWorkspaceInsRelatedEntities' has description 'Entities linked to an insight across the workspace.'
- Object type 'DesWorkspaceInsRelatedTasks' has description 'Tasks and task-like items related to an insight.'
- Object type 'DesWorkspaceInsUpdateInsightByIdPayload' has description 'Payload produced after updating an insight by identifier.'
- Object type 'DesWorkspaceInsUpsertInsightByKeyPayload' has description 'Payload produced when upserting an insight using a deduplication key.'
- Object type 'DesWorkspaceInsUserActionTimestamp' has description 'Timestamp information including the user responsible for an action.'
- Object type 'DesWorkspaceInsInsightHistoryAction' has description 'Union marker for actions recorded in an insight\'s history.'
- Object type 'DesWorkspaceInsInsightFilterInput' has description 'Input for filtering insights based on various criteria.'
- Object type 'DesWorkspaceInsInsightUserActionInput' has description 'User action parameters applied to an insight update.'
- Object type 'DesWorkspaceInsOrderingInput' has description 'Sorting configuration for insight queries.'
- Object type 'DesWorkspaceInsUpdateInsightByIdInput' has description 'Input for updating an existing insight by its identifier.'
- Object type 'DesWorkspaceInsUpsertInsightByKeyInput' has description 'Input for creating or updating an insight identified by a deduplication key.'
- Object type 'DesWorkspaceInsUpsertInsightInput' has description 'Input payload for creating or updating an insight.'

#### Fields

- Field 'groups' was added to object type 'DesWorkspaceInsNotificationRecipientSettings'
- Field 'sendToOwners' was added to object type 'DesWorkspaceInsNotificationRecipientSettings'
- Field 'users' was added to object type 'DesWorkspaceInsNotificationRecipientSettings'
- Field 'enabled' was added to object type 'DesWorkspaceInsNotificationSettings'
- Field 'recipientSettings' was added to object type 'DesWorkspaceInsNotificationSettings'
- Field 'unsubscribedUserIds' was added to object type 'DesWorkspaceInsNotificationSettings'
- Field 'excludedAssemblyVariants' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'excludedBomReleases' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'excludedConsolidatedBomReleases' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'excludedConsolidatedBoms' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'excludedProjects' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'excludedWipBoms' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'excludeNonActiveProjects' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'projectInactivityThresholdDays' was added to object type 'DesWorkspaceInsProjectsSettings'
- Field 'id' was added to object type 'DesWorkspaceInsRecipientGroup'
- Field 'id' was added to object type 'DesWorkspaceInsRecipientUser'
- Field 'errors' was added to object type 'DesWorkspaceInsUpdateNotificationSettingsPayload'
- Field 'settings' was added to object type 'DesWorkspaceInsUpdateNotificationSettingsPayload'
- Field 'projectsSettings' was added to object type 'DesWorkspaceInsUserSettings'
- Field 'errors' was added to object type 'DesWorkspaceInsUserSettingsPayload'
- Field 'userSettings' was added to object type 'DesWorkspaceInsUserSettingsPayload'

#### Input / Payload

- Input field 'groups' of type '[DesWorkspaceInsRecipientGroupInput!]!' was added to input object type 'DesWorkspaceInsNotificationRecipientSettingsInput'
- Input field 'sendToOwners' of type 'Boolean!' was added to input object type 'DesWorkspaceInsNotificationRecipientSettingsInput'
- Input field 'users' of type '[DesWorkspaceInsRecipientUserInput!]!' was added to input object type 'DesWorkspaceInsNotificationRecipientSettingsInput'
- Input field 'enabled' of type 'Boolean!' was added to input object type 'DesWorkspaceInsNotificationSettingsInput'
- Input field 'recipientSettings' of type 'DesWorkspaceInsNotificationRecipientSettingsInput' was added to input object type 'DesWorkspaceInsNotificationSettingsInput'
- Input field 'unsubscribedUserIds' of type '[ID!]' was added to input object type 'DesWorkspaceInsNotificationSettingsInput'
- Input field 'excludedEntities' of type '[ID!]!' was added to input object type 'DesWorkspaceInsProjectSettingsInput'
- Input field 'excludeNonActiveProjects' of type 'Boolean!' was added to input object type 'DesWorkspaceInsProjectSettingsInput'
- Input field 'projectInactivityThresholdDays' of type 'Int!' was added to input object type 'DesWorkspaceInsProjectSettingsInput'
- Input field 'id' of type 'ID!' was added to input object type 'DesWorkspaceInsRecipientGroupInput'
- Input field 'id' of type 'ID!' was added to input object type 'DesWorkspaceInsRecipientUserInput'
- Input field 'userId' of type 'ID!' was added to input object type 'DesWorkspaceInsUnsubscribeFromNotificationsInput'
- Input field 'projectsSettings' of type 'DesWorkspaceInsProjectSettingsInput' was added to input object type 'DesWorkspaceInsUserSettingsInput'

### Renesas (preview)

#### Types

- Type 'DmDependencyPinConfig' was added
- Object type 'DmDependencyPinConfig' has description '**Experimental** Pin dependecy to port mapping entry within an operation mode.'

#### Fields

- Field 'display' was added to object type 'DmDependencyPinConfig'
- Field 'DmDependencyPinConfig.display' is deprecated
- Directive 'deprecated' was added to 'DmDependencyPinConfig.display'
- Field 'pinDependencyName' was added to object type 'DmDependencyPinConfig'
- Field 'DmDependencyPinConfig.pinDependencyName' is deprecated
- Directive 'deprecated' was added to 'DmDependencyPinConfig.pinDependencyName'
- Field 'pinDependencyValue' was added to object type 'DmDependencyPinConfig'
- Field 'DmDependencyPinConfig.pinDependencyValue' is deprecated
- Directive 'deprecated' was added to 'DmDependencyPinConfig.pinDependencyValue'
- Field 'deviceInterfaces' was added to object type 'DmDeviceModelAsConfigured'
- Field 'DmDeviceModelAsConfigured.deviceInterfaces' is deprecated
- Directive 'deprecated' was added to 'DmDeviceModelAsConfigured.deviceInterfaces'
- Field 'dependencyPinConfigs' was added to object type 'DmOpMode'
- Field 'DmOpMode.dependencyPinConfigs' is deprecated
- Directive 'deprecated' was added to 'DmOpMode.dependencyPinConfigs'
- Field 'idConfig' was added to object type 'DmOpMode'
- Field 'DmOpMode.idConfig' is deprecated
- Directive 'deprecated' was added to 'DmOpMode.idConfig'

### Supply

#### 🔍 Query

- Field 'supSolutionTemplateByName' was added to object type 'Query'
- Argument 'name: String!' added to 'Query.supSolutionTemplateByName'

#### Types

- Type 'SupSolutionTemplateStatus' was added
- Enum value 'ACTIVE' was added to enum 'SupSolutionTemplateStatus'
- Enum value 'DRAFT' was added to enum 'SupSolutionTemplateStatus'
- Enum value 'INACTIVE' was added to enum 'SupSolutionTemplateStatus'
- Enum value 'ON_HOLD' was added to enum 'SupSolutionTemplateStatus'
- Enum value 'REJECTED' was added to enum 'SupSolutionTemplateStatus'
- Enum value 'REVIEWING' was added to enum 'SupSolutionTemplateStatus'
- Enum value 'SUBMITTED' was added to enum 'SupSolutionTemplateStatus'

#### Fields

- Field 'stableName' was added to object type 'SupSolutionTemplate'
- Field 'status' was added to object type 'SupSolutionTemplate'

#### Input / Payload

- Input field 'stableName' of type 'String' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'status' of type 'SupSolutionTemplateStatus' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'SupSolutionTemplateUpdateSolutionTemplateInput.title' changed type from 'String!' to 'String'


