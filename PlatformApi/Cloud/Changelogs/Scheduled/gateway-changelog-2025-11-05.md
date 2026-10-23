# gateway-changelog-05-Nov-2025

## 🔴 Breaking Changes (1)

### Supply

#### Fields

- Field 'SupSolutionTemplateApplication.description' changed type from 'String!' to 'String'


---

## ⚠️ Dangerous Changes (4)

### Supply

#### Arguments

- Argument 'limit: Int!' (with default value) added to 'SupEvalKit.compatibleSoftwareProjectIds'
- Argument 'start: Int!' (with default value) added to 'SupEvalKit.compatibleSoftwareProjectIds'
- Argument 'limit: Int!' (with default value) added to 'SupEvalKit.compatibleSoftwareProjects'
- Argument 'start: Int!' (with default value) added to 'SupEvalKit.compatibleSoftwareProjects'


---

## ✅ Non-Breaking Changes (16)

### Renesas (preview)

#### ✏️ Mutation

- Field 'sftSoftwareUpdateProjectFirmware' was added to object type 'Mutation'
- Argument 'input: SftSoftwareUpdateProjectFirmwareInput!' added to 'Mutation.sftSoftwareUpdateProjectFirmware'

#### Types

- Type 'SftSoftwareProjectUpdateFirmwarePayload' was added
- Type 'SftSoftwareUpdateProjectFirmwareInput' was added

#### Fields

- Field 'data' was added to object type 'SftSoftwareProjectUpdateFirmwarePayload'
- Field 'firmwareUrl' was added to object type 'SftSoftwareProject'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'SftSoftwareUpdateProjectFirmwareInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareUpdateProjectFirmwareInput'

### Supply

#### Fields

- Field 'SupEvalKit.compatibleSoftwareProjectIds' is deprecated
- Directive 'deprecated' was added to 'SupEvalKit.compatibleSoftwareProjectIds'
- Field 'SupEvalKit.partIds' is deprecated
- Directive 'deprecated' was added to 'SupEvalKit.partIds'
- Field 'SupEvalKit.refDesignIds' is deprecated
- Directive 'deprecated' was added to 'SupEvalKit.refDesignIds'
- Field 'bestPreviewImage' was added to object type 'SupSolutionTemplate'
- Field 'required' was added to object type 'SupSolutionTemplateApplicationParameterBundle'


