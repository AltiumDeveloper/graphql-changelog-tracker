# gateway-changelog-03-Mar-2026

## 🔴 Breaking Changes (39)

### System Design

#### Types

- Type 'SysSdmPortType' was removed

#### Fields

- Field 'SysSdmClientMetadata.parameters' changed type from '[SysSdmParameter!]!' to '[SysSdmParameter!]'
- Field 'SysSdmConnection.endpoints' changed type from '[SysSdmEndpoint!]!' to '[SysSdmEndpoint!]'
- Field 'SysSdmConnection.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmConnection.parameters' changed type from '[SysSdmParameter!]!' to '[SysSdmParameter!]'
- Field 'SysSdmDeviceModel.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmDeviceModel.peripherals' changed type from '[SysSdmPeripheral!]!' to '[SysSdmPeripheral!]'
- Field 'SysSdmDeviceModel.ports' changed type from '[SysSdmPort!]!' to '[SysSdmPort!]'
- Field 'SysSdmFunctionalBlock.hardwareComponentIds' changed type from '[String!]!' to '[String!]'
- Field 'SysSdmFunctionalBlock.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmFunctionalBlock.parameters' changed type from '[SysSdmParameter!]!' to '[SysSdmParameter!]'
- Field 'SysSdmFunctionalBlock.ports' changed type from '[SysSdmPort!]!' to '[SysSdmPort!]'
- Field 'SysSdmFunctionalModel.connections' changed type from '[SysSdmConnection!]!' to '[SysSdmConnection!]'
- Field 'SysSdmFunctionalModel.functionalBlocks' changed type from '[SysSdmFunctionalBlock!]!' to '[SysSdmFunctionalBlock!]'
- Field 'SysSdmFunctionalModel.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmHardwareComponent.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmHardwareComponent.parameters' changed type from '[SysSdmParameter!]!' to '[SysSdmParameter!]'
- Field 'SysSdmHardwareModel.functionalBlockIds' changed type from '[String!]!' to '[String!]'
- Field 'SysSdmHardwareModel.hardwareComponents' changed type from '[SysSdmHardwareComponent!]!' to '[SysSdmHardwareComponent!]'
- Field 'SysSdmHardwareModel.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmPeripheral.instances' changed type from '[SysSdmPeripheralInstance!]!' to '[SysSdmPeripheralInstance!]'
- Field 'SysSdmPeripheralConfiguration.parameters' changed type from '[SysSdmPeripheralParameter!]!' to '[SysSdmPeripheralParameter!]'
- Field 'SysSdmPeripheralConfiguration.pinConfigs' changed type from '[SysSdmPeripheralPinConfig!]!' to '[SysSdmPeripheralPinConfig!]'
- Field 'SysSdmPeripheralConfiguration.pinDependencyConfigs' changed type from '[SysSdmPeripheralPinDependencyConfig!]!' to '[SysSdmPeripheralPinDependencyConfig!]'
- Field 'SysSdmPeripheralInstance.modes' changed type from '[SysSdmPeripheralMode!]!' to '[SysSdmPeripheralMode!]'
- Field 'SysSdmPeripheralMode.configurations' changed type from '[SysSdmPeripheralConfiguration!]!' to '[SysSdmPeripheralConfiguration!]'
- Field 'quantity' was removed from object type 'SysSdmPort'
- Field 'SysSdmPort.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmPort.parameters' changed type from '[SysSdmParameter!]!' to '[SysSdmParameter!]'
- Field 'SysSdmPort.portType' changed type from 'SysSdmPortType' to 'String'
- Field 'SysSdmSoftwareComponent.dependencyIds' changed type from '[String!]!' to '[String!]'
- Field 'SysSdmSoftwareComponent.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmSoftwareComponent.parameters' changed type from '[SysSdmParameter!]!' to '[SysSdmParameter!]'
- Field 'SysSdmSoftwareModel.metadata' changed type from '[SysSdmClientMetadata!]!' to '[SysSdmClientMetadata!]'
- Field 'SysSdmSoftwareModel.softwareComponents' changed type from '[SysSdmSoftwareComponent!]!' to '[SysSdmSoftwareComponent!]'
- Field 'SysSdmSystemModel.versions' changed type from '[SysSdmSystemModelVersion!]!' to '[SysSdmSystemModelVersion!]'
- Field 'SysSdmSystemModelVersion.deviceModels' changed type from '[SysSdmDeviceModel!]!' to '[SysSdmDeviceModel!]'
- Field 'SysSdmSystemModelVersion.hardwareModels' changed type from '[SysSdmHardwareModel!]!' to '[SysSdmHardwareModel!]'
- Field 'SysSdmSystemModelVersion.softwareModels' changed type from '[SysSdmSoftwareModel!]!' to '[SysSdmSoftwareModel!]'


---

## ⚠️ Dangerous Changes (1)

### Renesas (preview)

#### Arguments

- Argument 'includeBoardFixedPorts: Boolean!' (with default value) added to 'DmDeviceModelAsConfigured.devicePorts'


---

## ✅ Non-Breaking Changes (26)

### Renesas (preview)

#### Types

- Type 'DmDeviceBoard' was added
- Object type 'DmDeviceBoard' has description '**Experimental** Represents an available device board for a specific device model.'
- Type 'DmModelEvaluationStrategy' was added
- Enum value 'DEVICES_ONLY' was added to enum 'DmModelEvaluationStrategy'
- Enum value 'DEVICES_PREFER_BOARD_COMPATIBLE' was added to enum 'DmModelEvaluationStrategy'
- Object type 'DmModelEvaluationStrategy' has description '**Experimental** Controls how device models are evaluated with respect to devices and boards, including preferred and fallback behaviors.'

#### Fields

- Field 'isCompatible' was added to object type 'DmDeviceBoard'
- Field 'name' was added to object type 'DmDeviceBoard'
- Field 'board' was added to object type 'DmDeviceModelAsConfigured'
- Field 'isUserAssignable' was added to object type 'DmPort'
- Field 'boardName' was added to object type 'DmResolverResult'

#### Input / Payload

- Input field 'evaluationStrategy' of type 'DmModelEvaluationStrategy' was added to input object type 'DmExecuteDeviceEvaluationInput'

### System Design

#### 🔍 Query

- Field 'sysLibSoftwareComponentById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sysLibSoftwareComponentById'
- Field 'sysLibSoftwareComponents' was added to object type 'Query'

#### Types

- Type 'SysLibSoftwareComponent' was added
- Object type 'SysLibSoftwareComponent' has description '**Experimental**'
- Type 'SysLibSoftwareComponentSpecification' was added
- Object type 'SysLibSoftwareComponentSpecification' has description '**Experimental**'

#### Fields

- Field 'category' was added to object type 'SysLibSoftwareComponent'
- Field 'id' was added to object type 'SysLibSoftwareComponent'
- Field 'name' was added to object type 'SysLibSoftwareComponent'
- Field 'specifications' was added to object type 'SysLibSoftwareComponent'
- Field 'ecosystem' was added to object type 'SysLibSoftwareComponentSpecification'
- Field 'name' was added to object type 'SysLibSoftwareComponentSpecification'
- Field 'vendor' was added to object type 'SysLibSoftwareComponentSpecification'


