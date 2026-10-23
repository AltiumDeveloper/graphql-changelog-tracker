# gateway-changelog-12-Sep-2025

## 🔴 Breaking Changes (1)

### Renesas (preview)

#### 🔍 Query

- Field 'sftSimSimulation' (deprecated) was removed from object type 'Query'


---

## ⚠️ Dangerous Changes (2)

### Platform

#### Fields

- Argument 'reason' was removed from '@deprecated'
- Argument 'reason' was removed from '@deprecated'


---

## ✅ Non-Breaking Changes (10)

### Platform

#### Fields

- Deprecation reason on field 'SolSolution.createdById' has changed from 'Field plays a technical role for schema stitching purposes.' to 'Fields play a technical role for schema stitching purposes.'
- Field 'SolSolution.esdDocuments' changed type from '[SysEsdDocument]!' to '[SysEsdDocument!]!'
- Deprecation reason on field 'SolSolution.modifiedById' has changed from 'Field plays a technical role for schema stitching purposes.' to 'Fields play a technical role for schema stitching purposes.'
- Field 'SolSolution.sharedWith' changed type from '[DesWorkspaceUser]!' to '[DesWorkspaceUser!]!'
- Field 'SolSolution.simulations' changed type from '[SftSimSimulation]!' to '[SftSimSimulation!]!'
- Field 'SolSolution.softwareProjects' changed type from '[SftSoftwareProject]!' to '[SftSoftwareProject!]!'

### Renesas (preview)

#### Fields

- Field 'revisions' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'softwareProject' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'deviceConfiguration' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'deviceConfiguration' was added to object type 'SftSoftwareProject'


