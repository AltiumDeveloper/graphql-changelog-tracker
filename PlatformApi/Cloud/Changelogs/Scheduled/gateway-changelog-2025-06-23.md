# gateway-changelog-23-Jun-2025

## 🔴 Breaking Changes (3)

### Platform

#### Fields

- Field 'esdProjects' was removed from object type 'SolSolution'
- Field 'projects' was removed from object type 'SolSolution'
- Field 'softwareProjects' was removed from object type 'SolSolution'


---

## ✅ Non-Breaking Changes (217)

### Platform

#### 🔍 Query

- Field 'gloOrganization' was added to object type 'Query'
- Argument 'organizationId: String' added to 'Query.gloOrganization'
- Field 'gloUserGroups' was added to object type 'Query'
- Argument 'filter: GloUserGroupInputFilterInput' added to 'Query.gloUserGroups'
- Argument 'first: Int' added to 'Query.gloUserGroups'
- Argument 'after: String' added to 'Query.gloUserGroups'
- Argument 'last: Int' added to 'Query.gloUserGroups'
- Argument 'before: String' added to 'Query.gloUserGroups'
- Argument 'order: [GloUserGroupSortInput!]' added to 'Query.gloUserGroups'
- Field 'gloUsers' was added to object type 'Query'
- Argument 'filter: GloUserInputFilterInput' added to 'Query.gloUsers'
- Argument 'first: Int' added to 'Query.gloUsers'
- Argument 'after: String' added to 'Query.gloUsers'
- Argument 'last: Int' added to 'Query.gloUsers'
- Argument 'before: String' added to 'Query.gloUsers'
- Argument 'order: [GloUserSortInput!]' added to 'Query.gloUsers'

#### ✏️ Mutation

- Field 'gloAddUsersToGroup' was added to object type 'Mutation'
- Argument 'input: GloAddUsersToGroupInput!' added to 'Mutation.gloAddUsersToGroup'
- Field 'gloCreateUser' was added to object type 'Mutation'
- Argument 'input: GloCreateUserInput!' added to 'Mutation.gloCreateUser'
- Field 'gloCreateUserGroup' was added to object type 'Mutation'
- Argument 'input: GloCreateUserGroupInput!' added to 'Mutation.gloCreateUserGroup'
- Field 'gloRemoveUsersFromGroup' was added to object type 'Mutation'
- Argument 'input: GloRemoveUsersFromGroupInput!' added to 'Mutation.gloRemoveUsersFromGroup'

#### Types

- Type 'GloAddress' was added
- Type 'GloAddUsersToGroupPayload' was added
- Object type 'GloAddUsersToGroupPayload' has description 'Represents output value for add user to group.'
- Type 'GloCreateUserGroupPayload' was added
- Object type 'GloCreateUserGroupPayload' has description 'Represents output value for creation of a new group.'
- Type 'GloCreateUserPayload' was added
- Object type 'GloCreateUserPayload' has description 'Represents output value for creating new user.'
- Type 'GloOrganization' was added
- Type 'GloParameter' was added
- Type 'GloRemoveUsersFromGroupPayload' was added
- Object type 'GloRemoveUsersFromGroupPayload' has description 'Represents output value for remove users from group.'
- Type 'GloSamlSettings' was added
- Type 'GloUser' was added
- Type 'GloUserConnection' was added
- Object type 'GloUserConnection' has description 'A connection to a list of items.'
- Type 'GloUserEdge' was added
- Object type 'GloUserEdge' has description 'An edge in a connection.'
- Type 'GloUserGroup' was added
- Type 'GloUserGroupConnection' was added
- Object type 'GloUserGroupConnection' has description 'A connection to a list of items.'
- Type 'GloUserGroupEdge' was added
- Object type 'GloUserGroupEdge' has description 'An edge in a connection.'
- Type 'GloUserSpace' was added
- Type 'GloAccountType' was added
- Enum value 'BUSINESS' was added to enum 'GloAccountType'
- Enum value 'PERSONAL' was added to enum 'GloAccountType'
- Type 'GloAuthType' was added
- Enum value 'AT_NATIVE' was added to enum 'GloAuthType'
- Enum value 'AT_WINDOWS' was added to enum 'GloAuthType'
- Enum value 'AT_LDAP' was added to enum 'GloAuthType'
- Type 'GloAddUsersToGroupInput' was added
- Object type 'GloAddUsersToGroupInput' has description 'Represents input value for adding user into group.'
- Type 'GloCreateUserGroupInput' was added
- Object type 'GloCreateUserGroupInput' has description 'Represents input value for creation of a new group.'
- Type 'GloCreateUserInput' was added
- Object type 'GloCreateUserInput' has description 'Represents input value for creating new user.'
- Type 'GloParameterInput' was added
- Type 'GloRemoveUsersFromGroupInput' was added
- Object type 'GloRemoveUsersFromGroupInput' has description 'Represents input value for removing user from group.'
- Type 'GloUserGroupInputFilterInput' was added
- Type 'GloUserGroupSortInput' was added
- Type 'GloUserInputFilterInput' was added
- Type 'GloUserSortInput' was added

#### Fields

- Field 'city' was added to object type 'GloAddress'
- Field 'country' was added to object type 'GloAddress'
- Field 'postalCode' was added to object type 'GloAddress'
- Field 'state' was added to object type 'GloAddress'
- Field 'street' was added to object type 'GloAddress'
- Field 'status' was added to object type 'GloAddUsersToGroupPayload'
- Field 'userGroup' was added to object type 'GloCreateUserGroupPayload'
- Field 'userId' was added to object type 'GloCreateUserPayload'
- Field 'accountType' was added to object type 'GloOrganization'
- Field 'active' was added to object type 'GloOrganization'
- Field 'allowDisplayUsers' was added to object type 'GloOrganization'
- Field 'billingAddress' was added to object type 'GloOrganization'
- Field 'currency' was added to object type 'GloOrganization'
- Field 'customerNumber' was added to object type 'GloOrganization'
- Field 'description' was added to object type 'GloOrganization'
- Field 'fax' was added to object type 'GloOrganization'
- Field 'groups' was added to object type 'GloOrganization'
- Field 'id' was added to object type 'GloOrganization'
- Field 'isPublic' was added to object type 'GloOrganization'
- Field 'name' was added to object type 'GloOrganization'
- Field 'organizationId' was added to object type 'GloOrganization'
- Field 'organizationParameters' was added to object type 'GloOrganization'
- Field 'phone' was added to object type 'GloOrganization'
- Field 'picture' was added to object type 'GloOrganization'
- Field 'samlSettings' was added to object type 'GloOrganization'
- Field 'shippingAddress' was added to object type 'GloOrganization'
- Field 'users' was added to object type 'GloOrganization'
- Field 'webSite' was added to object type 'GloOrganization'
- Field 'name' was added to object type 'GloParameter'
- Field 'parameterId' was added to object type 'GloParameter'
- Field 'value' was added to object type 'GloParameter'
- Field 'status' was added to object type 'GloRemoveUsersFromGroupPayload'
- Field 'config' was added to object type 'GloSamlSettings'
- Field 'enabled' was added to object type 'GloSamlSettings'
- Field 'scimEnabled' was added to object type 'GloSamlSettings'
- Field 'activationStatus' was added to object type 'GloUser'
- Field 'active' was added to object type 'GloUser'
- Field 'authType' was added to object type 'GloUser'
- Field 'autoSync' was added to object type 'GloUser'
- Field 'badges' was added to object type 'GloUser'
- Field 'country' was added to object type 'GloUser'
- Field 'currentPosition' was added to object type 'GloUser'
- Field 'displayName' was added to object type 'GloUser'
- Field 'domain' was added to object type 'GloUser'
- Field 'email' was added to object type 'GloUser'
- Field 'exampleWork' was added to object type 'GloUser'
- Field 'experience' was added to object type 'GloUser'
- Field 'firstName' was added to object type 'GloUser'
- Field 'groups' was added to object type 'GloUser'
- Field 'hideEmail' was added to object type 'GloUser'
- Field 'hostName' was added to object type 'GloUser'
- Field 'id' was added to object type 'GloUser'
- Field 'lastName' was added to object type 'GloUser'
- Field 'locale' was added to object type 'GloUser'
- Field 'organization' was added to object type 'GloUser'
- Field 'parameters' was added to object type 'GloUser'
- Field 'phone' was added to object type 'GloUser'
- Field 'profilePicture' was added to object type 'GloUser'
- Field 'salutation' was added to object type 'GloUser'
- Field 'spaces' was added to object type 'GloUser'
- Field 'specialties' was added to object type 'GloUser'
- Field 'timezone' was added to object type 'GloUser'
- Field 'userId' was added to object type 'GloUser'
- Field 'userName' was added to object type 'GloUser'
- Field 'website' was added to object type 'GloUser'
- Field 'edges' was added to object type 'GloUserConnection'
- Field 'nodes' was added to object type 'GloUserConnection'
- Field 'pageInfo' was added to object type 'GloUserConnection'
- Field 'totalCount' was added to object type 'GloUserConnection'
- Field 'cursor' was added to object type 'GloUserEdge'
- Field 'node' was added to object type 'GloUserEdge'
- Field 'groupMemberCount' was added to object type 'GloUserGroup'
- Field 'id' was added to object type 'GloUserGroup'
- Field 'name' was added to object type 'GloUserGroup'
- Field 'organization' was added to object type 'GloUserGroup'
- Field 'userGroupId' was added to object type 'GloUserGroup'
- Field 'users' was added to object type 'GloUserGroup'
- Field 'edges' was added to object type 'GloUserGroupConnection'
- Field 'nodes' was added to object type 'GloUserGroupConnection'
- Field 'pageInfo' was added to object type 'GloUserGroupConnection'
- Field 'totalCount' was added to object type 'GloUserGroupConnection'
- Field 'cursor' was added to object type 'GloUserGroupEdge'
- Field 'node' was added to object type 'GloUserGroupEdge'
- Field 'defaultLanguage' was added to object type 'GloUserSpace'
- Field 'domain' was added to object type 'GloUserSpace'
- Field 'id' was added to object type 'GloUserSpace'
- Field 'isPublic' was added to object type 'GloUserSpace'
- Field 'name' was added to object type 'GloUserSpace'
- Field 'userSpaceId' was added to object type 'GloUserSpace'
- Field 'esdProjectIds' was added to object type 'SolSolution'
- Field 'hardwareProjectIds' was added to object type 'SolSolution'
- Field 'softwareProjectIds' was added to object type 'SolSolution'

#### Input / Payload

- Input field 'groupId' of type 'String' was added to input object type 'GloAddUsersToGroupInput'
- Input field 'userIds' of type '[String]' was added to input object type 'GloAddUsersToGroupInput'
- Input field 'groupName' of type 'String' was added to input object type 'GloCreateUserGroupInput'
- Input field 'organizationId' of type 'String' was added to input object type 'GloCreateUserGroupInput'
- Input field 'organisationId' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'userName' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'firstName' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'lastName' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'email' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'domain' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'authType' of type 'GloAuthType!' was added to input object type 'GloCreateUserInput'
- Input field 'activationStatus' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'password' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'autoSync' of type 'Boolean!' was added to input object type 'GloCreateUserInput'
- Input field 'hostName' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'salutation' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'phone' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'fax' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'webSite' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'country' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'badges' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'exampleWork' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'experience' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'specialties' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'currentPosition' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'profilePicture' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'timezone' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'languageLocale' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'hideEmail' of type 'Boolean!' was added to input object type 'GloCreateUserInput'
- Input field 'displayName' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'hrid' of type 'String' was added to input object type 'GloCreateUserInput'
- Input field 'parameters' of type '[GloParameterInput]' was added to input object type 'GloCreateUserInput'
- Input field 'spaceIds' of type '[String]' was added to input object type 'GloCreateUserInput'
- Input field 'groupsIds' of type '[String]' was added to input object type 'GloCreateUserInput'
- Input field 'sendEmail' of type 'Boolean!' was added to input object type 'GloCreateUserInput'
- Input field 'parameterId' of type 'String' was added to input object type 'GloParameterInput'
- Input field 'name' of type 'String' was added to input object type 'GloParameterInput'
- Input field 'value' of type 'String' was added to input object type 'GloParameterInput'
- Input field 'groupId' of type 'String' was added to input object type 'GloRemoveUsersFromGroupInput'
- Input field 'userIds' of type '[String]' was added to input object type 'GloRemoveUsersFromGroupInput'
- Input field 'userGroupIds' of type '[String]' was added to input object type 'GloUserGroupInputFilterInput'
- Input field 'organizationId' of type 'String' was added to input object type 'GloUserGroupInputFilterInput'
- Input field 'userGroupName' of type 'String' was added to input object type 'GloUserGroupInputFilterInput'
- Input field 'isGlobal' of type 'Boolean' was added to input object type 'GloUserGroupInputFilterInput'
- Input field 'userGroupId' of type 'SortEnumType' was added to input object type 'GloUserGroupSortInput'
- Input field 'name' of type 'SortEnumType' was added to input object type 'GloUserGroupSortInput'
- Input field 'organizationId' of type 'String' was added to input object type 'GloUserInputFilterInput'
- Input field 'userName' of type 'String' was added to input object type 'GloUserInputFilterInput'
- Input field 'userEmail' of type 'String' was added to input object type 'GloUserInputFilterInput'
- Input field 'activationStatus' of type 'String' was added to input object type 'GloUserInputFilterInput'
- Input field 'userIds' of type '[String]' was added to input object type 'GloUserInputFilterInput'
- Input field 'emailDomain' of type 'String' was added to input object type 'GloUserInputFilterInput'
- Input field 'fullName' of type 'String' was added to input object type 'GloUserInputFilterInput'
- Input field 'userId' of type 'SortEnumType' was added to input object type 'GloUserSortInput'
- Input field 'userName' of type 'SortEnumType' was added to input object type 'GloUserSortInput'
- Input field 'email' of type 'SortEnumType' was added to input object type 'GloUserSortInput'

### Renesas (preview)

#### 🔍 Query

- Field 'sftSoftwareProjectsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sftSoftwareProjectsByIds'


