# gateway-changelog-20-Nov-2025

## ✅ Non-Breaking Changes (76)

### Design

#### 🔍 Query

- Field 'desReleaseVariantByVariantName' was added to object type 'Query'
- Argument 'releaseId: ID!' added to 'Query.desReleaseVariantByVariantName'
- Argument 'variantName: String!' added to 'Query.desReleaseVariantByVariantName'
- Field 'Query.desReleaseVariantById' is deprecated
- Directive 'deprecated' was added to 'Query.desReleaseVariantById'

#### ✏️ Mutation

- Field 'desUpdatePermissions' was added to object type 'Mutation'
- Argument 'input: DesUpdatePermissionsInput!' added to 'Mutation.desUpdatePermissions'

#### Types

- Type 'DesOrganizationPermission' was added
- 'DesOrganizationPermission' object implements 'DesPermission' interface
- Type 'DesOwnerPermission' was added
- 'DesOwnerPermission' object implements 'DesPermission' interface
- Type 'DesPermissionAvailableActions' was added
- Type 'DesTrusteePermissions' was added
- Type 'DesUpdatePermissionsPayload' was added
- Type 'DesWorkspaceMembersPermission' was added
- 'DesWorkspaceMembersPermission' object implements 'DesPermission' interface
- Type 'DesPermission' was added
- Type 'DesPermissionUpsertInput' was added
- Type 'DesUpdatePermissionsInput' was added

#### Fields

- Field 'availableActions' was added to object type 'DesOrganizationPermission'
- Field 'organization' was added to object type 'DesOrganizationPermission'
- Field 'trusteeId' was added to object type 'DesOrganizationPermission'
- Field 'trusteePermissions' was added to object type 'DesOrganizationPermission'
- Field 'availableActions' was added to object type 'DesOwnerPermission'
- Field 'owner' was added to object type 'DesOwnerPermission'
- Field 'trusteeId' was added to object type 'DesOwnerPermission'
- Field 'trusteePermissions' was added to object type 'DesOwnerPermission'
- Field 'canBeRemoved' was added to object type 'DesPermissionAvailableActions'
- Field 'canBeSetToReadOnly' was added to object type 'DesPermissionAvailableActions'
- Field 'canEdit' was added to object type 'DesTrusteePermissions'
- Field 'isUpdated' was added to object type 'DesUpdatePermissionsPayload'
- Field 'availableActions' was added to object type 'DesWorkspaceMembersPermission'
- Field 'trusteeId' was added to object type 'DesWorkspaceMembersPermission'
- Field 'trusteePermissions' was added to object type 'DesWorkspaceMembersPermission'
- Field 'availableActions' was added to interface 'DesPermission'
- Field 'trusteeId' was added to interface 'DesPermission'
- Field 'trusteePermissions' was added to interface 'DesPermission'
- Field 'releaseId' was added to object type 'DesReleaseVariant'
- Field 'DesReleaseVariant.releaseId' is deprecated
- Directive 'deprecated' was added to 'DesReleaseVariant.releaseId'
- Field 'DesReleaseVariant.id' is deprecated
- Directive 'deprecated' was added to 'DesReleaseVariant.id'

#### Input / Payload

- Input field 'canEdit' of type 'Boolean!' was added to input object type 'DesPermissionUpsertInput'
- Input field 'email' of type 'String' was added to input object type 'DesPermissionUpsertInput'
- Input field 'trusteeId' of type 'ID' was added to input object type 'DesPermissionUpsertInput'
- Input field 'entityId' of type 'ID!' was added to input object type 'DesUpdatePermissionsInput'
- Input field 'permissionsToRemove' of type '[ID!]!' was added to input object type 'DesUpdatePermissionsInput'
- Input field 'permissionsToUpsert' of type '[DesPermissionUpsertInput!]!' was added to input object type 'DesUpdatePermissionsInput'
- Input field 'replaceExisiting' of type 'Boolean!' was added to input object type 'DesUpdatePermissionsInput'

### Platform

#### Types

- Type 'DesProjectGuestPermission' was added
- 'DesProjectGuestPermission' object implements 'DesPermission' interface
- Type 'DesWorkspaceGroupPermission' was added
- 'DesWorkspaceGroupPermission' object implements 'DesPermission' interface
- Type 'DesWorkspaceUserPermission' was added
- 'DesWorkspaceUserPermission' object implements 'DesPermission' interface

#### Fields

- Field 'availableActions' was added to object type 'DesProjectGuestPermission'
- Field 'externalUser' was added to object type 'DesProjectGuestPermission'
- Field 'trusteeId' was added to object type 'DesProjectGuestPermission'
- Field 'trusteePermissions' was added to object type 'DesProjectGuestPermission'
- Field 'availableActions' was added to object type 'DesWorkspaceGroupPermission'
- Field 'group' was added to object type 'DesWorkspaceGroupPermission'
- Field 'trusteeId' was added to object type 'DesWorkspaceGroupPermission'
- Field 'trusteePermissions' was added to object type 'DesWorkspaceGroupPermission'
- Field 'availableActions' was added to object type 'DesWorkspaceUserPermission'
- Field 'trusteeId' was added to object type 'DesWorkspaceUserPermission'
- Field 'trusteePermissions' was added to object type 'DesWorkspaceUserPermission'
- Field 'user' was added to object type 'DesWorkspaceUserPermission'
- Field 'id' was added to object type 'DesProjectGuest'
- Field 'owner' was added to object type 'SolSolution'
- Field 'permissions' was added to object type 'SolSolution'

### Renesas (preview)

#### Fields

- Field 'owner' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'permissions' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'owner' was added to object type 'SftSimSimulation'
- Field 'permissions' was added to object type 'SftSimSimulation'
- Field 'owner' was added to object type 'SftSoftwareProject'
- Field 'permissions' was added to object type 'SftSoftwareProject'


