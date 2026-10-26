# gateway-changelog-21-Jul-2026

## ✅ Non-Breaking Changes (66)

### Renesas (preview)

#### 🔍 Query

- Field 'dmDeviceFamilies' was added to object type 'Query'

#### ✏️ Mutation

- Field 'dmExecuteDeviceEvaluationByFamily' was added to object type 'Mutation'
- Argument 'input: DmExecuteDeviceEvaluationByFamilyInput!' added to 'Mutation.dmExecuteDeviceEvaluationByFamily'
- Field 'dmExecuteDeviceEvaluationByMpn' was added to object type 'Mutation'
- Argument 'input: DmExecuteDeviceEvaluationByMpnInput!' added to 'Mutation.dmExecuteDeviceEvaluationByMpn'

#### Types

- Type 'DmDeviceFamily' was added
- Object type 'DmDeviceFamily' has description '**Experimental** A supported device family (e.g. RA, RX) with display metadata and total device count.'
- Type 'DmExecuteDeviceEvaluationByFamilyPayload' was added
- Object type 'DmExecuteDeviceEvaluationByFamilyPayload' has description '**Experimental**'
- Type 'DmExecuteDeviceEvaluationByMpnPayload' was added
- Object type 'DmExecuteDeviceEvaluationByMpnPayload' has description '**Experimental**'
- Type 'DmFamilyCapability' was added
- Object type 'DmFamilyCapability' has description '**Experimental** A single named family capability. The set is an extensible key-value list so new capabilities do not require a schema change.'
- Type 'DmFeasibleDeviceModel' was added
- Object type 'DmFeasibleDeviceModel' has description '**Experimental** A device without concrete peripherals and ports — enough to drive the matched-parts list and search results.'
- Type 'DmResolverFeasibilityResult' was added
- Object type 'DmResolverFeasibilityResult' has description '**Experimental** Feasibility outcome for a single candidate device (no full configuration).'
- Type 'DmResolverFeasibilitySummary' was added
- Object type 'DmResolverFeasibilitySummary' has description '**Experimental** Fast, family-scoped feasibility summary. Carries a lean feasibleModel (no configured ports/peripherals) for each candidate device, enough to drive the matched-parts list and search results.'
- Type 'DmExecuteDeviceEvaluationByFamilyInput' was added
- Object type 'DmExecuteDeviceEvaluationByFamilyInput' has description '**Experimental**'
- Type 'DmExecuteDeviceEvaluationByMpnInput' was added
- Object type 'DmExecuteDeviceEvaluationByMpnInput' has description '**Experimental**'

#### Fields

- Field 'aliases' was added to object type 'DmDeviceFamily'
- Field 'capabilities' was added to object type 'DmDeviceFamily'
- Field 'description' was added to object type 'DmDeviceFamily'
- Field 'key' was added to object type 'DmDeviceFamily'
- Field 'label' was added to object type 'DmDeviceFamily'
- Field 'priority' was added to object type 'DmDeviceFamily'
- Field 'shortLabel' was added to object type 'DmDeviceFamily'
- Field 'totalDevices' was added to object type 'DmDeviceFamily'
- Field 'vendor' was added to object type 'DmDeviceFamily'
- Field 'dmResolverFeasibilitySummary' was added to object type 'DmExecuteDeviceEvaluationByFamilyPayload'
- Field 'dmResolverSummary' was added to object type 'DmExecuteDeviceEvaluationByMpnPayload'
- Field 'key' was added to object type 'DmFamilyCapability'
- Field 'value' was added to object type 'DmFamilyCapability'
- Field 'board' was added to object type 'DmFeasibleDeviceModel'
- Field 'deviceMpn' was added to object type 'DmFeasibleDeviceModel'
- Field 'familyPart' was added to object type 'DmFeasibleDeviceModel'
- Field 'boardName' was added to object type 'DmResolverFeasibilityResult'
- Field 'constraintModel' was added to object type 'DmResolverFeasibilityResult'
- Field 'deviceFamily' was added to object type 'DmResolverFeasibilityResult'
- Field 'deviceFamilyKey' was added to object type 'DmResolverFeasibilityResult'
- Field 'deviceMpn' was added to object type 'DmResolverFeasibilityResult'
- Field 'errors' was added to object type 'DmResolverFeasibilityResult'
- Field 'feasibleModel' was added to object type 'DmResolverFeasibilityResult'
- Field 'isFeasible' was added to object type 'DmResolverFeasibilityResult'
- Field 'logs' was added to object type 'DmResolverFeasibilityResult'
- Field 'solverStatus' was added to object type 'DmResolverFeasibilityResult'
- Field 'vendor' was added to object type 'DmResolverFeasibilityResult'
- Field 'wallTimeSeconds' was added to object type 'DmResolverFeasibilityResult'
- Field 'warnings' was added to object type 'DmResolverFeasibilityResult'
- Field 'percentResolvedSuccess' was added to object type 'DmResolverFeasibilitySummary'
- Field 'requiredPeripherals' was added to object type 'DmResolverFeasibilitySummary'
- Field 'results' was added to object type 'DmResolverFeasibilitySummary'
- Field 'deviceFamilyKey' was added to object type 'DmResolverResult'
- Field 'vendor' was added to object type 'DmResolverResult'

#### Input / Payload

- Input field 'deviceFamily' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationByFamilyInput'
- Input field 'evaluationStrategy' of type 'DmModelEvaluationStrategy' was added to input object type 'DmExecuteDeviceEvaluationByFamilyInput'
- Input field 'includeDiagnostics' of type 'Boolean' was added to input object type 'DmExecuteDeviceEvaluationByFamilyInput'
- Input field 'payload' of type '[DmRequiredPeripheralPayloadInput!]!' was added to input object type 'DmExecuteDeviceEvaluationByFamilyInput'
- Input field 'vendor' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationByFamilyInput'
- Input field 'deviceMpn' of type 'String!' was added to input object type 'DmExecuteDeviceEvaluationByMpnInput'
- Input field 'evaluationStrategy' of type 'DmModelEvaluationStrategy' was added to input object type 'DmExecuteDeviceEvaluationByMpnInput'
- Input field 'includeDiagnostics' of type 'Boolean' was added to input object type 'DmExecuteDeviceEvaluationByMpnInput'
- Input field 'payload' of type '[DmRequiredPeripheralPayloadInput!]!' was added to input object type 'DmExecuteDeviceEvaluationByMpnInput'


