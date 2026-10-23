# gateway-changelog-24-Oct-2025

## ⚠️ Dangerous Changes (1)

### Platform

#### Types

- Member 'GloAppNameNotUpdatedError' was added to Union type 'GloUpdateAppNameError'


---

## ✅ Non-Breaking Changes (40)

### Design

#### 🔍 Query

- Field 'Query.desManufacturePackageById' is deprecated
- Directive 'deprecated' was added to 'Query.desManufacturePackageById'

#### Fields

- Field 'DesManufacturePackage.id' is deprecated
- Directive 'deprecated' was added to 'DesManufacturePackage.id'

### Platform

#### 🔍 Query

- Field 'desWorkspaceGroupById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.desWorkspaceGroupById'
- Field 'desWorkspaceGroupsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.desWorkspaceGroupsByIds'

#### ✏️ Mutation

- Field 'gloAddAppGrantType' was added to object type 'Mutation'
- Argument 'input: GloAddAppGrantTypeInput!' added to 'Mutation.gloAddAppGrantType'
- Field 'gloRemoveAppGrantType' was added to object type 'Mutation'
- Argument 'input: GloRemoveAppGrantTypeInput!' added to 'Mutation.gloRemoveAppGrantType'

#### Types

- Type 'GloAddAppGrantTypePayload' was added
- Type 'GloAppGrantTypeNotUpdatedError' was added
- 'GloAppGrantTypeNotUpdatedError' object implements 'Error' interface
- Object type 'GloAppGrantTypeNotUpdatedError' has description 'Error that occurs when updating the grant type for a `GloApp` is unsuccessful.'
- Type 'GloAppNameNotUpdatedError' was added
- 'GloAppNameNotUpdatedError' object implements 'Error' interface
- Object type 'GloAppNameNotUpdatedError' has description 'Error that occurs when updating the name for a `GloApp` is unsuccessful.'
- Type 'GloRemoveAppGrantTypePayload' was added
- Type 'GloAddAppGrantTypeError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloAddAppGrantTypeError'
- Member 'GloAppDeletedError' was added to Union type 'GloAddAppGrantTypeError'
- Member 'GloAppGrantTypeNotUpdatedError' was added to Union type 'GloAddAppGrantTypeError'
- Type 'GloRemoveAppGrantTypeError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloRemoveAppGrantTypeError'
- Member 'GloAppDeletedError' was added to Union type 'GloRemoveAppGrantTypeError'
- Member 'GloAppGrantTypeNotUpdatedError' was added to Union type 'GloRemoveAppGrantTypeError'
- Type 'GloAddAppGrantTypeInput' was added
- Type 'GloRemoveAppGrantTypeInput' was added

#### Fields

- Field 'errors' was added to object type 'GloAddAppGrantTypePayload'
- Field 'gloApp' was added to object type 'GloAddAppGrantTypePayload'
- Field 'message' was added to object type 'GloAppGrantTypeNotUpdatedError'
- Field 'message' was added to object type 'GloAppNameNotUpdatedError'
- Field 'errors' was added to object type 'GloRemoveAppGrantTypePayload'
- Field 'gloApp' was added to object type 'GloRemoveAppGrantTypePayload'

#### Input / Payload

- Input field 'grantType' of type 'String!' was added to input object type 'GloAddAppGrantTypeInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloAddAppGrantTypeInput'
- Input field 'grantType' of type 'String!' was added to input object type 'GloRemoveAppGrantTypeInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloRemoveAppGrantTypeInput'


