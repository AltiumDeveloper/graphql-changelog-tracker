# gateway-changelog-05-Mar-2026

## 🔴 Breaking Changes (7)

### System Design

#### Fields

- Field 'metadata' was removed from object type 'SysSdmDeviceModel'
- Field 'metadata' was removed from object type 'SysSdmHardwareModel'
- Field 'dependencyIds' was removed from object type 'SysSdmSoftwareComponent'
- Field 'metadata' was removed from object type 'SysSdmSoftwareComponent'
- Field 'peripheralInstanceId' was removed from object type 'SysSdmSoftwareComponent'
- Field 'specification' was removed from object type 'SysSdmSoftwareComponent'
- Field 'metadata' was removed from object type 'SysSdmSoftwareModel'


---

## ⚠️ Dangerous Changes (3)

### Platform

#### Types

- Member 'GloAppOAuthClientGrantAccessError' was added to Union type 'GloCreateAppError'
- Member 'GloAppOAuthClientGrantAccessError' was added to Union type 'GloCreateAppFromOAuthClientError'
- Member 'GloAppDeletedError' was added to Union type 'GloInstallAppError'


---

## ✅ Non-Breaking Changes (36)

### Platform

#### ✏️ Mutation

- Field 'gloUninstallApp' was added to object type 'Mutation'
- Argument 'input: GloUninstallAppInput!' added to 'Mutation.gloUninstallApp'

#### Types

- Type 'GloAppNotUninstalledError' was added
- 'GloAppNotUninstalledError' object implements 'Error' interface
- Object type 'GloAppNotUninstalledError' has description 'Error that occurs when a `GloApp` cannot be uninstalled from a workspace.'
- Type 'GloAppOAuthClientGrantAccessError' was added
- 'GloAppOAuthClientGrantAccessError' object implements 'Error' interface
- Object type 'GloAppOAuthClientGrantAccessError' has description 'Error that occurs when granting access to a *OAuth client* fails.'
- Type 'GloUninstallAppPayload' was added
- Type 'GloUninstallAppError' was added
- Member 'GloAppNotUninstalledError' was added to Union type 'GloUninstallAppError'
- Member 'GloAppDeletedError' was added to Union type 'GloUninstallAppError'
- Type 'GloUninstallAppInput' was added

#### Fields

- Field 'message' was added to object type 'GloAppNotUninstalledError'
- Field 'message' was added to object type 'GloAppOAuthClientGrantAccessError'
- Field 'errors' was added to object type 'GloUninstallAppPayload'
- Field 'gloApp' was added to object type 'GloUninstallAppPayload'
- Field 'systemDataModel' was added to object type 'SolSolution'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'GloUninstallAppInput'

### System Design

#### 🔍 Query

- Field 'sysSdmSystemModelsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sysSdmSystemModelsByIds'

#### Types

- Type 'SysSdmSoftwareStackInstance' was added
- Object type 'SysSdmSoftwareStackInstance' has description '**Experimental**'

#### Fields

- Field 'dependencyIds' was added to object type 'SysSdmSoftwareStackInstance'
- Field 'id' was added to object type 'SysSdmSoftwareStackInstance'
- Field 'name' was added to object type 'SysSdmSoftwareStackInstance'
- Field 'parameters' was added to object type 'SysSdmSoftwareStackInstance'
- Field 'peripheralInstanceId' was added to object type 'SysSdmSoftwareStackInstance'
- Field 'specification' was added to object type 'SysSdmSoftwareStackInstance'
- Field 'boardName' was added to object type 'SysSdmDeviceModel'
- Field 'sdmReferenceDesignator' was added to object type 'SysSdmHardwareModel'
- Field 'implementedBy' was added to object type 'SysSdmSoftwareComponent'
- Field 'libraryComponentId' was added to object type 'SysSdmSoftwareComponent'
- Field 'sdmReferenceDesignator' was added to object type 'SysSdmSoftwareComponent'
- Field 'sdmReferenceDesignator' was added to object type 'SysSdmSoftwareModel'
- Field 'softwareStackInstances' was added to object type 'SysSdmSoftwareModel'


