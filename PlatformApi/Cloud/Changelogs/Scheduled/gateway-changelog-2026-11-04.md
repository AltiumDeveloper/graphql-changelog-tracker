# gateway-changelog-04-Nov-2026

## 🔴 Breaking Changes (20)

### Common

#### Types

- Type 'SchemaRegistryEntry' was removed

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

## ✅ Non-Breaking Changes (20)

### System Design

#### ✏️ Mutation

- Field 'sysSdmBuildSystemModelFromSolution' was added to object type 'Mutation'
- Argument 'input: SysSdmBuildSystemModelFromSolutionInput!' added to 'Mutation.sysSdmBuildSystemModelFromSolution'

#### Types

- Type 'SysSdmBuildSystemModelFromSolutionPayload' was added
- Type 'SysSdmSchemaRegistryEntry' was added
- Type 'SysSdmSystemDataModelContent' was added
- Type 'SysSdmBuildSystemModelFromSolutionInput' was added

#### Fields

- Field 'sysSdmSystemDataModelContent' was added to object type 'SysSdmBuildSystemModelFromSolutionPayload'
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
- Field 'content' was added to object type 'SysSdmSystemDataModelContent'
- Field 'downloadUrl' was added to object type 'SysSdmSystemDataModelContent'

#### Input / Payload

- Input field 'solutionId' of type 'ID!' was added to input object type 'SysSdmBuildSystemModelFromSolutionInput'


