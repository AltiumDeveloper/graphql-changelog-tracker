# gateway-changelog-24-Apr-2026

## ✅ Non-Breaking Changes (27)

### Design

#### Types

- Type 'DesWorkspaceVendor' was added
- Enum value 'ALTIUM' was added to enum 'DesWorkspaceVendor'
- Enum value 'RENESAS' was added to enum 'DesWorkspaceVendor'
- Object type 'DesWorkspaceVendor' has description 'Workspace vendors.'

#### Fields

- Field 'vendor' was added to object type 'DesWorkspace'
- Field 'vendor' was added to object type 'DesWorkspaceInfo'

### Platform

#### Fields

- Field 'isWorkspaceApp' was added to object type 'GloApp'

#### Input / Payload

- Input field 'isWorkspaceApp' of type 'BooleanOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'isWorkspaceApp' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'isWorkspaceApp' of type 'Boolean' was added to input object type 'GloCreateAppInput'

### Renesas (preview)

#### Types

- Type 'DmConstraintModel' was added
- Object type 'DmConstraintModel' has description '**Experimental** Snapshot of the CP-SAT constraint model built before the solver runs, including variables, constraint groups, and the objective.'
- Type 'DmPortPreset' was added
- Object type 'DmPortPreset' has description '**Experimental** A port that carries a board-level preset function preference.'

#### Fields

- Field 'constraints' was added to object type 'DmConstraintModel'
- Field 'display' was added to object type 'DmConstraintModel'
- Field 'objective' was added to object type 'DmConstraintModel'
- Field 'variables' was added to object type 'DmConstraintModel'
- Field 'portName' was added to object type 'DmPortPreset'
- Field 'presetFunctionName' was added to object type 'DmPortPreset'
- Field 'channel' was added to object type 'DmModePinConfig'
- Field 'virtualization' was added to object type 'DmPeripheralInstance'
- Field 'presetFunctionName' was added to object type 'DmPinAssignment'
- Field 'constraintModel' was added to object type 'DmResolverResult'
- Field 'portPresets' was added to object type 'DmResolverResult'

#### Input / Payload

- Input field 'includeDiagnostics' of type 'Boolean' was added to input object type 'DmExecuteDeviceEvaluationInput'
- Input field 'includeDiagnostics' of type 'Boolean' was added to input object type 'DmUpdateDeviceFromSdmInput'


