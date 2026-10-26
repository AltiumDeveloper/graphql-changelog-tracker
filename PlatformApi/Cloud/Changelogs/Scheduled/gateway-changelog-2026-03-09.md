# gateway-changelog-09-Mar-2026

## 🔴 Breaking Changes (1)

### Renesas (preview)

#### Input / Payload

- Input field 'folderId' of type 'String!' was added to input object type 'RsaMotorStudioCreateProjectInput'


---

## ✅ Non-Breaking Changes (152)

### Common

#### Types

- Type 'ParamSource' was added
- Enum value 'IDENT_RESULT' was added to enum 'ParamSource'
- Enum value 'USER_ENTERED' was added to enum 'ParamSource'
- Object type 'ParamSource' has description '**Experimental**'
- Type 'TuningModuleType' was added
- Enum value 'BRUSHLESS_THREE_PHASE_MOTOR' was added to enum 'TuningModuleType'
- Enum value 'MOTOR' was added to enum 'TuningModuleType'
- Enum value 'PI_CURRENT_CONTROLLER' was added to enum 'TuningModuleType'
- Enum value 'PI_SPEED_CONTROLLER' was added to enum 'TuningModuleType'
- Enum value 'THREE_PHASE_INVERTER' was added to enum 'TuningModuleType'
- Object type 'TuningModuleType' has description '**Experimental**'
- Type 'TuningType' was added
- Enum value 'FOC3_PHASE_SENSORED' was added to enum 'TuningType'
- Enum value 'FOC3_PHASE_SENSORLESS' was added to enum 'TuningType'
- Object type 'TuningType' has description '**Experimental**'

### Renesas (preview)

#### 🔍 Query

- Field 'rsaMotorStudioTuningById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.rsaMotorStudioTuningById'
- Field 'rsaMotorStudioTuningRevisionById' was added to object type 'Query'
- Argument 'revisionId: ID!' added to 'Query.rsaMotorStudioTuningRevisionById'
- Field 'rsaMotorStudioTuningRevisionsByTuningId' was added to object type 'Query'
- Argument 'tuningId: ID!' added to 'Query.rsaMotorStudioTuningRevisionsByTuningId'
- Field 'rsaMotorStudioTunings' was added to object type 'Query'

#### ✏️ Mutation

- Field 'rsaMotorStudioCreateTuning' was added to object type 'Mutation'
- Argument 'input: RsaMotorStudioCreateTuningInput!' added to 'Mutation.rsaMotorStudioCreateTuning'
- Field 'rsaMotorStudioCreateTuningRevision' was added to object type 'Mutation'
- Argument 'input: RsaMotorStudioCreateTuningRevisionInput!' added to 'Mutation.rsaMotorStudioCreateTuningRevision'
- Field 'rsaMotorStudioDeleteTuning' was added to object type 'Mutation'
- Argument 'input: RsaMotorStudioDeleteTuningInput!' added to 'Mutation.rsaMotorStudioDeleteTuning'
- Field 'rsaMotorStudioLinkTuningToProject' was added to object type 'Mutation'
- Argument 'input: RsaMotorStudioLinkTuningToProjectInput!' added to 'Mutation.rsaMotorStudioLinkTuningToProject'
- Field 'rsaMotorStudioUnlinkTuningFromProject' was added to object type 'Mutation'
- Argument 'input: RsaMotorStudioUnlinkTuningFromProjectInput!' added to 'Mutation.rsaMotorStudioUnlinkTuningFromProject'
- Field 'rsaMotorStudioUpdateTuning' was added to object type 'Mutation'
- Argument 'input: RsaMotorStudioUpdateTuningInput!' added to 'Mutation.rsaMotorStudioUpdateTuning'

#### Types

- Type 'RsaMotorStudioCreateTuningPayload' was added
- Object type 'RsaMotorStudioCreateTuningPayload' has description '**Experimental**'
- Type 'RsaMotorStudioCreateTuningRevisionPayload' was added
- Object type 'RsaMotorStudioCreateTuningRevisionPayload' has description '**Experimental**'
- Type 'RsaMotorStudioDeleteTuningPayload' was added
- Object type 'RsaMotorStudioDeleteTuningPayload' has description '**Experimental**'
- Type 'RsaMotorStudioLinkTuningToProjectPayload' was added
- Object type 'RsaMotorStudioLinkTuningToProjectPayload' has description '**Experimental**'
- Type 'RsaMotorStudioTuning' was added
- Object type 'RsaMotorStudioTuning' has description '**Experimental**'
- Type 'RsaMotorStudioTuningModule' was added
- Object type 'RsaMotorStudioTuningModule' has description '**Experimental**'
- Type 'RsaMotorStudioTuningParameter' was added
- Object type 'RsaMotorStudioTuningParameter' has description '**Experimental**'
- Type 'RsaMotorStudioTuningParameterEvidence' was added
- Object type 'RsaMotorStudioTuningParameterEvidence' has description '**Experimental**'
- Type 'RsaMotorStudioTuningRevision' was added
- Object type 'RsaMotorStudioTuningRevision' has description '**Experimental**'
- Type 'RsaMotorStudioUnlinkTuningFromProjectPayload' was added
- Object type 'RsaMotorStudioUnlinkTuningFromProjectPayload' has description '**Experimental**'
- Type 'RsaMotorStudioUpdateTuningPayload' was added
- Object type 'RsaMotorStudioUpdateTuningPayload' has description '**Experimental**'
- Type 'RsaMotorStudioCreateTuningInput' was added
- Object type 'RsaMotorStudioCreateTuningInput' has description '**Experimental**'
- Type 'RsaMotorStudioCreateTuningRevisionInput' was added
- Object type 'RsaMotorStudioCreateTuningRevisionInput' has description '**Experimental**'
- Type 'RsaMotorStudioDeleteTuningInput' was added
- Object type 'RsaMotorStudioDeleteTuningInput' has description '**Experimental**'
- Type 'RsaMotorStudioLinkTuningToProjectInput' was added
- Object type 'RsaMotorStudioLinkTuningToProjectInput' has description '**Experimental**'
- Type 'RsaMotorStudioParameterEvidenceInput' was added
- Object type 'RsaMotorStudioParameterEvidenceInput' has description '**Experimental**'
- Type 'RsaMotorStudioTuningModuleInput' was added
- Object type 'RsaMotorStudioTuningModuleInput' has description '**Experimental**'
- Type 'RsaMotorStudioTuningParameterInput' was added
- Object type 'RsaMotorStudioTuningParameterInput' has description '**Experimental**'
- Type 'RsaMotorStudioUnlinkTuningFromProjectInput' was added
- Object type 'RsaMotorStudioUnlinkTuningFromProjectInput' has description '**Experimental**'
- Type 'RsaMotorStudioUpdateTuningInput' was added
- Object type 'RsaMotorStudioUpdateTuningInput' has description '**Experimental**'

#### Fields

- Field 'tuning' was added to object type 'RsaMotorStudioCreateTuningPayload'
- Field 'revision' was added to object type 'RsaMotorStudioCreateTuningRevisionPayload'
- Field 'isDeleted' was added to object type 'RsaMotorStudioDeleteTuningPayload'
- Field 'isSuccess' was added to object type 'RsaMotorStudioLinkTuningToProjectPayload'
- Field 'applicationMount' was added to object type 'RsaMotorStudioTuning'
- Field 'createdAt' was added to object type 'RsaMotorStudioTuning'
- Field 'createdBy' was added to object type 'RsaMotorStudioTuning'
- Field 'createdById' was added to object type 'RsaMotorStudioTuning'
- Field 'folderId' was added to object type 'RsaMotorStudioTuning'
- Field 'id' was added to object type 'RsaMotorStudioTuning'
- Field 'latestRevision' was added to object type 'RsaMotorStudioTuning'
- Field 'modifiedAt' was added to object type 'RsaMotorStudioTuning'
- Field 'modifiedBy' was added to object type 'RsaMotorStudioTuning'
- Field 'modifiedById' was added to object type 'RsaMotorStudioTuning'
- Field 'motorStudioProject' was added to object type 'RsaMotorStudioTuning'
- Field 'name' was added to object type 'RsaMotorStudioTuning'
- Field 'path' was added to object type 'RsaMotorStudioTuning'
- Field 'revisions' was added to object type 'RsaMotorStudioTuning'
- Field 'tuningType' was added to object type 'RsaMotorStudioTuning'
- Field 'moduleType' was added to object type 'RsaMotorStudioTuningModule'
- Field 'parameters' was added to object type 'RsaMotorStudioTuningModule'
- Field 'path' was added to object type 'RsaMotorStudioTuningModule'
- Field 'evidence' was added to object type 'RsaMotorStudioTuningParameter'
- Field 'name' was added to object type 'RsaMotorStudioTuningParameter'
- Field 'path' was added to object type 'RsaMotorStudioTuningParameter'
- Field 'source' was added to object type 'RsaMotorStudioTuningParameter'
- Field 'units' was added to object type 'RsaMotorStudioTuningParameter'
- Field 'value' was added to object type 'RsaMotorStudioTuningParameter'
- Field 'note' was added to object type 'RsaMotorStudioTuningParameterEvidence'
- Field 'scopeCapture' was added to object type 'RsaMotorStudioTuningParameterEvidence'
- Field 'scopeCaptureId' was added to object type 'RsaMotorStudioTuningParameterEvidence'
- Field 'scopeProjectId' was added to object type 'RsaMotorStudioTuningParameterEvidence'
- Field 'createdAt' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'createdBy' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'createdById' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'id' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'modules' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'resultParameters' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'revision' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'tuning' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'tuningId' was added to object type 'RsaMotorStudioTuningRevision'
- Field 'isSuccess' was added to object type 'RsaMotorStudioUnlinkTuningFromProjectPayload'
- Field 'tuning' was added to object type 'RsaMotorStudioUpdateTuningPayload'
- Field 'folderId' was added to object type 'RsaMotorStudioProject'
- Field 'parentSolutions' was added to object type 'RsaMotorStudioProject'
- Field 'tunings' was added to object type 'RsaMotorStudioProject'

#### Input / Payload

- Input field 'applicationMount' of type 'String!' was added to input object type 'RsaMotorStudioCreateTuningInput'
- Input field 'folderId' of type 'String!' was added to input object type 'RsaMotorStudioCreateTuningInput'
- Input field 'name' of type 'String!' was added to input object type 'RsaMotorStudioCreateTuningInput'
- Input field 'path' of type 'String!' was added to input object type 'RsaMotorStudioCreateTuningInput'
- Input field 'tuningType' of type 'TuningType!' was added to input object type 'RsaMotorStudioCreateTuningInput'
- Input field 'modules' of type '[RsaMotorStudioTuningModuleInput!]!' was added to input object type 'RsaMotorStudioCreateTuningRevisionInput'
- Input field 'tuningId' of type 'ID!' was added to input object type 'RsaMotorStudioCreateTuningRevisionInput'
- Input field 'id' of type 'ID!' was added to input object type 'RsaMotorStudioDeleteTuningInput'
- Input field 'projectId' of type 'ID!' was added to input object type 'RsaMotorStudioLinkTuningToProjectInput'
- Input field 'tuningId' of type 'ID!' was added to input object type 'RsaMotorStudioLinkTuningToProjectInput'
- Input field 'note' of type 'String' was added to input object type 'RsaMotorStudioParameterEvidenceInput'
- Input field 'scopeCaptureId' of type 'String' was added to input object type 'RsaMotorStudioParameterEvidenceInput'
- Input field 'moduleType' of type 'TuningModuleType!' was added to input object type 'RsaMotorStudioTuningModuleInput'
- Input field 'parameters' of type '[RsaMotorStudioTuningParameterInput!]!' was added to input object type 'RsaMotorStudioTuningModuleInput'
- Input field 'path' of type 'String!' was added to input object type 'RsaMotorStudioTuningModuleInput'
- Input field 'evidence' of type 'RsaMotorStudioParameterEvidenceInput' was added to input object type 'RsaMotorStudioTuningParameterInput'
- Input field 'name' of type 'String!' was added to input object type 'RsaMotorStudioTuningParameterInput'
- Input field 'path' of type 'String!' was added to input object type 'RsaMotorStudioTuningParameterInput'
- Input field 'source' of type 'ParamSource!' was added to input object type 'RsaMotorStudioTuningParameterInput'
- Input field 'units' of type 'String' was added to input object type 'RsaMotorStudioTuningParameterInput'
- Input field 'value' of type 'String!' was added to input object type 'RsaMotorStudioTuningParameterInput'
- Input field 'projectId' of type 'ID!' was added to input object type 'RsaMotorStudioUnlinkTuningFromProjectInput'
- Input field 'tuningId' of type 'ID!' was added to input object type 'RsaMotorStudioUnlinkTuningFromProjectInput'
- Input field 'applicationMount' of type 'String' was added to input object type 'RsaMotorStudioUpdateTuningInput'
- Input field 'folderId' of type 'String' was added to input object type 'RsaMotorStudioUpdateTuningInput'
- Input field 'id' of type 'ID!' was added to input object type 'RsaMotorStudioUpdateTuningInput'
- Input field 'name' of type 'String' was added to input object type 'RsaMotorStudioUpdateTuningInput'
- Input field 'path' of type 'String' was added to input object type 'RsaMotorStudioUpdateTuningInput'
- Input field 'tuningType' of type 'TuningType' was added to input object type 'RsaMotorStudioUpdateTuningInput'
- Input field 'folderId' of type 'StringOperationFilterInput' was added to input object type 'RsaMotorStudioProjectFilterInput'
- Input field 'folderId' of type 'SortEnumType' was added to input object type 'RsaMotorStudioProjectSortInput'
- Input field 'folderId' of type 'String' was added to input object type 'RsaMotorStudioUpdateProjectInput'


