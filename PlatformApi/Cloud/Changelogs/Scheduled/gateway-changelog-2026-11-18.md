# gateway-changelog-18-Nov-2026

## ✅ Non-Breaking Changes (37)

### Platform

#### ✏️ Mutation

- Field 'gloAddAppTokenExchangeSources' was added to object type 'Mutation'
- Argument 'input: GloAddAppTokenExchangeSourcesInput!' added to 'Mutation.gloAddAppTokenExchangeSources'
- Directive 'authorize' was added to 'Mutation.gloAddAppTokenExchangeSources'
- Field 'gloRemoveAppTokenExchangeSource' was added to object type 'Mutation'
- Argument 'input: GloRemoveAppTokenExchangeSourceInput!' added to 'Mutation.gloRemoveAppTokenExchangeSource'
- Directive 'authorize' was added to 'Mutation.gloRemoveAppTokenExchangeSource'

#### Types

- Type 'GloAddAppTokenExchangeSourcesPayload' was added
- Type 'GloAppTokenExchangeSourcesDeletedError' was added
- 'GloAppTokenExchangeSourcesDeletedError' object implements 'Error' interface
- Object type 'GloAppTokenExchangeSourcesDeletedError' has description 'Error that occurs when deleted `GloApp`s are given as token exchange sources. Lists every deleted App found in the request.'
- Type 'GloAppTokenExchangeSourcesNotUpdatedError' was added
- 'GloAppTokenExchangeSourcesNotUpdatedError' object implements 'Error' interface
- Object type 'GloAppTokenExchangeSourcesNotUpdatedError' has description 'Error that occurs when updating the token exchange sources for a `GloApp` is unsuccessful.'
- Type 'GloRemoveAppTokenExchangeSourcePayload' was added
- Type 'GloAddAppTokenExchangeSourcesError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppDeletedError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppMissingOAuthClientError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppTokenExchangeSourcesDeletedError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppTokenExchangeSourcesNotUpdatedError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Type 'GloRemoveAppTokenExchangeSourceError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Member 'GloAppDeletedError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Member 'GloAppMissingOAuthClientError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Member 'GloAppTokenExchangeSourcesNotUpdatedError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Type 'GloAddAppTokenExchangeSourcesInput' was added
- Type 'GloRemoveAppTokenExchangeSourceInput' was added

#### Fields

- Field 'errors' was added to object type 'GloAddAppTokenExchangeSourcesPayload'
- Field 'gloApp' was added to object type 'GloAddAppTokenExchangeSourcesPayload'
- Field 'message' was added to object type 'GloAppTokenExchangeSourcesDeletedError'
- Field 'message' was added to object type 'GloAppTokenExchangeSourcesNotUpdatedError'
- Field 'errors' was added to object type 'GloRemoveAppTokenExchangeSourcePayload'
- Field 'gloApp' was added to object type 'GloRemoveAppTokenExchangeSourcePayload'

#### Input / Payload

- Input field 'targetAppId' of type 'ID!' was added to input object type 'GloAddAppTokenExchangeSourcesInput'
- Input field 'thirdPartyAppIds' of type '[ID!]!' was added to input object type 'GloAddAppTokenExchangeSourcesInput'
- Input field 'targetAppId' of type 'ID!' was added to input object type 'GloRemoveAppTokenExchangeSourceInput'
- Input field 'thirdPartyAppId' of type 'ID!' was added to input object type 'GloRemoveAppTokenExchangeSourceInput'


