# gateway-changelog-27-Jun-2025

## 🔴 Breaking Changes (2)

### Platform

#### Fields

- Field 'id' was removed from object type 'SolAttachment'

### Renesas (preview)

#### Fields

- Field 'url' was removed from object type 'SftSoftwareProject'


---

## ✅ Non-Breaking Changes (34)

### Platform

#### Fields

- Field 'attachmentId' was added to object type 'SolAttachment'

### Renesas (preview)

#### ✏️ Mutation

- Field 'sftSoftwareCreateProjectCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftSoftwareCreateProjectPropertiesInput!' added to 'Mutation.sftSoftwareCreateProjectCustomProperties'
- Field 'sftSoftwareDeleteProjectCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftSoftwareDeleteProjectPropertiesInput!' added to 'Mutation.sftSoftwareDeleteProjectCustomProperties'
- Field 'sftSoftwareUpdateProjectCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftSoftwareUpdateProjectPropertiesInput!' added to 'Mutation.sftSoftwareUpdateProjectCustomProperties'

#### Types

- Type 'SftSoftwareCreateProjectPropertiesPayload' was added
- Type 'SftSoftwareDeleteProjectPropertiesPayload' was added
- Type 'SftSoftwareProjectCustomProperty' was added
- Type 'SftSoftwareUpdateProjectPropertiesPayload' was added
- Type 'SftSoftwareCreateProjectPropertiesInput' was added
- Type 'SftSoftwareDeleteProjectPropertiesInput' was added
- Type 'SftSoftwareProjectCustomPropertyInput' was added
- Type 'SftSoftwareUpdateProjectPropertiesInput' was added

#### Fields

- Field 'customProperties' was added to object type 'SftSoftwareCreateProjectPropertiesPayload'
- Field 'id' was added to object type 'SftSoftwareCreateProjectPropertiesPayload'
- Field 'deletedParametersCount' was added to object type 'SftSoftwareDeleteProjectPropertiesPayload'
- Field 'id' was added to object type 'SftSoftwareDeleteProjectPropertiesPayload'
- Field 'key' was added to object type 'SftSoftwareProjectCustomProperty'
- Field 'value' was added to object type 'SftSoftwareProjectCustomProperty'
- Field 'customProperties' was added to object type 'SftSoftwareUpdateProjectPropertiesPayload'
- Field 'id' was added to object type 'SftSoftwareUpdateProjectPropertiesPayload'
- Field 'customProperties' was added to object type 'SftSoftwareProject'
- Field 'repositoryUrl' was added to object type 'SftSoftwareProject'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareCreateProjectPropertiesInput'
- Input field 'customProperties' of type '[SftSoftwareProjectCustomPropertyInput!]!' was added to input object type 'SftSoftwareCreateProjectPropertiesInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareDeleteProjectPropertiesInput'
- Input field 'customPropertyNames' of type '[String!]!' was added to input object type 'SftSoftwareDeleteProjectPropertiesInput'
- Input field 'key' of type 'String!' was added to input object type 'SftSoftwareProjectCustomPropertyInput'
- Input field 'value' of type 'String' was added to input object type 'SftSoftwareProjectCustomPropertyInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareUpdateProjectPropertiesInput'
- Input field 'customProperties' of type '[SftSoftwareProjectCustomPropertyInput!]!' was added to input object type 'SftSoftwareUpdateProjectPropertiesInput'
- Input field 'customProperties' of type '[SftSoftwareProjectCustomPropertyInput!]' was added to input object type 'SftSoftwareCreateProjectInput'


