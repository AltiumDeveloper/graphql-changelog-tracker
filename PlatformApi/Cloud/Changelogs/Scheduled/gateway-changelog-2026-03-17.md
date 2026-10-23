# gateway-changelog-17-Mar-2026

## 🔴 Breaking Changes (9)

### System Design

#### Types

- Type 'SysSdmPeripheralConfiguration' was removed
- Type 'SysSdmPeripheralInstance' was removed
- Type 'SysSdmPeripheralMode' was removed
- Type 'SysSdmPeripheralParameter' was removed
- Type 'SysSdmPeripheralPinConfig' was removed
- Type 'SysSdmPeripheralPinDependencyConfig' was removed

#### Fields

- Field 'SysSdmDeviceModel.ports' changed type from '[SysSdmPort!]' to '[SysSdmDmPort!]'
- Field 'SysSdmPeripheral.instances' changed type from '[SysSdmPeripheralInstance!]' to '[SysSdmDmPeripheralInstance!]'
- Field 'SysSdmSystemModelVersion.name' changed type from 'String!' to 'String'


---

## ✅ Non-Breaking Changes (85)

### Design

#### Types

- Type 'DesManufacturerPartParameter' was added
- Object type 'DesManufacturerPartParameter' has description 'Parameter describing a manufacturer part.'

#### Fields

- Field 'name' was added to object type 'DesManufacturerPartParameter'
- Field 'unit' was added to object type 'DesManufacturerPartParameter'
- Field 'value' was added to object type 'DesManufacturerPartParameter'
- Field 'parameters' was added to object type 'DesManufacturerPart'

### Platform

#### Fields

- Field 'isActive' was added to object type 'DesWorkspaceUser'

### System Design

#### Types

- Type 'SysSdmDmPeripheralConfiguration' was added
- Object type 'SysSdmDmPeripheralConfiguration' has description '**Experimental**'
- Type 'SysSdmDmPeripheralInstance' was added
- Object type 'SysSdmDmPeripheralInstance' has description '**Experimental**'
- Type 'SysSdmDmPeripheralMode' was added
- Object type 'SysSdmDmPeripheralMode' has description '**Experimental**'
- Type 'SysSdmDmPeripheralParameter' was added
- Object type 'SysSdmDmPeripheralParameter' has description '**Experimental**'
- Type 'SysSdmDmPeripheralPinConfig' was added
- Object type 'SysSdmDmPeripheralPinConfig' has description '**Experimental**'
- Type 'SysSdmDmPeripheralPinDependencyConfig' was added
- Object type 'SysSdmDmPeripheralPinDependencyConfig' has description '**Experimental**'
- Type 'SysSdmDmPort' was added
- Object type 'SysSdmDmPort' has description '**Experimental**'
- Type 'SysSdmDmPortConfiguration' was added
- Object type 'SysSdmDmPortConfiguration' has description '**Experimental**'
- Type 'SysSdmDmPortConfigurationDependency' was added
- Object type 'SysSdmDmPortConfigurationDependency' has description '**Experimental**'
- Type 'SysSdmDmPortConfigurationEnumValue' was added
- Object type 'SysSdmDmPortConfigurationEnumValue' has description '**Experimental**'
- Type 'SysSdmDmPortConnection' was added
- Object type 'SysSdmDmPortConnection' has description '**Experimental**'
- Type 'SysSdmDmPortFunction' was added
- Object type 'SysSdmDmPortFunction' has description '**Experimental**'
- Type 'SysSdmDmGpioMode' was added
- Enum value 'INPUT' was added to enum 'SysSdmDmGpioMode'
- Enum value 'NONE' was added to enum 'SysSdmDmGpioMode'
- Enum value 'OUTPUT_HIGH' was added to enum 'SysSdmDmGpioMode'
- Enum value 'OUTPUT_LOW' was added to enum 'SysSdmDmGpioMode'
- Object type 'SysSdmDmGpioMode' has description '**Experimental**'
- Type 'SysSdmDmPortMode' was added
- Enum value 'ALTERNATE_FUNCTION' was added to enum 'SysSdmDmPortMode'
- Enum value 'GPIO' was added to enum 'SysSdmDmPortMode'
- Object type 'SysSdmDmPortMode' has description '**Experimental**'

#### Fields

- Field 'id' was added to object type 'SysSdmDmPeripheralConfiguration'
- Field 'parameters' was added to object type 'SysSdmDmPeripheralConfiguration'
- Field 'pinConfigs' was added to object type 'SysSdmDmPeripheralConfiguration'
- Field 'pinDependencyConfigs' was added to object type 'SysSdmDmPeripheralConfiguration'
- Field 'id' was added to object type 'SysSdmDmPeripheralInstance'
- Field 'modes' was added to object type 'SysSdmDmPeripheralInstance'
- Field 'name' was added to object type 'SysSdmDmPeripheralInstance'
- Field 'unit' was added to object type 'SysSdmDmPeripheralInstance'
- Field 'configurations' was added to object type 'SysSdmDmPeripheralMode'
- Field 'name' was added to object type 'SysSdmDmPeripheralMode'
- Field 'name' was added to object type 'SysSdmDmPeripheralParameter'
- Field 'value' was added to object type 'SysSdmDmPeripheralParameter'
- Field 'function' was added to object type 'SysSdmDmPeripheralPinConfig'
- Field 'pinName' was added to object type 'SysSdmDmPeripheralPinConfig'
- Field 'pinValue' was added to object type 'SysSdmDmPeripheralPinConfig'
- Field 'port' was added to object type 'SysSdmDmPeripheralPinConfig'
- Field 'portName' was added to object type 'SysSdmDmPeripheralPinConfig'
- Field 'name' was added to object type 'SysSdmDmPeripheralPinDependencyConfig'
- Field 'value' was added to object type 'SysSdmDmPeripheralPinDependencyConfig'
- Field 'configurations' was added to object type 'SysSdmDmPort'
- Field 'connections' was added to object type 'SysSdmDmPort'
- Field 'description' was added to object type 'SysSdmDmPort'
- Field 'functions' was added to object type 'SysSdmDmPort'
- Field 'id' was added to object type 'SysSdmDmPort'
- Field 'name' was added to object type 'SysSdmDmPort'
- Field 'pin' was added to object type 'SysSdmDmPort'
- Field 'symbolicName' was added to object type 'SysSdmDmPort'
- Field 'enumValues' was added to object type 'SysSdmDmPortConfiguration'
- Field 'id' was added to object type 'SysSdmDmPortConfiguration'
- Field 'name' was added to object type 'SysSdmDmPortConfiguration'
- Field 'altRef' was added to object type 'SysSdmDmPortConfigurationDependency'
- Field 'configRef' was added to object type 'SysSdmDmPortConfigurationDependency'
- Field 'functionName' was added to object type 'SysSdmDmPortConfigurationDependency'
- Field 'gpioMode' was added to object type 'SysSdmDmPortConfigurationDependency'
- Field 'peripheralInstanceName' was added to object type 'SysSdmDmPortConfigurationDependency'
- Field 'port' was added to object type 'SysSdmDmPortConfigurationDependency'
- Field 'portMode' was added to object type 'SysSdmDmPortConfigurationDependency'
- Field 'dependencies' was added to object type 'SysSdmDmPortConfigurationEnumValue'
- Field 'id' was added to object type 'SysSdmDmPortConfigurationEnumValue'
- Field 'name' was added to object type 'SysSdmDmPortConfigurationEnumValue'
- Field 'id' was added to object type 'SysSdmDmPortConnection'
- Field 'name' was added to object type 'SysSdmDmPortConnection'
- Field 'name' was added to object type 'SysSdmDmPortFunction'
- Field 'peripheralInstance' was added to object type 'SysSdmDmPortFunction'


