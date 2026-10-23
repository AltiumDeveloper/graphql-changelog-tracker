# gateway-changelog-02-Jun-2025

## 🔴 Breaking Changes (1)

### Supply

#### Types

- Type 'SupErrorPayload' was removed


---

## ✅ Non-Breaking Changes (33)

### Design

#### Fields

- Field 'createdBy' was added to object type 'DesDatasheet'
- Field 'updatedBy' was added to object type 'DesDatasheet'
- Field 'createdBy' was added to object type 'DesFootprint'
- Field 'updatedBy' was added to object type 'DesFootprint'
- Field 'createdBy' was added to object type 'DesSimulation'
- Field 'updatedBy' was added to object type 'DesSimulation'
- Field 'createdBy' was added to object type 'DesSymbol'
- Field 'updatedBy' was added to object type 'DesSymbol'

### Renesas (preview)

#### 🔍 Query

- Field 'sftSoftwareProjectById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sftSoftwareProjectById'
- Field 'sftSoftwareProjects' was added to object type 'Query'

#### ✏️ Mutation

- Field 'sftSoftwareProjectCreate' was added to object type 'Mutation'
- Argument 'input: SftSoftwareProjectCreateInput!' added to 'Mutation.sftSoftwareProjectCreate'
- Field 'sftSoftwareProjectDeleteById' was added to object type 'Mutation'
- Argument 'input: SftSoftwareProjectDeleteInput!' added to 'Mutation.sftSoftwareProjectDeleteById'
- Field 'sftSoftwareProjectUpdate' was added to object type 'Mutation'
- Argument 'input: SftSoftwareProjectUpdateInput!' added to 'Mutation.sftSoftwareProjectUpdate'

#### Types

- Type 'SftSoftwareProject' was added
- Type 'SftSoftwareProjectCreatePayload' was added
- Type 'SftSoftwareProjectDeletePayload' was added
- Type 'SftSoftwareProjectUpdatePayload' was added
- Type 'SftSoftwareProjectCreateInput' was added
- Type 'SftSoftwareProjectDeleteInput' was added
- Type 'SftSoftwareProjectUpdateInput' was added

#### Fields

- Field 'id' was added to object type 'SftSoftwareProject'
- Field 'name' was added to object type 'SftSoftwareProject'
- Field 'data' was added to object type 'SftSoftwareProjectCreatePayload'
- Field 'isDeleted' was added to object type 'SftSoftwareProjectDeletePayload'
- Field 'data' was added to object type 'SftSoftwareProjectUpdatePayload'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'SftSoftwareProjectCreateInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareProjectDeleteInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSoftwareProjectUpdateInput'
- Input field 'name' of type 'String!' was added to input object type 'SftSoftwareProjectUpdateInput'


