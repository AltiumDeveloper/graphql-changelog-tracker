# gateway-changelog-25-Feb-2026

## 🔴 Breaking Changes (3)

### Platform

#### ✏️ Mutation

- Field 'solBldScaffoldingWithEmptyEsdAndSoftwareProject' was removed from object type 'Mutation'

#### Types

- Type 'SolBldScaffoldingWithEmptyEsdAndSoftwareProjectPayload' was removed
- Type 'SolBldScaffoldingWithEmptyEsdAndSoftwareProjectInput' was removed


---

## ✅ Non-Breaking Changes (7)

### Platform

#### ✏️ Mutation

- Field 'solBldCreateSolution' was added to object type 'Mutation'
- Argument 'input: SolBldCreateSolutionInput!' added to 'Mutation.solBldCreateSolution'

#### Types

- Type 'SolBldCreateSolutionPayload' was added
- Type 'SolBldCreateSolutionInput' was added

#### Fields

- Field 'solutionId' was added to object type 'SolBldCreateSolutionPayload'

#### Input / Payload

- Input field 'includeEmptyEsd' of type 'Boolean!' was added to input object type 'SolBldCreateSolutionInput'
- Input field 'solutionItems' of type '[ID!]!' was added to input object type 'SolBldCreateSolutionInput'


