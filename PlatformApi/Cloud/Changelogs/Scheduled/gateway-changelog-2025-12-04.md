# gateway-changelog-04-Dec-2025

## 🔴 Breaking Changes (18)

### Design

#### Types

- 'DesUserGroup' object type no longer implements 'Node' interface

#### Fields

- Field 'id' was removed from object type 'DesCreateUserGroupPayload'
- Field 'id' was removed from object type 'DesUserGroup'

#### Input / Payload

- Input field 'id' was removed from input object type 'DesAddUsersToGroupInput'
- Input field 'groupId' of type 'String!' was added to input object type 'DesAddUsersToGroupInput'
- Input field 'workspaceUrl' of type 'String!' was added to input object type 'DesAddUsersToGroupInput'
- Input field 'id' was removed from input object type 'DesDeleteUserGroupInput'
- Input field 'groupId' of type 'String!' was added to input object type 'DesDeleteUserGroupInput'
- Input field 'workspaceUrl' of type 'String!' was added to input object type 'DesDeleteUserGroupInput'
- Input field 'DesLifeCycleStateTransitionControllerInput.groupId' changed type from 'ID' to 'String'
- Input field 'id' was removed from input object type 'DesRemoveUsersFromGroupInput'
- Input field 'groupId' of type 'String!' was added to input object type 'DesRemoveUsersFromGroupInput'
- Input field 'workspaceUrl' of type 'String!' was added to input object type 'DesRemoveUsersFromGroupInput'
- Input field 'DesUpdateFolderPermissionInput.groupId' changed type from 'ID' to 'String'
- Input field 'DesUpdateProjectPermissionInput.groupId' changed type from 'ID' to 'String'
- Input field 'id' was removed from input object type 'DesUpdateUserGroupInput'
- Input field 'groupId' of type 'String!' was added to input object type 'DesUpdateUserGroupInput'
- Input field 'workspaceUrl' of type 'String!' was added to input object type 'DesUpdateUserGroupInput'


---

## ✅ Non-Breaking Changes (46)

### Design

#### Fields

- Field 'userGroupId' was added to object type 'DesCreateUserGroupPayload'
- Field 'userGroupId' was added to object type 'DesUserGroup'

### Platform

#### Types

- Type 'GloOAuthClientFilterInput' was added
- Object type 'GloOAuthClientFilterInput' has description 'Represents an *OAuth 2.0 client*.'
- Type 'GloOAuthClientSortInput' was added
- Object type 'GloOAuthClientSortInput' has description 'Represents an *OAuth 2.0 client*.'

#### Input / Payload

- Input field 'and' of type '[GloOAuthClientFilterInput!]' was added to input object type 'GloOAuthClientFilterInput'
- Input field 'clientId' of type 'StringOperationFilterInput' was added to input object type 'GloOAuthClientFilterInput'
- Input field 'or' of type '[GloOAuthClientFilterInput!]' was added to input object type 'GloOAuthClientFilterInput'
- Input field 'absoluteRefreshTokenLifetime' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'accessTokenLifetime' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'authorizationCodeLifetime' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'clientId' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'clientSecret' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'identityTokenLifetime' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'requireConsent' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'requirePkce' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'requireSecret' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'slidingRefreshTokenLifetime' of type 'SortEnumType' was added to input object type 'GloOAuthClientSortInput'
- Input field 'oAuthClient' of type 'GloOAuthClientFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'oAuthClient' of type 'GloOAuthClientSortInput' was added to input object type 'GloAppSortInput'

### Renesas (preview)

#### ✏️ Mutation

- Field 'dmExecuteDeviceExtractionFromConfiguration' was added to object type 'Mutation'
- Argument 'input: DmExecuteDeviceExtractionFromConfigurationInput!' added to 'Mutation.dmExecuteDeviceExtractionFromConfiguration'

#### Types

- Type 'DmExecuteDeviceExtractionFromConfigurationPayload' was added
- Object type 'DmExecuteDeviceExtractionFromConfigurationPayload' has description '**Experimental**'
- Type 'DmStackContext' was added
- Object type 'DmStackContext' has description '**Experimental** An FSP configuration context grouping stack elements for a context ID.'
- Type 'DmStackElement' was added
- Object type 'DmStackElement' has description '**Experimental** A single FSP stack element including its module and dependency relationships.'
- Type 'DmStackModel' was added
- Object type 'DmStackModel' has description '**Experimental** FSP stack containing one or more configuration contexts.'
- Type 'DmExecuteDeviceExtractionFromConfigurationInput' was added
- Object type 'DmExecuteDeviceExtractionFromConfigurationInput' has description '**Experimental**'

#### Fields

- Field 'dmDeviceModelAsConfigured' was added to object type 'DmExecuteDeviceExtractionFromConfigurationPayload'
- Field 'contextId' was added to object type 'DmStackContext'
- Field 'stackElements' was added to object type 'DmStackContext'
- Field 'dependencies' was added to object type 'DmStackElement'
- Field 'module' was added to object type 'DmStackElement'
- Field 'moduleId' was added to object type 'DmStackElement'
- Field 'requires' was added to object type 'DmStackElement'
- Field 'contexts' was added to object type 'DmStackModel'
- Field 'softwareStack' was added to object type 'DmDeviceModelAsConfigured'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DmExecuteDeviceExtractionFromConfigurationInput'
- Input field 'sessionId' of type 'String!' was added to input object type 'DmExecuteDeviceExtractionFromConfigurationInput'

### Supply

#### Types

- Object type 'SupSolutionTemplateParameterBundle' has description 'The parameter bundle\'s list of values.'

#### Input / Payload

- Input field 'aiModelIds' of type '[String!]' was added to input object type 'SupSolutionTemplateFilterInput'


