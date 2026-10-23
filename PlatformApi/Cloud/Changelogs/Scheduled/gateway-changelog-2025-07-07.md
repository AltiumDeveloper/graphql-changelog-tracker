# gateway-changelog-07-Jul-2025

## ⚠️ Dangerous Changes (2)

### Platform

#### Arguments

- Argument 'filter: DesProjectGuestFilterInput' added to 'DesWorkspaceTeam.projectGuests'
- Argument 'filter: DesWorkspaceUserFilterInput' added to 'DesWorkspaceTeam.workspaceUsers'


---

## ✅ Non-Breaking Changes (46)

### Platform

#### Types

- Type 'DesProjectGuestFilterInput' was added
- Object type 'DesProjectGuestFilterInput' has description 'Specifies the filtering criteria for the project guest list.'
- Type 'DesWorkspaceUserFilterInput' was added
- Object type 'DesWorkspaceUserFilterInput' has description 'Specifies the filtering criteria for the workspace user list.'

#### Arguments

- Argument 'size: DesWorkspaceUserProfilePictureSize!' (with default value) added to 'DesProjectGuest.profilePicture'

#### Fields

- Field 'displayName' was added to object type 'DesProjectGuest'
- Field 'email' was added to object type 'DesProjectGuest'
- Field 'firstName' was added to object type 'DesProjectGuest'
- Field 'isOnline' was added to object type 'DesProjectGuest'
- Field 'lastName' was added to object type 'DesProjectGuest'
- Field 'profilePicture' was added to object type 'DesProjectGuest'

#### Input / Payload

- Input field 'globalUserIds' of type '[String!]' was added to input object type 'DesProjectGuestFilterInput'
- Input field 'text' of type 'String' was added to input object type 'DesProjectGuestFilterInput'
- Input field 'userIds' of type '[String!]' was added to input object type 'DesWorkspaceUserFilterInput'
- Input field 'text' of type 'String' was added to input object type 'DesWorkspaceUserFilterInput'
- Input field 'userType' of type 'DesWorkspaceUserType' was added to input object type 'DesWorkspaceUserFilterInput'

### System Design

#### 🔍 Query

- Field 'sysEsdDocumentById' was added to object type 'Query'
- Argument 'id: String!' added to 'Query.sysEsdDocumentById'
- Field 'sysEsdDocuments' was added to object type 'Query'
- Field 'sysEsdDocumentsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sysEsdDocumentsByIds'

#### ✏️ Mutation

- Field 'sysEsdCreateDocument' was added to object type 'Mutation'
- Argument 'input: SysEsdCreateDocumentInput!' added to 'Mutation.sysEsdCreateDocument'
- Field 'sysEsdDeleteDocument' was added to object type 'Mutation'
- Argument 'input: SysEsdDeleteDocumentInput!' added to 'Mutation.sysEsdDeleteDocument'
- Field 'sysEsdUpdateDocument' was added to object type 'Mutation'
- Argument 'input: SysEsdUpdateDocumentInput!' added to 'Mutation.sysEsdUpdateDocument'

#### Types

- Type 'SysEsdCreateDocumentPayload' was added
- Type 'SysEsdDeleteDocumentPayload' was added
- Type 'SysEsdDocument' was added
- Type 'SysEsdUpdateDocumentPayload' was added
- Type 'SysEsdCreateDocumentInput' was added
- Type 'SysEsdDeleteDocumentInput' was added
- Type 'SysEsdUpdateDocumentInput' was added

#### Fields

- Field 'data' was added to object type 'SysEsdCreateDocumentPayload'
- Field 'isDeleted' was added to object type 'SysEsdDeleteDocumentPayload'
- Field 'folderId' was added to object type 'SysEsdDocument'
- Field 'id' was added to object type 'SysEsdDocument'
- Field 'name' was added to object type 'SysEsdDocument'
- Field 'data' was added to object type 'SysEsdUpdateDocumentPayload'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'SysEsdCreateDocumentInput'
- Input field 'folderId' of type 'String!' was added to input object type 'SysEsdCreateDocumentInput'
- Input field 'id' of type 'ID!' was added to input object type 'SysEsdDeleteDocumentInput'
- Input field 'id' of type 'ID!' was added to input object type 'SysEsdUpdateDocumentInput'
- Input field 'name' of type 'String!' was added to input object type 'SysEsdUpdateDocumentInput'
- Input field 'folderId' of type 'String!' was added to input object type 'SysEsdUpdateDocumentInput'


