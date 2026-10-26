# gateway-changelog-19-Jan-2026

## 🔴 Breaking Changes (6)

### Design

#### Fields

- Field 'DesUpdateFolderPermissionsPayload.folderId' changed type from 'String!' to 'ID!'

#### Input / Payload

- Input field 'DesCreateFootprintInput.folderId' changed type from 'String!' to 'ID!'
- Input field 'DesCreateSymbolInput.folderId' changed type from 'String!' to 'ID!'
- Input field 'DesReleaseComponentInput.componentParentFolderId' changed type from 'String' to 'ID'
- Input field 'DesUpdateFolderPermissionsInput.folderId' changed type from 'String!' to 'ID!'
- Input field 'DesUploadProjectInput.parentFolderId' changed type from 'String!' to 'ID!'


---

## ⚠️ Dangerous Changes (1)

### Design

#### Types

- 'DesFolder' object implements 'Node' interface


---

## ✅ Non-Breaking Changes (25)

### Design

#### 🔍 Query

- Field 'desFolderById' was added to object type 'Query'
- Field 'Query.desFolderById' is deprecated
- Argument 'id: ID!' added to 'Query.desFolderById'
- Directive 'deprecated' was added to 'Query.desFolderById'

#### Fields

- Field 'id' was added to object type 'DesCreateFolderPayload'
- Field 'DesCreateFolderPayload.id' is deprecated
- Directive 'deprecated' was added to 'DesCreateFolderPayload.id'
- Field 'id' was added to object type 'DesFolder'
- Field 'DesFolder.id' is deprecated
- Directive 'deprecated' was added to 'DesFolder.id'
- Field 'DesUpdateFolderPermissionsPayload.folderId' is deprecated
- Directive 'deprecated' was added to 'DesUpdateFolderPermissionsPayload.folderId'

#### Input / Payload

- Input field 'parentId' of type 'ID' was added to input object type 'DesCreateFolderInput'
- Directive 'deprecated' was added to input field 'parentId' in input object 'DesCreateFolderInput'
- Input field 'id' of type 'ID' was added to input object type 'DesDeleteFolderInput'
- Directive 'deprecated' was added to input field 'id' in input object 'DesDeleteFolderInput'
- Input field 'DesDeleteFolderInput.folderId' changed type from 'String!' to 'String'
- Input field 'id' of type 'ID' was added to input object type 'DesMoveFolderInput'
- Directive 'deprecated' was added to input field 'id' in input object 'DesMoveFolderInput'
- Input field 'parentId' of type 'ID' was added to input object type 'DesMoveFolderInput'
- Directive 'deprecated' was added to input field 'parentId' in input object 'DesMoveFolderInput'
- Input field 'DesMoveFolderInput.folderId' changed type from 'String!' to 'String'
- Input field 'id' of type 'ID' was added to input object type 'DesUpdateFolderInput'
- Directive 'deprecated' was added to input field 'id' in input object 'DesUpdateFolderInput'
- Input field 'DesUpdateFolderInput.folderId' changed type from 'String!' to 'String'


