# gateway-changelog-27-Mar-2026

## ✅ Non-Breaking Changes (56)

### Supply

#### ✏️ Mutation

- Field 'supEvalKitAddDevices' was added to object type 'Mutation'
- Argument 'input: SupEvalKitAddDevicesInput!' added to 'Mutation.supEvalKitAddDevices'
- Field 'supEvalKitDeleteDevices' was added to object type 'Mutation'
- Argument 'input: SupEvalKitDeleteDevicesInput!' added to 'Mutation.supEvalKitDeleteDevices'
- Field 'supEvalKitSetMainRefDesign' was added to object type 'Mutation'
- Argument 'input: SupEvalKitSetMainRefDesignInput!' added to 'Mutation.supEvalKitSetMainRefDesign'
- Field 'supEvalKitUnsetMainRefDesign' was added to object type 'Mutation'
- Argument 'input: SupEvalKitUnsetMainRefDesignInput!' added to 'Mutation.supEvalKitUnsetMainRefDesign'

#### Types

- Type 'SupEvalKitAddDevicesPayload' was added
- Object type 'SupEvalKitAddDevicesPayload' has description 'Payload returned after adding devices to the evaluation kit.'
- Type 'SupEvalKitDeleteDevicesPayload' was added
- Object type 'SupEvalKitDeleteDevicesPayload' has description 'Payload returned after deleting devices from an evaluation kit.'
- Type 'SupEvalKitSetMainRefDesignPayload' was added
- Object type 'SupEvalKitSetMainRefDesignPayload' has description 'Payload returned after setting the main reference design of an evaluation kit.'
- Type 'SupEvalKitUnsetMainRefDesignPayload' was added
- Object type 'SupEvalKitUnsetMainRefDesignPayload' has description 'Payload returned after unsetting the main reference design of an evaluation kit.'
- Type 'SupEvalKitAddDevicesError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitAddDevicesError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitAddDevicesError'
- Type 'SupEvalKitDeleteDevicesError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitDeleteDevicesError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitDeleteDevicesError'
- Type 'SupEvalKitSetMainRefDesignError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitSetMainRefDesignError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitSetMainRefDesignError'
- Type 'SupEvalKitUnsetMainRefDesignError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitUnsetMainRefDesignError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitUnsetMainRefDesignError'
- Type 'SupEvalKitAddDevicesInput' was added
- Object type 'SupEvalKitAddDevicesInput' has description 'Input for adding devices to an evaluation kit.'
- Type 'SupEvalKitDeleteDevicesInput' was added
- Object type 'SupEvalKitDeleteDevicesInput' has description 'Input for deleting devices from an evaluation kit.'
- Type 'SupEvalKitDeviceInput' was added
- Object type 'SupEvalKitDeviceInput' has description 'Input type for device mutation.'
- Type 'SupEvalKitSetMainRefDesignInput' was added
- Object type 'SupEvalKitSetMainRefDesignInput' has description 'Input for setting the main reference design of an evaluation kit.'
- Type 'SupEvalKitUnsetMainRefDesignInput' was added
- Object type 'SupEvalKitUnsetMainRefDesignInput' has description 'Input for unsetting the main reference design of an evaluation kit.'

#### Fields

- Field 'errors' was added to object type 'SupEvalKitAddDevicesPayload'
- Field 'success' was added to object type 'SupEvalKitAddDevicesPayload'
- Field 'errors' was added to object type 'SupEvalKitDeleteDevicesPayload'
- Field 'success' was added to object type 'SupEvalKitDeleteDevicesPayload'
- Field 'errors' was added to object type 'SupEvalKitSetMainRefDesignPayload'
- Field 'success' was added to object type 'SupEvalKitSetMainRefDesignPayload'
- Field 'errors' was added to object type 'SupEvalKitUnsetMainRefDesignPayload'
- Field 'success' was added to object type 'SupEvalKitUnsetMainRefDesignPayload'

#### Input / Payload

- Input field 'devices' of type '[SupEvalKitDeviceInput!]!' was added to input object type 'SupEvalKitAddDevicesInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitAddDevicesInput'
- Input field 'devices' of type '[SupEvalKitDeviceInput!]!' was added to input object type 'SupEvalKitDeleteDevicesInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitDeleteDevicesInput'
- Input field 'deviceMpn' of type 'String!' was added to input object type 'SupEvalKitDeviceInput'
- Input field 'refDesignId' of type 'ID!' was added to input object type 'SupEvalKitDeviceInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitSetMainRefDesignInput'
- Input field 'refDesignId' of type 'ID!' was added to input object type 'SupEvalKitSetMainRefDesignInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitUnsetMainRefDesignInput'
- Input field 'refDesignId' of type 'ID!' was added to input object type 'SupEvalKitUnsetMainRefDesignInput'


