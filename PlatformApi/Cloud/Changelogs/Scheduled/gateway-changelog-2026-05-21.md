# gateway-changelog-21-May-2026

## ⚠️ Dangerous Changes (1)

### Supply

#### 🔍 Query

- Argument 'order: [SupEvalKitSortInput!]' added to 'Query.supEvalKitDetailsByRefDesignId'


---

## ✅ Non-Breaking Changes (26)

### Supply

#### ✏️ Mutation

- Field 'supEvalKitAddRefDesignCompatibleEvalKit' was added to object type 'Mutation'
- Argument 'input: SupEvalKitAddRefDesignCompatibleEvalKitInput!' added to 'Mutation.supEvalKitAddRefDesignCompatibleEvalKit'
- Field 'supEvalKitDeleteRefDesignCompatibleEvalKit' was added to object type 'Mutation'
- Argument 'input: SupEvalKitDeleteRefDesignCompatibleEvalKitInput!' added to 'Mutation.supEvalKitDeleteRefDesignCompatibleEvalKit'

#### Types

- Type 'SupEvalKitAddRefDesignCompatibleEvalKitPayload' was added
- Type 'SupEvalKitAddRefDesignCompatibleEvalKitsPayload' was added
- Type 'SupEvalKitDeleteRefDesignCompatibleEvalKitPayload' was added
- Type 'SupEvalKitDeleteRefDesignCompatibleEvalKitsPayload' was added
- Type 'SupEvalKitAddRefDesignCompatibleEvalKitError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitAddRefDesignCompatibleEvalKitError'
- Type 'SupEvalKitDeleteRefDesignCompatibleEvalKitError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitDeleteRefDesignCompatibleEvalKitError'
- Type 'SupEvalKitAddRefDesignCompatibleEvalKitInput' was added
- Object type 'SupEvalKitAddRefDesignCompatibleEvalKitInput' has description 'Input for adding compatible evaluation kits to a reference design.'
- Type 'SupEvalKitDeleteRefDesignCompatibleEvalKitInput' was added
- Object type 'SupEvalKitDeleteRefDesignCompatibleEvalKitInput' has description 'Input for deleting compatible evaluation kits from a reference design.'

#### Fields

- Field 'errors' was added to object type 'SupEvalKitAddRefDesignCompatibleEvalKitPayload'
- Field 'supEvalKitAddRefDesignCompatibleEvalKitsPayload' was added to object type 'SupEvalKitAddRefDesignCompatibleEvalKitPayload'
- Field 'success' was added to object type 'SupEvalKitAddRefDesignCompatibleEvalKitsPayload'
- Field 'errors' was added to object type 'SupEvalKitDeleteRefDesignCompatibleEvalKitPayload'
- Field 'supEvalKitDeleteRefDesignCompatibleEvalKitsPayload' was added to object type 'SupEvalKitDeleteRefDesignCompatibleEvalKitPayload'
- Field 'success' was added to object type 'SupEvalKitDeleteRefDesignCompatibleEvalKitsPayload'

#### Input / Payload

- Input field 'evalKitIds' of type '[ID!]!' was added to input object type 'SupEvalKitAddRefDesignCompatibleEvalKitInput'
- Input field 'refDesignId' of type 'ID!' was added to input object type 'SupEvalKitAddRefDesignCompatibleEvalKitInput'
- Input field 'evalKitIds' of type '[ID!]!' was added to input object type 'SupEvalKitDeleteRefDesignCompatibleEvalKitInput'
- Input field 'refDesignId' of type 'ID!' was added to input object type 'SupEvalKitDeleteRefDesignCompatibleEvalKitInput'


