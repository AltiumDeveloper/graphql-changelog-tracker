# gateway-changelog-16-Jan-2026

## 🔴 Breaking Changes (18)

### Design

#### 🔍 Query

- Field 'desFolderById' (deprecated) was removed from object type 'Query'

#### Types

- 'DesFolder' object type no longer implements 'Node' interface

#### Fields

- Field 'id' (deprecated) was removed from object type 'DesCreateFolderPayload'
- Field 'id' (deprecated) was removed from object type 'DesFolder'
- Field 'DesUpdateFolderPermissionsPayload.folderId' changed type from 'ID!' to 'String!'

#### Input / Payload

- Input field 'parentId' (deprecated) was removed from input object type 'DesCreateFolderInput'
- Input field 'DesCreateFootprintInput.folderId' changed type from 'ID!' to 'String!'
- Input field 'DesCreateSymbolInput.folderId' changed type from 'ID!' to 'String!'
- Input field 'id' (deprecated) was removed from input object type 'DesDeleteFolderInput'
- Input field 'DesDeleteFolderInput.folderId' changed type from 'String' to 'String!'
- Input field 'id' (deprecated) was removed from input object type 'DesMoveFolderInput'
- Input field 'parentId' (deprecated) was removed from input object type 'DesMoveFolderInput'
- Input field 'DesMoveFolderInput.folderId' changed type from 'String' to 'String!'
- Input field 'DesReleaseComponentInput.componentParentFolderId' changed type from 'ID' to 'String'
- Input field 'id' (deprecated) was removed from input object type 'DesUpdateFolderInput'
- Input field 'DesUpdateFolderInput.folderId' changed type from 'String' to 'String!'
- Input field 'DesUpdateFolderPermissionsInput.folderId' changed type from 'ID!' to 'String!'
- Input field 'DesUploadProjectInput.parentFolderId' changed type from 'ID!' to 'String!'


---

## ✅ Non-Breaking Changes (2)

### Design

#### Fields

- Field 'DesUpdateFolderPermissionsPayload.folderId' is no longer deprecated
- Directive 'deprecated' was removed from field 'DesUpdateFolderPermissionsPayload.folderId'


