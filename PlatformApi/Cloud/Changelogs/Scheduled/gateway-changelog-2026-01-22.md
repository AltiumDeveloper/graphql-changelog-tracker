# gateway-changelog-22-Jan-2026

## 🔴 Breaking Changes (3)

### Renesas (preview)

#### Input / Payload

- Input field 'publisherId' of type 'String!' was added to input object type 'SupSoftwareProjectCreateSoftwareProjectInput'

### Supply

#### Input / Payload

- Input field 'publisherId' of type 'String!' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'publisherId' of type 'String!' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'


---

## ⚠️ Dangerous Changes (1)

### Supply

#### 🔍 Query

- Argument 'filter: SupEvalKitFilterInput' added to 'Query.supEvalKits'


---

## ✅ Non-Breaking Changes (115)

### Design

#### Fields

- Field 'owner' was added to object type 'DesProject'

### Platform

#### Fields

- Field 'uploadedById' was added to object type 'SolAttachment'
- Field 'SolAttachment.uploadedById' is deprecated
- Directive 'deprecated' was added to 'SolAttachment.uploadedById'

### Renesas (preview)

#### 🔍 Query

- Field 'supSoftwareProjectSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supSoftwareProjectSearch'
- Argument 'before: String' added to 'Query.supSoftwareProjectSearch'
- Argument 'first: Int' added to 'Query.supSoftwareProjectSearch'
- Argument 'last: Int' added to 'Query.supSoftwareProjectSearch'
- Argument 'order: [SupSoftwareProjectSortInput!]' added to 'Query.supSoftwareProjectSearch'
- Argument 'where: SupSoftwareProjectSearchFilterInput' added to 'Query.supSoftwareProjectSearch'

#### Types

- Type 'SupSoftwareProjectConnection' was added
- Object type 'SupSoftwareProjectConnection' has description 'A connection to a list of items.'
- Type 'SupSoftwareProjectEdge' was added
- Object type 'SupSoftwareProjectEdge' has description 'An edge in a connection.'
- Type 'SupSoftwareProjectSearchFilterInput' was added
- Object type 'SupSoftwareProjectSearchFilterInput' has description 'Represents the filter for searching software projects.'
- Type 'SupSoftwareProjectSortInput' was added
- Object type 'SupSoftwareProjectSortInput' has description 'Input type for sorting.'
- Object type 'SupSoftwareProjectFilterInput' has description 'Input for filtering software projects by additional conditions.'

#### Fields

- Field 'edges' was added to object type 'SupSoftwareProjectConnection'
- Field 'nodes' was added to object type 'SupSoftwareProjectConnection'
- Field 'pageInfo' was added to object type 'SupSoftwareProjectConnection'
- Field 'totalCount' was added to object type 'SupSoftwareProjectConnection'
- Field 'cursor' was added to object type 'SupSoftwareProjectEdge'
- Field 'node' was added to object type 'SupSoftwareProjectEdge'
- Field 'owner' was added to object type 'SftAIModel'
- Field 'permissions' was added to object type 'SftAIModel'
- Field 'publisherId' was added to object type 'SupSoftwareProject'
- Field 'SupSoftwareProject.createdAt' changed type from 'DateTime' to 'DateTime!'
- Field 'SupSoftwareProject.updatedAt' changed type from 'DateTime' to 'DateTime!'

#### Input / Payload

- Input field 'description' of type 'String' was added to input object type 'SupSoftwareProjectSearchFilterInput'
- Input field 'q' of type 'String' was added to input object type 'SupSoftwareProjectSearchFilterInput'
- Input field 'title' of type 'String' was added to input object type 'SupSoftwareProjectSearchFilterInput'
- Input field 'types' of type '[SupSoftwareProjectType!]' was added to input object type 'SupSoftwareProjectSearchFilterInput'
- Input field 'createdAt' of type 'SortEnumType' was added to input object type 'SupSoftwareProjectSortInput'
- Input field 'title' of type 'SortEnumType' was added to input object type 'SupSoftwareProjectSortInput'
- Input field 'updatedAt' of type 'SortEnumType' was added to input object type 'SupSoftwareProjectSortInput'
- Input field 'publisherIds' of type '[String!]' was added to input object type 'SupSoftwareProjectFilterInput'
- Input field 'publisherId' of type 'String' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'

### Supply

#### 🔍 Query

- Field 'supEvalKitSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supEvalKitSearch'
- Argument 'before: String' added to 'Query.supEvalKitSearch'
- Argument 'first: Int' added to 'Query.supEvalKitSearch'
- Argument 'last: Int' added to 'Query.supEvalKitSearch'
- Argument 'order: [SupEvalKitSortInput!]' added to 'Query.supEvalKitSearch'
- Argument 'where: SupEvalKitSearchFilterInput' added to 'Query.supEvalKitSearch'
- Field 'supSolutionTemplateSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supSolutionTemplateSearch'
- Argument 'before: String' added to 'Query.supSolutionTemplateSearch'
- Argument 'first: Int' added to 'Query.supSolutionTemplateSearch'
- Argument 'last: Int' added to 'Query.supSolutionTemplateSearch'
- Argument 'order: [SupSolutionTemplateSortInput!]' added to 'Query.supSolutionTemplateSearch'
- Argument 'where: SupSolutionTemplateSearchFilterInput' added to 'Query.supSolutionTemplateSearch'

#### Types

- Type 'SupEvalKitConnection' was added
- Object type 'SupEvalKitConnection' has description 'A connection to a list of items.'
- Type 'SupEvalKitEdge' was added
- Object type 'SupEvalKitEdge' has description 'An edge in a connection.'
- Type 'SupSolutionTemplateConnection' was added
- Object type 'SupSolutionTemplateConnection' has description 'A connection to a list of items.'
- Type 'SupSolutionTemplateEdge' was added
- Object type 'SupSolutionTemplateEdge' has description 'An edge in a connection.'
- Type 'SupEvalKitFilterInput' was added
- Object type 'SupEvalKitFilterInput' has description 'Input for filtering evaluation kits by additional conditions.'
- Type 'SupEvalKitSearchFilterInput' was added
- Object type 'SupEvalKitSearchFilterInput' has description 'Represents the filter for searching evaluation kits.'
- Type 'SupEvalKitSortInput' was added
- Object type 'SupEvalKitSortInput' has description 'Input type for sorting.'
- Type 'SupSolutionTemplateSearchFilterInput' was added
- Object type 'SupSolutionTemplateSearchFilterInput' has description 'Represents the filter for searching solution templates.'
- Type 'SupSolutionTemplateSortInput' was added
- Object type 'SupSolutionTemplateSortInput' has description 'Input type for solution template sorting.'

#### Fields

- Field 'edges' was added to object type 'SupEvalKitConnection'
- Field 'nodes' was added to object type 'SupEvalKitConnection'
- Field 'pageInfo' was added to object type 'SupEvalKitConnection'
- Field 'totalCount' was added to object type 'SupEvalKitConnection'
- Field 'cursor' was added to object type 'SupEvalKitEdge'
- Field 'node' was added to object type 'SupEvalKitEdge'
- Field 'edges' was added to object type 'SupSolutionTemplateConnection'
- Field 'nodes' was added to object type 'SupSolutionTemplateConnection'
- Field 'pageInfo' was added to object type 'SupSolutionTemplateConnection'
- Field 'totalCount' was added to object type 'SupSolutionTemplateConnection'
- Field 'cursor' was added to object type 'SupSolutionTemplateEdge'
- Field 'node' was added to object type 'SupSolutionTemplateEdge'
- Field 'publisherId' was added to object type 'SupEvalKit'
- Field 'SupEvalKit.createdAt' changed type from 'DateTime' to 'DateTime!'
- Field 'SupEvalKit.updatedAt' changed type from 'DateTime' to 'DateTime!'
- Field 'publisherId' was added to object type 'SupSolutionTemplate'
- Field 'SupSolutionTemplate.createdAt' changed type from 'DateTime' to 'DateTime!'
- Field 'SupSolutionTemplate.updatedAt' changed type from 'DateTime' to 'DateTime!'

#### Input / Payload

- Input field 'publisherIds' of type '[String!]' was added to input object type 'SupEvalKitFilterInput'
- Input field 'description' of type 'String' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'partIds' of type '[String!]' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'q' of type 'String' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'refDesignIds' of type '[ID!]' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'title' of type 'String' was added to input object type 'SupEvalKitSearchFilterInput'
- Input field 'createdAt' of type 'SortEnumType' was added to input object type 'SupEvalKitSortInput'
- Input field 'title' of type 'SortEnumType' was added to input object type 'SupEvalKitSortInput'
- Input field 'updatedAt' of type 'SortEnumType' was added to input object type 'SupEvalKitSortInput'
- Input field 'aiModelIds' of type '[String!]' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'description' of type 'String' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'hasAIModels' of type 'Boolean' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'q' of type 'String' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'stableNames' of type '[String!]' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'statuses' of type '[SupSolutionTemplateStatus!]' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'title' of type 'String' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'createdAt' of type 'SortEnumType' was added to input object type 'SupSolutionTemplateSortInput'
- Input field 'stableName' of type 'SortEnumType' was added to input object type 'SupSolutionTemplateSortInput'
- Input field 'title' of type 'SortEnumType' was added to input object type 'SupSolutionTemplateSortInput'
- Input field 'updatedAt' of type 'SortEnumType' was added to input object type 'SupSolutionTemplateSortInput'
- Input field 'publisherId' of type 'String' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'publisherIds' of type '[String!]' was added to input object type 'SupSolutionTemplateFilterInput'
- Input field 'publisherId' of type 'String' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'

### System Design

#### Fields

- Field 'owner' was added to object type 'SysEsdDocument'
- Field 'permissions' was added to object type 'SysEsdDocument'


