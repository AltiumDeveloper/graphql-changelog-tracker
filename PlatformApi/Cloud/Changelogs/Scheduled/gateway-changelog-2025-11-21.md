# gateway-changelog-21-Nov-2025

## ✅ Non-Breaking Changes (23)

### Design

#### 🔍 Query

- Field 'desComparisonHealthcheck' was added to object type 'Query'
- Field 'Query.desComparisonHealthcheck' is deprecated
- Directive 'deprecated' was added to 'Query.desComparisonHealthcheck'

#### ✏️ Mutation

- Field 'desCompareReleases' was added to object type 'Mutation'
- Argument 'input: DesComparisonRunInput!' added to 'Mutation.desCompareReleases'

#### Types

- Type 'DesComparisonRunPayload' was added
- Type 'DesComparisonMode' was added
- Enum value 'BOM' was added to enum 'DesComparisonMode'
- Enum value 'PCB' was added to enum 'DesComparisonMode'
- Enum value 'SCHEMATIC' was added to enum 'DesComparisonMode'
- Type 'DesComparisonRunInput' was added

#### Fields

- Field 'comparisonUrl' was added to object type 'DesComparisonRunPayload'

#### Input / Payload

- Input field 'mode' of type 'DesComparisonMode!' was added to input object type 'DesComparisonRunInput'
- Input field 'sourceReleaseId' of type 'ID!' was added to input object type 'DesComparisonRunInput'
- Input field 'targetReleaseId' of type 'ID!' was added to input object type 'DesComparisonRunInput'

### Renesas (preview)

#### ✏️ Mutation

- Field 'sftSoftwareUpdateProjectConfiguration' was added to object type 'Mutation'
- Argument 'input: SftSoftwareUpdateProjectConfigrationInput!' added to 'Mutation.sftSoftwareUpdateProjectConfiguration'

#### Types

- Type 'SftSoftwareProjectUpdateConfigurationPayload' was added
- Type 'SftSoftwareUpdateProjectConfigrationInput' was added

#### Fields

- Field 'data' was added to object type 'SftSoftwareProjectUpdateConfigurationPayload'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'SftSoftwareUpdateProjectConfigrationInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareUpdateProjectConfigrationInput'
- Input field 'message' of type 'String' was added to input object type 'SftSoftwareUpdateProjectConfigrationInput'


