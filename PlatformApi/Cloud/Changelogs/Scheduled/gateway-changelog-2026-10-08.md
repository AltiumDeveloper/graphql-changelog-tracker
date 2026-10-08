# gateway-changelog-2026-10-08

## ✅ Non-Breaking Changes (35)

- Type 'SupSolutionTemplatePatchRefDesignsPayload' was added
- Field 'errors' was added to object type 'SupSolutionTemplatePatchRefDesignsPayload'
- Field 'success' was added to object type 'SupSolutionTemplatePatchRefDesignsPayload'
- Object type 'SupSolutionTemplatePatchRefDesignsPayload' has description 'Payload for patching reference designs on a solution template.'
- Type 'SupSolutionTemplateSetRefDesignsPayload' was added
- Field 'errors' was added to object type 'SupSolutionTemplateSetRefDesignsPayload'
- Field 'success' was added to object type 'SupSolutionTemplateSetRefDesignsPayload'
- Object type 'SupSolutionTemplateSetRefDesignsPayload' has description 'Payload for replacing reference designs on a solution template.'
- Type 'SupSolutionTemplatePatchRefDesignsError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchRefDesignsError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchRefDesignsError'
- Type 'SupSolutionTemplateSetRefDesignsError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateSetRefDesignsError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateSetRefDesignsError'
- Type 'SupSolutionTemplatePatchRefDesignsInput' was added
- Input field 'addRefDesignIds' of type '[ID!]' was added to input object type 'SupSolutionTemplatePatchRefDesignsInput'
- Input field 'removeRefDesignIds' of type '[ID!]' was added to input object type 'SupSolutionTemplatePatchRefDesignsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplatePatchRefDesignsInput'
- Object type 'SupSolutionTemplatePatchRefDesignsInput' has description 'Input for adding or removing individual reference designs on a solution template.'
- Type 'SupSolutionTemplateSetRefDesignsInput' was added
- Input field 'refDesignIds' of type '[ID!]!' was added to input object type 'SupSolutionTemplateSetRefDesignsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateSetRefDesignsInput'
- Object type 'SupSolutionTemplateSetRefDesignsInput' has description 'Input for replacing all reference designs on a solution template.'
- Field 'supSolutionTemplatePatchRefDesigns' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplatePatchRefDesignsInput!' added to field 'Mutation.supSolutionTemplatePatchRefDesigns'
- Field 'supSolutionTemplateSetRefDesigns' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateSetRefDesignsInput!' added to field 'Mutation.supSolutionTemplateSetRefDesigns'
- Field 'byReleaseIdCombinedErc' was added to object type 'RuleCheckExecutionQueries'
- Argument 'designId: ID!' added to field 'RuleCheckExecutionQueries.byReleaseIdCombinedErc'
- Argument 'releaseId: ID!' added to field 'RuleCheckExecutionQueries.byReleaseIdCombinedErc'
- Field 'refDesignIds' was added to object type 'SupSolutionTemplate'
- Field 'SupSolutionTemplate.refDesignIds' is deprecated
- Directive 'deprecated' was added to field 'SupSolutionTemplate.refDesignIds'
- Argument 'reason' was added to '@deprecated'
- Field 'refDesigns' was added to object type 'SupSolutionTemplate'

