# gateway-changelog-08-Oct-2026

## ✅ Non-Breaking Changes (35)

### Design

#### Arguments

- Argument 'designId: ID!' added to 'RuleCheckExecutionQueries.byReleaseIdCombinedErc'
- Argument 'releaseId: ID!' added to 'RuleCheckExecutionQueries.byReleaseIdCombinedErc'

#### Fields

- Field 'byReleaseIdCombinedErc' was added to object type 'RuleCheckExecutionQueries'

### Supply

#### ✏️ Mutation

- Field 'supSolutionTemplatePatchRefDesigns' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplatePatchRefDesignsInput!' added to 'Mutation.supSolutionTemplatePatchRefDesigns'
- Field 'supSolutionTemplateSetRefDesigns' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateSetRefDesignsInput!' added to 'Mutation.supSolutionTemplateSetRefDesigns'

#### Types

- Type 'SupSolutionTemplatePatchRefDesignsPayload' was added
- Object type 'SupSolutionTemplatePatchRefDesignsPayload' has description 'Payload for patching reference designs on a solution template.'
- Type 'SupSolutionTemplateSetRefDesignsPayload' was added
- Object type 'SupSolutionTemplateSetRefDesignsPayload' has description 'Payload for replacing reference designs on a solution template.'
- Type 'SupSolutionTemplatePatchRefDesignsError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchRefDesignsError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchRefDesignsError'
- Type 'SupSolutionTemplateSetRefDesignsError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateSetRefDesignsError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateSetRefDesignsError'
- Type 'SupSolutionTemplatePatchRefDesignsInput' was added
- Object type 'SupSolutionTemplatePatchRefDesignsInput' has description 'Input for adding or removing individual reference designs on a solution template.'
- Type 'SupSolutionTemplateSetRefDesignsInput' was added
- Object type 'SupSolutionTemplateSetRefDesignsInput' has description 'Input for replacing all reference designs on a solution template.'

#### Fields

- Field 'errors' was added to object type 'SupSolutionTemplatePatchRefDesignsPayload'
- Field 'success' was added to object type 'SupSolutionTemplatePatchRefDesignsPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateSetRefDesignsPayload'
- Field 'success' was added to object type 'SupSolutionTemplateSetRefDesignsPayload'
- Field 'refDesignIds' was added to object type 'SupSolutionTemplate'
- Field 'SupSolutionTemplate.refDesignIds' is deprecated
- Directive 'deprecated' was added to 'SupSolutionTemplate.refDesignIds'
- Argument 'reason' was added to '@deprecated'
- Field 'refDesigns' was added to object type 'SupSolutionTemplate'

#### Input / Payload

- Input field 'addRefDesignIds' of type '[ID!]' was added to input object type 'SupSolutionTemplatePatchRefDesignsInput'
- Input field 'removeRefDesignIds' of type '[ID!]' was added to input object type 'SupSolutionTemplatePatchRefDesignsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplatePatchRefDesignsInput'
- Input field 'refDesignIds' of type '[ID!]!' was added to input object type 'SupSolutionTemplateSetRefDesignsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateSetRefDesignsInput'


