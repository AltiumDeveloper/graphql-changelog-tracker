# gateway-changelog-02-Feb-2026

## 🔴 Breaking Changes (4)

### Design

#### 🔍 Query

- Field 'desReleaseVariantById' (deprecated) was removed from object type 'Query'

#### Types

- 'DesReleaseVariant' object type no longer implements 'Node' interface

#### Fields

- Field 'id' (deprecated) was removed from object type 'DesReleaseVariant'
- Field 'DesReleaseVariant.releaseId' changed type from 'String!' to 'ID!'


---

## ✅ Non-Breaking Changes (1)

### Platform

#### Input / Payload

- Input field 'softwareProjectId' of type 'ID' was added to input object type 'SolBldScaffoldingByConfigurationInput'


