# gateway-changelog-11-Feb-2026

## 🔴 Breaking Changes (9)

### Common

#### Types

- Type 'UUID' was removed
- Type 'IdMutationResponse' was removed

### System Design

#### 🔍 Query

- Field 'sysSdmSystemModels' was removed from object type 'Query'
- Type for argument 'id' on field 'Query.sysSdmSystemModelById' changed from 'UUID!' to 'ID!'

#### ✏️ Mutation

- Field 'sysSdmCreateSystemModel' was removed from object type 'Mutation'

#### Types

- Type 'SysSdmCreateSystemModelPayload' was removed
- Type 'SysSdmCreateSystemModelInput' was removed
- Type 'SysSdmSystemModelFilterInput' was removed
- Type 'SysSdmSystemModelSortInput' was removed


---

## ✅ Non-Breaking Changes (40)

### Design

#### ✏️ Mutation

- Field 'desCreateDatasheet' was added to object type 'Mutation'
- Argument 'input: DesCreateDatasheetInput!' added to 'Mutation.desCreateDatasheet'

#### Types

- Type 'DesCreateDatasheetPayload' was added
- Object type 'DesCreateDatasheetPayload' has description 'Payload associated with creating datasheet.'
- Type 'DesCreateDatasheetFileInput' was added
- Object type 'DesCreateDatasheetFileInput' has description 'Input for creating a datasheet file.'
- Type 'DesCreateDatasheetInput' was added
- Object type 'DesCreateDatasheetInput' has description 'Input for creating a datasheet.'

#### Fields

- Field 'datasheetId' was added to object type 'DesCreateDatasheetPayload'
- Field 'errors' was added to object type 'DesCreateDatasheetPayload'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DesCreateDatasheetFileInput'
- Input field 'relativePath' of type 'String!' was added to input object type 'DesCreateDatasheetFileInput'
- Input field 'comment' of type 'String' was added to input object type 'DesCreateDatasheetInput'
- Input field 'description' of type 'String' was added to input object type 'DesCreateDatasheetInput'
- Input field 'file' of type 'DesCreateDatasheetFileInput!' was added to input object type 'DesCreateDatasheetInput'
- Input field 'folderId' of type 'String!' was added to input object type 'DesCreateDatasheetInput'
- Input field 'lifeCycleDefinitionId' of type 'ID' was added to input object type 'DesCreateDatasheetInput'
- Input field 'name' of type 'String' was added to input object type 'DesCreateDatasheetInput'
- Input field 'revisionNamingSchemeId' of type 'ID' was added to input object type 'DesCreateDatasheetInput'
- Input field 'workspaceUrl' of type 'String' was added to input object type 'DesCreateDatasheetInput'

### System Design

#### 🔍 Query

- Field 'sysSdmSystemModelVersionById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sysSdmSystemModelVersionById'

#### ✏️ Mutation

- Field 'sysSdmCreateSystemModelVersion' was added to object type 'Mutation'
- Argument 'input: SysSdmCreateSystemModelVersionInput!' added to 'Mutation.sysSdmCreateSystemModelVersion'

#### Types

- Type 'SysSdmCreateSystemModelVersionPayload' was added
- Object type 'SysSdmCreateSystemModelVersionPayload' has description '**Experimental**'
- Type 'SysSdmSystemModelVersion' was added
- Object type 'SysSdmSystemModelVersion' has description '**Experimental**'
- Type 'SysSdmCreateSystemModelVersionInput' was added
- Object type 'SysSdmCreateSystemModelVersionInput' has description '**Experimental**'

#### Fields

- Field 'sysSdmSystemModelVersion' was added to object type 'SysSdmCreateSystemModelVersionPayload'
- Field 'downloadUrl' was added to object type 'SysSdmSystemModelVersion'
- Field 'id' was added to object type 'SysSdmSystemModelVersion'
- Field 'name' was added to object type 'SysSdmSystemModelVersion'
- Field 'version' was added to object type 'SysSdmSystemModelVersion'
- Field 'id' was added to object type 'SysSdmSystemModel'
- Field 'latestVersion' was added to object type 'SysSdmSystemModel'

#### Input / Payload

- Input field 'systemModelId' of type 'ID!' was added to input object type 'SysSdmCreateSystemModelVersionInput'
- Input field 'systemModelVersionFileId' of type 'String!' was added to input object type 'SysSdmCreateSystemModelVersionInput'
- Input field 'version' of type 'Int!' was added to input object type 'SysSdmCreateSystemModelVersionInput'


