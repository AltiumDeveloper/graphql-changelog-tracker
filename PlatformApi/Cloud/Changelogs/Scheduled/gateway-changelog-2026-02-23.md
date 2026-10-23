# gateway-changelog-23-Feb-2026

## ✅ Non-Breaking Changes (26)

### Common

#### Directives

- Directive 'authorize' was added
- Directive 'authorize' added repeatable.
- Location 'OBJECT' was added to directive 'authorize'
- Location 'FIELD_DEFINITION' was added to directive 'authorize'
- Argument 'apply' was added to directive 'authorize'
- Argument 'policy' was added to directive 'authorize'
- Argument 'roles' was added to directive 'authorize'
- Directive 'listSize' was added
- Location 'FIELD_DEFINITION' was added to directive 'listSize'
- Argument 'assumedSize' was added to directive 'listSize'
- Argument 'slicingArguments' was added to directive 'listSize'
- Argument 'slicingArgumentDefaultValue' was added to directive 'listSize'
- Argument 'sizedFields' was added to directive 'listSize'
- Argument 'requireOneSlicingArgument' was added to directive 'listSize'

### Customization

#### Types

- Type 'GloCusExecutionContext' was added
- Enum value 'SYSTEM' was added to enum 'GloCusExecutionContext'
- Enum value 'USER' was added to enum 'GloCusExecutionContext'
- Object type 'GloCusExecutionContext' has description 'Represents the types of execution context for extension points.'
- Type 'GloCusExecutionContextOperationFilterInput' was added

#### Fields

- Field 'executionContext' was added to object type 'GloCusExtensionPoint'

#### Input / Payload

- Input field 'eq' of type 'GloCusExecutionContext' was added to input object type 'GloCusExecutionContextOperationFilterInput'
- Input field 'in' of type '[GloCusExecutionContext!]' was added to input object type 'GloCusExecutionContextOperationFilterInput'
- Input field 'neq' of type 'GloCusExecutionContext' was added to input object type 'GloCusExecutionContextOperationFilterInput'
- Input field 'nin' of type '[GloCusExecutionContext!]' was added to input object type 'GloCusExecutionContextOperationFilterInput'
- Input field 'executionContext' of type 'GloCusExecutionContextOperationFilterInput' was added to input object type 'GloCusExtensionPointFilterInput'
- Input field 'executionContext' of type 'SortEnumType' was added to input object type 'GloCusExtensionPointSortInput'


