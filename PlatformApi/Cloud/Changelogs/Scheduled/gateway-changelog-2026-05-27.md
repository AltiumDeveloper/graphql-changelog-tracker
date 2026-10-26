# gateway-changelog-27-May-2026

## 🔴 Breaking Changes (7)

### Design

#### Arguments

- Argument 'uploadGrid: ID!' was removed from field 'DesignPreviewQueries.latestGenerationByUploadId'
- Argument 'uploadId: String!' added to 'DesignPreviewQueries.latestGenerationByUploadId'
- Type for argument 'uploadId' on field 'DesignPreviewQueries.ruleCheckLatestExecutionByUploadId' changed from 'ID!' to 'String!'

#### Fields

- Field 'DesignDataGeneration_Preview.designId' changed type from 'ID!' to 'ID'
- Field 'grid' was removed from object type 'DesignUploadResult_Preview'
- Field 'marketingBadge' was removed from object type 'DesWorkspaceInfo'
- Field 'RuleCheckExecution_Preview.designId' changed type from 'ID!' to 'ID'


---

## ✅ Non-Breaking Changes (3)

### Design

#### Fields

- Field 'uploadId' was added to object type 'DesignDataGeneration_Preview'
- Field 'uploadId' was added to object type 'DesignUploadResult_Preview'
- Field 'uploadId' was added to object type 'RuleCheckExecution_Preview'


