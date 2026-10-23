# gateway-changelog-28-Jul-2026

## 🔴 Breaking Changes (3)

### Supply

#### Types

- Type 'SupSolutionTemplateAuditObject' was removed

#### Fields

- Field 'author' was removed from object type 'SupSolutionTemplateAudit'
- Field 'objectType' was removed from object type 'SupSolutionTemplateAudit'


---

## ⚠️ Dangerous Changes (1)

### Renesas (preview)

#### Types

- Enum value 'IS_RECOMMENDED' was added to enum 'SupSoftwareProjectOrderField'


---

## ✅ Non-Breaking Changes (51)

### Renesas (preview)

#### Fields

- Field 'isRecommended' was added to object type 'SupSoftwareProject'
- Field 'recommendScore' was added to object type 'SupSoftwareProject'

#### Input / Payload

- Input field 'recommendScore' of type 'Int' was added to input object type 'SupSoftwareProjectCreateSoftwareProjectInput'
- Input field 'isRecommended' of type 'Boolean' was added to input object type 'SupSoftwareProjectFilterInput'
- Input field 'isRecommended' of type 'Boolean' was added to input object type 'SupSoftwareProjectSearchFilterInput'
- Input field 'isRecommended' of type 'SortEnumType' was added to input object type 'SupSoftwareProjectSortInput'
- Input field 'recommendScore' of type 'SortEnumType' was added to input object type 'SupSoftwareProjectSortInput'
- Input field 'recommendScore' of type 'Int' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'

### Supply

#### 🔍 Query

- Field 'supEvalKitAuditSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supEvalKitAuditSearch'
- Argument 'before: String' added to 'Query.supEvalKitAuditSearch'
- Argument 'first: Int' added to 'Query.supEvalKitAuditSearch'
- Argument 'last: Int' added to 'Query.supEvalKitAuditSearch'
- Argument 'where: SupEvalKitAuditSearchFilter' added to 'Query.supEvalKitAuditSearch'

#### Types

- Type 'SupEvalKitAudit' was added
- Type 'SupEvalKitAuditConnection' was added
- Object type 'SupEvalKitAuditConnection' has description 'A connection to a list of items.'
- Type 'SupEvalKitAuditEdge' was added
- Object type 'SupEvalKitAuditEdge' has description 'An edge in a connection.'
- Type 'SupEvalKitAuditAction' was added
- Enum value 'ADD' was added to enum 'SupEvalKitAuditAction'
- Enum value 'CREATE' was added to enum 'SupEvalKitAuditAction'
- Enum value 'DELETE' was added to enum 'SupEvalKitAuditAction'
- Enum value 'MODIFY' was added to enum 'SupEvalKitAuditAction'
- Enum value 'REMOVE' was added to enum 'SupEvalKitAuditAction'
- Enum value 'SOFT_DELETE' was added to enum 'SupEvalKitAuditAction'
- Type 'SupEvalKitAuditSearchFilter' was added
- Object type 'SupEvalKitAuditSearchFilter' has description 'Filter input for searching solution template audit records.'

#### Fields

- Field 'action' was added to object type 'SupEvalKitAudit'
- Field 'authorId' was added to object type 'SupEvalKitAudit'
- Field 'authorName' was added to object type 'SupEvalKitAudit'
- Field 'eventDate' was added to object type 'SupEvalKitAudit'
- Field 'groupId' was added to object type 'SupEvalKitAudit'
- Field 'message' was added to object type 'SupEvalKitAudit'
- Field 'objectId' was added to object type 'SupEvalKitAudit'
- Field 'objectTypeId' was added to object type 'SupEvalKitAudit'
- Field 'objectTypeName' was added to object type 'SupEvalKitAudit'
- Field 'primaryObjectId' was added to object type 'SupEvalKitAudit'
- Field 'edges' was added to object type 'SupEvalKitAuditConnection'
- Field 'nodes' was added to object type 'SupEvalKitAuditConnection'
- Field 'pageInfo' was added to object type 'SupEvalKitAuditConnection'
- Field 'totalCount' was added to object type 'SupEvalKitAuditConnection'
- Field 'cursor' was added to object type 'SupEvalKitAuditEdge'
- Field 'node' was added to object type 'SupEvalKitAuditEdge'
- Field 'authorId' was added to object type 'SupSolutionTemplateAudit'
- Field 'objectTypeId' was added to object type 'SupSolutionTemplateAudit'
- Field 'objectTypeName' was added to object type 'SupSolutionTemplateAudit'

#### Input / Payload

- Input field 'endDate' of type 'DateTime' was added to input object type 'SupEvalKitAuditSearchFilter'
- Input field 'primaryObjectId' of type 'String' was added to input object type 'SupEvalKitAuditSearchFilter'
- Input field 'startDate' of type 'DateTime' was added to input object type 'SupEvalKitAuditSearchFilter'
- Input field 'text' of type 'String' was added to input object type 'SupEvalKitAuditSearchFilter'


