# gateway-changelog-19-Nov-2026

## ⚠️ Dangerous Changes (1)

### Platform

#### Types

- Member 'GloAppAutoInstallableForbiddenError' was added to Union type 'GloCreateAppError'


---

## ✅ Non-Breaking Changes (15)

### Platform

#### 🔍 Query

- Field 'gloAppInstallationStatus' was added to object type 'Query'
- Directive 'authorize' was added to 'Query.gloAppInstallationStatus'

#### Types

- Type 'GloAppAutoInstallableForbiddenError' was added
- 'GloAppAutoInstallableForbiddenError' object implements 'Error' interface
- Object type 'GloAppAutoInstallableForbiddenError' has description 'Error that occurs when the user is not permitted to mark an App as auto-installable.'
- Type 'GloAppInstallationStatus' was added
- Enum value 'AUTO_INSTALLED' was added to enum 'GloAppInstallationStatus'
- Enum value 'INSTALLED' was added to enum 'GloAppInstallationStatus'
- Enum value 'NOT_INSTALLED' was added to enum 'GloAppInstallationStatus'
- Object type 'GloAppInstallationStatus' has description 'Whether a `GloApp` is installed in the current Workspace.'

#### Fields

- Field 'message' was added to object type 'GloAppAutoInstallableForbiddenError'
- Field 'isAutoInstallable' was added to object type 'GloApp'

#### Input / Payload

- Input field 'isAutoInstallable' of type 'BooleanOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'isAutoInstallable' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'isAutoInstallable' of type 'Boolean' was added to input object type 'GloCreateAppInput'


