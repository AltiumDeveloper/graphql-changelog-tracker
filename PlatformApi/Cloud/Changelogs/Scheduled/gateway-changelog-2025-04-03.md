# gateway-changelog-03-Apr-2025

## ✅ Non-Breaking Changes (12)

### Design

#### Types

- Type 'DesProjectType' was added
- Enum value 'NONE' was added to enum 'DesProjectType'
- Enum value 'PCB_PROJECT' was added to enum 'DesProjectType'
- Enum value 'SYSTEM_DESIGN' was added to enum 'DesProjectType'
- Enum value 'HARNESS_DESIGN' was added to enum 'DesProjectType'
- Type 'DesProjectTypeOperationFilterInput' was added

#### Fields

- Field 'projectType' was added to object type 'DesProject'

#### Input / Payload

- Input field 'eq' of type 'DesProjectType' was added to input object type 'DesProjectTypeOperationFilterInput'
- Input field 'neq' of type 'DesProjectType' was added to input object type 'DesProjectTypeOperationFilterInput'
- Input field 'in' of type '[DesProjectType!]' was added to input object type 'DesProjectTypeOperationFilterInput'
- Input field 'nin' of type '[DesProjectType!]' was added to input object type 'DesProjectTypeOperationFilterInput'
- Input field 'projectType' of type 'DesProjectTypeOperationFilterInput' was added to input object type 'DesProjectFilterInput'


