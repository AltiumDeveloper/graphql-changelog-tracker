# gateway-changelog-17-Oct-2025

## ⚠️ Dangerous Changes (1)

### Design

#### 🔍 Query

- Argument 'args: DesProjectArgsInput' added to 'Query.desProjects'


---

## ✅ Non-Breaking Changes (7)

### Design

#### Types

- Type 'DesProjectArgsInput' was added

#### Fields

- Field 'variantCount' was added to object type 'DesProject'

#### Input / Payload

- Input field 'hasLayers' of type 'Boolean' was added to input object type 'DesProjectArgsInput'
- Input field 'hasVariants' of type 'Boolean' was added to input object type 'DesProjectArgsInput'

### Platform

#### Fields

- Field 'parameterBundle' was added to object type 'SolSolution'

#### Input / Payload

- Input field 'parameterBundle' of type 'String' was added to input object type 'SolCreateSolutionInput'
- Input field 'parameterBundle' of type 'String' was added to input object type 'SolUpdateSolutionInput'


