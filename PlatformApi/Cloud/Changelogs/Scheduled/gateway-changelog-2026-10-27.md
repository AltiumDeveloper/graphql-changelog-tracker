# gateway-changelog-27-Oct-2026

## 🔴 Breaking Changes (52)

### Collaboration

#### Types

- Type 'DesAnnotationManagedPartBinding' was removed
- Member 'DesAnnotationManagedPartBinding' was removed from Union type 'DesAnnotationBinding'

### Common

#### Directives

- Directive 'listSize' was removed

### Design

#### Types

- Type 'DesCommentThreadProperty' was removed
- 'DesCommentThread' object type no longer implements 'Node' interface

#### Fields

- Field 'id' was removed from object type 'DesCommentThread'
- Field 'properties' was removed from object type 'DesCommentThread'

### Insights

#### Types

- Type 'DesWorkspaceInsInsightTypesSettingsGql' was removed
- Type 'DesWorkspaceInsInsightTypesSettingsInputGqlInput' was removed

#### Fields

- Field 'insightTypesSettings' was removed from object type 'DesWorkspaceInsUserSettings'

#### Input / Payload

- Input field 'insightTypesSettings' was removed from input object type 'DesWorkspaceInsUserSettingsInput'

### Library Management

#### 🔍 Query

- Argument 'requestPaidData: Boolean' was removed from field 'Query.desPartGlobalPartByIds'

#### Fields

- Field 'componentStatus' was removed from object type 'DesPartUploadComponentOperationResult'
- Field 'errorDetails' was removed from object type 'DesPartUploadComponentOperationResult'
- Field 'message' was removed from object type 'DesPartUploadComponentOperationResult'
- Field 'partChoiceStatus' was removed from object type 'DesPartUploadComponentOperationResult'
- Field 'revisionId' was removed from object type 'DesPartUploadComponentOperationResult'
- Field 'errorDetails' was removed from object type 'DesPartUploadLibraryPartOperationResult'
- Field 'message' was removed from object type 'DesPartUploadLibraryPartOperationResult'
- Field 'failureReason' was removed from object type 'DesPartUploadOperationPayload'

### Platform

#### ✏️ Mutation

- Field 'platformKeyValueStoreAdd' was removed from object type 'Mutation'
- Field 'platformKeyValueStoreDelete' was removed from object type 'Mutation'
- Field 'platformKeyValueStoreUpdate' was removed from object type 'Mutation'

#### Types

- Type 'PlatformKeyValueStoreAddPayload' was removed
- Type 'PlatformKeyValueStoreDeletePayload' was removed
- Type 'PlatformKeyValueStoreEntry' was removed
- Type 'PlatformKeyValueStoreEntryExistsError' was removed
- Type 'PlatformKeyValueStoreEntryNotFoundError' was removed
- Type 'PlatformKeyValueStoreEntrySummary' was removed
- Type 'PlatformKeyValueStoreEntrySummaryConnection' was removed
- Type 'PlatformKeyValueStoreEntrySummaryEdge' was removed
- Type 'PlatformKeyValueStoreKeyInvalidError' was removed
- Type 'PlatformKeyValueStoreQueries' was removed
- Type 'PlatformKeyValueStoreQuotaExceededError' was removed
- Type 'PlatformKeyValueStoreUpdatePayload' was removed
- Type 'PlatformKeyValueStoreValueTooLargeError' was removed
- Type 'PlatformTokenInvalidNameError' was removed
- Type 'PlatformKeyValueStoreAddError' was removed
- Type 'PlatformKeyValueStoreDeleteError' was removed
- Type 'PlatformKeyValueStoreUpdateError' was removed
- Type 'PlatformKeyValueStoreAddInput' was removed
- Type 'PlatformKeyValueStoreDeleteInput' was removed
- Type 'PlatformKeyValueStoreUpdateInput' was removed
- Member 'PlatformTokenInvalidNameError' was removed from Union type 'PlatformTokenUpdateError'
- Member 'PlatformTokenInvalidNameError' was removed from Union type 'PlatformWorkspaceRefreshTokenCreateError'
- Member 'PlatformTokenInvalidNameError' was removed from Union type 'PlatformWorkspaceTokenCreateError'

#### Fields

- Field 'keyValueStore' was removed from object type 'PlatformQueries'

#### Input / Payload

- Input field 'itemIds' was removed from input object type 'SolCreateSolutionInput'

### Procurement

#### Types

- Type 'CostedBomsConnection' was removed
- Type 'CostedBomsEdge' was removed

#### Fields

- Field 'costedBoms' was removed from object type 'BomWip'

### Renesas (preview)

#### Fields

- Field 'onChipMemoryCode' was removed from object type 'DmRaPartNumberModel'


---

## ⚠️ Dangerous Changes (114)

### Collaboration

#### 🔍 Query

- Directive 'authorize' was removed from field 'Query.desAnnotations'
- Directive 'listSize' was removed from field 'Query.desAnnotations'

### Customization

#### 🔍 Query

- Directive 'listSize' was removed from field 'Query.gloScrScriptExecutionResults'
- Directive 'listSize' was removed from field 'Query.gloScrScripts'
- Directive 'authorize' was removed from field 'Query.gloScrScriptSecrets'
- Directive 'authorize' was removed from field 'Query.gloScrSecrets'

#### ✏️ Mutation

- Directive 'authorize' was removed from field 'Mutation.gloCusAddAssignment'
- Directive 'authorize' was removed from field 'Mutation.gloCusDeleteAssignment'
- Directive 'authorize' was removed from field 'Mutation.gloCusUpdateAssignment'
- Directive 'authorize' was removed from field 'Mutation.gloCusUpdateAssignmentConfigurations'
- Directive 'authorize' was removed from field 'Mutation.gloScrCreateScript'
- Directive 'authorize' was removed from field 'Mutation.gloScrCreateSecret'
- Directive 'authorize' was removed from field 'Mutation.gloScrDeleteScript'
- Directive 'authorize' was removed from field 'Mutation.gloScrDeleteSecret'
- Directive 'authorize' was removed from field 'Mutation.gloScrExecuteScript'
- Directive 'authorize' was removed from field 'Mutation.gloScrRenameScript'
- Directive 'authorize' was removed from field 'Mutation.gloScrSetScriptSecrets'
- Directive 'authorize' was removed from field 'Mutation.gloScrUpdateScript'

#### Fields

- Directive 'listSize' was removed from field 'GloCusExtensionPoint.assignments'
- Directive 'listSize' was removed from field 'GloScrScript.versions'
- Directive 'authorize' was removed from object 'GloScrScript'
- Directive 'authorize' was removed from field 'GloScrScriptVersion.package'

### Design

#### 🔍 Query

- Directive 'authorize' was removed from field 'Query.desComparisonHealthcheck'

#### ✏️ Mutation

- Directive 'authorize' was removed from field 'Mutation.desCompareReleases'

### Insights

#### 🔍 Query

- Directive 'listSize' was removed from field 'Query.desWorkspaceInsInsights'

### Library Management

#### 🔍 Query

- Directive 'listSize' was removed from field 'Query.desPartGlobalSearch'
- Directive 'listSize' was removed from field 'Query.desPartSearch'

### Platform

#### 🔍 Query

- Directive 'authorize' was removed from field 'Query.desWorkspaceGroupById'
- Directive 'authorize' was removed from field 'Query.desWorkspaceGroupsByIds'
- Directive 'authorize' was removed from field 'Query.desWorkspaceTeamByAuth'
- Directive 'authorize' was removed from field 'Query.desWorkspaceUserByAuth'
- Directive 'authorize' was removed from field 'Query.desWorkspaceUserById'
- Directive 'authorize' was removed from field 'Query.desWorkspaceUsersByIds'
- Directive 'authorize' was removed from field 'Query.gloAppByClientId'
- Directive 'authorize' was removed from field 'Query.gloAppById'
- Directive 'authorize' was removed from field 'Query.gloAppInstalledApps'
- Directive 'authorize' was removed from field 'Query.gloApps'
- Directive 'listSize' was removed from field 'Query.gloApps'
- Directive 'authorize' was removed from field 'Query.gloEvtSubscriptionById'
- Directive 'authorize' was removed from field 'Query.gloOrganization'
- Directive 'authorize' was removed from field 'Query.gloOrganizationById'
- Directive 'authorize' was removed from field 'Query.gloUserById'
- Directive 'authorize' was removed from field 'Query.gloUserGroups'
- Directive 'listSize' was removed from field 'Query.gloUserGroups'
- Directive 'authorize' was removed from field 'Query.gloUsers'
- Directive 'listSize' was removed from field 'Query.gloUsers'
- Directive 'authorize' was removed from field 'Query.gloUsersByIds'

#### ✏️ Mutation

- Directive 'authorize' was removed from field 'Mutation.gloAddAppClientSecret'
- Directive 'authorize' was removed from field 'Mutation.gloAddAppGrantType'
- Directive 'authorize' was removed from field 'Mutation.gloAddAppRedirectUri'
- Directive 'authorize' was removed from field 'Mutation.gloAddAppScope'
- Directive 'authorize' was removed from field 'Mutation.gloAddUsersToGroup'
- Directive 'authorize' was removed from field 'Mutation.globalTrackedEventReport'
- Directive 'authorize' was removed from field 'Mutation.gloCreateApp'
- Directive 'authorize' was removed from field 'Mutation.gloCreateAppFromOAuthClient'
- Directive 'authorize' was removed from field 'Mutation.gloCreateUser'
- Directive 'authorize' was removed from field 'Mutation.gloCreateUserGroup'
- Directive 'authorize' was removed from field 'Mutation.gloDeleteApp'
- Directive 'authorize' was removed from field 'Mutation.gloEvtCreateWebhookSubscription'
- Directive 'authorize' was removed from field 'Mutation.gloEvtDeleteSubscription'
- Directive 'authorize' was removed from field 'Mutation.gloEvtPublishEvent'
- Directive 'authorize' was removed from field 'Mutation.gloInstallApp'
- Directive 'authorize' was removed from field 'Mutation.gloRemoveAppClientSecret'
- Directive 'authorize' was removed from field 'Mutation.gloRemoveAppGrantType'
- Directive 'authorize' was removed from field 'Mutation.gloRemoveAppRedirectUri'
- Directive 'authorize' was removed from field 'Mutation.gloRemoveAppScope'
- Directive 'authorize' was removed from field 'Mutation.gloRemoveUsersFromGroup'
- Directive 'authorize' was removed from field 'Mutation.gloRestoreApp'
- Directive 'authorize' was removed from field 'Mutation.gloUninstallApp'
- Directive 'authorize' was removed from field 'Mutation.gloUpdateAppContactEmail'
- Directive 'authorize' was removed from field 'Mutation.gloUpdateAppDescription'
- Directive 'authorize' was removed from field 'Mutation.gloUpdateAppHrid'
- Directive 'authorize' was removed from field 'Mutation.gloUpdateAppName'
- Directive 'authorize' was removed from field 'Mutation.platformTokenDelete'
- Directive 'authorize' was removed from field 'Mutation.platformTokenUpdate'
- Directive 'authorize' was removed from field 'Mutation.platformWorkspaceRefreshTokenCreate'
- Directive 'authorize' was removed from field 'Mutation.platformWorkspaceRefreshTokenCreateNewSecret'
- Directive 'authorize' was removed from field 'Mutation.platformWorkspaceRefreshTokenDeleteSecret'
- Directive 'authorize' was removed from field 'Mutation.platformWorkspaceTokenCreate'

#### Fields

- Directive 'authorize' was removed from field 'DesWorkspaceGroup.members'
- Directive 'listSize' was removed from field 'DesWorkspaceGroup.members'
- Directive 'authorize' was removed from field 'DesWorkspaceTeam.projectGuests'
- Directive 'listSize' was removed from field 'DesWorkspaceTeam.projectGuests'
- Directive 'authorize' was removed from field 'DesWorkspaceTeam.workspaceGroups'
- Directive 'listSize' was removed from field 'DesWorkspaceTeam.workspaceGroups'
- Directive 'authorize' was removed from field 'DesWorkspaceTeam.workspaceUsers'
- Directive 'listSize' was removed from field 'DesWorkspaceTeam.workspaceUsers'
- Directive 'authorize' was removed from field 'TokenQueries.byTokenId'
- Directive 'authorize' was removed from field 'TokenQueries.byWorkspace'
- Directive 'listSize' was removed from field 'TokenQueries.byWorkspace'
- Directive 'authorize' was removed from field 'TokenQueries.workspaceTokenQuota'

### Procurement

#### 🔍 Query

- Directive 'authorize' was removed from field 'Query.bomBom'
- Directive 'authorize' was removed from field 'Query.bomBomById'
- Directive 'authorize' was removed from field 'Query.bomBomRelease'
- Directive 'authorize' was removed from field 'Query.bomBoms'

#### ✏️ Mutation

- Directive 'authorize' was removed from field 'Mutation.bomChangeBomReleaseLifecycleState'
- Directive 'authorize' was removed from field 'Mutation.bomCreateBom'
- Directive 'authorize' was removed from field 'Mutation.bomExportBom'
- Directive 'authorize' was removed from field 'Mutation.bomExportBom'
- Directive 'authorize' was removed from field 'Mutation.bomExportBomById'
- Directive 'authorize' was removed from field 'Mutation.bomExportBomById'
- Directive 'authorize' was removed from field 'Mutation.bomExportBomRelease'
- Directive 'authorize' was removed from field 'Mutation.bomExportBomRelease'

#### Fields

- Directive 'authorize' was removed from field 'BomItem.issues'
- Directive 'authorize' was removed from field 'BomItemAlternate.issues'
- Directive 'authorize' was removed from field 'BomItemAlternate.selectedOffer'
- Directive 'authorize' was removed from field 'BomItemSubstitute.issues'
- Directive 'authorize' was removed from field 'BomItemSubstitute.selectedOffer'
- Directive 'authorize' was removed from field 'BomRelease.healthChecks'
- Directive 'authorize' was removed from field 'BomRelease.incompleteHealthChecks'
- Directive 'authorize' was removed from field 'BomRelease.issues'
- Directive 'authorize' was removed from field 'BomWip.healthChecks'
- Directive 'authorize' was removed from field 'BomWip.incompleteHealthChecks'
- Directive 'authorize' was removed from field 'BomWip.issues'


---

## ✅ Non-Breaking Changes (20)

### Customization

#### Input / Payload

- Directive 'oneOf' was removed from input object 'GloCusUpdateAssignmentInput'

### Library Management

#### Fields

- Field 'errorMessage' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'status' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'errorMessage' was added to object type 'DesPartUploadLibraryPartOperationResult'

### Platform

#### 🔍 Query

- Field 'Query.solBldEntityScaffoldingStatus' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.solBldEntityScaffoldingStatus'

#### Types

- Description 'Specifies the grids whose permissions must provide access to a solution.' was removed from object type 'SolAccessibleToInput'

### Procurement

#### Types

- Description 'Result of changing the lifecycle state of a BOM release.' was removed from object type 'BomChangeBomReleaseLifecycleStatePayload'
- Description 'Result of creating a new BOM.' was removed from object type 'BomCreateBomPayload'
- Description 'Result of exporting a BOM to a file.' was removed from object type 'BomExportBomPayload'
- Description 'Result of exporting a BOM release to a file.' was removed from object type 'BomExportBomReleasePayload'
- Description 'Input for changing the lifecycle state of a BOM release.' was removed from object type 'BomChangeBomReleaseLifecycleStateInput'
- Description 'Input for creating a new BOM.' was removed from object type 'BomCreateBomInput'
- Description 'Input for exporting a BOM by its identifier.' was removed from object type 'BomExportBomByIdInput'
- Description 'Input for exporting a BOM.' was removed from object type 'BomExportBomInput'
- Description 'Input for exporting a BOM release.' was removed from object type 'BomExportBomReleaseInput'

#### Input / Payload

- Directive 'oneOf' was removed from input object 'BomCreateBomItemElementAttributeValueInput'
- Directive 'oneOf' was removed from input object 'BomCreateBomOfferReferenceInput'
- Directive 'oneOf' was removed from input object 'BomCreateBomPartReferenceInput'
- Directive 'oneOf' was removed from input object 'BomCreateBomSupplierReferenceInput'


