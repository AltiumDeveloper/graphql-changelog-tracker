# gateway-changelog-01-Dec-2025

## 🔴 Breaking Changes (3)

### Design

#### 🔍 Query

- Field 'desBomById' (deprecated) was removed from object type 'Query'

#### Types

- 'DesBom' object type no longer implements 'Node' interface

#### Fields

- Field 'id' (deprecated) was removed from object type 'DesBom'


---

## ⚠️ Dangerous Changes (1)

### Supply

#### 🔍 Query

- Argument 'filter: SupSolutionTemplateFilterInput' added to 'Query.supSolutionTemplates'


---

## ✅ Non-Breaking Changes (537)

### Common

#### 🔍 Query

- Field 'Query.kgNode' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.kgNode'

#### Types

- Deprecation reason was removed from enum value 'KgRelationSemantic.DERIVES_FROM'
- Deprecation reason was removed from enum value 'KgRelationSemantic.DERIVES_INTO'
- Deprecation reason was removed from enum value 'KgRelationSemantic.HAS_INPUT'
- Deprecation reason was removed from enum value 'KgRelationSemantic.HAS_OUTPUT'
- Deprecation reason was removed from enum value 'KgRelationSemantic.HAS_PART'
- Deprecation reason was removed from enum value 'KgRelationSemantic.INFORMED_BY'
- Deprecation reason was removed from enum value 'KgRelationSemantic.INFORMS'
- Deprecation reason was removed from enum value 'KgRelationSemantic.INPUT_OF'
- Deprecation reason was removed from enum value 'KgRelationSemantic.OUTPUT_OF'
- Deprecation reason was removed from enum value 'KgRelationSemantic.PART_OF'

#### Fields

- Field 'KgAnchorNode.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgAnchorNode.id'
- Field 'KgAnchorNode.relatedNodes' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgAnchorNode.relatedNodes'
- Field 'KgAnchorNode.relations' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgAnchorNode.relations'
- Field 'KgNodeQueries.usedBy' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgNodeQueries.usedBy'
- Field 'KgNodeQueries.uses' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgNodeQueries.uses'
- Field 'KgRelation.object' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgRelation.object'
- Field 'KgRelation.semantic' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgRelation.semantic'
- Field 'KgRelation.subject' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgRelation.subject'
- Field 'KgRelationQueries.all' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgRelationQueries.all'
- Field 'KgNode.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgNode.id'
- Field 'KgNode.relatedNodes' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgNode.relatedNodes'
- Field 'KgNode.relations' is no longer deprecated
- Directive 'deprecated' was removed from field 'KgNode.relations'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.DERIVES_FROM'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.DERIVES_INTO'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.HAS_INPUT'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.HAS_OUTPUT'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.HAS_PART'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.INFORMED_BY'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.INFORMS'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.INPUT_OF'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.OUTPUT_OF'
- Directive 'deprecated' was removed from enum value 'KgRelationSemantic.PART_OF'

### Platform

#### ✏️ Mutation

- Field 'gloAddAppClientSecret' was added to object type 'Mutation'
- Argument 'input: GloAddAppClientSecretInput!' added to 'Mutation.gloAddAppClientSecret'
- Field 'gloRemoveAppClientSecret' was added to object type 'Mutation'
- Argument 'input: GloRemoveAppClientSecretInput!' added to 'Mutation.gloRemoveAppClientSecret'
- Field 'gloRestoreApp' was added to object type 'Mutation'
- Argument 'input: GloRestoreAppInput!' added to 'Mutation.gloRestoreApp'

#### Types

- Type 'GloAddAppClientSecretPayload' was added
- Type 'GloAppClientSecretNotAddedError' was added
- 'GloAppClientSecretNotAddedError' object implements 'Error' interface
- Object type 'GloAppClientSecretNotAddedError' has description 'Error that occurs when attempting to add a client secret to a `GloApp` *OAuth client* but the secret could not be added.'
- Type 'GloAppClientSecretNotRemovedError' was added
- 'GloAppClientSecretNotRemovedError' object implements 'Error' interface
- Object type 'GloAppClientSecretNotRemovedError' has description 'Error that occurs when the *OAuth client* secret was not removed as expected from a `GloApp`.'
- Type 'GloAppOAuthClientNotRestoredError' was added
- 'GloAppOAuthClientNotRestoredError' object implements 'Error' interface
- Object type 'GloAppOAuthClientNotRestoredError' has description 'Error that occurs when an *OAuth client* cannot be restored.'
- Type 'GloRemoveAppClientSecretPayload' was added
- Type 'GloRestoreAppPayload' was added
- Type 'GloAddAppClientSecretError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloAddAppClientSecretError'
- Member 'GloAppMissingOAuthClientError' was added to Union type 'GloAddAppClientSecretError'
- Member 'GloAppDeletedError' was added to Union type 'GloAddAppClientSecretError'
- Member 'GloAppClientSecretNotAddedError' was added to Union type 'GloAddAppClientSecretError'
- Type 'GloRemoveAppClientSecretError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloRemoveAppClientSecretError'
- Member 'GloAppDeletedError' was added to Union type 'GloRemoveAppClientSecretError'
- Member 'GloAppClientSecretNotRemovedError' was added to Union type 'GloRemoveAppClientSecretError'
- Type 'GloRestoreAppError' was added
- Member 'GloAppOAuthClientNotRestoredError' was added to Union type 'GloRestoreAppError'
- Member 'GloAppMissingOAuthClientError' was added to Union type 'GloRestoreAppError'
- Member 'GloAppNotFoundError' was added to Union type 'GloRestoreAppError'
- Member 'GloAppNotDeletedError' was added to Union type 'GloRestoreAppError'
- Type 'GloAddAppClientSecretInput' was added
- Type 'GloRemoveAppClientSecretInput' was added
- Type 'GloRestoreAppInput' was added

#### Fields

- Field 'errors' was added to object type 'GloAddAppClientSecretPayload'
- Field 'gloApp' was added to object type 'GloAddAppClientSecretPayload'
- Field 'message' was added to object type 'GloAppClientSecretNotAddedError'
- Field 'message' was added to object type 'GloAppClientSecretNotRemovedError'
- Field 'message' was added to object type 'GloAppOAuthClientNotRestoredError'
- Field 'errors' was added to object type 'GloRemoveAppClientSecretPayload'
- Field 'gloApp' was added to object type 'GloRemoveAppClientSecretPayload'
- Field 'errors' was added to object type 'GloRestoreAppPayload'
- Field 'gloApp' was added to object type 'GloRestoreAppPayload'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'GloAddAppClientSecretInput'
- Input field 'clientSecret' of type 'String!' was added to input object type 'GloRemoveAppClientSecretInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloRemoveAppClientSecretInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloRestoreAppInput'

### Renesas (preview)

#### 🔍 Query

- Field 'Query.dmConfiguredDeviceModel' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.dmConfiguredDeviceModel'
- Field 'Query.dmConfiguredDeviceModelAllDevices' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.dmConfiguredDeviceModelAllDevices'
- Field 'Query.dmFamilyPartModel' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.dmFamilyPartModel'
- Field 'Query.dmFullStackDeviceModel' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.dmFullStackDeviceModel'
- Field 'Query.dmFullStackDeviceModelAllDevices' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.dmFullStackDeviceModelAllDevices'
- Field 'Query.dmFullStackDeviceModelReport' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.dmFullStackDeviceModelReport'
- Field 'Query.dmFullStackDeviceModelReportAllDevices' is no longer deprecated
- Directive 'deprecated' was removed from field 'Query.dmFullStackDeviceModelReportAllDevices'

#### ✏️ Mutation

- Field 'Mutation.dmExecuteDeviceEvaluation' is no longer deprecated
- Directive 'deprecated' was removed from field 'Mutation.dmExecuteDeviceEvaluation'
- Field 'Mutation.dmExecuteDeviceEvaluationFromConfiguration' is no longer deprecated
- Directive 'deprecated' was removed from field 'Mutation.dmExecuteDeviceEvaluationFromConfiguration'
- Field 'Mutation.dmExecuteDeviceEvaluationFromESD' is no longer deprecated
- Directive 'deprecated' was removed from field 'Mutation.dmExecuteDeviceEvaluationFromESD'
- Field 'Mutation.dmExecuteDeviceEvaluationFromXml' is no longer deprecated
- Directive 'deprecated' was removed from field 'Mutation.dmExecuteDeviceEvaluationFromXml'

#### Fields

- Field 'DmAddressBlock.dataSource' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.dataSource'
- Field 'DmAddressBlock.description' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.description'
- Field 'DmAddressBlock.memories' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.memories'
- Field 'DmAddressBlock.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.name'
- Field 'DmAddressBlock.peripheralInstance' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.peripheralInstance'
- Field 'DmAddressBlock.registers' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.registers'
- Field 'DmAddressBlock.size' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.size'
- Field 'DmAddressBlock.sizeHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.sizeHex'
- Field 'DmAddressBlock.startAddress' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.startAddress'
- Field 'DmAddressBlock.startAddressHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.startAddressHex'
- Field 'DmAddressBlock.type' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.type'
- Field 'DmAddressBlock.upperAddress' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.upperAddress'
- Field 'DmAddressBlock.upperAddressHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressBlock.upperAddressHex'
- Field 'DmAddressMapModel.addressSegments' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressMapModel.addressSegments'
- Field 'DmAddressSegment.blocks' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.blocks'
- Field 'DmAddressSegment.description' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.description'
- Field 'DmAddressSegment.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.name'
- Field 'DmAddressSegment.nameAliases' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.nameAliases'
- Field 'DmAddressSegment.peripherals' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.peripherals'
- Field 'DmAddressSegment.size' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.size'
- Field 'DmAddressSegment.sizeHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.sizeHex'
- Field 'DmAddressSegment.startAddress' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.startAddress'
- Field 'DmAddressSegment.startAddressHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAddressSegment.startAddressHex'
- Field 'DmAmFieldEnum.description' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmFieldEnum.description'
- Field 'DmAmFieldEnum.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmFieldEnum.name'
- Field 'DmAmFieldEnum.value' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmFieldEnum.value'
- Field 'DmAmMemory.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmMemory.name'
- Field 'DmAmMemory.sizeHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmMemory.sizeHex'
- Field 'DmAmMemory.type' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmMemory.type'
- Field 'DmAmRegister.access' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.access'
- Field 'DmAmRegister.addressOffset' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.addressOffset'
- Field 'DmAmRegister.addressOffsetHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.addressOffsetHex'
- Field 'DmAmRegister.description' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.description'
- Field 'DmAmRegister.fields' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.fields'
- Field 'DmAmRegister.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.name'
- Field 'DmAmRegister.resetMask' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.resetMask'
- Field 'DmAmRegister.resetValue' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.resetValue'
- Field 'DmAmRegister.size' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.size'
- Field 'DmAmRegister.sizeHex' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegister.sizeHex'
- Field 'DmAmRegisterField.access' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegisterField.access'
- Field 'DmAmRegisterField.description' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegisterField.description'
- Field 'DmAmRegisterField.enums' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegisterField.enums'
- Field 'DmAmRegisterField.lsb' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegisterField.lsb'
- Field 'DmAmRegisterField.msb' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegisterField.msb'
- Field 'DmAmRegisterField.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmAmRegisterField.name'
- Field 'DmConfigDependency.altRef' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigDependency.altRef'
- Field 'DmConfigDependency.configRef' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigDependency.configRef'
- Field 'DmConfigDependency.functionName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigDependency.functionName'
- Field 'DmConfigDependency.gpioMode' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigDependency.gpioMode'
- Field 'DmConfigDependency.peripheralInstanceName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigDependency.peripheralInstanceName'
- Field 'DmConfigDependency.port' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigDependency.port'
- Field 'DmConfigDependency.portMode' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigDependency.portMode'
- Field 'DmConfigEnumValue.configDependencies' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigEnumValue.configDependencies'
- Field 'DmConfigEnumValue.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigEnumValue.display'
- Field 'DmConfigEnumValue.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigEnumValue.id'
- Field 'DmConfigEnumValue.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmConfigEnumValue.name'
- Field 'DmDependencyPinConfig.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDependencyPinConfig.display'
- Field 'DmDependencyPinConfig.pinDependencyName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDependencyPinConfig.pinDependencyName'
- Field 'DmDependencyPinConfig.pinDependencyValue' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDependencyPinConfig.pinDependencyValue'
- Field 'DmDeviceModelAsConfigured.deviceInterfaces' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDeviceModelAsConfigured.deviceInterfaces'
- Field 'DmDeviceModelAsConfigured.deviceMpn' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDeviceModelAsConfigured.deviceMpn'
- Field 'DmDeviceModelAsConfigured.devicePeripherals' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDeviceModelAsConfigured.devicePeripherals'
- Field 'DmDeviceModelAsConfigured.devicePorts' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDeviceModelAsConfigured.devicePorts'
- Field 'DmDeviceModelAsConfigured.familyPart' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDeviceModelAsConfigured.familyPart'
- Field 'DmDeviceToPeripheralOptionsModel.deviceToPeripheralElements' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmDeviceToPeripheralOptionsModel.deviceToPeripheralElements'
- Field 'DmExecuteDeviceEvaluationFromConfigurationPayload.dmResolverSummary' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmExecuteDeviceEvaluationFromConfigurationPayload.dmResolverSummary'
- Field 'DmExecuteDeviceEvaluationFromESDPayload.dmResolverSummary' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmExecuteDeviceEvaluationFromESDPayload.dmResolverSummary'
- Field 'DmExecuteDeviceEvaluationFromXmlPayload.dmResolverSummary' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmExecuteDeviceEvaluationFromXmlPayload.dmResolverSummary'
- Field 'DmExecuteDeviceEvaluationPayload.dmResolverSummary' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmExecuteDeviceEvaluationPayload.dmResolverSummary'
- Field 'DmFamilyPart.concrete' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.concrete'
- Field 'DmFamilyPart.description' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.description'
- Field 'DmFamilyPart.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.display'
- Field 'DmFamilyPart.friendlyPartialMpn' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.friendlyPartialMpn'
- Field 'DmFamilyPart.level' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.level'
- Field 'DmFamilyPart.manufacturer' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.manufacturer'
- Field 'DmFamilyPart.partialMpn' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.partialMpn'
- Field 'DmFamilyPart.raPartDetails' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPart.raPartDetails'
- Field 'DmFamilyPartModel.familyParts' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFamilyPartModel.familyParts'
- Field 'DmFspModule.category' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspModule.category'
- Field 'DmFspModule.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspModule.id'
- Field 'DmFspModule.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspModule.name'
- Field 'DmFspModule.provides' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspModule.provides'
- Field 'DmFspModule.requires' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspModule.requires'
- Field 'DmFspProvides.external' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspProvides.external'
- Field 'DmFspProvides.instances' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspProvides.instances'
- Field 'DmFspProvides.interface' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspProvides.interface'
- Field 'DmFspProvides.interfaceBase' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspProvides.interfaceBase'
- Field 'DmFspRequires.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFspRequires.id'
- Field 'DmFullStackDeviceModel.deviceAddressMap' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.deviceAddressMap'
- Field 'DmFullStackDeviceModel.deviceInterfaces' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.deviceInterfaces'
- Field 'DmFullStackDeviceModel.deviceMpn' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.deviceMpn'
- Field 'DmFullStackDeviceModel.devicePeripherals' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.devicePeripherals'
- Field 'DmFullStackDeviceModel.devicePorts' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.devicePorts'
- Field 'DmFullStackDeviceModel.deviceToPeripheralOptions' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.deviceToPeripheralOptions'
- Field 'DmFullStackDeviceModel.familyPart' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.familyPart'
- Field 'DmFullStackDeviceModel.softwareToDeviceOptions' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackDeviceModel.softwareToDeviceOptions'
- Field 'DmFullStackModelReport.deviceMpn' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackModelReport.deviceMpn'
- Field 'DmFullStackModelReport.reports' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmFullStackModelReport.reports'
- Field 'DmInstanceSelection.groupName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmInstanceSelection.groupName'
- Field 'DmInstanceSelection.instanceName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmInstanceSelection.instanceName'
- Field 'DmInstanceSelection.modeName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmInstanceSelection.modeName'
- Field 'DmInstanceSelection.pins' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmInstanceSelection.pins'
- Field 'DmModePinConfig.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmModePinConfig.display'
- Field 'DmModePinConfig.pinFunction' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmModePinConfig.pinFunction'
- Field 'DmModePinConfig.port' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmModePinConfig.port'
- Field 'DmModePinConfig.portName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmModePinConfig.portName'
- Field 'DmOpMode.connectionSetRefId' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmOpMode.connectionSetRefId'
- Field 'DmOpMode.dependencyPinConfigs' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmOpMode.dependencyPinConfigs'
- Field 'DmOpMode.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmOpMode.display'
- Field 'DmOpMode.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmOpMode.id'
- Field 'DmOpMode.idConfig' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmOpMode.idConfig'
- Field 'DmOpMode.modePinConfigs' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmOpMode.modePinConfigs'
- Field 'DmOpMode.pinSummary' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmOpMode.pinSummary'
- Field 'DmPeripheral.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheral.id'
- Field 'DmPeripheral.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheral.name'
- Field 'DmPeripheral.peripheralInstances' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheral.peripheralInstances'
- Field 'DmPeripheral.peripheralProperties' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheral.peripheralProperties'
- Field 'DmPeripheralInstance.addressBlocks' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralInstance.addressBlocks'
- Field 'DmPeripheralInstance.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralInstance.id'
- Field 'DmPeripheralInstance.modes' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralInstance.modes'
- Field 'DmPeripheralInstance.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralInstance.name'
- Field 'DmPeripheralMode.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralMode.display'
- Field 'DmPeripheralMode.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralMode.name'
- Field 'DmPeripheralMode.opModes' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralMode.opModes'
- Field 'DmPeripheralModel.peripherals' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralModel.peripherals'
- Field 'DmPeripheralPortCoverageItem.functionName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageItem.functionName'
- Field 'DmPeripheralPortCoverageItem.modeName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageItem.modeName'
- Field 'DmPeripheralPortCoverageItem.opModeId' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageItem.opModeId'
- Field 'DmPeripheralPortCoverageItem.peripheralInstanceName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageItem.peripheralInstanceName'
- Field 'DmPeripheralPortCoverageItem.peripheralName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageItem.peripheralName'
- Field 'DmPeripheralPortCoverageItem.portName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageItem.portName'
- Field 'DmPeripheralPortCoverageReport.coveragePercent' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageReport.coveragePercent'
- Field 'DmPeripheralPortCoverageReport.covered' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageReport.covered'
- Field 'DmPeripheralPortCoverageReport.notCovered' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageReport.notCovered'
- Field 'DmPeripheralPortCoverageReport.peripheralName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageReport.peripheralName'
- Field 'DmPeripheralPortCoverageReport.total' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralPortCoverageReport.total'
- Field 'DmPeripheralProperty.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPeripheralProperty.display'
- Field 'DmPin.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPin.name'
- Field 'DmPinAssignment.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPinAssignment.display'
- Field 'DmPinAssignment.functionName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPinAssignment.functionName'
- Field 'DmPinAssignment.portName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPinAssignment.portName'
- Field 'DmPort.comment' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.comment'
- Field 'DmPort.configurations' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.configurations'
- Field 'DmPort.connections' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.connections'
- Field 'DmPort.functions' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.functions'
- Field 'DmPort.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.id'
- Field 'DmPort.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.name'
- Field 'DmPort.pin' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.pin'
- Field 'DmPort.symbolicName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPort.symbolicName'
- Field 'DmPortConfiguration.enumValues' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortConfiguration.enumValues'
- Field 'DmPortConfiguration.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortConfiguration.id'
- Field 'DmPortConfiguration.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortConfiguration.name'
- Field 'DmPortConnection.id' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortConnection.id'
- Field 'DmPortConnection.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortConnection.name'
- Field 'DmPortFunction.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortFunction.name'
- Field 'DmPortFunction.peripheralInstanceName' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortFunction.peripheralInstanceName'
- Field 'DmPortModel.ports' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmPortModel.ports'
- Field 'DmRaPartNumberModel.application' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.application'
- Field 'DmRaPartNumberModel.device' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.device'
- Field 'DmRaPartNumberModel.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.display'
- Field 'DmRaPartNumberModel.family' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.family'
- Field 'DmRaPartNumberModel.featureSet' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.featureSet'
- Field 'DmRaPartNumberModel.flashMemorySizeKB' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.flashMemorySizeKB'
- Field 'DmRaPartNumberModel.groupNumber' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.groupNumber'
- Field 'DmRaPartNumberModel.package' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.package'
- Field 'DmRaPartNumberModel.packing' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.packing'
- Field 'DmRaPartNumberModel.partNumber' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.partNumber'
- Field 'DmRaPartNumberModel.performance' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.performance'
- Field 'DmRaPartNumberModel.pinCount' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.pinCount'
- Field 'DmRaPartNumberModel.pitchMm' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.pitchMm'
- Field 'DmRaPartNumberModel.qualityGrade' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.qualityGrade'
- Field 'DmRaPartNumberModel.romCode' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.romCode'
- Field 'DmRaPartNumberModel.temperatureRange' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.temperatureRange'
- Field 'DmRaPartNumberModel.xMm' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.xMm'
- Field 'DmRaPartNumberModel.yMm' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRaPartNumberModel.yMm'
- Field 'DmRequestedPeripheral.count' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRequestedPeripheral.count'
- Field 'DmRequestedPeripheral.name' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRequestedPeripheral.name'
- Field 'DmRequiresProvidesMapping.provides' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRequiresProvidesMapping.provides'
- Field 'DmRequiresProvidesMapping.requires' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRequiresProvidesMapping.requires'
- Field 'DmRequiresProvidesResolution.requiresModule' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRequiresProvidesResolution.requiresModule'
- Field 'DmRequiresProvidesResolution.requiresToProvidesMapping' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmRequiresProvidesResolution.requiresToProvidesMapping'
- Field 'DmResolverResult.completedAt' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.completedAt'
- Field 'DmResolverResult.completedOpModeGroups' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.completedOpModeGroups'
- Field 'DmResolverResult.configuredModel' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.configuredModel'
- Field 'DmResolverResult.deviceFamily' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.deviceFamily'
- Field 'DmResolverResult.deviceMpn' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.deviceMpn'
- Field 'DmResolverResult.durationSeconds' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.durationSeconds'
- Field 'DmResolverResult.errors' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.errors'
- Field 'DmResolverResult.isFeasible' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.isFeasible'
- Field 'DmResolverResult.isOptimal' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.isOptimal'
- Field 'DmResolverResult.logs' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.logs'
- Field 'DmResolverResult.objectiveValue' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.objectiveValue'
- Field 'DmResolverResult.requestedPeripherals' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.requestedPeripherals'
- Field 'DmResolverResult.requestedTotalCount' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.requestedTotalCount'
- Field 'DmResolverResult.selections' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.selections'
- Field 'DmResolverResult.solverStatus' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.solverStatus'
- Field 'DmResolverResult.startedAt' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.startedAt'
- Field 'DmResolverResult.wallTimeSeconds' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.wallTimeSeconds'
- Field 'DmResolverResult.warnings' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverResult.warnings'
- Field 'DmResolverSummary.percentResolvedSuccess' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverSummary.percentResolvedSuccess'
- Field 'DmResolverSummary.requiredPeripherals' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverSummary.requiredPeripherals'
- Field 'DmResolverSummary.results' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmResolverSummary.results'
- Field 'DmSoftwareToDeviceOptionsModel.softwareToDeviceElements' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmSoftwareToDeviceOptionsModel.softwareToDeviceElements'
- Field 'DmTemperatureRange.display' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmTemperatureRange.display'
- Field 'DmTemperatureRange.max' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmTemperatureRange.max'
- Field 'DmTemperatureRange.min' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmTemperatureRange.min'
- Field 'DmTemperatureRange.tempType' is no longer deprecated
- Directive 'deprecated' was removed from field 'DmTemperatureRange.tempType'

#### Input / Payload

- Directive 'deprecated' was removed from input field 'onlyFeasible' in input object 'DmExecuteDeviceEvaluationFromConfigurationInput'
- Directive 'deprecated' was removed from input field 'onlyFeasible' in input object 'DmExecuteDeviceEvaluationFromXmlInput'
- Directive 'deprecated' was removed from input field 'onlyFeasible' in input object 'DmExecuteDeviceEvaluationInput'
- Directive 'deprecated' was removed from input field 'optionalDeviceMpn' in input object 'DmExecuteDeviceEvaluationInput'

### Supply

#### Types

- Type 'SupSolutionTemplateFilterInput' was added
- Object type 'SupSolutionTemplateFilterInput' has description 'Input for filtering solution templates by additional conditions.'

#### Input / Payload

- Input field 'statuses' of type '[SupSolutionTemplateStatus!]' was added to input object type 'SupSolutionTemplateFilterInput'


