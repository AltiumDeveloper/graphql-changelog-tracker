# gateway-changelog-06-Feb-2026

## ✅ Non-Breaking Changes (28)

### Common

#### Types

- Type 'UUID' was added
- Type 'IdMutationResponse' was added
- Object type 'IdMutationResponse' has description '**Experimental**'

#### Fields

- Field 'id' was added to object type 'IdMutationResponse'

### System Design

#### 🔍 Query

- Field 'sysSdmSystemModelById' was added to object type 'Query'
- Argument 'id: UUID!' added to 'Query.sysSdmSystemModelById'
- Field 'sysSdmSystemModels' was added to object type 'Query'
- Argument 'order: [SysSdmSystemModelSortInput!]' added to 'Query.sysSdmSystemModels'
- Argument 'where: SysSdmSystemModelFilterInput' added to 'Query.sysSdmSystemModels'

#### ✏️ Mutation

- Field 'sysSdmCreateSystemModel' was added to object type 'Mutation'
- Argument 'systemModel: SysSdmCreateSystemModelInput!' added to 'Mutation.sysSdmCreateSystemModel'

#### Types

- Type 'SysSdmCreateSystemModelPayload' was added
- Object type 'SysSdmCreateSystemModelPayload' has description '**Experimental**'
- Type 'SysSdmSystemModel' was added
- Object type 'SysSdmSystemModel' has description '**Experimental**'
- Type 'SysSdmCreateSystemModelInput' was added
- Object type 'SysSdmCreateSystemModelInput' has description '**Experimental**'
- Type 'SysSdmSystemModelFilterInput' was added
- Object type 'SysSdmSystemModelFilterInput' has description '**Experimental**'
- Type 'SysSdmSystemModelSortInput' was added
- Object type 'SysSdmSystemModelSortInput' has description '**Experimental**'

#### Fields

- Field 'idMutationResponse' was added to object type 'SysSdmCreateSystemModelPayload'
- Field 'name' was added to object type 'SysSdmSystemModel'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'SysSdmCreateSystemModelInput'
- Input field 'and' of type '[SysSdmSystemModelFilterInput!]' was added to input object type 'SysSdmSystemModelFilterInput'
- Input field 'name' of type 'StringOperationFilterInput' was added to input object type 'SysSdmSystemModelFilterInput'
- Input field 'or' of type '[SysSdmSystemModelFilterInput!]' was added to input object type 'SysSdmSystemModelFilterInput'
- Input field 'name' of type 'SortEnumType' was added to input object type 'SysSdmSystemModelSortInput'


