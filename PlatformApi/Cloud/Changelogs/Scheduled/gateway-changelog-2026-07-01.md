# gateway-changelog-01-Jul-2026

## ✅ Non-Breaking Changes (12)

### Supply

#### ✏️ Mutation

- Field 'supSolutionTemplateUpdateSolutionTemplateStatus' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateUpdateSolutionTemplateStatusInput!' added to 'Mutation.supSolutionTemplateUpdateSolutionTemplateStatus'

#### Types

- Type 'SupSolutionTemplateUpdateSolutionTemplateStatusPayload' was added
- Object type 'SupSolutionTemplateUpdateSolutionTemplateStatusPayload' has description 'Payload associated with updating the status of a solution template.'
- Type 'SupSolutionTemplateUpdateSolutionTemplateStatusError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateUpdateSolutionTemplateStatusError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateUpdateSolutionTemplateStatusError'
- Type 'SupSolutionTemplateUpdateSolutionTemplateStatusInput' was added
- Object type 'SupSolutionTemplateUpdateSolutionTemplateStatusInput' has description 'Input for solution template status update.'

#### Fields

- Field 'errors' was added to object type 'SupSolutionTemplateUpdateSolutionTemplateStatusPayload'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateStatusInput'
- Input field 'status' of type 'SupSolutionTemplateStatus!' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateStatusInput'


