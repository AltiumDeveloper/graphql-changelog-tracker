# gateway-changelog-03-Nov-2026

## ✅ Non-Breaking Changes (30)

### Design

#### Types

- Type 'DesignDataQueries' was added
- Object type 'DesignDataQueries' has description '**Experimental** The entry point for queries related to the latest available design data.'

#### Arguments

- Argument 'designId: ID!' added to 'DesignDataQueries.byDesignId'
- Argument 'designId: ID!' added to 'DesignDataQueries.byReleaseId'
- Argument 'releaseId: ID!' added to 'DesignDataQueries.byReleaseId'
- Argument 'uploadId: String!' added to 'DesignDataQueries.byUploadId'
- Argument 'designId: ID!' added to 'DesignDataQueries.isGeneratingByDesignId'
- Argument 'designId: ID!' added to 'DesignDataQueries.isGeneratingByReleaseId'
- Argument 'releaseId: ID!' added to 'DesignDataQueries.isGeneratingByReleaseId'
- Argument 'uploadId: String!' added to 'DesignDataQueries.isGeneratingByUploadId'

#### Fields

- Field 'byDesignId' was added to object type 'DesignDataQueries'
- Field 'byReleaseId' was added to object type 'DesignDataQueries'
- Field 'byUploadId' was added to object type 'DesignDataQueries'
- Field 'isGeneratingByDesignId' was added to object type 'DesignDataQueries'
- Field 'isGeneratingByReleaseId' was added to object type 'DesignDataQueries'
- Field 'isGeneratingByUploadId' was added to object type 'DesignDataQueries'
- Directive 'authorize' was added to object 'DesignDataQueries'
- Directive 'experimental' was added to object 'DesignDataQueries'
- Field 'designData' was added to object type 'DesignQueries'
- Field 'LatestGenerationQueries.byDesignId' is deprecated
- Directive 'deprecated' was added to 'LatestGenerationQueries.byDesignId'
- Field 'LatestGenerationQueries.byUploadId' is deprecated
- Directive 'deprecated' was added to 'LatestGenerationQueries.byUploadId'

### System Design

#### 🔍 Query

- Field 'sysEsdSystemDataModelByEsdId' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sysEsdSystemDataModelByEsdId'

#### Fields

- Field 'description' was added to object type 'SysEsdDocument'

#### Input / Payload

- Input field 'description' of type 'String' was added to input object type 'SysEsdCreateDocumentInput'
- Input field 'description' of type 'String' was added to input object type 'SysEsdUpdateDocumentInput'
- Input field 'SysEsdUpdateDocumentInput.folderId' changed type from 'String!' to 'String'
- Input field 'SysEsdUpdateDocumentInput.name' changed type from 'String!' to 'String'


