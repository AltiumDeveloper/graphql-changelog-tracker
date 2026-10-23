# gateway-changelog-12-Jun-2026

## 🔴 Breaking Changes (1)

### Supply

#### 🔍 Query

- Field 'supRefDesignsByIds' was removed from object type 'Query'


---

## ✅ Non-Breaking Changes (19)

### Design

#### ✏️ Mutation

- Field 'desUpdateCommentThread' was added to object type 'Mutation'
- Argument 'input: DesUpdateCommentThreadInput!' added to 'Mutation.desUpdateCommentThread'

#### Types

- Type 'DesUpdateCommentThreadPayload' was added
- Object type 'DesUpdateCommentThreadPayload' has description 'Payload associated with updating a comment thread.'
- Type 'DesCommentThreadStatus' was added
- Enum value 'ACTIVE' was added to enum 'DesCommentThreadStatus'
- Enum value 'RESOLVED' was added to enum 'DesCommentThreadStatus'
- Object type 'DesCommentThreadStatus' has description 'Specifies a comment thread status.'
- Type 'DesUpdateCommentThreadInput' was added
- Object type 'DesUpdateCommentThreadInput' has description 'Input for updating a comment thread.'

#### Fields

- Field 'errors' was added to object type 'DesUpdateCommentThreadPayload'

#### Input / Payload

- Input field 'commentThreadId' of type 'String!' was added to input object type 'DesUpdateCommentThreadInput'
- Input field 'entityId' of type 'ID!' was added to input object type 'DesUpdateCommentThreadInput'
- Input field 'status' of type 'DesCommentThreadStatus!' was added to input object type 'DesUpdateCommentThreadInput'

### Platform

#### 🔍 Query

- Field 'solSolutionsByIds' was added to object type 'Query'
- Field 'Query.solSolutionsByIds' is deprecated
- Argument 'ids: [ID!]!' added to 'Query.solSolutionsByIds'
- Directive 'deprecated' was added to 'Query.solSolutionsByIds'

### Supply

#### Input / Payload

- Input field 'releaseDate' of type 'SupSolutionTemplateRefDesignSortDirection' was added to input object type 'SupSolutionTemplateRefDesignOrderInput'


