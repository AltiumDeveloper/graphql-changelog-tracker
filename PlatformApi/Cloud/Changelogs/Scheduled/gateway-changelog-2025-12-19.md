# gateway-changelog-19-Dec-2025

## ✅ Non-Breaking Changes (19)

### Renesas (preview)

#### ✏️ Mutation

- Field 'dmExecuteDeviceEvaluationFromESDv2' was added to object type 'Mutation'
- Argument 'input: DmExecuteDeviceEvaluationFromESDv2Input!' added to 'Mutation.dmExecuteDeviceEvaluationFromESDv2'
- Field 'Mutation.dmExecuteDeviceEvaluationFromESD' is deprecated
- Directive 'deprecated' was added to 'Mutation.dmExecuteDeviceEvaluationFromESD'

#### Types

- Type 'DmEsdResolverResult' was added
- Object type 'DmEsdResolverResult' has description '**Experimental** Resolver results for a specific functional block within ESD.'
- Type 'DmEsdResolverSummary' was added
- Object type 'DmEsdResolverSummary' has description '**Experimental** Summary of running device model evaluation for an ESD document. This includes all found MCUs with per-device results. Each MCU has associated session ID that can be used to retrieve the results at a later time'
- Type 'DmExecuteDeviceEvaluationFromESDv2Payload' was added
- Object type 'DmExecuteDeviceEvaluationFromESDv2Payload' has description '**Experimental**'
- Type 'DmExecuteDeviceEvaluationFromESDv2Input' was added
- Object type 'DmExecuteDeviceEvaluationFromESDv2Input' has description '**Experimental**'

#### Fields

- Field 'functionalBlockId' was added to object type 'DmEsdResolverResult'
- Field 'resolverSummary' was added to object type 'DmEsdResolverResult'
- Field 'sessionId' was added to object type 'DmEsdResolverResult'
- Field 'functionalBlocks' was added to object type 'DmEsdResolverSummary'
- Field 'dmEsdResolverSummary' was added to object type 'DmExecuteDeviceEvaluationFromESDv2Payload'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationFromESDv2Input'
- Input field 'sessionId' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationFromESDv2Input'


