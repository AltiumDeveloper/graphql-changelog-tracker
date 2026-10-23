# gateway-changelog-25-Mar-2026

## ✅ Non-Breaking Changes (33)

### Renesas (preview)

#### ✏️ Mutation

- Field 'dmUpdateDeviceFromSdm' was added to object type 'Mutation'
- Argument 'input: DmUpdateDeviceFromSdmInput!' added to 'Mutation.dmUpdateDeviceFromSdm'

#### Types

- Type 'DmPeripheralChanges' was added
- Object type 'DmPeripheralChanges' has description '**Experimental** Changes in peripheral instances between incoming SDM and resolved model.'
- Type 'DmUpdateDeviceFromSdmPayload' was added
- Object type 'DmUpdateDeviceFromSdmPayload' has description '**Experimental**'
- Type 'DmUpdaterSummary' was added
- Object type 'DmUpdaterSummary' has description '**Experimental** Summary of device model updater run.'
- Type 'DmUpdateDeviceFromSdmInput' was added
- Object type 'DmUpdateDeviceFromSdmInput' has description '**Experimental**'

#### Fields

- Field 'added' was added to object type 'DmPeripheralChanges'
- Field 'addedInstances' was added to object type 'DmPeripheralChanges'
- Field 'modified' was added to object type 'DmPeripheralChanges'
- Field 'modifiedInstances' was added to object type 'DmPeripheralChanges'
- Field 'removed' was added to object type 'DmPeripheralChanges'
- Field 'dmUpdaterSummary' was added to object type 'DmUpdateDeviceFromSdmPayload'
- Field 'peripheralChanges' was added to object type 'DmUpdaterSummary'
- Field 'result' was added to object type 'DmUpdaterSummary'
- Field 'interfaceType' was added to object type 'DmPeripheralInstance'

#### Input / Payload

- Input field 'deviceModelId' of type 'String!' was added to input object type 'DmUpdateDeviceFromSdmInput'
- Input field 'fileId' of type 'String!' was added to input object type 'DmUpdateDeviceFromSdmInput'
- Input field 'requiredPeripherals' of type '[DmRequiredPeripheralPayloadInput!]!' was added to input object type 'DmUpdateDeviceFromSdmInput'

### Supply

#### Types

- Type 'SupEvalKitDevice' was added

#### Fields

- Field 'designProject' was added to object type 'SupEvalKitDevice'
- Field 'deviceMpn' was added to object type 'SupEvalKitDevice'
- Field 'refDesignId' was added to object type 'SupEvalKitDevice'
- Field 'SupEvalKitDevice.refDesignId' is deprecated
- Directive 'deprecated' was added to 'SupEvalKitDevice.refDesignId'
- Field 'devices' was added to object type 'SupEvalKit'
- Field 'mainRefDesign' was added to object type 'SupEvalKit'
- Field 'mainRefDesignId' was added to object type 'SupEvalKit'
- Field 'SupEvalKit.mainRefDesignId' is deprecated
- Directive 'deprecated' was added to 'SupEvalKit.mainRefDesignId'


