# gateway-changelog-14-Jul-2026

## ✅ Non-Breaking Changes (67)

### Platform

#### ✏️ Mutation

- Field 'platformTokenDelete' was added to object type 'Mutation'
- Argument 'input: PlatformTokenDeleteInput!' added to 'Mutation.platformTokenDelete'
- Field 'platformTokenUpdate' was added to object type 'Mutation'
- Argument 'input: PlatformTokenUpdateInput!' added to 'Mutation.platformTokenUpdate'
- Field 'platformWorkspaceRefreshTokenCreateNewSecret' was added to object type 'Mutation'
- Argument 'input: PlatformWorkspaceRefreshTokenCreateNewSecretInput!' added to 'Mutation.platformWorkspaceRefreshTokenCreateNewSecret'

#### Types

- Type 'PlatformRefreshTokenCreateNewSecretError' was added
- 'PlatformRefreshTokenCreateNewSecretError' object implements 'Error' interface
- Object type 'PlatformRefreshTokenCreateNewSecretError' has description 'Error returned by the Token API when a new client secret for a `PlatformWorkspaceRefreshToken` could not be created.'
- Type 'PlatformTokenDeleteFailedError' was added
- 'PlatformTokenDeleteFailedError' object implements 'Error' interface
- Object type 'PlatformTokenDeleteFailedError' has description 'Error returned by the Token API when a `PlatformToken` could not be deleted.'
- Type 'PlatformTokenDeletePayload' was added
- Type 'PlatformTokenNotFoundError' was added
- 'PlatformTokenNotFoundError' object implements 'Error' interface
- Object type 'PlatformTokenNotFoundError' has description 'Error that occurs when a `PlatformToken` with the specified identifier could not be found.'
- Type 'PlatformTokenUpdateFailedError' was added
- 'PlatformTokenUpdateFailedError' object implements 'Error' interface
- Object type 'PlatformTokenUpdateFailedError' has description 'Error that occurs when no `PlatformToken` exists with the specified identifier.'
- Type 'PlatformTokenUpdateInvalidError' was added
- 'PlatformTokenUpdateInvalidError' object implements 'Error' interface
- Object type 'PlatformTokenUpdateInvalidError' has description 'Error that occurs when a `PlatformToken` update request specifies no fields to update.'
- Type 'PlatformTokenUpdatePayload' was added
- Type 'PlatformWorkspaceRefreshTokenCreateNewSecretPayload' was added
- Object type 'PlatformWorkspaceRefreshTokenCreateNewSecretPayload' has description 'Payload for creating a new client secret for a `PlatformWorkspaceRefreshToken`.'
- Type 'PlatformTokenDeleteError' was added
- Member 'PlatformTokenNotFoundError' was added to Union type 'PlatformTokenDeleteError'
- Member 'PlatformTokenDeleteFailedError' was added to Union type 'PlatformTokenDeleteError'
- Type 'PlatformTokenUpdateError' was added
- Member 'PlatformTokenUpdateInvalidError' was added to Union type 'PlatformTokenUpdateError'
- Member 'PlatformTokenUpdateFailedError' was added to Union type 'PlatformTokenUpdateError'
- Member 'PlatformTokenNameExistsError' was added to Union type 'PlatformTokenUpdateError'
- Type 'PlatformWorkspaceRefreshTokenCreateNewSecretError' was added
- Member 'PlatformTokenNotFoundError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateNewSecretError'
- Member 'PlatformRefreshTokenCreateNewSecretError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateNewSecretError'
- Type 'PlatformTokenDeleteInput' was added
- Type 'PlatformTokenUpdateInput' was added
- Object type 'PlatformTokenUpdateInput' has description 'Input for updating an existing `PlatformToken`. At least one of `name` or `description` must be provided.'
- Type 'PlatformWorkspaceRefreshTokenCreateNewSecretInput' was added

#### Fields

- Field 'message' was added to object type 'PlatformRefreshTokenCreateNewSecretError'
- Field 'message' was added to object type 'PlatformTokenDeleteFailedError'
- Field 'errors' was added to object type 'PlatformTokenDeletePayload'
- Field 'tokenId' was added to object type 'PlatformTokenDeletePayload'
- Field 'message' was added to object type 'PlatformTokenNotFoundError'
- Field 'message' was added to object type 'PlatformTokenUpdateFailedError'
- Field 'message' was added to object type 'PlatformTokenUpdateInvalidError'
- Field 'errors' was added to object type 'PlatformTokenUpdatePayload'
- Field 'platformToken' was added to object type 'PlatformTokenUpdatePayload'
- Field 'clientSecret' was added to object type 'PlatformWorkspaceRefreshTokenCreateNewSecretPayload'
- Field 'errors' was added to object type 'PlatformWorkspaceRefreshTokenCreateNewSecretPayload'
- Field 'refreshToken' was added to object type 'PlatformWorkspaceRefreshTokenCreateNewSecretPayload'

#### Input / Payload

- Input field 'tokenId' of type 'String!' was added to input object type 'PlatformTokenDeleteInput'
- Input field 'description' of type 'String' was added to input object type 'PlatformTokenUpdateInput'
- Input field 'name' of type 'String' was added to input object type 'PlatformTokenUpdateInput'
- Input field 'tokenId' of type 'String!' was added to input object type 'PlatformTokenUpdateInput'
- Input field 'tokenId' of type 'String!' was added to input object type 'PlatformWorkspaceRefreshTokenCreateNewSecretInput'

### System Design

#### Types

- Object type 'SysEsdCreateDocumentPayload' has description 'Result of creating a new ESD document.'
- Object type 'SysEsdDeleteDocumentPayload' has description 'Result of deleting an ESD document.'
- Object type 'SysEsdDocument' has description 'Represents an ESD (Electronic System Design) document stored in a regional workspace.'
- Object type 'SysEsdExportDocumentPayload' has description 'Result of exporting an ESD document.'
- Object type 'SysEsdImportDocumentPayload' has description 'Result of importing content into an ESD document.'
- Object type 'SysEsdUpdateDocumentPayload' has description 'Result of updating an ESD document.'
- Object type 'SysEsdCreateDocumentInput' has description 'Input for creating a new ESD document.'
- Object type 'SysEsdDeleteDocumentInput' has description 'Input for deleting an ESD document.'
- Object type 'SysEsdExportDocumentInput' has description 'Input for exporting an ESD document.'
- Object type 'SysEsdImportDocumentInput' has description 'Input for importing content into an existing ESD document.'
- Object type 'SysEsdUpdateDocumentInput' has description 'Input for updating an existing ESD document.'


