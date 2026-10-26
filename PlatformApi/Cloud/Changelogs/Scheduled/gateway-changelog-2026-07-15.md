# gateway-changelog-15-Jul-2026

## ✅ Non-Breaking Changes (33)

### Platform

#### Types

- Type 'PlatformTokenConnection' was added
- Object type 'PlatformTokenConnection' has description 'A connection to a list of items.'
- Type 'PlatformTokenEdge' was added
- Object type 'PlatformTokenEdge' has description 'An edge in a connection.'
- Type 'PlatformTokenFilterInput' was added
- Type 'PlatformTokenSortInput' was added

#### Arguments

- Argument 'after: String' added to 'TokenQueries.byWorkspace'
- Argument 'before: String' added to 'TokenQueries.byWorkspace'
- Argument 'first: Int' added to 'TokenQueries.byWorkspace'
- Argument 'last: Int' added to 'TokenQueries.byWorkspace'
- Argument 'order: [PlatformTokenSortInput!]' added to 'TokenQueries.byWorkspace'
- Argument 'where: PlatformTokenFilterInput' added to 'TokenQueries.byWorkspace'

#### Fields

- Field 'edges' was added to object type 'PlatformTokenConnection'
- Field 'nodes' was added to object type 'PlatformTokenConnection'
- Field 'pageInfo' was added to object type 'PlatformTokenConnection'
- Field 'totalCount' was added to object type 'PlatformTokenConnection'
- Field 'cursor' was added to object type 'PlatformTokenEdge'
- Field 'node' was added to object type 'PlatformTokenEdge'
- Field 'byWorkspace' was added to object type 'TokenQueries'

#### Input / Payload

- Input field 'and' of type '[PlatformTokenFilterInput!]' was added to input object type 'PlatformTokenFilterInput'
- Input field 'createdAt' of type 'DateTimeOperationFilterInput' was added to input object type 'PlatformTokenFilterInput'
- Input field 'deletedAt' of type 'DateTimeOperationFilterInput' was added to input object type 'PlatformTokenFilterInput'
- Input field 'description' of type 'StringOperationFilterInput' was added to input object type 'PlatformTokenFilterInput'
- Input field 'expiresAt' of type 'DateTimeOperationFilterInput' was added to input object type 'PlatformTokenFilterInput'
- Input field 'name' of type 'StringOperationFilterInput' was added to input object type 'PlatformTokenFilterInput'
- Input field 'or' of type '[PlatformTokenFilterInput!]' was added to input object type 'PlatformTokenFilterInput'
- Input field 'updatedAt' of type 'DateTimeOperationFilterInput' was added to input object type 'PlatformTokenFilterInput'
- Input field 'createdAt' of type 'SortEnumType' was added to input object type 'PlatformTokenSortInput'
- Input field 'deletedAt' of type 'SortEnumType' was added to input object type 'PlatformTokenSortInput'
- Input field 'description' of type 'SortEnumType' was added to input object type 'PlatformTokenSortInput'
- Input field 'expiresAt' of type 'SortEnumType' was added to input object type 'PlatformTokenSortInput'
- Input field 'name' of type 'SortEnumType' was added to input object type 'PlatformTokenSortInput'
- Input field 'updatedAt' of type 'SortEnumType' was added to input object type 'PlatformTokenSortInput'


