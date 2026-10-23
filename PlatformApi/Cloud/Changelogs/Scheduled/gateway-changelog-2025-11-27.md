# gateway-changelog-27-Nov-2025

## ⚠️ Dangerous Changes (1)

### Design

#### Types

- Enum value 'AI_MODEL' was added to enum 'DesContentTypeKind'


---

## ✅ Non-Breaking Changes (14)

### Platform

#### Fields

- Field 'SolSolution.hardwareProjects' changed type from '[DesProject]!' to '[DesProject!]!'

### Renesas (preview)

#### ✏️ Mutation

- Field 'dmExecuteDeviceEvaluationFromESD' was added to object type 'Mutation'
- Field 'Mutation.dmExecuteDeviceEvaluationFromESD' is deprecated
- Argument 'input: DmExecuteDeviceEvaluationFromESDInput!' added to 'Mutation.dmExecuteDeviceEvaluationFromESD'
- Directive 'deprecated' was added to 'Mutation.dmExecuteDeviceEvaluationFromESD'

#### Types

- Type 'DmExecuteDeviceEvaluationFromESDPayload' was added
- Object type 'DmExecuteDeviceEvaluationFromESDPayload' has description '**Experimental**'
- Type 'DmExecuteDeviceEvaluationFromESDInput' was added
- Object type 'DmExecuteDeviceEvaluationFromESDInput' has description '**Experimental**'

#### Fields

- Field 'dmResolverSummary' was added to object type 'DmExecuteDeviceEvaluationFromESDPayload'
- Field 'DmExecuteDeviceEvaluationFromESDPayload.dmResolverSummary' is deprecated
- Directive 'deprecated' was added to 'DmExecuteDeviceEvaluationFromESDPayload.dmResolverSummary'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationFromESDInput'
- Input field 'sessionId' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationFromESDInput'


