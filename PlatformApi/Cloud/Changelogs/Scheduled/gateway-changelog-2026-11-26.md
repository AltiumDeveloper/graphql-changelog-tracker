# gateway-changelog-26-Nov-2026

## ✅ Non-Breaking Changes (19)

### Library Management

#### Fields

- Field 'hasStock' was added to object type 'DesPartSearchFixedFacets'

#### Input / Payload

- Input field 'hasStock' of type 'Boolean' was added to input object type 'DesPartSearchFilterInput'
- Input field 'hasStock' of type 'SortEnumType' was added to input object type 'DesPartSortInput'

### System Design

#### ✏️ Mutation

- Field 'sysEsdPushSdmIfChanged' was added to object type 'Mutation'
- Argument 'input: SysEsdPushSdmIfChangedInput!' added to 'Mutation.sysEsdPushSdmIfChanged'
- Field 'sysSdmSyncSystemModelFromSolution' was added to object type 'Mutation'
- Argument 'input: SysSdmSyncSystemModelFromSolutionInput!' added to 'Mutation.sysSdmSyncSystemModelFromSolution'

#### Types

- Type 'SysEsdPushSdmIfChangedPayload' was added
- Object type 'SysEsdPushSdmIfChangedPayload' has description 'Result of pushing the System Data Model built from an ESD document.'
- Type 'SysSdmSyncSystemModelFromSolutionPayload' was added
- Type 'SysEsdPushSdmIfChangedInput' was added
- Object type 'SysEsdPushSdmIfChangedInput' has description 'Input for pushing the System Data Model built from an ESD document.'
- Type 'SysSdmSyncSystemModelFromSolutionInput' was added

#### Fields

- Field 'sdmVersionId' was added to object type 'SysEsdPushSdmIfChangedPayload'
- Field 'sysSdmSystemModelVersion' was added to object type 'SysSdmSyncSystemModelFromSolutionPayload'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'SysEsdPushSdmIfChangedInput'
- Input field 'sdmId' of type 'ID!' was added to input object type 'SysEsdPushSdmIfChangedInput'
- Input field 'solutionId' of type 'ID!' was added to input object type 'SysSdmSyncSystemModelFromSolutionInput'
- Input field 'onlyCreateIfChangesDetected' of type 'Boolean' was added to input object type 'SysSdmCreateSystemModelVersionInput'


