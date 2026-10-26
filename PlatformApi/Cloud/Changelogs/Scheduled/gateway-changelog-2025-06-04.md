# gateway-changelog-04-Jun-2025

## 🔴 Breaking Changes (9)

### Renesas (preview)

#### ✏️ Mutation

- Field 'sftSoftwareProjectCreate' was removed from object type 'Mutation'
- Field 'sftSoftwareProjectDeleteById' was removed from object type 'Mutation'
- Field 'sftSoftwareProjectUpdate' was removed from object type 'Mutation'

#### Types

- Type 'SftSoftwareProjectCreatePayload' was removed
- Type 'SftSoftwareProjectDeletePayload' was removed
- Type 'SftSoftwareProjectUpdatePayload' was removed
- Type 'SftSoftwareProjectCreateInput' was removed
- Type 'SftSoftwareProjectDeleteInput' was removed
- Type 'SftSoftwareProjectUpdateInput' was removed


---

## ✅ Non-Breaking Changes (22)

### Renesas (preview)

#### ✏️ Mutation

- Field 'sftSoftwareCreateProject' was added to object type 'Mutation'
- Argument 'input: SftSoftwareCreateProjectInput!' added to 'Mutation.sftSoftwareCreateProject'
- Field 'sftSoftwareDeleteProject' was added to object type 'Mutation'
- Argument 'input: SftSoftwareDeleteProjectInput!' added to 'Mutation.sftSoftwareDeleteProject'
- Field 'sftSoftwareUpdateProject' was added to object type 'Mutation'
- Argument 'input: SftSoftwareUpdateProjectInput!' added to 'Mutation.sftSoftwareUpdateProject'

#### Types

- Type 'SftSoftwareCreateProjectPayload' was added
- Type 'SftSoftwareDeleteProjectPayload' was added
- Type 'SftSoftwareUpdateProjectPayload' was added
- Type 'SftSoftwareCreateProjectInput' was added
- Type 'SftSoftwareDeleteProjectInput' was added
- Type 'SftSoftwareUpdateProjectInput' was added

#### Fields

- Field 'data' was added to object type 'SftSoftwareCreateProjectPayload'
- Field 'isDeleted' was added to object type 'SftSoftwareDeleteProjectPayload'
- Field 'data' was added to object type 'SftSoftwareUpdateProjectPayload'
- Field 'url' was added to object type 'SftSoftwareProject'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'SftSoftwareCreateProjectInput'
- Input field 'url' of type 'String!' was added to input object type 'SftSoftwareCreateProjectInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareDeleteProjectInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareUpdateProjectInput'
- Input field 'name' of type 'String!' was added to input object type 'SftSoftwareUpdateProjectInput'
- Input field 'url' of type 'String!' was added to input object type 'SftSoftwareUpdateProjectInput'


