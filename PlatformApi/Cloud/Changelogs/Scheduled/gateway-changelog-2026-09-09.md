# gateway-changelog-09-Sep-2026

## ✅ Non-Breaking Changes (32)

### Design

#### Types

- Type 'DesProjectRepositoryType' was added
- Enum value 'EXTERNAL' was added to enum 'DesProjectRepositoryType'
- Enum value 'INTERNAL' was added to enum 'DesProjectRepositoryType'
- Object type 'DesProjectRepositoryType' has description 'The hosting location of a project\'s VCS repository.'

#### Fields

- Field 'repositoryType' was added to object type 'DesProject'

### System Design

#### 🔍 Query

- Field 'sysLibSoftwareLibraryDownloads' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sysLibSoftwareLibraryDownloads'

#### ✏️ Mutation

- Field 'sysLibDeleteSoftwareLibrary' was added to object type 'Mutation'
- Argument 'input: SysLibDeleteSoftwareLibraryInput!' added to 'Mutation.sysLibDeleteSoftwareLibrary'
- Field 'sysLibUploadSoftwareLibrary' was added to object type 'Mutation'
- Argument 'input: SysLibUploadSoftwareLibraryInput!' added to 'Mutation.sysLibUploadSoftwareLibrary'

#### Types

- Type 'SysLibDeleteSoftwareLibraryPayload' was added
- Object type 'SysLibDeleteSoftwareLibraryPayload' has description '**Experimental**'
- Type 'SysLibSoftwareLibraryDownload' was added
- Object type 'SysLibSoftwareLibraryDownload' has description '**Experimental**'
- Type 'SysLibUploadSoftwareLibraryPayload' was added
- Object type 'SysLibUploadSoftwareLibraryPayload' has description '**Experimental**'
- Type 'SysLibDeleteSoftwareLibraryInput' was added
- Object type 'SysLibDeleteSoftwareLibraryInput' has description '**Experimental**'
- Type 'SysLibUploadSoftwareLibraryInput' was added
- Object type 'SysLibUploadSoftwareLibraryInput' has description '**Experimental**'

#### Fields

- Field 'boolean' was added to object type 'SysLibDeleteSoftwareLibraryPayload'
- Field 'downloadUrl' was added to object type 'SysLibSoftwareLibraryDownload'
- Field 'fileName' was added to object type 'SysLibSoftwareLibraryDownload'
- Field 'id' was added to object type 'SysLibSoftwareLibraryDownload'
- Field 'name' was added to object type 'SysLibSoftwareLibraryDownload'
- Field 'sysLibSoftwareComponent' was added to object type 'SysLibUploadSoftwareLibraryPayload'

#### Input / Payload

- Input field 'libraryId' of type 'ID!' was added to input object type 'SysLibDeleteSoftwareLibraryInput'
- Input field 'fileId' of type 'String!' was added to input object type 'SysLibUploadSoftwareLibraryInput'
- Input field 'fileName' of type 'String!' was added to input object type 'SysLibUploadSoftwareLibraryInput'
- Input field 'libraryId' of type 'ID' was added to input object type 'SysLibUploadSoftwareLibraryInput'
- Input field 'name' of type 'String!' was added to input object type 'SysLibUploadSoftwareLibraryInput'


