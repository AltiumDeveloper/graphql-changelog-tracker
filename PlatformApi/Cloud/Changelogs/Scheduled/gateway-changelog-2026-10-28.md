# gateway-changelog-28-Oct-2026

## 🔴 Breaking Changes (22)

### Common

#### Types

- Type 'SchemaRegistryEntry' was removed

### Renesas (preview)

#### Types

- Type 'SupSoftwareProjectToolchain' was removed

#### Fields

- Field 'SupSoftwareProjectEvalKitProjectSource.toolchain' changed type from 'SupSoftwareProjectToolchain' to 'SupEvalKitSoftwareProjectToolchain'

### System Design

#### 🔍 Query

- Field 'Query.sysSdmSchemaVersionRegistry' changed type from '[SchemaRegistryEntry!]!' to '[SysSdmSchemaRegistryEntry!]!'

#### Fields

- Field 'SysSdmConnection.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmDeviceModel.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmDmPeripheralConfiguration.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmDmPeripheralInstance.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmDmPort.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmDmPortConfiguration.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmDmPortConfigurationEnumValue.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmDmPortConnection.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmFunctionalBlock.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmFunctionalModel.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmHardwareComponent.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmHardwareModel.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmParameter.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmPeripheral.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmPort.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmSoftwareComponent.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmSoftwareModel.id' changed type from 'String!' to 'ID!'
- Field 'SysSdmSoftwareStackInstance.id' changed type from 'String!' to 'ID!'


---

## ⚠️ Dangerous Changes (56)

### System Design

#### 🔍 Query

- Directive 'experimental' was removed from field 'Query.sysLibSoftwareComponentById'
- Directive 'experimental' was removed from field 'Query.sysLibSoftwareComponents'
- Directive 'experimental' was removed from field 'Query.sysLibSoftwareLibraryDownloads'
- Directive 'experimental' was removed from field 'Query.sysSdmSchemaVersionRegistry'
- Directive 'experimental' was removed from field 'Query.sysSdmSystemModelById'
- Directive 'experimental' was removed from field 'Query.sysSdmSystemModelsByIds'
- Directive 'experimental' was removed from field 'Query.sysSdmSystemModelVersionById'

#### ✏️ Mutation

- Directive 'experimental' was removed from field 'Mutation.sysLibDeleteSoftwareLibrary'
- Directive 'experimental' was removed from field 'Mutation.sysLibUploadSoftwareLibrary'
- Directive 'experimental' was removed from field 'Mutation.sysSdmCreateSystemModelVersion'

#### Fields

- Directive 'experimental' was removed from object 'SysLibDeleteSoftwareLibraryPayload'
- Directive 'experimental' was removed from object 'SysLibSoftwareComponent'
- Directive 'experimental' was removed from object 'SysLibSoftwareComponentSpecification'
- Directive 'experimental' was removed from object 'SysLibSoftwareLibraryDownload'
- Directive 'experimental' was removed from object 'SysLibUploadSoftwareLibraryPayload'
- Directive 'experimental' was removed from object 'SysSdmAuthoringApplication'
- Directive 'experimental' was removed from object 'SysSdmConnection'
- Directive 'experimental' was removed from object 'SysSdmCreateSystemModelVersionPayload'
- Directive 'experimental' was removed from object 'SysSdmDeviceModel'
- Directive 'experimental' was removed from object 'SysSdmDmPeripheralConfiguration'
- Directive 'experimental' was removed from object 'SysSdmDmPeripheralInstance'
- Directive 'experimental' was removed from object 'SysSdmDmPeripheralMode'
- Directive 'experimental' was removed from object 'SysSdmDmPeripheralParameter'
- Directive 'experimental' was removed from object 'SysSdmDmPeripheralPinConfig'
- Directive 'experimental' was removed from object 'SysSdmDmPeripheralPinDependencyConfig'
- Directive 'experimental' was removed from object 'SysSdmDmPort'
- Directive 'experimental' was removed from object 'SysSdmDmPortConfiguration'
- Directive 'experimental' was removed from object 'SysSdmDmPortConfigurationDependency'
- Directive 'experimental' was removed from object 'SysSdmDmPortConfigurationEnumValue'
- Directive 'experimental' was removed from object 'SysSdmDmPortConnection'
- Directive 'experimental' was removed from object 'SysSdmDmPortFunction'
- Directive 'experimental' was removed from object 'SysSdmEndpoint'
- Directive 'experimental' was removed from object 'SysSdmFunctionalBlock'
- Directive 'experimental' was removed from object 'SysSdmFunctionalModel'
- Directive 'experimental' was removed from object 'SysSdmHardwareComponent'
- Directive 'experimental' was removed from object 'SysSdmHardwareModel'
- Directive 'experimental' was removed from object 'SysSdmParameter'
- Directive 'experimental' was removed from object 'SysSdmPeripheral'
- Directive 'experimental' was removed from object 'SysSdmPort'
- Directive 'experimental' was removed from object 'SysSdmSoftwareComponent'
- Directive 'experimental' was removed from object 'SysSdmSoftwareModel'
- Directive 'experimental' was removed from object 'SysSdmSoftwareSpecification'
- Directive 'experimental' was removed from object 'SysSdmSoftwareStackInstance'
- Directive 'experimental' was removed from field 'SysSdmSystemModel.latestVersion'
- Directive 'experimental' was removed from field 'SysSdmSystemModel.name'
- Directive 'experimental' was removed from field 'SysSdmSystemModel.versions'
- Directive 'experimental' was removed from object 'SysSdmSystemModel'
- Directive 'experimental' was removed from object 'SysSdmSystemModelVersion'
- Directive 'experimental' was removed from object 'SysSdmSystemModelVersionMetadata'
- Directive 'experimental' was removed from enum 'SysSdmDmGpioMode'
- Directive 'experimental' was removed from enum 'SysSdmDmPeripheralVirtualization'
- Directive 'experimental' was removed from enum 'SysSdmDmPortMode'
- Directive 'experimental' was removed from enum 'SysSdmSoftwareComponentCategory'

#### Input / Payload

- Directive 'experimental' was removed from input object 'SysLibDeleteSoftwareLibraryInput'
- Directive 'experimental' was removed from input object 'SysLibUploadSoftwareLibraryInput'
- Directive 'experimental' was removed from input object 'SysSdmCreateSystemModelVersionInput'


---

## ✅ Non-Breaking Changes (84)

### Supply

#### 🔍 Query

- Field 'supEvalKitSoftwareProjectToolchains' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supEvalKitSoftwareProjectToolchains'
- Argument 'before: String' added to 'Query.supEvalKitSoftwareProjectToolchains'
- Argument 'first: Int' added to 'Query.supEvalKitSoftwareProjectToolchains'
- Argument 'last: Int' added to 'Query.supEvalKitSoftwareProjectToolchains'
- Argument 'order: [SupEvalKitSoftwareProjectToolchainSortInput!]' added to 'Query.supEvalKitSoftwareProjectToolchains'
- Argument 'where: SupEvalKitSoftwareProjectToolchainFilterInput' added to 'Query.supEvalKitSoftwareProjectToolchains'

#### Types

- Type 'SupEvalKitSoftwareProjectToolchain' was added
- Type 'SupEvalKitSoftwareProjectToolchainConnection' was added
- Object type 'SupEvalKitSoftwareProjectToolchainConnection' has description 'A connection to a list of items.'
- Type 'SupEvalKitSoftwareProjectToolchainEdge' was added
- Object type 'SupEvalKitSoftwareProjectToolchainEdge' has description 'An edge in a connection.'
- Type 'SupEvalKitSoftwareProjectToolchainFilterInput' was added
- Object type 'SupEvalKitSoftwareProjectToolchainFilterInput' has description 'Represents the filter for searching project source toolchains.'
- Type 'SupEvalKitSoftwareProjectToolchainSortInput' was added
- Object type 'SupEvalKitSoftwareProjectToolchainSortInput' has description 'Input type for sorting.'

#### Fields

- Field 'name' was added to object type 'SupEvalKitSoftwareProjectToolchain'
- Field 'supportedVersions' was added to object type 'SupEvalKitSoftwareProjectToolchain'
- Field 'toolchainId' was added to object type 'SupEvalKitSoftwareProjectToolchain'
- Field 'SupEvalKitSoftwareProjectToolchain.toolchainId' is deprecated
- Directive 'deprecated' was added to 'SupEvalKitSoftwareProjectToolchain.toolchainId'
- Field 'edges' was added to object type 'SupEvalKitSoftwareProjectToolchainConnection'
- Field 'nodes' was added to object type 'SupEvalKitSoftwareProjectToolchainConnection'
- Field 'pageInfo' was added to object type 'SupEvalKitSoftwareProjectToolchainConnection'
- Field 'totalCount' was added to object type 'SupEvalKitSoftwareProjectToolchainConnection'
- Field 'cursor' was added to object type 'SupEvalKitSoftwareProjectToolchainEdge'
- Field 'node' was added to object type 'SupEvalKitSoftwareProjectToolchainEdge'

#### Input / Payload

- Input field 'ids' of type '[String!]' was added to input object type 'SupEvalKitSoftwareProjectToolchainFilterInput'
- Input field 'q' of type 'String' was added to input object type 'SupEvalKitSoftwareProjectToolchainFilterInput'
- Input field 'name' of type 'SortEnumType' was added to input object type 'SupEvalKitSoftwareProjectToolchainSortInput'

### System Design

#### Types

- Type 'SysSdmSchemaRegistryEntry' was added
- Description '**Experimental**' was removed from object type 'SysLibDeleteSoftwareLibraryPayload'
- Description '**Experimental**' was removed from object type 'SysLibSoftwareComponent'
- Description '**Experimental**' was removed from object type 'SysLibSoftwareComponentSpecification'
- Description '**Experimental**' was removed from object type 'SysLibSoftwareLibraryDownload'
- Description '**Experimental**' was removed from object type 'SysLibUploadSoftwareLibraryPayload'
- Description '**Experimental**' was removed from object type 'SysSdmAuthoringApplication'
- Description '**Experimental**' was removed from object type 'SysSdmConnection'
- Description '**Experimental**' was removed from object type 'SysSdmCreateSystemModelVersionPayload'
- Description '**Experimental**' was removed from object type 'SysSdmDeviceModel'
- Description '**Experimental**' was removed from object type 'SysSdmDmPeripheralConfiguration'
- Description '**Experimental**' was removed from object type 'SysSdmDmPeripheralInstance'
- Description '**Experimental**' was removed from object type 'SysSdmDmPeripheralMode'
- Description '**Experimental**' was removed from object type 'SysSdmDmPeripheralParameter'
- Description '**Experimental**' was removed from object type 'SysSdmDmPeripheralPinConfig'
- Description '**Experimental**' was removed from object type 'SysSdmDmPeripheralPinDependencyConfig'
- Description '**Experimental**' was removed from object type 'SysSdmDmPort'
- Description '**Experimental**' was removed from object type 'SysSdmDmPortConfiguration'
- Description '**Experimental**' was removed from object type 'SysSdmDmPortConfigurationDependency'
- Description '**Experimental**' was removed from object type 'SysSdmDmPortConfigurationEnumValue'
- Description '**Experimental**' was removed from object type 'SysSdmDmPortConnection'
- Description '**Experimental**' was removed from object type 'SysSdmDmPortFunction'
- Description '**Experimental**' was removed from object type 'SysSdmEndpoint'
- Description '**Experimental**' was removed from object type 'SysSdmFunctionalBlock'
- Description '**Experimental**' was removed from object type 'SysSdmFunctionalModel'
- Description '**Experimental**' was removed from object type 'SysSdmHardwareComponent'
- Description '**Experimental**' was removed from object type 'SysSdmHardwareModel'
- Description '**Experimental**' was removed from object type 'SysSdmParameter'
- Description '**Experimental**' was removed from object type 'SysSdmPeripheral'
- Description '**Experimental**' was removed from object type 'SysSdmPort'
- Description '**Experimental**' was removed from object type 'SysSdmSoftwareComponent'
- Description '**Experimental**' was removed from object type 'SysSdmSoftwareModel'
- Description '**Experimental**' was removed from object type 'SysSdmSoftwareSpecification'
- Description '**Experimental**' was removed from object type 'SysSdmSoftwareStackInstance'
- Description '**Experimental**' was removed from object type 'SysSdmSystemModel'
- Description '**Experimental**' was removed from object type 'SysSdmSystemModelVersion'
- Description '**Experimental**' was removed from object type 'SysSdmSystemModelVersionMetadata'
- Description '**Experimental**' was removed from object type 'SysLibDeleteSoftwareLibraryInput'
- Description '**Experimental**' was removed from object type 'SysLibUploadSoftwareLibraryInput'
- Description '**Experimental**' was removed from object type 'SysSdmCreateSystemModelVersionInput'
- Description '**Experimental**' was removed from object type 'SysSdmDmGpioMode'
- Description '**Experimental**' was removed from object type 'SysSdmDmPeripheralVirtualization'
- Description '**Experimental**' was removed from object type 'SysSdmDmPortMode'
- Description '**Experimental**' was removed from object type 'SysSdmSoftwareComponentCategory'

#### Fields

- Field 'cdmReleaseUrl' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'cdmVersion' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'description' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'isLatest' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'isOnlySemantic' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'isPullDeprecated' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'isPushDeprecated' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'migrationNotes' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'schemaVersion' was added to object type 'SysSdmSchemaRegistryEntry'
- Field 'status' was added to object type 'SysSdmSchemaRegistryEntry'


