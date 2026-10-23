# gateway-changelog-20-Feb-2026

## ⚠️ Dangerous Changes (1)

### Design

#### Types

- Enum value 'COSTED_BOM' was added to enum 'DesContentTypeKind'


---

## ✅ Non-Breaking Changes (18)

### Platform

#### 🔍 Query

- Field 'gloAppInstalledApps' was added to object type 'Query'
- Argument 'order: [GloAppSortInput!]' added to 'Query.gloAppInstalledApps'
- Argument 'where: GloAppFilterInput' added to 'Query.gloAppInstalledApps'

#### ✏️ Mutation

- Field 'solBldScaffoldingWithEmptyEsdAndSoftwareProject' was added to object type 'Mutation'
- Argument 'input: SolBldScaffoldingWithEmptyEsdAndSoftwareProjectInput!' added to 'Mutation.solBldScaffoldingWithEmptyEsdAndSoftwareProject'

#### Types

- Type 'SolBldScaffoldingWithEmptyEsdAndSoftwareProjectPayload' was added
- Type 'SolBldScaffoldingWithEmptyEsdAndSoftwareProjectInput' was added

#### Fields

- Field 'solutionId' was added to object type 'SolBldScaffoldingWithEmptyEsdAndSoftwareProjectPayload'

#### Input / Payload

- Input field 'softwareProjectId' of type 'ID!' was added to input object type 'SolBldScaffoldingWithEmptyEsdAndSoftwareProjectInput'

### Renesas (preview)

#### ✏️ Mutation

- Field 'dmExecuteDeviceExtractionFromConfigurationUrl' was added to object type 'Mutation'
- Argument 'input: DmExecuteDeviceExtractionFromConfigurationUrlInput!' added to 'Mutation.dmExecuteDeviceExtractionFromConfigurationUrl'

#### Types

- Type 'DmExecuteDeviceExtractionFromConfigurationUrlPayload' was added
- Object type 'DmExecuteDeviceExtractionFromConfigurationUrlPayload' has description '**Experimental**'
- Type 'DmExecuteDeviceExtractionFromConfigurationUrlInput' was added
- Object type 'DmExecuteDeviceExtractionFromConfigurationUrlInput' has description '**Experimental**'

#### Fields

- Field 'dmDeviceModelAsConfigured' was added to object type 'DmExecuteDeviceExtractionFromConfigurationUrlPayload'

#### Input / Payload

- Input field 'configurationFileUrl' of type 'String!' was added to input object type 'DmExecuteDeviceExtractionFromConfigurationUrlInput'
- Input field 'sessionId' of type 'String!' was added to input object type 'DmExecuteDeviceExtractionFromConfigurationUrlInput'


