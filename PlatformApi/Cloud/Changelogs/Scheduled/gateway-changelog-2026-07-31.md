# gateway-changelog-31-Jul-2026

## ✅ Non-Breaking Changes (45)

### Renesas (preview)

#### 🔍 Query

- Field 'supSoftwareProjectAuditSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supSoftwareProjectAuditSearch'
- Argument 'before: String' added to 'Query.supSoftwareProjectAuditSearch'
- Argument 'first: Int' added to 'Query.supSoftwareProjectAuditSearch'
- Argument 'last: Int' added to 'Query.supSoftwareProjectAuditSearch'
- Argument 'where: SupSoftwareProjectAuditSearchFilter' added to 'Query.supSoftwareProjectAuditSearch'
- Field 'supSoftwareProjectSolutionTemplateSoftwareProjectsBySolutionTemplateIds' was added to object type 'Query'
- Argument 'solutionTemplateIds: [ID!]!' added to 'Query.supSoftwareProjectSolutionTemplateSoftwareProjectsBySolutionTemplateIds'

#### Types

- Type 'SupSoftwareProjectAudit' was added
- Type 'SupSoftwareProjectAuditConnection' was added
- Object type 'SupSoftwareProjectAuditConnection' has description 'A connection to a list of items.'
- Type 'SupSoftwareProjectAuditEdge' was added
- Object type 'SupSoftwareProjectAuditEdge' has description 'An edge in a connection.'
- Type 'SupSoftwareProjectSolutionTemplateSoftwareProjectsResult' was added
- Type 'SupSoftwareProjectAuditAction' was added
- Enum value 'ADD' was added to enum 'SupSoftwareProjectAuditAction'
- Enum value 'CREATE' was added to enum 'SupSoftwareProjectAuditAction'
- Enum value 'DELETE' was added to enum 'SupSoftwareProjectAuditAction'
- Enum value 'MODIFY' was added to enum 'SupSoftwareProjectAuditAction'
- Enum value 'REMOVE' was added to enum 'SupSoftwareProjectAuditAction'
- Enum value 'SOFT_DELETE' was added to enum 'SupSoftwareProjectAuditAction'
- Type 'SupSoftwareProjectAuditSearchFilter' was added
- Object type 'SupSoftwareProjectAuditSearchFilter' has description 'Filter input for searching solution template audit records.'

#### Fields

- Field 'action' was added to object type 'SupSoftwareProjectAudit'
- Field 'authorId' was added to object type 'SupSoftwareProjectAudit'
- Field 'authorName' was added to object type 'SupSoftwareProjectAudit'
- Field 'eventDate' was added to object type 'SupSoftwareProjectAudit'
- Field 'groupId' was added to object type 'SupSoftwareProjectAudit'
- Field 'message' was added to object type 'SupSoftwareProjectAudit'
- Field 'objectId' was added to object type 'SupSoftwareProjectAudit'
- Field 'objectTypeId' was added to object type 'SupSoftwareProjectAudit'
- Field 'objectTypeName' was added to object type 'SupSoftwareProjectAudit'
- Field 'primaryObjectId' was added to object type 'SupSoftwareProjectAudit'
- Field 'edges' was added to object type 'SupSoftwareProjectAuditConnection'
- Field 'nodes' was added to object type 'SupSoftwareProjectAuditConnection'
- Field 'pageInfo' was added to object type 'SupSoftwareProjectAuditConnection'
- Field 'totalCount' was added to object type 'SupSoftwareProjectAuditConnection'
- Field 'cursor' was added to object type 'SupSoftwareProjectAuditEdge'
- Field 'node' was added to object type 'SupSoftwareProjectAuditEdge'
- Field 'softwareProjects' was added to object type 'SupSoftwareProjectSolutionTemplateSoftwareProjectsResult'
- Field 'solutionTemplateId' was added to object type 'SupSoftwareProjectSolutionTemplateSoftwareProjectsResult'

#### Input / Payload

- Input field 'endDate' of type 'DateTime' was added to input object type 'SupSoftwareProjectAuditSearchFilter'
- Input field 'primaryObjectId' of type 'String' was added to input object type 'SupSoftwareProjectAuditSearchFilter'
- Input field 'startDate' of type 'DateTime' was added to input object type 'SupSoftwareProjectAuditSearchFilter'
- Input field 'text' of type 'String' was added to input object type 'SupSoftwareProjectAuditSearchFilter'


