# gateway-changelog-10-Nov-2026-to-24-Nov-2026

## ⚠️ Dangerous Changes (4)

### Design

#### Arguments

- Argument 'revisionId: String' added to 'DesignDataQueries.byDesignId'
- Argument 'revisionId: String' added to 'DesignDataQueries.isGeneratingByDesignId'

### Platform

#### Types

- Member 'GloAppAutoInstallableForbiddenError' was added to Union type 'GloCreateAppError'

### System Design

#### Fields

- Directive 'experimental' was removed from object 'SysSdmSystemModel'


---

## ✅ Non-Breaking Changes (79)

### Design

#### Types

- Type 'DesCommentThreadPropertyInput' was added
- Object type 'DesCommentThreadPropertyInput' has description 'A custom property to set on a comment thread.'

#### Fields

- Field 'childProjects' was added to object type 'DesProject'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'DesCommentThreadPropertyInput'
- Input field 'value' of type 'String!' was added to input object type 'DesCommentThreadPropertyInput'
- Input field 'properties' of type '[DesCommentThreadPropertyInput!]' was added to input object type 'DesCreateCommentThreadInput'
- Input field 'removeProperties' of type '[String!]' was added to input object type 'DesUpdateCommentThreadInput'
- Input field 'setProperties' of type '[DesCommentThreadPropertyInput!]' was added to input object type 'DesUpdateCommentThreadInput'
- Input field 'DesUpdateCommentThreadInput.status' changed type from 'DesCommentThreadStatus!' to 'DesCommentThreadStatus'

### Platform

#### 🔍 Query

- Field 'gloAppInstallationStatus' was added to object type 'Query'
- Directive 'authorize' was added to 'Query.gloAppInstallationStatus'
- Field 'solSupportedGrids' was added to object type 'Query'

#### ✏️ Mutation

- Field 'gloAddAppTokenExchangeSources' was added to object type 'Mutation'
- Argument 'input: GloAddAppTokenExchangeSourcesInput!' added to 'Mutation.gloAddAppTokenExchangeSources'
- Directive 'authorize' was added to 'Mutation.gloAddAppTokenExchangeSources'
- Field 'gloRemoveAppTokenExchangeSource' was added to object type 'Mutation'
- Argument 'input: GloRemoveAppTokenExchangeSourceInput!' added to 'Mutation.gloRemoveAppTokenExchangeSource'
- Directive 'authorize' was added to 'Mutation.gloRemoveAppTokenExchangeSource'
- Field 'gloSetAppAutoInstallable' was added to object type 'Mutation'
- Argument 'input: GloSetAppAutoInstallableInput!' added to 'Mutation.gloSetAppAutoInstallable'
- Directive 'authorize' was added to 'Mutation.gloSetAppAutoInstallable'
- Directive 'authorize' was added to 'Mutation.gloSetAppAutoInstallable'

#### Types

- Type 'GloAddAppTokenExchangeSourcesPayload' was added
- Type 'GloAppAutoInstallableForbiddenError' was added
- 'GloAppAutoInstallableForbiddenError' object implements 'Error' interface
- Object type 'GloAppAutoInstallableForbiddenError' has description 'Error that occurs when the user is not permitted to mark an App as auto-installable.'
- Type 'GloAppTokenExchangeSourcesDeletedError' was added
- 'GloAppTokenExchangeSourcesDeletedError' object implements 'Error' interface
- Object type 'GloAppTokenExchangeSourcesDeletedError' has description 'Error that occurs when deleted `GloApp`s are given as token exchange sources. Lists every deleted App found in the request.'
- Type 'GloAppTokenExchangeSourcesNotUpdatedError' was added
- 'GloAppTokenExchangeSourcesNotUpdatedError' object implements 'Error' interface
- Object type 'GloAppTokenExchangeSourcesNotUpdatedError' has description 'Error that occurs when updating the token exchange sources for a `GloApp` is unsuccessful.'
- Type 'GloRemoveAppTokenExchangeSourcePayload' was added
- Type 'GloSetAppAutoInstallablePayload' was added
- Type 'SolSupportedGrid' was added
- Type 'GloAddAppTokenExchangeSourcesError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppDeletedError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppMissingOAuthClientError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppTokenExchangeSourcesDeletedError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Member 'GloAppTokenExchangeSourcesNotUpdatedError' was added to Union type 'GloAddAppTokenExchangeSourcesError'
- Type 'GloRemoveAppTokenExchangeSourceError' was added
- Member 'GloAppNotFoundError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Member 'GloAppDeletedError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Member 'GloAppMissingOAuthClientError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Member 'GloAppTokenExchangeSourcesNotUpdatedError' was added to Union type 'GloRemoveAppTokenExchangeSourceError'
- Type 'GloSetAppAutoInstallableError' was added
- Member 'GloAppDeletedError' was added to Union type 'GloSetAppAutoInstallableError'
- Member 'GloAppNotFoundError' was added to Union type 'GloSetAppAutoInstallableError'
- Type 'GloAddAppTokenExchangeSourcesInput' was added
- Type 'GloRemoveAppTokenExchangeSourceInput' was added
- Type 'GloSetAppAutoInstallableInput' was added
- Type 'GloAppInstallationStatus' was added
- Enum value 'AUTO_INSTALLED' was added to enum 'GloAppInstallationStatus'
- Enum value 'INSTALLED' was added to enum 'GloAppInstallationStatus'
- Enum value 'NOT_INSTALLED' was added to enum 'GloAppInstallationStatus'
- Object type 'GloAppInstallationStatus' has description 'Whether a `GloApp` is installed in the current Workspace.'

#### Fields

- Field 'errors' was added to object type 'GloAddAppTokenExchangeSourcesPayload'
- Field 'gloApp' was added to object type 'GloAddAppTokenExchangeSourcesPayload'
- Field 'message' was added to object type 'GloAppAutoInstallableForbiddenError'
- Field 'message' was added to object type 'GloAppTokenExchangeSourcesDeletedError'
- Field 'message' was added to object type 'GloAppTokenExchangeSourcesNotUpdatedError'
- Field 'errors' was added to object type 'GloRemoveAppTokenExchangeSourcePayload'
- Field 'gloApp' was added to object type 'GloRemoveAppTokenExchangeSourcePayload'
- Field 'errors' was added to object type 'GloSetAppAutoInstallablePayload'
- Field 'gloApp' was added to object type 'GloSetAppAutoInstallablePayload'
- Field 'entityType' was added to object type 'SolSupportedGrid'
- Field 'gridTemplate' was added to object type 'SolSupportedGrid'
- Field 'isAutoInstallable' was added to object type 'GloApp'

#### Input / Payload

- Input field 'targetAppId' of type 'ID!' was added to input object type 'GloAddAppTokenExchangeSourcesInput'
- Input field 'thirdPartyAppIds' of type '[ID!]!' was added to input object type 'GloAddAppTokenExchangeSourcesInput'
- Input field 'targetAppId' of type 'ID!' was added to input object type 'GloRemoveAppTokenExchangeSourceInput'
- Input field 'thirdPartyAppId' of type 'ID!' was added to input object type 'GloRemoveAppTokenExchangeSourceInput'
- Input field 'id' of type 'ID!' was added to input object type 'GloSetAppAutoInstallableInput'
- Input field 'isAutoInstallable' of type 'BooleanOperationFilterInput' was added to input object type 'GloAppFilterInput'
- Input field 'isAutoInstallable' of type 'SortEnumType' was added to input object type 'GloAppSortInput'
- Input field 'isAutoInstallable' of type 'Boolean' was added to input object type 'GloCreateAppInput'

### Supply

#### Input / Payload

- Input field 'partIds' of type '[String!]' was added to input object type 'SupRefDesignFilterInput'

### System Design

#### Types

- Description '**Experimental**' was removed from object type 'SysSdmSystemModel'


