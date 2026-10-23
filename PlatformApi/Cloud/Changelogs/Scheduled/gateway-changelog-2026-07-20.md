# gateway-changelog-20-Jul-2026

## ✅ Non-Breaking Changes (58)

### Renesas (preview)

#### Input / Payload

- Input field 'ids' of type '[ID!]' was added to input object type 'SupSoftwareProjectSearchFilterInput'

### Supply

#### 🔍 Query

- Field 'supSolutionTemplateAuditSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supSolutionTemplateAuditSearch'
- Argument 'before: String' added to 'Query.supSolutionTemplateAuditSearch'
- Argument 'first: Int' added to 'Query.supSolutionTemplateAuditSearch'
- Argument 'last: Int' added to 'Query.supSolutionTemplateAuditSearch'
- Argument 'where: SupSolutionTemplateAuditSearchFilter' added to 'Query.supSolutionTemplateAuditSearch'

#### Types

- Type 'SupSolutionTemplateAudit' was added
- Type 'SupSolutionTemplateAuditConnection' was added
- Object type 'SupSolutionTemplateAuditConnection' has description 'A connection to a list of items.'
- Type 'SupSolutionTemplateAuditEdge' was added
- Object type 'SupSolutionTemplateAuditEdge' has description 'An edge in a connection.'
- Type 'SupSolutionTemplateAuditAction' was added
- Enum value 'ADD' was added to enum 'SupSolutionTemplateAuditAction'
- Enum value 'CREATE' was added to enum 'SupSolutionTemplateAuditAction'
- Enum value 'DELETE' was added to enum 'SupSolutionTemplateAuditAction'
- Enum value 'MODIFY' was added to enum 'SupSolutionTemplateAuditAction'
- Enum value 'REMOVE' was added to enum 'SupSolutionTemplateAuditAction'
- Enum value 'SOFT_DELETE' was added to enum 'SupSolutionTemplateAuditAction'
- Type 'SupSolutionTemplateAuditObject' was added
- Enum value 'APPLICATION' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'APPLICATION_BUNDLE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'APPLICATION_PARAMETER_BUNDLE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'COMPATIBLE_EVAL_KIT' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'ESD_SOURCE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'KEY_FEATURE_GROUP' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'KEY_FEATURE_GROUP_ATTRIBUTE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'PARAMETER' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'PARAMETER_BUNDLE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'PARAMETER_BUNDLE_VALUE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'PREVIEW_IMAGE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'SOFTWARE_PROJECT' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'SOLUTION_TEMPLATE' was added to enum 'SupSolutionTemplateAuditObject'
- Enum value 'TAG' was added to enum 'SupSolutionTemplateAuditObject'
- Type 'SupSolutionTemplateAuditSearchFilter' was added
- Object type 'SupSolutionTemplateAuditSearchFilter' has description 'Filter input for searching solution template audit records.'

#### Fields

- Field 'action' was added to object type 'SupSolutionTemplateAudit'
- Field 'author' was added to object type 'SupSolutionTemplateAudit'
- Field 'authorName' was added to object type 'SupSolutionTemplateAudit'
- Field 'eventDate' was added to object type 'SupSolutionTemplateAudit'
- Field 'groupId' was added to object type 'SupSolutionTemplateAudit'
- Field 'message' was added to object type 'SupSolutionTemplateAudit'
- Field 'objectId' was added to object type 'SupSolutionTemplateAudit'
- Field 'objectType' was added to object type 'SupSolutionTemplateAudit'
- Field 'primaryObjectId' was added to object type 'SupSolutionTemplateAudit'
- Field 'edges' was added to object type 'SupSolutionTemplateAuditConnection'
- Field 'nodes' was added to object type 'SupSolutionTemplateAuditConnection'
- Field 'pageInfo' was added to object type 'SupSolutionTemplateAuditConnection'
- Field 'totalCount' was added to object type 'SupSolutionTemplateAuditConnection'
- Field 'cursor' was added to object type 'SupSolutionTemplateAuditEdge'
- Field 'node' was added to object type 'SupSolutionTemplateAuditEdge'

#### Input / Payload

- Input field 'endDate' of type 'DateTime' was added to input object type 'SupSolutionTemplateAuditSearchFilter'
- Input field 'primaryObjectId' of type 'String' was added to input object type 'SupSolutionTemplateAuditSearchFilter'
- Input field 'startDate' of type 'DateTime' was added to input object type 'SupSolutionTemplateAuditSearchFilter'
- Input field 'text' of type 'String' was added to input object type 'SupSolutionTemplateAuditSearchFilter'
- Input field 'ids' of type '[ID!]' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'ids' of type '[ID!]' was added to input object type 'SupSolutionTemplateApplicationSearchFilterInput'
- Input field 'ids' of type '[ID!]' was added to input object type 'SupSolutionTemplateSearchFilterInput'


