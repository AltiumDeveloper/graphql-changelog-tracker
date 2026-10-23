# gateway-changelog-10-Feb-2026

## ✅ Non-Breaking Changes (44)

### Renesas (preview)

#### 🔍 Query

- Field 'supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch'
- Argument 'before: String' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch'
- Argument 'evalKitId: ID!' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch'
- Argument 'first: Int' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch'
- Argument 'last: Int' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch'
- Argument 'order: [SupSoftwareProjectSortInput!]' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch'
- Argument 'where: SupEvalKitCompatibleSoftwareProjectFilterInput' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectSearch'

#### ✏️ Mutation

- Field 'supSoftwareProjectUpdateEvalKitCompatibleSoftwareProject' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectInput!' added to 'Mutation.supSoftwareProjectUpdateEvalKitCompatibleSoftwareProject'

#### Types

- Type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectPayload' was added
- Object type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectPayload' has description 'Payload associated with updating a evaluation kit compatible software projects.'
- Type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectError'
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectError'
- Type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectInput' was added
- Object type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectInput' has description 'Input for evaluation kit compatible software project update.'

#### Fields

- Field 'errors' was added to object type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectPayload'

#### Input / Payload

- Input field 'addCompatibleSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectInput'
- Input field 'removeCompatibleSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupSoftwareProjectUpdateEvalKitCompatibleSoftwareProjectInput'

### Supply

#### Types

- Type 'SupEvalKitCompatibleSoftwareProjectConnection' was added
- Object type 'SupEvalKitCompatibleSoftwareProjectConnection' has description 'A connection to a list of items.'
- Type 'SupEvalKitCompatibleSoftwareProjectEdge' was added
- Object type 'SupEvalKitCompatibleSoftwareProjectEdge' has description 'An edge in a connection.'
- Type 'SupEvalKitCompatibleSoftwareProjectFilterInput' was added
- Object type 'SupEvalKitCompatibleSoftwareProjectFilterInput' has description 'Represents the filter for searching compatible software projects.'

#### Arguments

- Argument 'after: String' added to 'SupEvalKit.compatibleSoftwareProjectData'
- Argument 'before: String' added to 'SupEvalKit.compatibleSoftwareProjectData'
- Argument 'first: Int' added to 'SupEvalKit.compatibleSoftwareProjectData'
- Argument 'last: Int' added to 'SupEvalKit.compatibleSoftwareProjectData'
- Argument 'order: [SupSoftwareProjectSortInput!]' added to 'SupEvalKit.compatibleSoftwareProjectData'
- Argument 'where: SupEvalKitCompatibleSoftwareProjectFilterInput' added to 'SupEvalKit.compatibleSoftwareProjectData'

#### Fields

- Field 'edges' was added to object type 'SupEvalKitCompatibleSoftwareProjectConnection'
- Field 'nodes' was added to object type 'SupEvalKitCompatibleSoftwareProjectConnection'
- Field 'pageInfo' was added to object type 'SupEvalKitCompatibleSoftwareProjectConnection'
- Field 'totalCount' was added to object type 'SupEvalKitCompatibleSoftwareProjectConnection'
- Field 'cursor' was added to object type 'SupEvalKitCompatibleSoftwareProjectEdge'
- Field 'node' was added to object type 'SupEvalKitCompatibleSoftwareProjectEdge'
- Field 'compatibleSoftwareProjectData' was added to object type 'SupEvalKit'

#### Input / Payload

- Input field 'description' of type 'String' was added to input object type 'SupEvalKitCompatibleSoftwareProjectFilterInput'
- Input field 'q' of type 'String' was added to input object type 'SupEvalKitCompatibleSoftwareProjectFilterInput'
- Input field 'title' of type 'String' was added to input object type 'SupEvalKitCompatibleSoftwareProjectFilterInput'
- Input field 'types' of type '[SupSoftwareProjectType!]' was added to input object type 'SupEvalKitCompatibleSoftwareProjectFilterInput'


