# gateway-changelog-14-Nov-2025

## ⚠️ Dangerous Changes (1)

### Design

#### Arguments

- Argument 'where: DesFolderFilterInput' added to 'DesLibrary.folders'


---

## ✅ Non-Breaking Changes (226)

### Common

#### Directives

- Location 'INPUT_OBJECT' was added to directive 'experimental'

### Design

#### Types

- Type 'DesFolderFilterMatchMode' was added
- Enum value 'AND' was added to enum 'DesFolderFilterMatchMode'
- Enum value 'OR' was added to enum 'DesFolderFilterMatchMode'
- Type 'DesFolderFilterInput' was added

#### Input / Payload

- Input field 'folderType' of type 'DesFolderType' was added to input object type 'DesFolderFilterInput'
- Input field 'matchMode' of type 'DesFolderFilterMatchMode' was added to input object type 'DesFolderFilterInput'
- Input field 'name' of type 'String' was added to input object type 'DesFolderFilterInput'
- Input field 'parentFolderGuid' of type 'String' was added to input object type 'DesFolderFilterInput'

### Renesas (preview)

#### 🔍 Query

- Field 'dmConfiguredDeviceModel' was added to object type 'Query'
- Argument 'deviceMpn: String!' added to 'Query.dmConfiguredDeviceModel'
- Argument 'sessionId: String!' added to 'Query.dmConfiguredDeviceModel'
- Field 'dmConfiguredDeviceModelAllDevices' was added to object type 'Query'
- Argument 'sessionId: String!' added to 'Query.dmConfiguredDeviceModelAllDevices'
- Field 'dmFamilyPartModel' was added to object type 'Query'
- Field 'dmFullStackDeviceModel' was added to object type 'Query'
- Argument 'deviceMpn: String!' added to 'Query.dmFullStackDeviceModel'
- Field 'dmFullStackDeviceModelAllDevices' was added to object type 'Query'
- Field 'dmFullStackDeviceModelReport' was added to object type 'Query'
- Argument 'deviceMpn: String!' added to 'Query.dmFullStackDeviceModelReport'
- Field 'dmFullStackDeviceModelReportAllDevices' was added to object type 'Query'

#### ✏️ Mutation

- Field 'dmExecuteDeviceEvaluation' was added to object type 'Mutation'
- Argument 'input: DmExecuteDeviceEvaluationInput!' added to 'Mutation.dmExecuteDeviceEvaluation'

#### Types

- Type 'DmDeviceModelAsConfigured' was added
- Object type 'DmDeviceModelAsConfigured' has description 'GraphQL type that exposes the device model as configured, typically after user or tool selections.'
- Type 'DmDeviceToPeripheralOptionsModel' was added
- Object type 'DmDeviceToPeripheralOptionsModel' has description 'Options describing how device interfaces map onto physical peripherals.'
- Type 'DmExecuteDeviceEvaluationPayload' was added
- Type 'DmFamilyPart' was added
- Object type 'DmFamilyPart' has description 'Represents a single device family part variant.'
- Type 'DmFamilyPartModel' was added
- Object type 'DmFamilyPartModel' has description 'Root GraphQL type exposing the collection of device family part definitions.'
- Type 'DmFspModule' was added
- Object type 'DmFspModule' has description 'Firmware Support Package (FSP) module that represents a device interface, including its requirements and provided interfaces.'
- Type 'DmFspProvides' was added
- Object type 'DmFspProvides' has description 'Represents an interface provided by an FSP module.'
- Type 'DmFspRequires' was added
- Object type 'DmFspRequires' has description 'Represents an interface requirement of an FSP module.'
- Type 'DmFullStackDeviceModel' was added
- Object type 'DmFullStackDeviceModel' has description 'Root GraphQL type that exposes the full device model, including interfaces, peripherals, and ports.'
- Type 'DmFullStackModelReport' was added
- Type 'DmInstanceSelection' was added
- Object type 'DmInstanceSelection' has description 'Selected instance details and its pin assignments.'
- Type 'DmModePinConfig' was added
- Object type 'DmModePinConfig' has description 'Pin function to port mapping entry within an operation mode.'
- Type 'DmOpMode' was added
- Object type 'DmOpMode' has description 'Concrete operation mode configuration containing pin function assignments.'
- Type 'DmPeripheral' was added
- Object type 'DmPeripheral' has description 'A single peripheral definition, including its instances and properties.'
- Type 'DmPeripheralInstance' was added
- Object type 'DmPeripheralInstance' has description 'A concrete instance of a peripheral (e.g., SCI0), including available modes.'
- Type 'DmPeripheralMode' was added
- Object type 'DmPeripheralMode' has description 'An operational mode for a peripheral instance that groups one or more operation mode configurations.'
- Type 'DmPeripheralModel' was added
- Object type 'DmPeripheralModel' has description 'Peripheral model for the device, including all available peripherals.'
- Type 'DmPeripheralPortCoverageItem' was added
- Type 'DmPeripheralPortCoverageReport' was added
- Type 'DmPeripheralProperty' was added
- Object type 'DmPeripheralProperty' has description 'Peripheral property or metadata entry.'
- Type 'DmPinAssignment' was added
- Object type 'DmPinAssignment' has description 'Pin mapping entry from function name to a concrete port.'
- Type 'DmPort' was added
- Object type 'DmPort' has description 'A single device port with its functions, configurations, and connections.'
- Type 'DmPortConfiguration' was added
- Object type 'DmPortConfiguration' has description 'A configuration option for a port (display-only in this schema).'
- Type 'DmPortConnection' was added
- Object type 'DmPortConnection' has description 'A connection associated with a port (display-only in this schema).'
- Type 'DmPortFunction' was added
- Object type 'DmPortFunction' has description 'A function that a port can perform (display-only in this schema).'
- Type 'DmPortModel' was added
- Object type 'DmPortModel' has description 'Port model describing all device ports and their details.'
- Type 'DmRaPartNumberModel' was added
- Object type 'DmRaPartNumberModel' has description 'RA part number details parsed into structured properties.'
- Type 'DmRequestedPeripheral' was added
- Object type 'DmRequestedPeripheral' has description 'Requested peripheral entry with its required count.'
- Type 'DmRequiresProvidesMapping' was added
- Object type 'DmRequiresProvidesMapping' has description 'Mapping of a single required interface to the interface that provides it.'
- Type 'DmRequiresProvidesResolution' was added
- Object type 'DmRequiresProvidesResolution' has description 'Resolution details mapping FSP module requirements to provided interfaces.'
- Type 'DmResolverResult' was added
- Object type 'DmResolverResult' has description 'Resolver outcome and details for a single device.'
- Type 'DmResolverSummary' was added
- Object type 'DmResolverSummary' has description 'Summary of all resolver runs including per-device results.'
- Type 'DmSoftwareToDeviceOptionsModel' was added
- Object type 'DmSoftwareToDeviceOptionsModel' has description 'Options describing how software requirements map onto device interfaces.'
- Type 'DmTemperatureRange' was added
- Object type 'DmTemperatureRange' has description 'Operating temperature range with units and measurement reference.'
- Type 'DmExecuteDeviceEvaluationInput' was added
- Type 'DmRequiredPeripheralPayloadInput' was added

#### Fields

- Field 'deviceMpn' was added to object type 'DmDeviceModelAsConfigured'
- Field 'devicePeripherals' was added to object type 'DmDeviceModelAsConfigured'
- Field 'devicePorts' was added to object type 'DmDeviceModelAsConfigured'
- Field 'familyPart' was added to object type 'DmDeviceModelAsConfigured'
- Field 'deviceToPeripheralElements' was added to object type 'DmDeviceToPeripheralOptionsModel'
- Field 'dmResolverSummary' was added to object type 'DmExecuteDeviceEvaluationPayload'
- Field 'concrete' was added to object type 'DmFamilyPart'
- Field 'description' was added to object type 'DmFamilyPart'
- Field 'display' was added to object type 'DmFamilyPart'
- Field 'friendlyPartialMpn' was added to object type 'DmFamilyPart'
- Field 'level' was added to object type 'DmFamilyPart'
- Field 'manufacturer' was added to object type 'DmFamilyPart'
- Field 'partialMpn' was added to object type 'DmFamilyPart'
- Field 'raPartDetails' was added to object type 'DmFamilyPart'
- Field 'familyParts' was added to object type 'DmFamilyPartModel'
- Field 'category' was added to object type 'DmFspModule'
- Field 'id' was added to object type 'DmFspModule'
- Field 'name' was added to object type 'DmFspModule'
- Field 'provides' was added to object type 'DmFspModule'
- Field 'requires' was added to object type 'DmFspModule'
- Field 'external' was added to object type 'DmFspProvides'
- Field 'instances' was added to object type 'DmFspProvides'
- Field 'interface' was added to object type 'DmFspProvides'
- Field 'interfaceBase' was added to object type 'DmFspProvides'
- Field 'id' was added to object type 'DmFspRequires'
- Field 'deviceInterfaces' was added to object type 'DmFullStackDeviceModel'
- Field 'deviceMpn' was added to object type 'DmFullStackDeviceModel'
- Field 'devicePeripherals' was added to object type 'DmFullStackDeviceModel'
- Field 'devicePorts' was added to object type 'DmFullStackDeviceModel'
- Field 'deviceToPeripheralOptions' was added to object type 'DmFullStackDeviceModel'
- Field 'familyPart' was added to object type 'DmFullStackDeviceModel'
- Field 'softwareToDeviceOptions' was added to object type 'DmFullStackDeviceModel'
- Field 'deviceMpn' was added to object type 'DmFullStackModelReport'
- Field 'reports' was added to object type 'DmFullStackModelReport'
- Field 'groupName' was added to object type 'DmInstanceSelection'
- Field 'instanceName' was added to object type 'DmInstanceSelection'
- Field 'modeName' was added to object type 'DmInstanceSelection'
- Field 'pins' was added to object type 'DmInstanceSelection'
- Field 'display' was added to object type 'DmModePinConfig'
- Field 'pinFunction' was added to object type 'DmModePinConfig'
- Field 'portName' was added to object type 'DmModePinConfig'
- Field 'connectionSetRefId' was added to object type 'DmOpMode'
- Field 'display' was added to object type 'DmOpMode'
- Field 'id' was added to object type 'DmOpMode'
- Field 'modePinConfigs' was added to object type 'DmOpMode'
- Field 'pinSummary' was added to object type 'DmOpMode'
- Field 'id' was added to object type 'DmPeripheral'
- Field 'name' was added to object type 'DmPeripheral'
- Field 'peripheralInstances' was added to object type 'DmPeripheral'
- Field 'peripheralProperties' was added to object type 'DmPeripheral'
- Field 'id' was added to object type 'DmPeripheralInstance'
- Field 'modes' was added to object type 'DmPeripheralInstance'
- Field 'name' was added to object type 'DmPeripheralInstance'
- Field 'display' was added to object type 'DmPeripheralMode'
- Field 'name' was added to object type 'DmPeripheralMode'
- Field 'opModes' was added to object type 'DmPeripheralMode'
- Field 'peripherals' was added to object type 'DmPeripheralModel'
- Field 'functionName' was added to object type 'DmPeripheralPortCoverageItem'
- Field 'modeName' was added to object type 'DmPeripheralPortCoverageItem'
- Field 'opModeId' was added to object type 'DmPeripheralPortCoverageItem'
- Field 'peripheralInstanceName' was added to object type 'DmPeripheralPortCoverageItem'
- Field 'peripheralName' was added to object type 'DmPeripheralPortCoverageItem'
- Field 'portName' was added to object type 'DmPeripheralPortCoverageItem'
- Field 'coveragePercent' was added to object type 'DmPeripheralPortCoverageReport'
- Field 'covered' was added to object type 'DmPeripheralPortCoverageReport'
- Field 'notCovered' was added to object type 'DmPeripheralPortCoverageReport'
- Field 'peripheralName' was added to object type 'DmPeripheralPortCoverageReport'
- Field 'total' was added to object type 'DmPeripheralPortCoverageReport'
- Field 'display' was added to object type 'DmPeripheralProperty'
- Field 'display' was added to object type 'DmPinAssignment'
- Field 'functionName' was added to object type 'DmPinAssignment'
- Field 'portName' was added to object type 'DmPinAssignment'
- Field 'comment' was added to object type 'DmPort'
- Field 'configurations' was added to object type 'DmPort'
- Field 'connections' was added to object type 'DmPort'
- Field 'functions' was added to object type 'DmPort'
- Field 'id' was added to object type 'DmPort'
- Field 'name' was added to object type 'DmPort'
- Field 'symbolicName' was added to object type 'DmPort'
- Field 'display' was added to object type 'DmPortConfiguration'
- Field 'display' was added to object type 'DmPortConnection'
- Field 'display' was added to object type 'DmPortFunction'
- Field 'ports' was added to object type 'DmPortModel'
- Field 'application' was added to object type 'DmRaPartNumberModel'
- Field 'device' was added to object type 'DmRaPartNumberModel'
- Field 'display' was added to object type 'DmRaPartNumberModel'
- Field 'family' was added to object type 'DmRaPartNumberModel'
- Field 'featureSet' was added to object type 'DmRaPartNumberModel'
- Field 'flashMemorySizeKB' was added to object type 'DmRaPartNumberModel'
- Field 'groupNumber' was added to object type 'DmRaPartNumberModel'
- Field 'package' was added to object type 'DmRaPartNumberModel'
- Field 'packing' was added to object type 'DmRaPartNumberModel'
- Field 'partNumber' was added to object type 'DmRaPartNumberModel'
- Field 'performance' was added to object type 'DmRaPartNumberModel'
- Field 'pinCount' was added to object type 'DmRaPartNumberModel'
- Field 'pitchMm' was added to object type 'DmRaPartNumberModel'
- Field 'qualityGrade' was added to object type 'DmRaPartNumberModel'
- Field 'romCode' was added to object type 'DmRaPartNumberModel'
- Field 'temperatureRange' was added to object type 'DmRaPartNumberModel'
- Field 'xMm' was added to object type 'DmRaPartNumberModel'
- Field 'yMm' was added to object type 'DmRaPartNumberModel'
- Field 'count' was added to object type 'DmRequestedPeripheral'
- Field 'name' was added to object type 'DmRequestedPeripheral'
- Field 'provides' was added to object type 'DmRequiresProvidesMapping'
- Field 'requires' was added to object type 'DmRequiresProvidesMapping'
- Field 'requiresModule' was added to object type 'DmRequiresProvidesResolution'
- Field 'requiresToProvidesMapping' was added to object type 'DmRequiresProvidesResolution'
- Field 'completedAt' was added to object type 'DmResolverResult'
- Field 'completedOpModeGroups' was added to object type 'DmResolverResult'
- Field 'configuredModel' was added to object type 'DmResolverResult'
- Field 'deviceFamily' was added to object type 'DmResolverResult'
- Field 'deviceMpn' was added to object type 'DmResolverResult'
- Field 'durationSeconds' was added to object type 'DmResolverResult'
- Field 'errors' was added to object type 'DmResolverResult'
- Field 'isFeasible' was added to object type 'DmResolverResult'
- Field 'isOptimal' was added to object type 'DmResolverResult'
- Field 'logs' was added to object type 'DmResolverResult'
- Field 'objectiveValue' was added to object type 'DmResolverResult'
- Field 'requestedPeripherals' was added to object type 'DmResolverResult'
- Field 'requestedTotalCount' was added to object type 'DmResolverResult'
- Field 'selections' was added to object type 'DmResolverResult'
- Field 'solverStatus' was added to object type 'DmResolverResult'
- Field 'startedAt' was added to object type 'DmResolverResult'
- Field 'wallTimeSeconds' was added to object type 'DmResolverResult'
- Field 'warnings' was added to object type 'DmResolverResult'
- Field 'percentResolvedSuccess' was added to object type 'DmResolverSummary'
- Field 'results' was added to object type 'DmResolverSummary'
- Field 'softwareToDeviceElements' was added to object type 'DmSoftwareToDeviceOptionsModel'
- Field 'display' was added to object type 'DmTemperatureRange'
- Field 'max' was added to object type 'DmTemperatureRange'
- Field 'min' was added to object type 'DmTemperatureRange'
- Field 'tempType' was added to object type 'DmTemperatureRange'

#### Input / Payload

- Input field 'optionalDeviceMpn' of type 'String' was added to input object type 'DmExecuteDeviceEvaluationInput'
- Input field 'payload' of type '[DmRequiredPeripheralPayloadInput!]!' was added to input object type 'DmExecuteDeviceEvaluationInput'
- Input field 'sessionId' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationInput'
- Input field 'name' of type 'String!' was added to input object type 'DmRequiredPeripheralPayloadInput'
- Input field 'quantity' of type 'Int!' was added to input object type 'DmRequiredPeripheralPayloadInput'


