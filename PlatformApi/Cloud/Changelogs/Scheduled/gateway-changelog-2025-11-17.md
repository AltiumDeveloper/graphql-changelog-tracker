# gateway-changelog-17-Nov-2025

## ⚠️ Dangerous Changes (12)

### Renesas (preview)

#### Types

- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectDeleteSoftwareProjectError'
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectUpdateSoftwareProjectError'
- Enum value 'OPERATION_FAILED' was added to enum 'SupSoftwareProjectErrorCode'

### Supply

#### Types

- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitDeleteEvalKitError'
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitUpdateEvalKitError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateCreateSolutionTemplateApplicationError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateDeleteSolutionTemplateApplicationError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateDeleteSolutionTemplateError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateUpdateSolutionTemplateApplicationError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateUpdateSolutionTemplateError'
- Enum value 'OPERATION_FAILED' was added to enum 'SupEvalKitErrorCode'
- Enum value 'OPERATION_FAILED' was added to enum 'SupSolutionTemplateErrorCode'


---

## ✅ Non-Breaking Changes (25)

### Renesas (preview)

#### Types

- Type 'DmPin' was added
- Type 'SupSoftwareProjectOperationFailedError' was added
- 'SupSoftwareProjectOperationFailedError' object implements 'Error' interface
- Type 'SupSoftwareProjectCreateSoftwareProjectError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectCreateSoftwareProjectError'

#### Fields

- Field 'name' was added to object type 'DmPin'
- Field 'errorCode' was added to object type 'SupSoftwareProjectOperationFailedError'
- Field 'message' was added to object type 'SupSoftwareProjectOperationFailedError'
- Field 'pin' was added to object type 'DmPort'
- Field 'isScaffolding' was added to object type 'SftSoftwareProject'
- Field 'errors' was added to object type 'SupSoftwareProjectCreateSoftwareProjectPayload'

### Supply

#### Types

- Type 'SupEvalKitOperationFailedError' was added
- 'SupEvalKitOperationFailedError' object implements 'Error' interface
- Type 'SupSolutionTemplateOperationFailedError' was added
- 'SupSolutionTemplateOperationFailedError' object implements 'Error' interface
- Type 'SupEvalKitCreateEvalKitError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitCreateEvalKitError'
- Type 'SupSolutionTemplateCreateSolutionTemplateError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateCreateSolutionTemplateError'

#### Fields

- Field 'errorCode' was added to object type 'SupEvalKitOperationFailedError'
- Field 'message' was added to object type 'SupEvalKitOperationFailedError'
- Field 'errorCode' was added to object type 'SupSolutionTemplateOperationFailedError'
- Field 'message' was added to object type 'SupSolutionTemplateOperationFailedError'
- Field 'errors' was added to object type 'SupEvalKitCreateEvalKitPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateCreateSolutionTemplatePayload'


