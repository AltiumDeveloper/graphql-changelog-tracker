# gateway-changelog-27-Jan-2026

## 🔴 Breaking Changes (7)

### Design

#### 🔍 Query

- Field 'desDesignItemById' (deprecated) was removed from object type 'Query'

#### Types

- 'DesComponentType' object type no longer implements 'Node' interface
- 'DesDesignItem' object type no longer implements 'Node' interface

#### Fields

- Field 'id' (deprecated) was removed from object type 'DesComponentType'
- Field 'id' (deprecated) was removed from object type 'DesDesignItem'

#### Input / Payload

- Input field 'itemAsDesignItemId' (deprecated) was removed from input object type 'DesCreateCommentThreadInput'

### Platform

#### Input / Payload

- Input field 'userType' was removed from input object type 'DesWorkspaceUserFilterInput'


---

## ✅ Non-Breaking Changes (4)

### Design

#### 🔍 Query

- Field 'desDatasheetById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.desDatasheetById'

### Platform

#### Input / Payload

- Input field 'groupIds' of type '[String!]' was added to input object type 'DesWorkspaceUserFilterInput'
- Input field 'userTypes' of type '[DesWorkspaceUserType!]' was added to input object type 'DesWorkspaceUserFilterInput'


