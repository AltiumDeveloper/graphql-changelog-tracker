# gateway-changelog-29-Jul-2025

## ✅ Non-Breaking Changes (12)

### Design

#### Fields

- Field 'DesProject.tasks' changed type from '[DesTask!]' to '[DesTask!]!'
- Field 'DesWorkspace.tasks' changed type from '[DesTask!]' to '[DesTask!]!'

### Platform

#### ✏️ Mutation

- Field 'solUpdateSolution' was added to object type 'Mutation'
- Argument 'input: SolUpdateSolutionInput!' added to 'Mutation.solUpdateSolution'

#### Types

- Type 'SolUpdateSolutionPayload' was added
- Type 'SolUpdateSolutionInput' was added

#### Fields

- Field 'data' was added to object type 'SolUpdateSolutionPayload'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'SolUpdateSolutionInput'
- Input field 'name' of type 'String' was added to input object type 'SolUpdateSolutionInput'
- Input field 'previewUrl' of type 'String' was added to input object type 'SolUpdateSolutionInput'
- Input field 'description' of type 'String' was added to input object type 'SolUpdateSolutionInput'
- Input field 'SolCreateSolutionInput.previewUrl' changed type from 'String!' to 'String'


