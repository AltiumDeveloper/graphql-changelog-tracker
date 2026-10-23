# gateway-changelog-14-May-2026

## 🔴 Breaking Changes (3)

### Design

#### Arguments

- Argument 'revisionId: String' was removed from field 'DesignPreviewQueries.ruleCheckAggregateResultsByReleaseId'
- Type for argument 'designId' on field 'DesignPreviewQueries.ruleCheckAggregateResultsByReleaseId' changed from 'ID' to 'ID!'

#### Fields

- Field 'DesignPreviewMutations.registerDesignUpload' changed type from 'String!' to 'DesignUploadResult_Preview!'


---

## ⚠️ Dangerous Changes (1)

### Design

#### Types

- Enum value 'UPLOAD' was added to enum 'RuleCheckExecutionReason_Preview'


---

## ✅ Non-Breaking Changes (44)

### Design

#### Types

- Type 'DesComponentTypeConnection' was added
- Object type 'DesComponentTypeConnection' has description 'A connection to a list of items.'
- Type 'DesComponentTypeEdge' was added
- Object type 'DesComponentTypeEdge' has description 'An edge in a connection.'
- Type 'DesignUploadResult_Preview' was added
- Object type 'DesignUploadResult_Preview' has description '**Experimental**'
- Type 'DesComponentTypeFilterInput' was added
- Object type 'DesComponentTypeFilterInput' has description 'Represents a component type classification in the component library.'

#### Arguments

- Argument 'uploadGrid: ID!' added to 'DesignPreviewQueries.latestGenerationByUploadId'
- Argument 'designId: ID!' added to 'DesignPreviewQueries.ruleCheckExecutionsByReleaseId'
- Argument 'releaseId: ID!' added to 'DesignPreviewQueries.ruleCheckExecutionsByReleaseId'
- Argument 'where: RuleCheckExecution_PreviewFilterInput' added to 'DesignPreviewQueries.ruleCheckExecutionsByReleaseId'
- Argument 'uploadId: ID!' added to 'DesignPreviewQueries.ruleCheckLatestExecutionByUploadId'
- Argument 'after: String' added to 'DesLibrary.componentTypes'
- Argument 'before: String' added to 'DesLibrary.componentTypes'
- Argument 'first: Int' added to 'DesLibrary.componentTypes'
- Argument 'last: Int' added to 'DesLibrary.componentTypes'
- Argument 'where: DesComponentTypeFilterInput' added to 'DesLibrary.componentTypes'

#### Fields

- Field 'edges' was added to object type 'DesComponentTypeConnection'
- Field 'nodes' was added to object type 'DesComponentTypeConnection'
- Field 'pageInfo' was added to object type 'DesComponentTypeConnection'
- Field 'totalCount' was added to object type 'DesComponentTypeConnection'
- Field 'cursor' was added to object type 'DesComponentTypeEdge'
- Field 'node' was added to object type 'DesComponentTypeEdge'
- Field 'grid' was added to object type 'DesignUploadResult_Preview'
- Field 'path' was added to object type 'DesComponentType'
- Field 'latestGenerationByUploadId' was added to object type 'DesignPreviewQueries'
- Field 'ruleCheckExecutionsByReleaseId' was added to object type 'DesignPreviewQueries'
- Field 'ruleCheckLatestExecutionByUploadId' was added to object type 'DesignPreviewQueries'
- Field 'componentTypes' was added to object type 'DesLibrary'

#### Input / Payload

- Input field 'and' of type '[DesComponentTypeFilterInput!]' was added to input object type 'DesComponentTypeFilterInput'
- Input field 'name' of type 'StringOperationFilterInput' was added to input object type 'DesComponentTypeFilterInput'
- Input field 'or' of type '[DesComponentTypeFilterInput!]' was added to input object type 'DesComponentTypeFilterInput'

### Requirements

#### 🔍 Query

- Field 'requirements' was added to object type 'Query'

#### Types

- Type 'RequirementsProject' was added
- Type 'RequirementsProjectQueries' was added
- Type 'RequirementsQueries' was added

#### Arguments

- Argument 'id: ID!' added to 'RequirementsProjectQueries.byId'
- Argument 'ids: [ID!]!' added to 'RequirementsProjectQueries.byIds'

#### Fields

- Field 'id' was added to object type 'RequirementsProject'
- Field 'name' was added to object type 'RequirementsProject'
- Field 'byId' was added to object type 'RequirementsProjectQueries'
- Field 'byIds' was added to object type 'RequirementsProjectQueries'
- Field 'project' was added to object type 'RequirementsQueries'


