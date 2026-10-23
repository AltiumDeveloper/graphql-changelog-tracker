# gateway-changelog-24-Feb-2026

## ⚠️ Dangerous Changes (2)

### Platform

#### 🔍 Query

- Argument 'order: SolSolutionSortInput' added to 'Query.solSolutionsByPagev2'
- Argument 'where: SolSolutionFilterInput' added to 'Query.solSolutionsByPagev2'


---

## ✅ Non-Breaking Changes (166)

### Platform

#### Types

- Type 'SolSolutionFilterInput' was added
- Object type 'SolSolutionFilterInput' has description 'A filter input type for querying solutions. This class is used to specify filtering criteria when retrieving solutions.'
- Type 'SolSolutionSortInput' was added
- Object type 'SolSolutionSortInput' has description 'A sorting input type for querying solutions. This class is used to specify sorting criteria when retrieving solutions, allowing clients to sort results by modified date or name in ascending or descending order.
Only one sorting criterion can be applied at a time. If both are provided, the API will prioritize one of them.'

#### Input / Payload

- Input field 'name' of type 'String' was added to input object type 'SolSolutionFilterInput'
- Input field 'modifiedAt' of type 'SortEnumType' was added to input object type 'SolSolutionSortInput'
- Input field 'name' of type 'SortEnumType' was added to input object type 'SolSolutionSortInput'

### System Design

#### Types

- Type 'SysSdmClientMetadata' was added
- Object type 'SysSdmClientMetadata' has description '**Experimental**'
- Type 'SysSdmConnection' was added
- Object type 'SysSdmConnection' has description '**Experimental**'
- Type 'SysSdmDeviceModel' was added
- Object type 'SysSdmDeviceModel' has description '**Experimental**'
- Type 'SysSdmEndpoint' was added
- Object type 'SysSdmEndpoint' has description '**Experimental**'
- Type 'SysSdmFunctionalBlock' was added
- Object type 'SysSdmFunctionalBlock' has description '**Experimental**'
- Type 'SysSdmFunctionalModel' was added
- Object type 'SysSdmFunctionalModel' has description '**Experimental**'
- Type 'SysSdmHardwareComponent' was added
- Object type 'SysSdmHardwareComponent' has description '**Experimental**'
- Type 'SysSdmHardwareModel' was added
- Object type 'SysSdmHardwareModel' has description '**Experimental**'
- Type 'SysSdmParameter' was added
- Object type 'SysSdmParameter' has description '**Experimental**'
- Type 'SysSdmPeripheral' was added
- Object type 'SysSdmPeripheral' has description '**Experimental**'
- Type 'SysSdmPeripheralConfiguration' was added
- Object type 'SysSdmPeripheralConfiguration' has description '**Experimental**'
- Type 'SysSdmPeripheralInstance' was added
- Object type 'SysSdmPeripheralInstance' has description '**Experimental**'
- Type 'SysSdmPeripheralMode' was added
- Object type 'SysSdmPeripheralMode' has description '**Experimental**'
- Type 'SysSdmPeripheralParameter' was added
- Object type 'SysSdmPeripheralParameter' has description '**Experimental**'
- Type 'SysSdmPeripheralPinConfig' was added
- Object type 'SysSdmPeripheralPinConfig' has description '**Experimental**'
- Type 'SysSdmPeripheralPinDependencyConfig' was added
- Object type 'SysSdmPeripheralPinDependencyConfig' has description '**Experimental**'
- Type 'SysSdmPort' was added
- Object type 'SysSdmPort' has description '**Experimental**'
- Type 'SysSdmSoftwareComponent' was added
- Object type 'SysSdmSoftwareComponent' has description '**Experimental**'
- Type 'SysSdmSoftwareModel' was added
- Object type 'SysSdmSoftwareModel' has description '**Experimental**'
- Type 'SysSdmSoftwareSpecification' was added
- Object type 'SysSdmSoftwareSpecification' has description '**Experimental**'
- Type 'SysSdmPortType' was added
- Enum value 'ADC' was added to enum 'SysSdmPortType'
- Enum value 'AUDIO' was added to enum 'SysSdmPortType'
- Enum value 'CAMERA' was added to enum 'SysSdmPortType'
- Enum value 'CAN' was added to enum 'SysSdmPortType'
- Enum value 'CD_MMC' was added to enum 'SysSdmPortType'
- Enum value 'DAC' was added to enum 'SysSdmPortType'
- Enum value 'DISPLAY' was added to enum 'SysSdmPortType'
- Enum value 'ETHERNET' was added to enum 'SysSdmPortType'
- Enum value 'GPIO' was added to enum 'SysSdmPortType'
- Enum value 'I2C' was added to enum 'SysSdmPortType'
- Enum value 'IRQ' was added to enum 'SysSdmPortType'
- Enum value 'POWER_MCU' was added to enum 'SysSdmPortType'
- Enum value 'PWM' was added to enum 'SysSdmPortType'
- Enum value 'SPI' was added to enum 'SysSdmPortType'
- Enum value 'UART' was added to enum 'SysSdmPortType'
- Enum value 'USB' was added to enum 'SysSdmPortType'
- Object type 'SysSdmPortType' has description '**Experimental**'
- Type 'SysSdmSoftwareComponentCategory' was added
- Enum value 'APPLICATION' was added to enum 'SysSdmSoftwareComponentCategory'
- Enum value 'DRIVER' was added to enum 'SysSdmSoftwareComponentCategory'
- Enum value 'LIBRARY' was added to enum 'SysSdmSoftwareComponentCategory'
- Enum value 'MIDDLEWARE' was added to enum 'SysSdmSoftwareComponentCategory'
- Enum value 'OPERATING_SYSTEM' was added to enum 'SysSdmSoftwareComponentCategory'
- Object type 'SysSdmSoftwareComponentCategory' has description '**Experimental**'

#### Fields

- Field 'clientId' was added to object type 'SysSdmClientMetadata'
- Field 'parameters' was added to object type 'SysSdmClientMetadata'
- Field 'endpoints' was added to object type 'SysSdmConnection'
- Field 'id' was added to object type 'SysSdmConnection'
- Field 'metadata' was added to object type 'SysSdmConnection'
- Field 'name' was added to object type 'SysSdmConnection'
- Field 'parameters' was added to object type 'SysSdmConnection'
- Field 'id' was added to object type 'SysSdmDeviceModel'
- Field 'metadata' was added to object type 'SysSdmDeviceModel'
- Field 'mpn' was added to object type 'SysSdmDeviceModel'
- Field 'peripherals' was added to object type 'SysSdmDeviceModel'
- Field 'ports' was added to object type 'SysSdmDeviceModel'
- Field 'functionalBlockId' was added to object type 'SysSdmEndpoint'
- Field 'portId' was added to object type 'SysSdmEndpoint'
- Field 'hardwareComponentIds' was added to object type 'SysSdmFunctionalBlock'
- Field 'id' was added to object type 'SysSdmFunctionalBlock'
- Field 'metadata' was added to object type 'SysSdmFunctionalBlock'
- Field 'name' was added to object type 'SysSdmFunctionalBlock'
- Field 'parameters' was added to object type 'SysSdmFunctionalBlock'
- Field 'ports' was added to object type 'SysSdmFunctionalBlock'
- Field 'connections' was added to object type 'SysSdmFunctionalModel'
- Field 'functionalBlocks' was added to object type 'SysSdmFunctionalModel'
- Field 'id' was added to object type 'SysSdmFunctionalModel'
- Field 'implementedBy' was added to object type 'SysSdmFunctionalModel'
- Field 'metadata' was added to object type 'SysSdmFunctionalModel'
- Field 'name' was added to object type 'SysSdmFunctionalModel'
- Field 'deviceModelId' was added to object type 'SysSdmHardwareComponent'
- Field 'id' was added to object type 'SysSdmHardwareComponent'
- Field 'metadata' was added to object type 'SysSdmHardwareComponent'
- Field 'name' was added to object type 'SysSdmHardwareComponent'
- Field 'parameters' was added to object type 'SysSdmHardwareComponent'
- Field 'functionalBlockIds' was added to object type 'SysSdmHardwareModel'
- Field 'hardwareComponents' was added to object type 'SysSdmHardwareModel'
- Field 'id' was added to object type 'SysSdmHardwareModel'
- Field 'implementedBy' was added to object type 'SysSdmHardwareModel'
- Field 'metadata' was added to object type 'SysSdmHardwareModel'
- Field 'name' was added to object type 'SysSdmHardwareModel'
- Field 'id' was added to object type 'SysSdmParameter'
- Field 'name' was added to object type 'SysSdmParameter'
- Field 'value' was added to object type 'SysSdmParameter'
- Field 'id' was added to object type 'SysSdmPeripheral'
- Field 'instances' was added to object type 'SysSdmPeripheral'
- Field 'name' was added to object type 'SysSdmPeripheral'
- Field 'id' was added to object type 'SysSdmPeripheralConfiguration'
- Field 'parameters' was added to object type 'SysSdmPeripheralConfiguration'
- Field 'pinConfigs' was added to object type 'SysSdmPeripheralConfiguration'
- Field 'pinDependencyConfigs' was added to object type 'SysSdmPeripheralConfiguration'
- Field 'id' was added to object type 'SysSdmPeripheralInstance'
- Field 'modes' was added to object type 'SysSdmPeripheralInstance'
- Field 'name' was added to object type 'SysSdmPeripheralInstance'
- Field 'unit' was added to object type 'SysSdmPeripheralInstance'
- Field 'configurations' was added to object type 'SysSdmPeripheralMode'
- Field 'name' was added to object type 'SysSdmPeripheralMode'
- Field 'name' was added to object type 'SysSdmPeripheralParameter'
- Field 'value' was added to object type 'SysSdmPeripheralParameter'
- Field 'function' was added to object type 'SysSdmPeripheralPinConfig'
- Field 'pinName' was added to object type 'SysSdmPeripheralPinConfig'
- Field 'pinValue' was added to object type 'SysSdmPeripheralPinConfig'
- Field 'port' was added to object type 'SysSdmPeripheralPinConfig'
- Field 'portName' was added to object type 'SysSdmPeripheralPinConfig'
- Field 'name' was added to object type 'SysSdmPeripheralPinDependencyConfig'
- Field 'value' was added to object type 'SysSdmPeripheralPinDependencyConfig'
- Field 'hardwareComponentId' was added to object type 'SysSdmPort'
- Field 'id' was added to object type 'SysSdmPort'
- Field 'metadata' was added to object type 'SysSdmPort'
- Field 'name' was added to object type 'SysSdmPort'
- Field 'parameters' was added to object type 'SysSdmPort'
- Field 'peripheralInstanceId' was added to object type 'SysSdmPort'
- Field 'portType' was added to object type 'SysSdmPort'
- Field 'quantity' was added to object type 'SysSdmPort'
- Field 'softwareComponentId' was added to object type 'SysSdmPort'
- Field 'dependencyIds' was added to object type 'SysSdmSoftwareComponent'
- Field 'id' was added to object type 'SysSdmSoftwareComponent'
- Field 'metadata' was added to object type 'SysSdmSoftwareComponent'
- Field 'name' was added to object type 'SysSdmSoftwareComponent'
- Field 'parameters' was added to object type 'SysSdmSoftwareComponent'
- Field 'peripheralInstanceId' was added to object type 'SysSdmSoftwareComponent'
- Field 'specification' was added to object type 'SysSdmSoftwareComponent'
- Field 'deviceModelId' was added to object type 'SysSdmSoftwareModel'
- Field 'id' was added to object type 'SysSdmSoftwareModel'
- Field 'implementedBy' was added to object type 'SysSdmSoftwareModel'
- Field 'metadata' was added to object type 'SysSdmSoftwareModel'
- Field 'name' was added to object type 'SysSdmSoftwareModel'
- Field 'softwareComponents' was added to object type 'SysSdmSoftwareModel'
- Field 'category' was added to object type 'SysSdmSoftwareSpecification'
- Field 'ecosystem' was added to object type 'SysSdmSoftwareSpecification'
- Field 'name' was added to object type 'SysSdmSoftwareSpecification'
- Field 'vendor' was added to object type 'SysSdmSoftwareSpecification'
- Field 'version' was added to object type 'SysSdmSoftwareSpecification'
- Field 'versions' was added to object type 'SysSdmSystemModel'
- Field 'deviceModels' was added to object type 'SysSdmSystemModelVersion'
- Field 'functionalModel' was added to object type 'SysSdmSystemModelVersion'
- Field 'hardwareModels' was added to object type 'SysSdmSystemModelVersion'
- Field 'softwareModels' was added to object type 'SysSdmSystemModelVersion'


