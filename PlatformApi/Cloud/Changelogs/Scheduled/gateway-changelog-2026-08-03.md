# gateway-changelog-03-Aug-2026

## ✅ Non-Breaking Changes (33)

### Common

#### 🔍 Query

- Field 'kgNodes' was added to object type 'Query'
- Argument 'type: KgNodeType!' added to 'Query.kgNodes'

#### ✏️ Mutation

- Field 'kgAddNode' was added to object type 'Mutation'
- Argument 'input: KgAddNodeInput!' added to 'Mutation.kgAddNode'

#### Types

- Type 'KgAccessLevel' was added
- Object type 'KgAccessLevel' has description '**Experimental**'
- Type 'KgAddNodePayload' was added
- Object type 'KgAddNodePayload' has description '**Experimental**'
- Type 'KgNodeType' was added
- Enum value 'REQUIREMENTS_PROJECT' was added to enum 'KgNodeType'
- Object type 'KgNodeType' has description '**Experimental**'
- Type 'KgAddNodeInput' was added
- Object type 'KgAddNodeInput' has description '**Experimental**'
- Type 'KgNodeParameterInput' was added
- Object type 'KgNodeParameterInput' has description '**Experimental**'

#### Fields

- Field 'canEdit' was added to object type 'KgAccessLevel'
- Field 'isAdded' was added to object type 'KgAddNodePayload'
- Field 'accessLevel' was added to object type 'KgAnchorNode'
- Field 'entityGuid' was added to object type 'KgAnchorNode'
- Field 'accessLevel' was added to interface 'KgNode'
- Field 'entityGuid' was added to interface 'KgNode'

#### Input / Payload

- Input field 'description' of type 'String' was added to input object type 'KgAddNodeInput'
- Input field 'id' of type 'ID!' was added to input object type 'KgAddNodeInput'
- Input field 'name' of type 'String!' was added to input object type 'KgAddNodeInput'
- Input field 'parameters' of type '[KgNodeParameterInput!]' was added to input object type 'KgAddNodeInput'
- Input field 'parentFolderGuid' of type 'String!' was added to input object type 'KgAddNodeInput'
- Input field 'name' of type 'String!' was added to input object type 'KgNodeParameterInput'
- Input field 'value' of type 'String!' was added to input object type 'KgNodeParameterInput'

### Platform

#### Types

- Type 'PlatformWorkspaceTokenQuota' was added
- Object type 'PlatformWorkspaceTokenQuota' has description 'Represents the quota for the number of active `PlatformToken`s allowed in a Workspace.'

#### Fields

- Field 'activeTokenCount' was added to object type 'PlatformWorkspaceTokenQuota'
- Field 'maxActiveTokenCount' was added to object type 'PlatformWorkspaceTokenQuota'
- Field 'workspaceTokenQuota' was added to object type 'TokenQueries'


