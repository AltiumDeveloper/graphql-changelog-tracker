# gateway-changelog-05-Jun-2025

## ✅ Non-Breaking Changes (25)

### Platform

#### 🔍 Query

- Field 'solSolutionById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.solSolutionById'
- Field 'solSolutions' was added to object type 'Query'

#### ✏️ Mutation

- Field 'solCreateSolution' was added to object type 'Mutation'
- Argument 'input: SolCreateSolutionInput!' added to 'Mutation.solCreateSolution'
- Field 'solDeleteSolution' was added to object type 'Mutation'
- Argument 'input: SolDeleteSolutionInput!' added to 'Mutation.solDeleteSolution'

#### Types

- Type 'SolCreateSolutionPayload' was added
- Type 'SolDeleteSolutionPayload' was added
- Type 'SolSolution' was added
- Type 'SolCreateSolutionInput' was added
- Type 'SolDeleteSolutionInput' was added

#### Fields

- Field 'data' was added to object type 'SolCreateSolutionPayload'
- Field 'isDeleted' was added to object type 'SolDeleteSolutionPayload'
- Field 'description' was added to object type 'SolSolution'
- Field 'id' was added to object type 'SolSolution'
- Field 'lastModified' was added to object type 'SolSolution'
- Field 'name' was added to object type 'SolSolution'
- Field 'previewUrl' was added to object type 'SolSolution'
- Field 'sharedWith' was added to object type 'SolSolution'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'SolCreateSolutionInput'
- Input field 'previewUrl' of type 'String!' was added to input object type 'SolCreateSolutionInput'
- Input field 'description' of type 'String!' was added to input object type 'SolCreateSolutionInput'
- Input field 'sharedWith' of type '[String!]' was added to input object type 'SolCreateSolutionInput'
- Input field 'id' of type 'ID!' was added to input object type 'SolDeleteSolutionInput'


