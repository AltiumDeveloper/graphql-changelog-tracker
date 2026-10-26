# gateway-changelog-13-May-2025

## ✅ Non-Breaking Changes (101)

### Platform

#### 🔍 Query

- Field 'desWorkspaceTeamByAuth' was added to object type 'Query'

#### Types

- Type 'DesProjectGuest' was added
- Object type 'DesProjectGuest' has description 'Represents a project guest (a user who is not registered to the workspace but has explicit share to one or more
items in the workspace).'
- Type 'DesProjectGuestConnection' was added
- Object type 'DesProjectGuestConnection' has description 'A connection to a list of items.'
- Type 'DesProjectGuestEdge' was added
- Object type 'DesProjectGuestEdge' has description 'An edge in a connection.'
- Type 'DesWorkspaceGroup' was added
- Object type 'DesWorkspaceGroup' has description 'The information about the workspace group.'
- Type 'DesWorkspaceGroupConnection' was added
- Object type 'DesWorkspaceGroupConnection' has description 'A connection to a list of items.'
- Type 'DesWorkspaceGroupEdge' was added
- Object type 'DesWorkspaceGroupEdge' has description 'An edge in a connection.'
- Type 'DesWorkspaceTeam' was added
- Object type 'DesWorkspaceTeam' has description 'Represents a team of collaborators in a given workspace.'
- Type 'DesWorkspaceUser' was added
- Object type 'DesWorkspaceUser' has description 'Represents a user registered in a workspace.'
- Type 'DesWorkspaceUserConnection' was added
- Object type 'DesWorkspaceUserConnection' has description 'A connection to a list of items.'
- Type 'DesWorkspaceUserEdge' was added
- Object type 'DesWorkspaceUserEdge' has description 'An edge in a connection.'
- Type 'DesProjectGuestOrderBy' was added
- Enum value 'GLOBAL_USER_ID' was added to enum 'DesProjectGuestOrderBy'
- Enum value 'EMAIL' was added to enum 'DesProjectGuestOrderBy'
- Enum value 'DISPLAY_NAME' was added to enum 'DesProjectGuestOrderBy'
- Object type 'DesProjectGuestOrderBy' has description 'Specifies the sort order field for the result set of project guests.'
- Type 'DesWorkspaceGroupOrderBy' was added
- Enum value 'GROUP_ID' was added to enum 'DesWorkspaceGroupOrderBy'
- Enum value 'NAME' was added to enum 'DesWorkspaceGroupOrderBy'
- Enum value 'CREATED_AT' was added to enum 'DesWorkspaceGroupOrderBy'
- Object type 'DesWorkspaceGroupOrderBy' has description 'Specifies the sort order field for the result set of workspace groups.'
- Type 'DesWorkspaceTeamSortDirection' was added
- Enum value 'ASC' was added to enum 'DesWorkspaceTeamSortDirection'
- Enum value 'DESC' was added to enum 'DesWorkspaceTeamSortDirection'
- Object type 'DesWorkspaceTeamSortDirection' has description 'Specifies the sort direction that applies to the corresponding sort order field.'
- Type 'DesWorkspaceUserOrderBy' was added
- Enum value 'USER_ID' was added to enum 'DesWorkspaceUserOrderBy'
- Enum value 'EMAIL' was added to enum 'DesWorkspaceUserOrderBy'
- Enum value 'DISPLAY_NAME' was added to enum 'DesWorkspaceUserOrderBy'
- Object type 'DesWorkspaceUserOrderBy' has description 'Specifies the sort order field for the result set of workspace members.'
- Type 'DesWorkspaceUserProfilePictureSize' was added
- Enum value 'SIZE48X48' was added to enum 'DesWorkspaceUserProfilePictureSize'
- Enum value 'SIZE70X70' was added to enum 'DesWorkspaceUserProfilePictureSize'
- Enum value 'SIZE128X128' was added to enum 'DesWorkspaceUserProfilePictureSize'
- Enum value 'ORIGINAL' was added to enum 'DesWorkspaceUserProfilePictureSize'
- Type 'DesWorkspaceUserType' was added
- Enum value 'WORKSPACE_MEMBER' was added to enum 'DesWorkspaceUserType'
- Enum value 'WORKSPACE_GUEST' was added to enum 'DesWorkspaceUserType'
- Object type 'DesWorkspaceUserType' has description 'Specifies the type of the user in the workspace.'

#### Arguments

- Argument 'first: Int' added to 'DesWorkspaceGroup.members'
- Argument 'after: String' added to 'DesWorkspaceGroup.members'
- Argument 'orderBy: DesWorkspaceUserOrderBy' added to 'DesWorkspaceGroup.members'
- Argument 'sortDirection: DesWorkspaceTeamSortDirection' added to 'DesWorkspaceGroup.members'
- Argument 'first: Int' added to 'DesWorkspaceTeam.projectGuests'
- Argument 'after: String' added to 'DesWorkspaceTeam.projectGuests'
- Argument 'orderBy: DesProjectGuestOrderBy' added to 'DesWorkspaceTeam.projectGuests'
- Argument 'sortDirection: DesWorkspaceTeamSortDirection' added to 'DesWorkspaceTeam.projectGuests'
- Argument 'first: Int' added to 'DesWorkspaceTeam.workspaceGroups'
- Argument 'after: String' added to 'DesWorkspaceTeam.workspaceGroups'
- Argument 'orderBy: DesWorkspaceGroupOrderBy' added to 'DesWorkspaceTeam.workspaceGroups'
- Argument 'sortDirection: DesWorkspaceTeamSortDirection' added to 'DesWorkspaceTeam.workspaceGroups'
- Argument 'first: Int' added to 'DesWorkspaceTeam.workspaceUsers'
- Argument 'after: String' added to 'DesWorkspaceTeam.workspaceUsers'
- Argument 'orderBy: DesWorkspaceUserOrderBy' added to 'DesWorkspaceTeam.workspaceUsers'
- Argument 'sortDirection: DesWorkspaceTeamSortDirection' added to 'DesWorkspaceTeam.workspaceUsers'
- Argument 'size: DesWorkspaceUserProfilePictureSize!' (with default value) added to 'DesWorkspaceUser.profilePicture'

#### Fields

- Field 'globalUserId' was added to object type 'DesProjectGuest'
- Field 'edges' was added to object type 'DesProjectGuestConnection'
- Field 'nodes' was added to object type 'DesProjectGuestConnection'
- Field 'pageInfo' was added to object type 'DesProjectGuestConnection'
- Field 'totalCount' was added to object type 'DesProjectGuestConnection'
- Field 'cursor' was added to object type 'DesProjectGuestEdge'
- Field 'node' was added to object type 'DesProjectGuestEdge'
- Field 'groupId' was added to object type 'DesWorkspaceGroup'
- Field 'members' was added to object type 'DesWorkspaceGroup'
- Field 'name' was added to object type 'DesWorkspaceGroup'
- Field 'edges' was added to object type 'DesWorkspaceGroupConnection'
- Field 'nodes' was added to object type 'DesWorkspaceGroupConnection'
- Field 'pageInfo' was added to object type 'DesWorkspaceGroupConnection'
- Field 'totalCount' was added to object type 'DesWorkspaceGroupConnection'
- Field 'cursor' was added to object type 'DesWorkspaceGroupEdge'
- Field 'node' was added to object type 'DesWorkspaceGroupEdge'
- Field 'projectGuests' was added to object type 'DesWorkspaceTeam'
- Field 'workspaceGroups' was added to object type 'DesWorkspaceTeam'
- Field 'workspaceUsers' was added to object type 'DesWorkspaceTeam'
- Field 'displayName' was added to object type 'DesWorkspaceUser'
- Field 'email' was added to object type 'DesWorkspaceUser'
- Field 'firstName' was added to object type 'DesWorkspaceUser'
- Field 'globalUserId' was added to object type 'DesWorkspaceUser'
- Field 'groups' was added to object type 'DesWorkspaceUser'
- Field 'isOnline' was added to object type 'DesWorkspaceUser'
- Field 'lastName' was added to object type 'DesWorkspaceUser'
- Field 'profilePicture' was added to object type 'DesWorkspaceUser'
- Field 'type' was added to object type 'DesWorkspaceUser'
- Field 'userId' was added to object type 'DesWorkspaceUser'
- Field 'edges' was added to object type 'DesWorkspaceUserConnection'
- Field 'nodes' was added to object type 'DesWorkspaceUserConnection'
- Field 'pageInfo' was added to object type 'DesWorkspaceUserConnection'
- Field 'totalCount' was added to object type 'DesWorkspaceUserConnection'
- Field 'cursor' was added to object type 'DesWorkspaceUserEdge'
- Field 'node' was added to object type 'DesWorkspaceUserEdge'


