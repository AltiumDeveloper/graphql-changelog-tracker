# gateway-changelog-07-Aug-2026

## ⚠️ Dangerous Changes (2)

### Platform

#### Types

- Member 'PlatformTokenInvalidTokenLifetimeError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateError'
- Member 'PlatformTokenInvalidTokenLifetimeError' was added to Union type 'PlatformWorkspaceTokenCreateError'


---

## ✅ Non-Breaking Changes (17)

### Platform

#### Types

- Type 'GloCreateAppWarning' was added
- Type 'PlatformTokenInvalidTokenLifetimeError' was added
- 'PlatformTokenInvalidTokenLifetimeError' object implements 'Error' interface
- Object type 'PlatformTokenInvalidTokenLifetimeError' has description 'Error returned by the Token API when an input token lifetime for a new `PlatformToken` is invalid.'
- Type 'GloOAuthClientRefreshTokenExpirationType' was added
- Enum value 'ABSOLUTE' was added to enum 'GloOAuthClientRefreshTokenExpirationType'
- Enum value 'SLIDING' was added to enum 'GloOAuthClientRefreshTokenExpirationType'

#### Fields

- Field 'message' was added to object type 'GloCreateAppWarning'
- Field 'message' was added to object type 'PlatformTokenInvalidTokenLifetimeError'
- Field 'warnings' was added to object type 'GloCreateAppPayload'

#### Input / Payload

- Input field 'refreshTokenAbsoluteLifetime' of type 'Int' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'refreshTokenExpirationType' of type 'GloOAuthClientRefreshTokenExpirationType' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'refreshTokenSlidingLifetime' of type 'Int' was added to input object type 'GloCreateAppOAuthClientInput'
- Input field 'refreshTokenAbsoluteLifetime' of type 'Int' was added to input object type 'PlatformWorkspaceRefreshTokenCreateInput'
- Input field 'refreshTokenSlidingLifetime' of type 'Int' was added to input object type 'PlatformWorkspaceRefreshTokenCreateInput'
- Input field 'PlatformWorkspaceRefreshTokenCreateInput.accessTokenLifetime' changed type from 'Int!' to 'Int'
- Input field 'PlatformWorkspaceTokenCreateInput.accessTokenLifetime' changed type from 'Int!' to 'Int'


