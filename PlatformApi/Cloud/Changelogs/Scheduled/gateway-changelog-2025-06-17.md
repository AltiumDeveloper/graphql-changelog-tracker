# gateway-changelog-17-Jun-2025

## 🔴 Breaking Changes (1)

### Platform

#### Fields

- Field 'SolSolution.items' changed type from '[String!]!' to '[ID!]!'


---

## ✅ Non-Breaking Changes (15)

### Platform

#### ✏️ Mutation

- Field 'solLinkItemToSolution' was added to object type 'Mutation'
- Argument 'input: SolLinkItemToSolutionInput!' added to 'Mutation.solLinkItemToSolution'
- Field 'solUnlinkItemFromSolution' was added to object type 'Mutation'
- Argument 'input: SolUnlinkItemFromSolutionInput!' added to 'Mutation.solUnlinkItemFromSolution'

#### Types

- Type 'SolLinkItemToSolutionPayload' was added
- Type 'SolUnlinkItemFromSolutionPayload' was added
- Type 'SolLinkItemToSolutionInput' was added
- Type 'SolUnlinkItemFromSolutionInput' was added

#### Fields

- Field 'isSuccess' was added to object type 'SolLinkItemToSolutionPayload'
- Field 'isSuccess' was added to object type 'SolUnlinkItemFromSolutionPayload'
- Field 'SolSolution.sharedWith' changed type from '[String!]' to '[String!]!'

#### Input / Payload

- Input field 'solutionId' of type 'ID!' was added to input object type 'SolLinkItemToSolutionInput'
- Input field 'itemId' of type 'ID!' was added to input object type 'SolLinkItemToSolutionInput'
- Input field 'solutionId' of type 'ID!' was added to input object type 'SolUnlinkItemFromSolutionInput'
- Input field 'itemId' of type 'ID!' was added to input object type 'SolUnlinkItemFromSolutionInput'


