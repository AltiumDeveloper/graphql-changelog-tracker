# gateway-changelog-29-Oct-2025

## ⚠️ Dangerous Changes (1)

### Renesas (preview)

#### 🔍 Query

- Argument 'filter: SupSoftwareProjectFilterInput' added to 'Query.supSoftwareProjects'


---

## ✅ Non-Breaking Changes (15)

### Renesas (preview)

#### Types

- Type 'SupSoftwareProjectType' was added
- Enum value 'APPLICATION' was added to enum 'SupSoftwareProjectType'
- Enum value 'EXAMPLE' was added to enum 'SupSoftwareProjectType'
- Type 'SupSoftwareProjectFilterInput' was added

#### Fields

- Field 'type' was added to object type 'SupSoftwareProject'

#### Input / Payload

- Input field 'types' of type '[SupSoftwareProjectType!]' was added to input object type 'SupSoftwareProjectFilterInput'

### Supply

#### Fields

- Field 'compatibleSoftwareProjectIds' was added to object type 'SupEvalKit'
- Field 'compatibleSoftwareProjects' was added to object type 'SupEvalKit'

### System Design

#### ✏️ Mutation

- Field 'sysEsdImportDocument' was added to object type 'Mutation'
- Argument 'input: SysEsdImportDocumentInput!' added to 'Mutation.sysEsdImportDocument'

#### Types

- Type 'SysEsdImportDocumentPayload' was added
- Type 'SysEsdImportDocumentInput' was added

#### Fields

- Field 'isImported' was added to object type 'SysEsdImportDocumentPayload'

#### Input / Payload

- Input field 'esdDocumentJson' of type 'String!' was added to input object type 'SysEsdImportDocumentInput'
- Input field 'id' of type 'String!' was added to input object type 'SysEsdImportDocumentInput'


