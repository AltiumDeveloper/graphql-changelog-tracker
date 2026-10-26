# gateway-changelog-10-Oct-2025

## ✅ Non-Breaking Changes (267)

### Common

#### Types

- Type 'Error' was added

#### Fields

- Field 'message' was added to interface 'Error'

### Platform

#### 🔍 Query

- Field 'gloAppByClientId' was added to object type 'Query'
- Argument 'clientId: String!' added to 'Query.gloAppByClientId'
- Field 'gloAppById' was added to object type 'Query'
- Argument 'appId: ID!' added to 'Query.gloAppById'
- Field 'gloApps' was added to object type 'Query'
- Argument 'after: String' added to 'Query.gloApps'
- Argument 'before: String' added to 'Query.gloApps'
- Argument 'first: Int' added to 'Query.gloApps'
- Argument 'last: Int' added to 'Query.gloApps'
- Argument 'order: [GloAppSortInput!]' added to 'Query.gloApps'
- Argument 'where: GloAppFilterInput' added to 'Query.gloApps'

#### ✏️ Mutation

- Field 'gloAddAppRedirectUri' was added to object type 'Mutation'
- Argument 'input: GloAddAppRedirectUriInput!' added to 'Mutation.gloAddAppRedirectUri'
- Field 'gloAddAppScope' was added to object type 'Mutation'
- Argument 'input: GloAddAppScopeInput!' added to 'Mutation.gloAddAppScope'
- Field 'gloCreateApp' was added to object type 'Mutation'
- Argument 'input: GloCreateAppInput!' added to 'Mutation.gloCreateApp'
- Field 'gloCreateAppFromOAuthClient' was added to object type 'Mutation'
- Argument 'input: GloCreateAppFromOAuthClientInput!' added to 'Mutation.gloCreateAppFromOAuthClient'
- Field 'gloDeleteApp' was added to object type 'Mutation'
- Argument 'input: GloDeleteAppInput!' added to 'Mutation.gloDeleteApp'
- Field 'gloRemoveAppRedirectUri' was added to object type 'Mutation'
- Argument 'input: GloRemoveAppRedirectUriInput!' added to 'Mutation.gloRemoveAppRedirectUri'
- Field 'gloRemoveAppScope' was added to object type 'Mutation'
- Argument 'input: GloRemoveAppScopeInput!' added to 'Mutation.gloRemoveAppScope'
- Field 'gloUpdateAppContactEmail' was added to object type 'Mutation'
- Argument 'input: GloUpdateAppContactEmailInput!' added to 'Mutation.gloUpdateAppContactEmail'
- Field 'gloUpdateAppDescription' was added to object type 'Mutation'
- Argument 'input: GloUpdateAppDescriptionInput!' added to 'Mutation.gloUpdateAppDescription'
- Field 'gloUpdateAppHrid' was added to object type 'Mutation'
- Argument 'input: GloUpdateAppHridInput!' added to 'Mutation.gloUpdateAppHrid'
- Field 'gloUpdateAppName' was added to object type 'Mutation'
- Argument 'input: GloUpdateAppNameInput!' added to 'Mutation.gloUpdateAppName'

#### Types

- Type 'GloAddAppRedirectUriPayload' was added
- Type 'GloAddAppScopePayload' was added
- Type 'GloApp' was added
- Object type 'GloApp' has description 'Represents an Altium application.'
- Type 'GloAppClientExistsError' was added
- 'GloAppClientExistsError' object implements 'Error' interface
- Object type 'GloAppClientExistsError' has description 'Error that occurs when attempting to create a new `GloApp` with an *OAuth client* that is already associated with another `GloApp`.'
- Type 'GloAppDeletedError' was added
- 'GloAppDeletedError' object implements 'Error' interface
- Object type 'GloAppDeletedError' has description 'Error that occurs when attempting to update a deleted `GloApp`.'
- Type 'GloAppHridExistsError' was added
- 'GloAppHridExistsError' object implements 'Error' interface
- Object type 'GloAppHridExistsError' has description 'Error that occurs when the input hrid already exists.'
- Type 'GloAppInvalidEmailError' was added
- 'GloAppInvalidEmailError' object implements 'Error' interface
- Object type 'GloAppInvalidEmailError' has description 'Error that occurs when the input email is invalid.'
- Type 'GloAppInvalidHridError' was added
- 'GloAppInvalidHridError' object implements 'Error' interface
- Object type 'GloAppInvalidHridError' has description 'Error that occurs when the input hrid is invalid.'
- Type 'GloAppInvalidOAuthError' was added
- 'GloAppInvalidOAuthError' object implements 'Error' interface
- Object type 'GloAppInvalidOAuthError' has description 'Error that occurs when an *OAuth client* is invalid.'
- Type 'GloAppMissingOAuthClientError' was added
- 'GloAppMissingOAuthClientError' object implements 'Error' interface
- Object type 'GloAppMissingOAuthClientError' has description 'Error that occurs when an *OAuth client* is missing.'
- Type 'GloAppNotDeletedError' was added
- 'GloAppNotDeletedError' object implements 'Error' interface
- Object type 'GloAppNotDeletedError' has description 'Error that occurs when a `GloApp` cannot be deleted.'
- Type 'GloAppNotFoundError' was added
- 'GloAppNotFoundError' object implements 'Error' interface
- Object type 'GloAppNotFoundError' has description 'Error that occurs when a `GloApp` is not found.'
- Type 'GloAppOAuthClientNotDeletedError' was added
- 'GloAppOAuthClientNotDeletedError' object implements 'Error' interface
- Object type 'GloAppOAuthClientNotDeletedError' has description 'Error that occurs when an *OAuth client* cannot be deleted.'
- Type 'GloAppRedirectUriNotUpdatedError' was added
- 'GloAppRedirectUriNotUpdatedError' object implements 'Error' interface
- Object type 'GloAppRedirectUriNotUpdatedError' has description 'Error that occurs when updating the redirect URI for a `GloApp` is unsuccessful.'
- Type 'GloAppsConnection' was added
- Object type 'GloAppsConnection' has description 'A connection to a list of items.'
- Type 'GloAppScopeNotUpdatedError' was added
- 'GloAppScopeNotUpdatedError' object implements 'Error' interface
- Object type 'GloAppScopeNotUpdatedError' has description 'Error that occurs when updating the scope for a `GloApp` is unsuccessful.'
- Type 'GloAppsEdge' was added
- Object type 'GloAppsEdge' has description 'An edge in a connection.'
- Type 'GloCreateAppFromOAuthClientPayload' was added
- Type 'GloCreateAppPayload' was added
- Type 'GloDeleteAppPayload' was added
- Type 'GloOAuthClient' was added
- Object type 'GloOAuthClient' has description 'Represents an *OAuth 2.0 client*.'
- Type 'GloRemoveAppRedirectUriPayload' was added
- Type 'GloRemoveAppScopePayload' was added
- Type 'GloUpdateAppContactEmailPayload' was added
- Type 'GloUpdateAppDescriptionPayload' was added
- Type 'GloUpdateAppHridPayload' was added
- Type 'GloUpdateAppNamePayload' was added
- Type 'GloAddAppRedirectUriError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloAddAppRedirectUriError'
- Member 'GloAppDeletedError' was added to Union type 'GloAddAppRedirectUriError'
- Member 'GloAppRedirectUriNotUpdatedError' was added to Union type 'GloAddAppRedirectUriError'
- Type 'GloAddAppScopeError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloAddAppScopeError'
- Member 'GloAppDeletedError' was added to Union type 'GloAddAppScopeError'
- Member 'GloAppScopeNotUpdatedError' was added to Union type 'GloAddAppScopeError'
- Type 'GloCreateAppError' was added
- Member 'GloAppInvalidOAuthError' was added to Union type 'GloCreateAppError'
- Member 'GloAppHridExistsError' was added to Union type 'GloCreateAppError'
- Member 'GloAppInvalidHridError' was added to Union type 'GloCreateAppError'
- Member 'GloAppInvalidEmailError' was added to Union type 'GloCreateAppError'
- Type 'GloCreateAppFromOAuthClientError' was added
- Member 'GloAppMissingOAuthClientError' was added to Union type 'GloCreateAppFromOAuthClientError'
- Member 'GloAppHridExistsError' was added to Union type 'GloCreateAppFromOAuthClientError'
- Member 'GloAppInvalidHridError' was added to Union type 'GloCreateAppFromOAuthClientError'
- Member 'GloAppInvalidEmailError' was added to Union type 'GloCreateAppFromOAuthClientError'
- Member 'GloAppClientExistsError' was added to Union type 'GloCreateAppFromOAuthClientError'
- Type 'GloDeleteAppError' was added
- Member 'GloAppOAuthClientNotDeletedError' was added to Union type 'GloDeleteAppError'
- Member 'GloAppNotDeletedError' was added to Union type 'GloDeleteAppError'
- Type 'GloRemoveAppRedirectUriError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloRemoveAppRedirectUriError'
- Member 'GloAppDeletedError' was added to Union type 'GloRemoveAppRedirectUriError'
- Member 'GloAppRedirectUriNotUpdatedError' was added to Union type 'GloRemoveAppRedirectUriError'
- Type 'GloRemoveAppScopeError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloRemoveAppScopeError'
- Member 'GloAppDeletedError' was added to Union type 'GloRemoveAppScopeError'
- Member 'GloAppScopeNotUpdatedError' was added to Union type 'GloRemoveAppScopeError'
- Type 'GloUpdateAppContactEmailError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloUpdateAppContactEmailError'
- Member 'GloAppDeletedError' was added to Union type 'GloUpdateAppContactEmailError'
- Member 'GloAppInvalidEmailError' was added to Union type 'GloUpdateAppContactEmailError'
- Type 'GloUpdateAppDescriptionError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloUpdateAppDescriptionError'
- Member 'GloAppDeletedError' was added to Union type 'GloUpdateAppDescriptionError'
- Type 'GloUpdateAppHridError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloUpdateAppHridError'
- Member 'GloAppDeletedError' was added to Union type 'GloUpdateAppHridError'
- Member 'GloAppHridExistsError' was added to Union type 'GloUpdateAppHridError'
- Member 'GloAppInvalidHridError' was added to Union type 'GloUpdateAppHridError'
- Type 'GloUpdateAppNameError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloUpdateAppNameError'
- Member 'GloAppDeletedError' was added to Union type 'GloUpdateAppNameError'
- Type 'GloAddAppRedirectUriInput' was added
- Type 'GloAddAppScopeInput' was added
- Type 'GloAppFilterInput' was added
- Object type 'GloAppFilterInput' has description 'Represents an Altium application.'
- Type 'GloAppSortInput' was added
- Object type 'GloAppSortInput' has description 'Represents an Altium application.'
- Type 'GloCreateAppFromOAuthClientInput' was added
- Object type 'GloCreateAppFromOAuthClientInput' has description 'Input for creating a new `GloApp`.'
- Type 'GloCreateAppInput' was added
- Object type 'GloCreateAppInput' has description 'Input for creating a new `GloApp`.'
- Type 'GloCreateAppOAuthClientInput' was added
- Object type 'GloCreateAppOAuthClientInput' has description 'Input for creating a new *OAuth 2.0 client*.'
- Type 'GloDeleteAppInput' was added
- Type 'GloRemoveAppRedirectUriInput' was added
- Type 'GloRemoveAppScopeInput' was added
- Type 'GloUpdateAppContactEmailInput' was added
- Type 'GloUpdateAppDescriptionInput' was added
- Type 'GloUpdateAppHridInput' was added
- Type 'GloUpdateAppNameInput' was added

#### Fields

- Field 'errors' was added to object type 'GloAddAppRedirectUriPayload'
- Field 'gloApp' was added to object type 'GloAddAppRedirectUriPayload'
- Field 'errors' was added to object type 'GloAddAppScopePayload'
- Field 'gloApp' was added to object type 'GloAddAppScopePayload'
- Field 'contactEmail' was added to object type 'GloApp'
- Field 'createdAt' was added to object type 'GloApp'
- Field 'createdById' was added to object type 'GloApp'
- Field 'deletedAt' was added to object type 'GloApp'
- Field 'deletedById' was added to object type 'GloApp'
- Field 'description' was added to object type 'GloApp'
- Field 'hrid' was added to object type 'GloApp'
- Field 'id' was added to object type 'GloApp'
- Field 'name' was added to object type 'GloApp'
- Field 'oAuthClient' was added to object type 'GloApp'
- Field 'updatedAt' was added to object type 'GloApp'
- Field 'updatedById' was added to object type 'GloApp'
- Field 'message' was added to object type 'GloAppClientExistsError'
- Field 'message' was added to object type 'GloAppDeletedError'
- Field 'message' was added to object type 'GloAppHridExistsError'
- Field 'message' was added to object type 'GloAppInvalidEmailError'
- Field 'message' was added to object type 'GloAppInvalidHridError'
- Field 'message' was added to object type 'GloAppInvalidOAuthError'
- Field 'message' was added to object type 'GloAppMissingOAuthClientError'
- Field 'message' was added to object type 'GloAppNotDeletedError'
- Field 'message' was added to object type 'GloAppNotFoundError'
- Field 'message' was added to object type 'GloAppOAuthClientNotDeletedError'
- Field 'message' was added to object type 'GloAppRedirectUriNotUpdatedError'
- Field 'edges' was added to object type 'GloAppsConnection'
- Field 'nodes' was added to object type 'GloAppsConnection'
- Field 'pageInfo' was added to object type 'GloAppsConnection'
- Field 'message' was added to object type 'GloAppScopeNotUpdatedError'
- Field 'cursor' was added to object type 'GloAppsEdge'
- Field 'node' was added to object type 'GloAppsEdge'
- Field 'errors' was added to object type 'GloCreateAppFromOAuthClientPayload'
- Field 'gloApp' was added to object type 'GloCreateAppFromOAuthClientPayload'
- Field 'errors' was added to object type 'GloCreateAppPayload'
- Field 'gloApp' was added to object type 'GloCreateAppPayload'
- Field 'errors' was added to object type 'GloDeleteAppPayload'
- Field 'id' was added to object type 'GloDeleteAppPayload'
- Field 'clientId' was added to object type 'GloOAuthClient'
- Field 'clientSecret' was added to object type 'GloOAuthClient'
- Field 'grantTypes' was added to object type 'GloOAuthClient'
- Field 'redirectUris' was added to object type 'GloOAuthClient'
- Field 'requireConsent' was added to object type 'GloOAuthClient'
- Field 'requirePkce' was added to object type 'GloOAuthClient'
- Field 'requireSecret' was added to object type 'GloOAuthClient'
- Field 'scopes' was added to object type 'GloOAuthClient'
- Field 'errors' was added to object type 'GloRemoveAppRedirectUriPayload'
- Field 'gloApp' was added to object type 'GloRemoveAppRedirectUriPayload'
- Field 'errors' was added to object type 'GloRemoveAppScopePayload'
- Field 'gloApp' was added to object type 'GloRemoveAppScopePayload'
- Field 'errors' was added to object type 'GloUpdateAppContactEmailPayload'
- Field 'gloApp' was added to object type 'GloUpdateAppContactEmailPayload'
- Field 'errors' was added to object type 'GloUpdateAppDescriptionPayload'
- Field 'gloApp' was added to object type 'GloUpdateAppDescriptionPayload'
- Field 'errors' was added to object type 'GloUpdateAppHridPayload'
- Field 'gloApp' was added to object type 'GloUpdateAppHridPayload'
- Field 'errors' was added to object type 'GloUpdateAppNamePayload'
- Field 'gloApp' was added to object type 'GloUpdateAppNamePayload'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'GloAddAppRedirectUriInput'
- Input field 'redirectUri' of type 'URL!' was added to input object type 'GloAddAppRedirectUriInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloAddAppScopeInput'
- Input field 'scope' of type 'String!' was added to input object type 'GloAddAppScopeInput'
- Input field 'and' of type '[GloAppFilterInput!]' was added to input object type 'GloAppFilterInput'
- Input field 'contactEmail' of type 'StringOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'createdAt' of type 'DateTimeOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'createdById' of type 'StringOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'deletedAt' of type 'DateTimeOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'deletedById' of type 'StringOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'description' of type 'StringOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'hrid' of type 'StringOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'name' of type 'StringOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'or' of type '[GloAppFilterInput!]' was added to input object type 'GloAppFilterInput'
- Input field 'updatedAt' of type 'DateTimeOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'updatedById' of type 'StringOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'contactEmail' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'createdAt' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'createdById' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'deletedAt' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'deletedById' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'description' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'hrid' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'name' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'updatedAt' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'updatedById' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'clientId' of type 'String!' was added to input object type 'GloCreateAppFromOAuthClientInput'
- Input field 'contactEmail' of type 'String!' was added to input object type 'GloCreateAppFromOAuthClientInput'
- Input field 'description' of type 'String!' was added to input object type 'GloCreateAppFromOAuthClientInput'
- Input field 'hrid' of type 'String!' was added to input object type 'GloCreateAppFromOAuthClientInput'
- Input field 'name' of type 'String' was added to input object type 'GloCreateAppFromOAuthClientInput'
- Input field 'contactEmail' of type 'String!' was added to input object type 'GloCreateAppInput'
- Input field 'description' of type 'String!' was added to input object type 'GloCreateAppInput'
- Input field 'hrid' of type 'String!' was added to input object type 'GloCreateAppInput'
- Input field 'name' of type 'String!' was added to input object type 'GloCreateAppInput'
- Input field 'oAuthClient' of type 'GloCreateAppOAuthClientInput!' was added to input object type 'GloCreateAppInput'
- Input field 'grantTypes' of type '[String!]!' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'redirectUris' of type '[String!]!' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'requireConsent' of type 'Boolean!' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'requireSecret' of type 'Boolean!' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'scopes' of type '[String!]!' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloDeleteAppInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloRemoveAppRedirectUriInput'
- Input field 'redirectUri' of type 'URL!' was added to input object type 'GloRemoveAppRedirectUriInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloRemoveAppScopeInput'
- Input field 'scope' of type 'String!' was added to input object type 'GloRemoveAppScopeInput'
- Input field 'contactEmail' of type 'String!' was added to input object type 'GloUpdateAppContactEmailInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloUpdateAppContactEmailInput'
- Input field 'description' of type 'String!' was added to input object type 'GloUpdateAppDescriptionInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloUpdateAppDescriptionInput'
- Input field 'hrid' of type 'String!' was added to input object type 'GloUpdateAppHridInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloUpdateAppHridInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloUpdateAppNameInput'
- Input field 'name' of type 'String!' was added to input object type 'GloUpdateAppNameInput'


