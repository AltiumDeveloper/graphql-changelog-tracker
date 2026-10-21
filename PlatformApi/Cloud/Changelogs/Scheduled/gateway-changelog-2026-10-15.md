# gateway-changelog-2026-10-15

## 🔴 Breaking Changes (8)


### Customization

#### Input / Payload

- Directive 'oneOf' was added to input object 'GloCusUpdateAssignmentInput'

### Library Management

#### Fields

- Field 'errorMessage' was removed from object type 'DesPartUploadComponentOperationResult'
- Field 'status' was removed from object type 'DesPartUploadComponentOperationResult'
- Field 'errorMessage' was removed from object type 'DesPartUploadLibraryPartOperationResult'

### Procurement

#### Input / Payload

- Directive 'oneOf' was added to input object 'BomCreateBomItemElementAttributeValueInput'
- Directive 'oneOf' was added to input object 'BomCreateBomOfferReferenceInput'
- Directive 'oneOf' was added to input object 'BomCreateBomPartReferenceInput'
- Directive 'oneOf' was added to input object 'BomCreateBomSupplierReferenceInput'

---

## ⚠️ Dangerous Changes (117)


### Collaboration

#### 🔍 Query

- Directive 'authorize' was added to 'Query.desAnnotations'
- Directive 'listSize' was added to 'Query.desAnnotations'

#### Types

- Member 'DesAnnotationManagedPartBinding' was added to Union type 'DesAnnotationBinding'

### Customization

#### 🔍 Query

- Directive 'listSize' was added to 'Query.gloScrScriptExecutionResults'
- Directive 'listSize' was added to 'Query.gloScrScripts'
- Directive 'authorize' was added to 'Query.gloScrScriptSecrets'
- Directive 'authorize' was added to 'Query.gloScrSecrets'

#### ✏️ Mutation

- Directive 'authorize' was added to 'Mutation.gloCusAddAssignment'
- Directive 'authorize' was added to 'Mutation.gloCusDeleteAssignment'
- Directive 'authorize' was added to 'Mutation.gloCusUpdateAssignment'
- Directive 'authorize' was added to 'Mutation.gloCusUpdateAssignmentConfigurations'
- Directive 'authorize' was added to 'Mutation.gloScrCreateScript'
- Directive 'authorize' was added to 'Mutation.gloScrCreateSecret'
- Directive 'authorize' was added to 'Mutation.gloScrDeleteScript'
- Directive 'authorize' was added to 'Mutation.gloScrDeleteSecret'
- Directive 'authorize' was added to 'Mutation.gloScrExecuteScript'
- Directive 'authorize' was added to 'Mutation.gloScrRenameScript'
- Directive 'authorize' was added to 'Mutation.gloScrSetScriptSecrets'
- Directive 'authorize' was added to 'Mutation.gloScrUpdateScript'

#### Types

- Directive 'authorize' was added to object 'GloScrScript'

#### Fields

- Directive 'listSize' was added to 'GloCusExtensionPoint.assignments'
- Directive 'listSize' was added to 'GloScrScript.versions'
- Directive 'authorize' was added to 'GloScrScriptVersion.package'

### Design

#### 🔍 Query

- Directive 'authorize' was added to 'Query.desComparisonHealthcheck'

#### ✏️ Mutation

- Directive 'authorize' was added to 'Mutation.desCompareReleases'

### Insights

#### 🔍 Query

- Directive 'listSize' was added to 'Query.desWorkspaceInsInsights'

### Library Management

#### 🔍 Query

- Directive 'listSize' was added to 'Query.desPartGlobalSearch'
- Directive 'listSize' was added to 'Query.desPartSearch'

### Platform

#### 🔍 Query

- Directive 'authorize' was added to 'Query.desWorkspaceGroupById'
- Directive 'authorize' was added to 'Query.desWorkspaceGroupsByIds'
- Directive 'authorize' was added to 'Query.desWorkspaceTeamByAuth'
- Directive 'authorize' was added to 'Query.desWorkspaceUserByAuth'
- Directive 'authorize' was added to 'Query.desWorkspaceUserById'
- Directive 'authorize' was added to 'Query.desWorkspaceUsersByIds'
- Directive 'authorize' was added to 'Query.gloAppByClientId'
- Directive 'authorize' was added to 'Query.gloAppById'
- Directive 'authorize' was added to 'Query.gloAppInstalledApps'
- Directive 'authorize' was added to 'Query.gloApps'
- Directive 'listSize' was added to 'Query.gloApps'
- Directive 'authorize' was added to 'Query.gloEvtSubscriptionById'
- Directive 'authorize' was added to 'Query.gloOrganization'
- Directive 'authorize' was added to 'Query.gloOrganizationById'
- Directive 'authorize' was added to 'Query.gloUserById'
- Directive 'authorize' was added to 'Query.gloUserGroups'
- Directive 'listSize' was added to 'Query.gloUserGroups'
- Directive 'authorize' was added to 'Query.gloUsers'
- Directive 'listSize' was added to 'Query.gloUsers'
- Directive 'authorize' was added to 'Query.gloUsersByIds'

#### ✏️ Mutation

- Directive 'authorize' was added to 'Mutation.gloAddAppClientSecret'
- Directive 'authorize' was added to 'Mutation.gloAddAppGrantType'
- Directive 'authorize' was added to 'Mutation.gloAddAppRedirectUri'
- Directive 'authorize' was added to 'Mutation.gloAddAppScope'
- Directive 'authorize' was added to 'Mutation.gloAddUsersToGroup'
- Directive 'authorize' was added to 'Mutation.gloCreateApp'
- Directive 'authorize' was added to 'Mutation.gloCreateAppFromOAuthClient'
- Directive 'authorize' was added to 'Mutation.gloCreateUser'
- Directive 'authorize' was added to 'Mutation.gloCreateUserGroup'
- Directive 'authorize' was added to 'Mutation.gloDeleteApp'
- Directive 'authorize' was added to 'Mutation.gloEvtCreateWebhookSubscription'
- Directive 'authorize' was added to 'Mutation.gloEvtDeleteSubscription'
- Directive 'authorize' was added to 'Mutation.gloEvtPublishEvent'
- Directive 'authorize' was added to 'Mutation.gloInstallApp'
- Directive 'authorize' was added to 'Mutation.gloRemoveAppClientSecret'
- Directive 'authorize' was added to 'Mutation.gloRemoveAppGrantType'
- Directive 'authorize' was added to 'Mutation.gloRemoveAppRedirectUri'
- Directive 'authorize' was added to 'Mutation.gloRemoveAppScope'
- Directive 'authorize' was added to 'Mutation.gloRemoveUsersFromGroup'
- Directive 'authorize' was added to 'Mutation.gloRestoreApp'
- Directive 'authorize' was added to 'Mutation.gloUninstallApp'
- Directive 'authorize' was added to 'Mutation.gloUpdateAppContactEmail'
- Directive 'authorize' was added to 'Mutation.gloUpdateAppDescription'
- Directive 'authorize' was added to 'Mutation.gloUpdateAppHrid'
- Directive 'authorize' was added to 'Mutation.gloUpdateAppName'
- Directive 'authorize' was added to 'Mutation.platformTokenDelete'
- Directive 'authorize' was added to 'Mutation.platformTokenUpdate'
- Directive 'authorize' was added to 'Mutation.platformWorkspaceRefreshTokenCreate'
- Directive 'authorize' was added to 'Mutation.platformWorkspaceRefreshTokenCreateNewSecret'
- Directive 'authorize' was added to 'Mutation.platformWorkspaceRefreshTokenDeleteSecret'
- Directive 'authorize' was added to 'Mutation.platformWorkspaceTokenCreate'

#### Types

- Member 'PlatformTokenInvalidNameError' was added to Union type 'PlatformTokenUpdateError'
- Member 'PlatformTokenInvalidNameError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateError'
- Member 'PlatformTokenInvalidNameError' was added to Union type 'PlatformWorkspaceTokenCreateError'

#### Fields

- Directive 'authorize' was added to 'DesWorkspaceGroup.members'
- Directive 'listSize' was added to 'DesWorkspaceGroup.members'
- Directive 'authorize' was added to 'DesWorkspaceTeam.projectGuests'
- Directive 'listSize' was added to 'DesWorkspaceTeam.projectGuests'
- Directive 'authorize' was added to 'DesWorkspaceTeam.workspaceGroups'
- Directive 'listSize' was added to 'DesWorkspaceTeam.workspaceGroups'
- Directive 'authorize' was added to 'DesWorkspaceTeam.workspaceUsers'
- Directive 'listSize' was added to 'DesWorkspaceTeam.workspaceUsers'
- Directive 'authorize' was added to 'TokenQueries.byTokenId'
- Directive 'authorize' was added to 'TokenQueries.byWorkspace'
- Directive 'listSize' was added to 'TokenQueries.byWorkspace'
- Directive 'authorize' was added to 'TokenQueries.workspaceTokenQuota'

### Procurement

#### 🔍 Query

- Directive 'authorize' was added to 'Query.bomBom'
- Directive 'authorize' was added to 'Query.bomBomById'
- Directive 'authorize' was added to 'Query.bomBomRelease'
- Directive 'authorize' was added to 'Query.bomBoms'

#### ✏️ Mutation

- Directive 'authorize' was added to 'Mutation.bomChangeBomReleaseLifecycleState'
- Directive 'authorize' was added to 'Mutation.bomCreateBom'
- Directive 'authorize' was added to 'Mutation.bomExportBom'
- Directive 'authorize' was added to 'Mutation.bomExportBom'
- Directive 'authorize' was added to 'Mutation.bomExportBomById'
- Directive 'authorize' was added to 'Mutation.bomExportBomById'
- Directive 'authorize' was added to 'Mutation.bomExportBomRelease'
- Directive 'authorize' was added to 'Mutation.bomExportBomRelease'

#### Fields

- Directive 'authorize' was added to 'BomItem.issues'
- Directive 'authorize' was added to 'BomItemAlternate.issues'
- Directive 'authorize' was added to 'BomItemAlternate.selectedOffer'
- Directive 'authorize' was added to 'BomItemSubstitute.issues'
- Directive 'authorize' was added to 'BomItemSubstitute.selectedOffer'
- Directive 'authorize' was added to 'BomRelease.healthChecks'
- Directive 'authorize' was added to 'BomRelease.incompleteHealthChecks'
- Directive 'authorize' was added to 'BomRelease.issues'
- Directive 'authorize' was added to 'BomWip.healthChecks'
- Directive 'authorize' was added to 'BomWip.incompleteHealthChecks'
- Directive 'authorize' was added to 'BomWip.issues'

---

## ✅ Non-Breaking Changes (325)


### Collaboration

#### Types

- Type 'DesAnnotationManagedPartBinding' was added

#### Fields

- Field 'partId' was added to object type 'DesAnnotationManagedPartBinding'

### Common

#### Directives

- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Directive 'listSize' was added
- Location 'FIELD_DEFINITION' was added to directive 'listSize'
- Argument 'assumedSize' was added to directive 'listSize'
- Argument 'slicingArguments' was added to directive 'listSize'
- Argument 'slicingArgumentDefaultValue' was added to directive 'listSize'
- Argument 'sizedFields' was added to directive 'listSize'
- Argument 'requireOneSlicingArgument' was added to directive 'listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'reason' was added to '@deprecated'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'assumedSize' was added to '@listSize'
- Argument 'slicingArguments' was added to '@listSize'
- Argument 'slicingArgumentDefaultValue' was added to '@listSize'
- Argument 'sizedFields' was added to '@listSize'
- Argument 'requireOneSlicingArgument' was added to '@listSize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'
- Argument 'policy' was added to '@authorize'

### Insights

#### Types

- Type 'DesWorkspaceInsInsightTypesSettingsGql' was added
- Object type 'DesWorkspaceInsInsightTypesSettingsGql' has description 'Insight-type preferences affecting which insights are shown.'
- Type 'DesWorkspaceInsInsightTypesSettingsInputGqlInput' was added
- Object type 'DesWorkspaceInsInsightTypesSettingsInputGqlInput' has description 'Insight-type preferences that define which insights are shown.'

#### Fields

- Field 'excludedInsightTypes' was added to object type 'DesWorkspaceInsInsightTypesSettingsGql'
- Field 'insightTypesSettings' was added to object type 'DesWorkspaceInsUserSettings'

#### Input / Payload

- Input field 'excludedInsightTypes' of type '[String!]!' was added to input object type 'DesWorkspaceInsInsightTypesSettingsInputGqlInput'
- Input field 'insightTypesSettings' of type 'DesWorkspaceInsInsightTypesSettingsInputGqlInput' was added to input object type 'DesWorkspaceInsUserSettingsInput'

### Library Management

#### Fields

- Field 'componentStatus' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'errorDetails' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'message' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'partChoiceStatus' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'revisionId' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'errorDetails' was added to object type 'DesPartUploadLibraryPartOperationResult'
- Field 'message' was added to object type 'DesPartUploadLibraryPartOperationResult'
- Field 'failureReason' was added to object type 'DesPartUploadOperationPayload'

### Platform

#### 🔍 Query

- Field 'Query.solBldEntityScaffoldingStatus' is deprecated
- Directive 'deprecated' was added to 'Query.solBldEntityScaffoldingStatus'

#### ✏️ Mutation

- Field 'platformKeyValueStoreAdd' was added to object type 'Mutation'
- Argument 'input: PlatformKeyValueStoreAddInput!' added to 'Mutation.platformKeyValueStoreAdd'
- Directive 'authorize' was added to 'Mutation.platformKeyValueStoreAdd'
- Field 'platformKeyValueStoreDelete' was added to object type 'Mutation'
- Argument 'input: PlatformKeyValueStoreDeleteInput!' added to 'Mutation.platformKeyValueStoreDelete'
- Directive 'authorize' was added to 'Mutation.platformKeyValueStoreDelete'
- Field 'platformKeyValueStoreUpdate' was added to object type 'Mutation'
- Argument 'input: PlatformKeyValueStoreUpdateInput!' added to 'Mutation.platformKeyValueStoreUpdate'
- Directive 'authorize' was added to 'Mutation.platformKeyValueStoreUpdate'

#### Types

- Type 'PlatformKeyValueStoreAddPayload' was added
- Type 'PlatformKeyValueStoreDeletePayload' was added
- Type 'PlatformKeyValueStoreEntry' was added
- Object type 'PlatformKeyValueStoreEntry' has description 'A value stored in the key-value store of an app installation, in the workspace of the access token.'
- Type 'PlatformKeyValueStoreEntryExistsError' was added
- 'PlatformKeyValueStoreEntryExistsError' object implements 'Error' interface
- Type 'PlatformKeyValueStoreEntryNotFoundError' was added
- 'PlatformKeyValueStoreEntryNotFoundError' object implements 'Error' interface
- Type 'PlatformKeyValueStoreEntrySummary' was added
- Object type 'PlatformKeyValueStoreEntrySummary' has description 'Entry metadata returned by *all*, without the value.'
- Type 'PlatformKeyValueStoreEntrySummaryConnection' was added
- Object type 'PlatformKeyValueStoreEntrySummaryConnection' has description 'A connection to a list of items.'
- Type 'PlatformKeyValueStoreEntrySummaryEdge' was added
- Object type 'PlatformKeyValueStoreEntrySummaryEdge' has description 'An edge in a connection.'
- Type 'PlatformKeyValueStoreKeyInvalidError' was added
- 'PlatformKeyValueStoreKeyInvalidError' object implements 'Error' interface
- Type 'PlatformKeyValueStoreQueries' was added
- Type 'PlatformKeyValueStoreQuotaExceededError' was added
- 'PlatformKeyValueStoreQuotaExceededError' object implements 'Error' interface
- Object type 'PlatformKeyValueStoreQuotaExceededError' has description 'Returned when adding the entry, or growing its value, would exceed the installation\'s quota.'
- Type 'PlatformKeyValueStoreUpdatePayload' was added
- Type 'PlatformKeyValueStoreValueTooLargeError' was added
- 'PlatformKeyValueStoreValueTooLargeError' object implements 'Error' interface
- Type 'PlatformTokenInvalidNameError' was added
- 'PlatformTokenInvalidNameError' object implements 'Error' interface
- Object type 'PlatformTokenInvalidNameError' has description 'Error returned by the Token API when an input name for a `PlatformToken` is invalid.'
- Type 'PlatformKeyValueStoreAddError' was added
- Member 'PlatformKeyValueStoreKeyInvalidError' was added to Union type 'PlatformKeyValueStoreAddError'
- Member 'PlatformKeyValueStoreValueTooLargeError' was added to Union type 'PlatformKeyValueStoreAddError'
- Member 'PlatformKeyValueStoreEntryExistsError' was added to Union type 'PlatformKeyValueStoreAddError'
- Member 'PlatformKeyValueStoreQuotaExceededError' was added to Union type 'PlatformKeyValueStoreAddError'
- Type 'PlatformKeyValueStoreDeleteError' was added
- Member 'PlatformKeyValueStoreKeyInvalidError' was added to Union type 'PlatformKeyValueStoreDeleteError'
- Type 'PlatformKeyValueStoreUpdateError' was added
- Member 'PlatformKeyValueStoreKeyInvalidError' was added to Union type 'PlatformKeyValueStoreUpdateError'
- Member 'PlatformKeyValueStoreValueTooLargeError' was added to Union type 'PlatformKeyValueStoreUpdateError'
- Member 'PlatformKeyValueStoreEntryNotFoundError' was added to Union type 'PlatformKeyValueStoreUpdateError'
- Member 'PlatformKeyValueStoreQuotaExceededError' was added to Union type 'PlatformKeyValueStoreUpdateError'
- Type 'PlatformKeyValueStoreAddInput' was added
- Type 'PlatformKeyValueStoreDeleteInput' was added
- Type 'PlatformKeyValueStoreUpdateInput' was added
- Object type 'SolAccessibleToInput' has description 'Specifies the grids whose permissions must provide access to a solution.'

#### Arguments

- Argument 'after: String' added to 'PlatformKeyValueStoreQueries.all'
- Argument 'first: Int' added to 'PlatformKeyValueStoreQueries.all'
- Argument 'prefix: String' added to 'PlatformKeyValueStoreQueries.all'
- Argument 'key: String!' added to 'PlatformKeyValueStoreQueries.byKey'
- Argument 'keys: [String!]!' added to 'PlatformKeyValueStoreQueries.byKeys'

#### Fields

- Field 'entry' was added to object type 'PlatformKeyValueStoreAddPayload'
- Field 'errors' was added to object type 'PlatformKeyValueStoreAddPayload'
- Field 'errors' was added to object type 'PlatformKeyValueStoreDeletePayload'
- Field 'isDeleted' was added to object type 'PlatformKeyValueStoreDeletePayload'
- Field 'createdAt' was added to object type 'PlatformKeyValueStoreEntry'
- Field 'key' was added to object type 'PlatformKeyValueStoreEntry'
- Field 'sizeBytes' was added to object type 'PlatformKeyValueStoreEntry'
- Field 'updatedAt' was added to object type 'PlatformKeyValueStoreEntry'
- Field 'value' was added to object type 'PlatformKeyValueStoreEntry'
- Field 'key' was added to object type 'PlatformKeyValueStoreEntryExistsError'
- Field 'message' was added to object type 'PlatformKeyValueStoreEntryExistsError'
- Field 'key' was added to object type 'PlatformKeyValueStoreEntryNotFoundError'
- Field 'message' was added to object type 'PlatformKeyValueStoreEntryNotFoundError'
- Field 'createdAt' was added to object type 'PlatformKeyValueStoreEntrySummary'
- Field 'key' was added to object type 'PlatformKeyValueStoreEntrySummary'
- Field 'sizeBytes' was added to object type 'PlatformKeyValueStoreEntrySummary'
- Field 'updatedAt' was added to object type 'PlatformKeyValueStoreEntrySummary'
- Field 'edges' was added to object type 'PlatformKeyValueStoreEntrySummaryConnection'
- Field 'nodes' was added to object type 'PlatformKeyValueStoreEntrySummaryConnection'
- Field 'pageInfo' was added to object type 'PlatformKeyValueStoreEntrySummaryConnection'
- Field 'cursor' was added to object type 'PlatformKeyValueStoreEntrySummaryEdge'
- Field 'node' was added to object type 'PlatformKeyValueStoreEntrySummaryEdge'
- Field 'key' was added to object type 'PlatformKeyValueStoreKeyInvalidError'
- Field 'message' was added to object type 'PlatformKeyValueStoreKeyInvalidError'
- Field 'all' was added to object type 'PlatformKeyValueStoreQueries'
- Directive 'listSize' was added to 'PlatformKeyValueStoreQueries.all'
- Field 'byKey' was added to object type 'PlatformKeyValueStoreQueries'
- Field 'byKeys' was added to object type 'PlatformKeyValueStoreQueries'
- Field 'maxEntryCount' was added to object type 'PlatformKeyValueStoreQuotaExceededError'
- Field 'maxTotalSizeBytes' was added to object type 'PlatformKeyValueStoreQuotaExceededError'
- Field 'message' was added to object type 'PlatformKeyValueStoreQuotaExceededError'
- Field 'entry' was added to object type 'PlatformKeyValueStoreUpdatePayload'
- Field 'errors' was added to object type 'PlatformKeyValueStoreUpdatePayload'
- Field 'maxSizeBytes' was added to object type 'PlatformKeyValueStoreValueTooLargeError'
- Field 'message' was added to object type 'PlatformKeyValueStoreValueTooLargeError'
- Field 'sizeBytes' was added to object type 'PlatformKeyValueStoreValueTooLargeError'
- Field 'message' was added to object type 'PlatformTokenInvalidNameError'
- Field 'keyValueStore' was added to object type 'PlatformQueries'
- Directive 'authorize' was added to 'PlatformQueries.keyValueStore'

#### Input / Payload

- Input field 'key' of type 'String!' was added to input object type 'PlatformKeyValueStoreAddInput'
- Input field 'value' of type 'String!' was added to input object type 'PlatformKeyValueStoreAddInput'
- Input field 'key' of type 'String!' was added to input object type 'PlatformKeyValueStoreDeleteInput'
- Input field 'key' of type 'String!' was added to input object type 'PlatformKeyValueStoreUpdateInput'
- Input field 'value' of type 'String!' was added to input object type 'PlatformKeyValueStoreUpdateInput'

### Procurement

#### Types

- Type 'CostedBomsConnection' was added
- Object type 'CostedBomsConnection' has description 'A connection to a list of items.'
- Type 'CostedBomsEdge' was added
- Object type 'CostedBomsEdge' has description 'An edge in a connection.'
- Object type 'BomChangeBomReleaseLifecycleStatePayload' has description 'Result of changing the lifecycle state of a BOM release.'
- Object type 'BomCreateBomPayload' has description 'Result of creating a new BOM.'
- Object type 'BomExportBomPayload' has description 'Result of exporting a BOM to a file.'
- Object type 'BomExportBomReleasePayload' has description 'Result of exporting a BOM release to a file.'
- Object type 'BomChangeBomReleaseLifecycleStateInput' has description 'Input for changing the lifecycle state of a BOM release.'
- Object type 'BomCreateBomInput' has description 'Input for creating a new BOM.'
- Object type 'BomExportBomByIdInput' has description 'Input for exporting a BOM by its identifier.'
- Object type 'BomExportBomInput' has description 'Input for exporting a BOM.'
- Object type 'BomExportBomReleaseInput' has description 'Input for exporting a BOM release.'

#### Arguments

- Argument 'after: String' added to 'BomWip.costedBoms'
- Argument 'before: String' added to 'BomWip.costedBoms'
- Argument 'first: Int' added to 'BomWip.costedBoms'
- Argument 'last: Int' added to 'BomWip.costedBoms'

#### Fields

- Field 'edges' was added to object type 'CostedBomsConnection'
- Field 'nodes' was added to object type 'CostedBomsConnection'
- Field 'pageInfo' was added to object type 'CostedBomsConnection'
- Field 'totalCount' was added to object type 'CostedBomsConnection'
- Field 'cursor' was added to object type 'CostedBomsEdge'
- Field 'node' was added to object type 'CostedBomsEdge'
- Field 'costedBoms' was added to object type 'BomWip'

### Renesas (preview)

#### Fields

- Field 'onChipMemoryCode' was added to object type 'DmRaPartNumberModel'

