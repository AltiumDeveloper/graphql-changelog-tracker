# gateway-changelog-09-Jun-2026

## ⚠️ Dangerous Changes (2)

### Supply

#### Types

- Enum value 'INVALID_DATA_INPUT' was added to enum 'SupSolutionTemplateErrorCode'
- Enum value 'SUP_SOLUTION_TEMPLATE_ITEM_CONFLICT' was added to enum 'SupSolutionTemplateErrorCode'


---

## ✅ Non-Breaking Changes (62)

### Renesas (preview)

#### 🔍 Query

- Field 'supSoftwareProjectParameterInfos' was added to object type 'Query'

#### Types

- Type 'SupSoftwareProjectParameter' was added
- Object type 'SupSoftwareProjectParameter' has description 'Represents a parameter in the software project.'
- Type 'SupSoftwareProjectParameterInfo' was added
- Object type 'SupSoftwareProjectParameterInfo' has description 'Represents the information of a parameter in the software project.'

#### Fields

- Field 'parameter' was added to object type 'SupSoftwareProjectParameter'
- Field 'values' was added to object type 'SupSoftwareProjectParameter'
- Field 'title' was added to object type 'SupSoftwareProjectParameterInfo'
- Field 'parameters' was added to object type 'SupSoftwareProject'

### Supply

#### 🔍 Query

- Field 'supEvalKitParameterInfos' was added to object type 'Query'

#### ✏️ Mutation

- Field 'supSolutionTemplatePatchTags' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplatePatchTagsInput!' added to 'Mutation.supSolutionTemplatePatchTags'
- Field 'supSolutionTemplateSetTags' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateSetTagsInput!' added to 'Mutation.supSolutionTemplateSetTags'

#### Types

- Type 'SupEvalKitParameter' was added
- Object type 'SupEvalKitParameter' has description 'Represents a parameter in the evaluation kit.'
- Type 'SupEvalKitParameterInfo' was added
- Object type 'SupEvalKitParameterInfo' has description 'Represents the information of a parameter in the evaluation kit.'
- Type 'SupSolutionTemplateKeyFeatureGroup' was added
- Type 'SupSolutionTemplateKeyFeatureGroupAttribute' was added
- Type 'SupSolutionTemplatePatchTagsPayload' was added
- Type 'SupSolutionTemplateResultPayload' was added
- Type 'SupSolutionTemplateSetTagsPayload' was added
- Type 'SupSolutionTemplateTag' was added
- Object type 'SupSolutionTemplateTag' has description 'Represents a tag for categorizing a solution template.'
- Type 'SupSolutionTemplatePatchTagsError' was added
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchTagsError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchTagsError'
- Type 'SupSolutionTemplateSetTagsError' was added
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateSetTagsError'
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateSetTagsError'
- Type 'SupSolutionTemplatePatchTagsInput' was added
- Type 'SupSolutionTemplateSetTagsInput' was added
- Type 'SupSolutionTemplateTagInput' was added

#### Fields

- Field 'parameter' was added to object type 'SupEvalKitParameter'
- Field 'values' was added to object type 'SupEvalKitParameter'
- Field 'title' was added to object type 'SupEvalKitParameterInfo'
- Field 'attributes' was added to object type 'SupSolutionTemplateKeyFeatureGroup'
- Field 'order' was added to object type 'SupSolutionTemplateKeyFeatureGroup'
- Field 'title' was added to object type 'SupSolutionTemplateKeyFeatureGroup'
- Field 'name' was added to object type 'SupSolutionTemplateKeyFeatureGroupAttribute'
- Field 'value' was added to object type 'SupSolutionTemplateKeyFeatureGroupAttribute'
- Field 'errors' was added to object type 'SupSolutionTemplatePatchTagsPayload'
- Field 'result' was added to object type 'SupSolutionTemplatePatchTagsPayload'
- Field 'success' was added to object type 'SupSolutionTemplateResultPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateSetTagsPayload'
- Field 'result' was added to object type 'SupSolutionTemplateSetTagsPayload'
- Field 'category' was added to object type 'SupSolutionTemplateTag'
- Field 'value' was added to object type 'SupSolutionTemplateTag'
- Field 'parameters' was added to object type 'SupEvalKit'
- Field 'releaseDate' was added to object type 'SupRefDesign'
- Field 'keyFeatureGroups' was added to object type 'SupSolutionTemplate'
- Field 'requirementTemplate' was added to object type 'SupSolutionTemplate'
- Field 'tags' was added to object type 'SupSolutionTemplate'
- Field 'previewUrl' was added to object type 'SupSolutionTemplateESDSource'

#### Input / Payload

- Input field 'addTags' of type '[SupSolutionTemplateTagInput!]' was added to input object type 'SupSolutionTemplatePatchTagsInput'
- Input field 'removeTags' of type '[SupSolutionTemplateTagInput!]' was added to input object type 'SupSolutionTemplatePatchTagsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplatePatchTagsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateSetTagsInput'
- Input field 'tags' of type '[SupSolutionTemplateTagInput!]!' was added to input object type 'SupSolutionTemplateSetTagsInput'
- Input field 'category' of type 'String!' was added to input object type 'SupSolutionTemplateTagInput'
- Input field 'value' of type 'String!' was added to input object type 'SupSolutionTemplateTagInput'


