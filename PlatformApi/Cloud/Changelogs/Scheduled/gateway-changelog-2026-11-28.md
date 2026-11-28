# gateway-changelog-28-Nov-2026

## 🔴 Breaking Changes (32)

### Common

#### Types

- Type 'GridFilterInput' was removed
- Type 'IntOperationFilterInput' was removed
- Type 'MotorStudioProjectGridFilterInput' was removed
- Type 'MotorStudioProjectGridSortInput' was removed
- Type 'PathFilterInput' was removed
- Type 'UuidOperationFilterInput' was removed
- Type 'ParamSource' was removed
- Type 'TriggerEdge' was removed
- Type 'TriggerMode' was removed
- Type 'TuningModuleType' was removed
- Type 'TuningType' was removed

### Platform

#### Types

- Type 'DesWorkspaceUserSortInput' was removed

#### Input / Payload

- Input field 'and' was removed from input object type 'DesWorkspaceUserFilterInput'
- Input field 'id' was removed from input object type 'DesWorkspaceUserFilterInput'
- Input field 'or' was removed from input object type 'DesWorkspaceUserFilterInput'

### Renesas (preview)

#### 🔍 Query

- Argument 'order: [RsaMotorStudioProjectSortInput!]' was removed from field 'Query.rsaMotorStudioProjects'
- Argument 'where: RsaMotorStudioProjectFilterInput' was removed from field 'Query.rsaMotorStudioProjects'

#### Types

- Type 'RsaMotorStudioProjectFilterInput' was removed
- Type 'RsaMotorStudioProjectSortInput' was removed

#### Fields

- Field 'RsaMotorStudioScopeConfig.triggerEdge' changed type from 'TriggerEdge!' to 'RsaScopeTriggerEdge!'
- Field 'RsaMotorStudioScopeConfig.triggerMode' changed type from 'TriggerMode!' to 'RsaScopeTriggerMode!'
- Field 'RsaMotorStudioTuning.tuningType' changed type from 'TuningType!' to 'RsaTuningType!'
- Field 'RsaMotorStudioTuningModule.moduleType' changed type from 'TuningModuleType!' to 'RsaTuningModuleType!'
- Field 'RsaMotorStudioTuningParameter.source' changed type from 'ParamSource!' to 'RsaTuningParamSource!'

#### Input / Payload

- Input field 'RsaMotorStudioCreateScopeConfigInput.triggerEdge' changed type from 'TriggerEdge!' to 'RsaScopeTriggerEdge!'
- Input field 'RsaMotorStudioCreateScopeConfigInput.triggerMode' changed type from 'TriggerMode!' to 'RsaScopeTriggerMode!'
- Input field 'RsaMotorStudioCreateTuningInput.tuningType' changed type from 'TuningType!' to 'RsaTuningType!'
- Input field 'RsaMotorStudioTuningModuleInput.moduleType' changed type from 'TuningModuleType!' to 'RsaTuningModuleType!'
- Input field 'RsaMotorStudioTuningParameterInput.source' changed type from 'ParamSource!' to 'RsaTuningParamSource!'
- Input field 'RsaMotorStudioUpdateScopeConfigInput.triggerEdge' changed type from 'TriggerEdge!' to 'RsaScopeTriggerEdge!'
- Input field 'RsaMotorStudioUpdateScopeConfigInput.triggerMode' changed type from 'TriggerMode!' to 'RsaScopeTriggerMode!'
- Input field 'RsaMotorStudioUpdateTuningInput.tuningType' changed type from 'TuningType' to 'RsaTuningType'


---

## ✅ Non-Breaking Changes (57)

### Renesas (preview)

#### Types

- Type 'RsaScopeTriggerEdge' was added
- Enum value 'BOTH' was added to enum 'RsaScopeTriggerEdge'
- Enum value 'FALL' was added to enum 'RsaScopeTriggerEdge'
- Enum value 'RISE' was added to enum 'RsaScopeTriggerEdge'
- Object type 'RsaScopeTriggerEdge' has description '**Experimental**'
- Type 'RsaScopeTriggerMode' was added
- Enum value 'AUTO' was added to enum 'RsaScopeTriggerMode'
- Enum value 'NORMAL' was added to enum 'RsaScopeTriggerMode'
- Enum value 'SINGLE' was added to enum 'RsaScopeTriggerMode'
- Object type 'RsaScopeTriggerMode' has description '**Experimental**'
- Type 'RsaTuningModuleType' was added
- Enum value 'BRUSHLESS_THREE_PHASE_MOTOR' was added to enum 'RsaTuningModuleType'
- Enum value 'MOTOR' was added to enum 'RsaTuningModuleType'
- Enum value 'PI_CURRENT_CONTROLLER' was added to enum 'RsaTuningModuleType'
- Enum value 'PI_SPEED_CONTROLLER' was added to enum 'RsaTuningModuleType'
- Enum value 'THREE_PHASE_INVERTER' was added to enum 'RsaTuningModuleType'
- Object type 'RsaTuningModuleType' has description '**Experimental**'
- Type 'RsaTuningParamSource' was added
- Enum value 'IDENT_RESULT' was added to enum 'RsaTuningParamSource'
- Enum value 'USER_ENTERED' was added to enum 'RsaTuningParamSource'
- Object type 'RsaTuningParamSource' has description '**Experimental**'
- Type 'RsaTuningType' was added
- Enum value 'FOC3_PHASE_SENSORED' was added to enum 'RsaTuningType'
- Enum value 'FOC3_PHASE_SENSORLESS' was added to enum 'RsaTuningType'
- Object type 'RsaTuningType' has description '**Experimental**'

#### Fields

- Directive 'experimental' was added to enum 'RsaScopeTriggerEdge'
- Directive 'experimental' was added to enum 'RsaScopeTriggerMode'
- Directive 'experimental' was added to enum 'RsaTuningModuleType'
- Directive 'experimental' was added to enum 'RsaTuningParamSource'
- Directive 'experimental' was added to enum 'RsaTuningType'

### Supply

#### ✏️ Mutation

- Field 'supEvalKitUpdateEvalKitStatus' was added to object type 'Mutation'
- Argument 'input: SupEvalKitUpdateEvalKitStatusInput!' added to 'Mutation.supEvalKitUpdateEvalKitStatus'
- Field 'Mutation.supEvalKitSoftwareProjectCompatibleEvalKit' is deprecated
- Directive 'deprecated' was added to 'Mutation.supEvalKitSoftwareProjectCompatibleEvalKit'

#### Types

- Type 'SupEvalKitUpdateEvalKitStatusPayload' was added
- Object type 'SupEvalKitUpdateEvalKitStatusPayload' has description 'Payload associated with updating the status of an evaluation kit.'
- Type 'SupEvalKitUpdateEvalKitStatusError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitUpdateEvalKitStatusError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitUpdateEvalKitStatusError'
- Type 'SupEvalKitUpdateEvalKitStatusInput' was added
- Object type 'SupEvalKitUpdateEvalKitStatusInput' has description 'Input for evaluation kit status update.'
- Type 'SupEvalKitStatus' was added
- Enum value 'ACTIVE' was added to enum 'SupEvalKitStatus'
- Enum value 'DRAFT' was added to enum 'SupEvalKitStatus'
- Enum value 'INACTIVE' was added to enum 'SupEvalKitStatus'
- Enum value 'ON_HOLD' was added to enum 'SupEvalKitStatus'
- Enum value 'REJECTED' was added to enum 'SupEvalKitStatus'
- Enum value 'REVIEWING' was added to enum 'SupEvalKitStatus'
- Enum value 'SUBMITTED' was added to enum 'SupEvalKitStatus'

#### Fields

- Field 'errors' was added to object type 'SupEvalKitUpdateEvalKitStatusPayload'
- Field 'status' was added to object type 'SupEvalKit'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'SupEvalKitUpdateEvalKitStatusInput'
- Input field 'status' of type 'SupEvalKitStatus!' was added to input object type 'SupEvalKitUpdateEvalKitStatusInput'
- Input field 'status' of type 'SupEvalKitStatus' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'hasRefDesigns' of type 'Boolean' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'status' of type 'SupEvalKitStatus' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'status' of type 'SupEvalKitStatus' was added to input object type 'SupEvalKitUpdateEvalKitInput'


