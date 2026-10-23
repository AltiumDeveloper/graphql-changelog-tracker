# gateway-changelog-16-Jun-2026

## ✅ Non-Breaking Changes (111)

### Renesas (preview)

#### ✏️ Mutation

- Field 'supSoftwareProjectPatchParameters' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectPatchParametersInput!' added to 'Mutation.supSoftwareProjectPatchParameters'
- Field 'supSoftwareProjectSetParameters' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectSetParametersInput!' added to 'Mutation.supSoftwareProjectSetParameters'

#### Types

- Type 'SupSoftwareProjectPatchParametersPayload' was added
- Object type 'SupSoftwareProjectPatchParametersPayload' has description 'Payload returned after patching parameters on a software project.'
- Type 'SupSoftwareProjectSetParametersPayload' was added
- Object type 'SupSoftwareProjectSetParametersPayload' has description 'Payload returned after setting parameters on a software project.'
- Type 'SupSoftwareProjectPatchParametersError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectPatchParametersError'
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectPatchParametersError'
- Type 'SupSoftwareProjectSetParametersError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectSetParametersError'
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectSetParametersError'
- Type 'SupSoftwareProjectParameterInfoInput' was added
- Object type 'SupSoftwareProjectParameterInfoInput' has description 'Identifies a parameter by its title.'
- Type 'SupSoftwareProjectParameterInput' was added
- Object type 'SupSoftwareProjectParameterInput' has description 'A parameter and its values.'
- Type 'SupSoftwareProjectPatchParametersInput' was added
- Object type 'SupSoftwareProjectPatchParametersInput' has description 'Input for patching parameters on a software project.'
- Type 'SupSoftwareProjectSetParametersInput' was added
- Object type 'SupSoftwareProjectSetParametersInput' has description 'Input for replacing all parameters on a software project.'

#### Fields

- Field 'errors' was added to object type 'SupSoftwareProjectPatchParametersPayload'
- Field 'success' was added to object type 'SupSoftwareProjectPatchParametersPayload'
- Field 'errors' was added to object type 'SupSoftwareProjectSetParametersPayload'
- Field 'success' was added to object type 'SupSoftwareProjectSetParametersPayload'

#### Input / Payload

- Input field 'title' of type 'String!' was added to input object type 'SupSoftwareProjectParameterInfoInput'
- Input field 'parameter' of type 'SupSoftwareProjectParameterInfoInput!' was added to input object type 'SupSoftwareProjectParameterInput'
- Input field 'values' of type '[String!]!' was added to input object type 'SupSoftwareProjectParameterInput'
- Input field 'addParameters' of type '[SupSoftwareProjectParameterInput!]' was added to input object type 'SupSoftwareProjectPatchParametersInput'
- Input field 'removeParameters' of type '[SupSoftwareProjectParameterInfoInput!]' was added to input object type 'SupSoftwareProjectPatchParametersInput'
- Input field 'softwareProjectId' of type 'ID!' was added to input object type 'SupSoftwareProjectPatchParametersInput'
- Input field 'parameters' of type '[SupSoftwareProjectParameterInput!]' was added to input object type 'SupSoftwareProjectSetParametersInput'
- Input field 'softwareProjectId' of type 'ID!' was added to input object type 'SupSoftwareProjectSetParametersInput'

### Supply

#### ✏️ Mutation

- Field 'supEvalKitPatchParameters' was added to object type 'Mutation'
- Argument 'input: SupEvalKitPatchParametersInput!' added to 'Mutation.supEvalKitPatchParameters'
- Field 'supEvalKitSetParameters' was added to object type 'Mutation'
- Argument 'input: SupEvalKitSetParametersInput!' added to 'Mutation.supEvalKitSetParameters'
- Field 'supSolutionTemplatePatchKeyFeatureGroups' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplatePatchKeyFeatureGroupsInput!' added to 'Mutation.supSolutionTemplatePatchKeyFeatureGroups'
- Field 'supSolutionTemplateSetKeyFeatureGroups' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateSetKeyFeatureGroupsInput!' added to 'Mutation.supSolutionTemplateSetKeyFeatureGroups'

#### Types

- Type 'SupEvalKitPatchParametersPayload' was added
- Object type 'SupEvalKitPatchParametersPayload' has description 'Payload returned after patching parameters on an evaluation kit.'
- Type 'SupEvalKitSetParametersPayload' was added
- Object type 'SupEvalKitSetParametersPayload' has description 'Payload returned after setting parameters on an evaluation kit.'
- Type 'SupSolutionTemplateInvalidDataError' was added
- 'SupSolutionTemplateInvalidDataError' object implements 'Error' interface
- Type 'SupSolutionTemplatePatchKeyFeatureGroupsPayload' was added
- Type 'SupSolutionTemplateSetKeyFeatureGroupsPayload' was added
- Type 'SupEvalKitPatchParametersError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitPatchParametersError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitPatchParametersError'
- Type 'SupEvalKitSetParametersError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitSetParametersError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitSetParametersError'
- Type 'SupSolutionTemplatePatchKeyFeatureGroupsError' was added
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchKeyFeatureGroupsError'
- Member 'SupSolutionTemplateInvalidDataError' was added to Union type 'SupSolutionTemplatePatchKeyFeatureGroupsError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchKeyFeatureGroupsError'
- Type 'SupSolutionTemplateSetKeyFeatureGroupsError' was added
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateSetKeyFeatureGroupsError'
- Member 'SupSolutionTemplateInvalidDataError' was added to Union type 'SupSolutionTemplateSetKeyFeatureGroupsError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateSetKeyFeatureGroupsError'
- Type 'SupEvalKitParameterInfoInput' was added
- Object type 'SupEvalKitParameterInfoInput' has description 'Identifies a parameter by its title.'
- Type 'SupEvalKitParameterInput' was added
- Object type 'SupEvalKitParameterInput' has description 'A parameter and its values.'
- Type 'SupEvalKitPatchParametersInput' was added
- Object type 'SupEvalKitPatchParametersInput' has description 'Input for patching parameters on an evaluation kit.'
- Type 'SupEvalKitSetParametersInput' was added
- Object type 'SupEvalKitSetParametersInput' has description 'Input for replacing all parameters on an evaluation kit.'
- Type 'SupSolutionTemplateKeyFeatureGroupAttributeInput' was added
- Type 'SupSolutionTemplateKeyFeatureGroupInput' was added
- Type 'SupSolutionTemplatePatchKeyFeatureGroupInput' was added
- Type 'SupSolutionTemplatePatchKeyFeatureGroupsInput' was added
- Type 'SupSolutionTemplateRemoveKeyFeatureGroupAttributeInput' was added
- Type 'SupSolutionTemplateSetKeyFeatureGroupInput' was added
- Type 'SupSolutionTemplateSetKeyFeatureGroupsInput' was added

#### Fields

- Field 'errors' was added to object type 'SupEvalKitPatchParametersPayload'
- Field 'success' was added to object type 'SupEvalKitPatchParametersPayload'
- Field 'errors' was added to object type 'SupEvalKitSetParametersPayload'
- Field 'success' was added to object type 'SupEvalKitSetParametersPayload'
- Field 'errorCode' was added to object type 'SupSolutionTemplateInvalidDataError'
- Field 'message' was added to object type 'SupSolutionTemplateInvalidDataError'
- Field 'errors' was added to object type 'SupSolutionTemplatePatchKeyFeatureGroupsPayload'
- Field 'result' was added to object type 'SupSolutionTemplatePatchKeyFeatureGroupsPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateSetKeyFeatureGroupsPayload'
- Field 'result' was added to object type 'SupSolutionTemplateSetKeyFeatureGroupsPayload'

#### Input / Payload

- Input field 'title' of type 'String!' was added to input object type 'SupEvalKitParameterInfoInput'
- Input field 'parameter' of type 'SupEvalKitParameterInfoInput!' was added to input object type 'SupEvalKitParameterInput'
- Input field 'values' of type '[String!]!' was added to input object type 'SupEvalKitParameterInput'
- Input field 'addParameters' of type '[SupEvalKitParameterInput!]' was added to input object type 'SupEvalKitPatchParametersInput'
- Input field 'evaluationKitId' of type 'ID!' was added to input object type 'SupEvalKitPatchParametersInput'
- Input field 'removeParameters' of type '[SupEvalKitParameterInfoInput!]' was added to input object type 'SupEvalKitPatchParametersInput'
- Input field 'evaluationKitId' of type 'ID!' was added to input object type 'SupEvalKitSetParametersInput'
- Input field 'parameters' of type '[SupEvalKitParameterInput!]' was added to input object type 'SupEvalKitSetParametersInput'
- Input field 'name' of type 'String!' was added to input object type 'SupSolutionTemplateKeyFeatureGroupAttributeInput'
- Input field 'value' of type 'String!' was added to input object type 'SupSolutionTemplateKeyFeatureGroupAttributeInput'
- Input field 'attributes' of type '[SupSolutionTemplateKeyFeatureGroupAttributeInput!]!' was added to input object type 'SupSolutionTemplateKeyFeatureGroupInput'
- Input field 'order' of type 'Int!' was added to input object type 'SupSolutionTemplateKeyFeatureGroupInput'
- Input field 'title' of type 'String!' was added to input object type 'SupSolutionTemplateKeyFeatureGroupInput'
- Input field 'addKeyFeatureGroups' of type '[SupSolutionTemplateKeyFeatureGroupInput!]' was added to input object type 'SupSolutionTemplatePatchKeyFeatureGroupInput'
- Input field 'removeKeyFeatureGroupAttributes' of type '[SupSolutionTemplateRemoveKeyFeatureGroupAttributeInput!]' was added to input object type 'SupSolutionTemplatePatchKeyFeatureGroupInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplatePatchKeyFeatureGroupInput'
- Input field 'input' of type 'SupSolutionTemplatePatchKeyFeatureGroupInput!' was added to input object type 'SupSolutionTemplatePatchKeyFeatureGroupsInput'
- Input field 'attributeNames' of type '[String!]' was added to input object type 'SupSolutionTemplateRemoveKeyFeatureGroupAttributeInput'
- Input field 'keyFeatureGroupTitle' of type 'String!' was added to input object type 'SupSolutionTemplateRemoveKeyFeatureGroupAttributeInput'
- Input field 'keyFeatureGroups' of type '[SupSolutionTemplateKeyFeatureGroupInput!]' was added to input object type 'SupSolutionTemplateSetKeyFeatureGroupInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateSetKeyFeatureGroupInput'
- Input field 'input' of type 'SupSolutionTemplateSetKeyFeatureGroupInput!' was added to input object type 'SupSolutionTemplateSetKeyFeatureGroupsInput'


