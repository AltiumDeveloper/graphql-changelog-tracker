# gateway-changelog-16-Feb-2026

## ✅ Non-Breaking Changes (23)

### Platform

#### ✏️ Mutation

- Field 'gloInstallApp' was added to object type 'Mutation'
- Argument 'input: GloInstallAppInput!' added to 'Mutation.gloInstallApp'

#### Types

- Type 'GloAppAlreadyInstalledError' was added
- 'GloAppAlreadyInstalledError' object implements 'Error' interface
- Object type 'GloAppAlreadyInstalledError' has description 'Error that occurs when a `GloApp` cannot be installed into a workspace as it has already been installed.'
- Type 'GloAppInstallDeniedError' was added
- 'GloAppInstallDeniedError' object implements 'Error' interface
- Object type 'GloAppInstallDeniedError' has description 'Error that occurs when a `GloApp` cannot be installed into a workspace due to insufficient permissions.'
- Type 'GloAppNotInstalledError' was added
- 'GloAppNotInstalledError' object implements 'Error' interface
- Object type 'GloAppNotInstalledError' has description 'Error that occurs when a `GloApp` cannot be installed into a workspace.'
- Type 'GloInstallAppPayload' was added
- Type 'GloInstallAppError' was added
- Member 'GloAppNotInstalledError' was added to Union type 'GloInstallAppError'
- Member 'GloAppAlreadyInstalledError' was added to Union type 'GloInstallAppError'
- Member 'GloAppInstallDeniedError' was added to Union type 'GloInstallAppError'
- Type 'GloInstallAppInput' was added

#### Fields

- Field 'message' was added to object type 'GloAppAlreadyInstalledError'
- Field 'message' was added to object type 'GloAppInstallDeniedError'
- Field 'message' was added to object type 'GloAppNotInstalledError'
- Field 'errors' was added to object type 'GloInstallAppPayload'
- Field 'gloApp' was added to object type 'GloInstallAppPayload'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'GloInstallAppInput'


