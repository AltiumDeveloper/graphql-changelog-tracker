# gateway-changelog-24-Jun-2026

## 🔴 Breaking Changes (1)

### Supply

#### Input / Payload

- Input field 'SupSolutionTemplateUpdateSolutionTemplateInput.newEsdSource' changed type from 'SupSolutionTemplateEsdSourceInput' to 'SupSolutionTemplatePatchEsdSourceInput'


---

## ✅ Non-Breaking Changes (141)

### Design

#### Fields

- Field 'component' was added to object type 'DesCadBoardComponentType'
- Field 'footprint' was added to object type 'DesCadBoardComponentType'
- Field 'footprintReference' was added to object type 'DesCadBoardComponentType'

#### Input / Payload

- Input field 'footprintReference' of type 'String' was added to input object type 'DesCadBoardComponentTypeInput'

### Platform

#### 🔍 Query

- Field 'platform' was added to object type 'Query'

#### ✏️ Mutation

- Field 'platformWorkspaceRefreshTokenCreate' was added to object type 'Mutation'
- Argument 'input: PlatformWorkspaceRefreshTokenCreateInput!' added to 'Mutation.platformWorkspaceRefreshTokenCreate'
- Field 'platformWorkspaceTokenCreate' was added to object type 'Mutation'
- Argument 'input: PlatformWorkspaceTokenCreateInput!' added to 'Mutation.platformWorkspaceTokenCreate'

#### Types

- Type 'PlatformQueries' was added
- Type 'PlatformTokenGenerationError' was added
- 'PlatformTokenGenerationError' object implements 'Error' interface
- Object type 'PlatformTokenGenerationError' has description 'Error that occurs when the `PlatformToken` has not been successfully generated.'
- Type 'PlatformTokenNameExistsError' was added
- 'PlatformTokenNameExistsError' object implements 'Error' interface
- Object type 'PlatformTokenNameExistsError' has description 'Error that occurs when the input `PlatformToken` name already exists.'
- Type 'PlatformTokenQuotaExceededError' was added
- 'PlatformTokenQuotaExceededError' object implements 'Error' interface
- Object type 'PlatformTokenQuotaExceededError' has description 'Error that occurs when the maximum number of `PlatformToken` for a workspace has been reached.'
- Type 'PlatformTokenWorkspaceAccessDeniedError' was added
- 'PlatformTokenWorkspaceAccessDeniedError' object implements 'Error' interface
- Object type 'PlatformTokenWorkspaceAccessDeniedError' has description 'Error that occurs when access to a workspace is denied for a `PlatformToken`.'
- Type 'PlatformWorkspaceRefreshToken' was added
- 'PlatformWorkspaceRefreshToken' object implements 'PlatformToken' interface
- Object type 'PlatformWorkspaceRefreshToken' has description 'Represents a `PlatformWorkspaceRefreshToken`, which is used for authentication and authorization when accessing the Altium platform.'
- Type 'PlatformWorkspaceRefreshTokenCreatePayload' was added
- Type 'PlatformWorkspaceToken' was added
- 'PlatformWorkspaceToken' object implements 'PlatformToken' interface
- Object type 'PlatformWorkspaceToken' has description 'Represents a `PlatformWorkspaceToken`, which is used for authentication and authorization when accessing the Altium platform.'
- Type 'PlatformWorkspaceTokenCreatePayload' was added
- Type 'TokenQueries' was added
- Type 'PlatformToken' was added
- Object type 'PlatformToken' has description 'Represents a `PlatformToken`, which is used for authentication and authorization when accessing the Altium platform.'
- Type 'PlatformWorkspaceRefreshTokenCreateError' was added
- Member 'PlatformTokenNameExistsError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateError'
- Member 'PlatformTokenWorkspaceAccessDeniedError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateError'
- Member 'PlatformTokenGenerationError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateError'
- Member 'PlatformTokenQuotaExceededError' was added to Union type 'PlatformWorkspaceRefreshTokenCreateError'
- Type 'PlatformWorkspaceTokenCreateError' was added
- Member 'PlatformTokenNameExistsError' was added to Union type 'PlatformWorkspaceTokenCreateError'
- Member 'PlatformTokenWorkspaceAccessDeniedError' was added to Union type 'PlatformWorkspaceTokenCreateError'
- Member 'PlatformTokenGenerationError' was added to Union type 'PlatformWorkspaceTokenCreateError'
- Member 'PlatformTokenQuotaExceededError' was added to Union type 'PlatformWorkspaceTokenCreateError'
- Type 'PlatformWorkspaceRefreshTokenCreateInput' was added
- Object type 'PlatformWorkspaceRefreshTokenCreateInput' has description 'Input for creating a new `PlatformWorkspaceRefreshToken`.'
- Type 'PlatformWorkspaceTokenCreateInput' was added
- Object type 'PlatformWorkspaceTokenCreateInput' has description 'Input for creating a new `PlatformWorkspaceToken`.'

#### Arguments

- Argument 'tokenId: String!' added to 'TokenQueries.tokenByTokenId'

#### Fields

- Field 'token' was added to object type 'PlatformQueries'
- Field 'message' was added to object type 'PlatformTokenGenerationError'
- Field 'message' was added to object type 'PlatformTokenNameExistsError'
- Field 'message' was added to object type 'PlatformTokenQuotaExceededError'
- Field 'message' was added to object type 'PlatformTokenWorkspaceAccessDeniedError'
- Field 'createdAt' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'createdBy' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'deletedAt' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'deletedBy' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'description' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'expiresAt' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'maskedRefreshToken' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'name' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'tokenId' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'updatedAt' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'updatedBy' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'workspaceId' was added to object type 'PlatformWorkspaceRefreshToken'
- Field 'errors' was added to object type 'PlatformWorkspaceRefreshTokenCreatePayload'
- Field 'redirectUrl' was added to object type 'PlatformWorkspaceRefreshTokenCreatePayload'
- Field 'createdAt' was added to object type 'PlatformWorkspaceToken'
- Field 'createdBy' was added to object type 'PlatformWorkspaceToken'
- Field 'deletedAt' was added to object type 'PlatformWorkspaceToken'
- Field 'deletedBy' was added to object type 'PlatformWorkspaceToken'
- Field 'description' was added to object type 'PlatformWorkspaceToken'
- Field 'expiresAt' was added to object type 'PlatformWorkspaceToken'
- Field 'maskedAccessToken' was added to object type 'PlatformWorkspaceToken'
- Field 'name' was added to object type 'PlatformWorkspaceToken'
- Field 'tokenId' was added to object type 'PlatformWorkspaceToken'
- Field 'updatedAt' was added to object type 'PlatformWorkspaceToken'
- Field 'updatedBy' was added to object type 'PlatformWorkspaceToken'
- Field 'workspaceId' was added to object type 'PlatformWorkspaceToken'
- Field 'errors' was added to object type 'PlatformWorkspaceTokenCreatePayload'
- Field 'redirectUrl' was added to object type 'PlatformWorkspaceTokenCreatePayload'
- Field 'tokenByTokenId' was added to object type 'TokenQueries'
- Field 'createdAt' was added to interface 'PlatformToken'
- Field 'createdBy' was added to interface 'PlatformToken'
- Field 'deletedAt' was added to interface 'PlatformToken'
- Field 'deletedBy' was added to interface 'PlatformToken'
- Field 'description' was added to interface 'PlatformToken'
- Field 'expiresAt' was added to interface 'PlatformToken'
- Field 'name' was added to interface 'PlatformToken'
- Field 'tokenId' was added to interface 'PlatformToken'
- Field 'updatedAt' was added to interface 'PlatformToken'
- Field 'updatedBy' was added to interface 'PlatformToken'

#### Input / Payload

- Input field 'accessTokenLifetime' of type 'Int!' was added to input object type 'PlatformWorkspaceRefreshTokenCreateInput'
- Input field 'description' of type 'String!' was added to input object type 'PlatformWorkspaceRefreshTokenCreateInput'
- Input field 'name' of type 'String!' was added to input object type 'PlatformWorkspaceRefreshTokenCreateInput'
- Input field 'returnUrl' of type 'String!' was added to input object type 'PlatformWorkspaceRefreshTokenCreateInput'
- Input field 'accessTokenLifetime' of type 'Int!' was added to input object type 'PlatformWorkspaceTokenCreateInput'
- Input field 'description' of type 'String!' was added to input object type 'PlatformWorkspaceTokenCreateInput'
- Input field 'name' of type 'String!' was added to input object type 'PlatformWorkspaceTokenCreateInput'
- Input field 'returnUrl' of type 'String!' was added to input object type 'PlatformWorkspaceTokenCreateInput'

### Renesas (preview)

#### ✏️ Mutation

- Field 'supSoftwareProjectPatchPreviewImages' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectPatchPreviewImagesInput!' added to 'Mutation.supSoftwareProjectPatchPreviewImages'
- Field 'supSoftwareProjectSetPreviewImages' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectSetPreviewImagesInput!' added to 'Mutation.supSoftwareProjectSetPreviewImages'

#### Types

- Type 'SupSoftwareProjectPatchPreviewImagesPayload' was added
- Object type 'SupSoftwareProjectPatchPreviewImagesPayload' has description 'Payload for patching preview images on a software project.'
- Type 'SupSoftwareProjectSetPreviewImagesPayload' was added
- Object type 'SupSoftwareProjectSetPreviewImagesPayload' has description 'Payload for replacing all preview images on a software project.'
- Type 'SupSoftwareProjectPatchPreviewImagesError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectPatchPreviewImagesError'
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectPatchPreviewImagesError'
- Type 'SupSoftwareProjectSetPreviewImagesError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectSetPreviewImagesError'
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectSetPreviewImagesError'
- Type 'SupSoftwareProjectPatchPreviewImagesInput' was added
- Object type 'SupSoftwareProjectPatchPreviewImagesInput' has description 'Input for patching preview images on a software project.'
- Type 'SupSoftwareProjectSetPreviewImagesInput' was added
- Object type 'SupSoftwareProjectSetPreviewImagesInput' has description 'Input for replacing all preview images on a software project.'

#### Fields

- Field 'errors' was added to object type 'SupSoftwareProjectPatchPreviewImagesPayload'
- Field 'success' was added to object type 'SupSoftwareProjectPatchPreviewImagesPayload'
- Field 'errors' was added to object type 'SupSoftwareProjectSetPreviewImagesPayload'
- Field 'success' was added to object type 'SupSoftwareProjectSetPreviewImagesPayload'

#### Input / Payload

- Input field 'addPreviewImages' of type '[SupSoftwareProjectFileInput!]' was added to input object type 'SupSoftwareProjectPatchPreviewImagesInput'
- Input field 'deletePreviewImageUrls' of type '[String!]' was added to input object type 'SupSoftwareProjectPatchPreviewImagesInput'
- Input field 'reorderPreviewImageUrls' of type '[String!]' was added to input object type 'SupSoftwareProjectPatchPreviewImagesInput'
- Input field 'softwareProjectId' of type 'ID!' was added to input object type 'SupSoftwareProjectPatchPreviewImagesInput'
- Input field 'previewImages' of type '[SupSoftwareProjectFileInput!]' was added to input object type 'SupSoftwareProjectSetPreviewImagesInput'
- Input field 'softwareProjectId' of type 'ID!' was added to input object type 'SupSoftwareProjectSetPreviewImagesInput'

### Supply

#### Types

- Type 'SupSolutionTemplateRefDesignCategoryBucket' was added
- Object type 'SupSolutionTemplateRefDesignCategoryBucket' has description 'Aggregation bucket for reference design categories with category identifier + counts.'
- Type 'SupSolutionTemplatePatchEsdSourceInput' was added

#### Arguments

- Argument 'size: Int' (with default value) added to 'SupSolutionTemplateRefDesignResultSet.categoryAgg'

#### Fields

- Field 'categoryId' was added to object type 'SupSolutionTemplateRefDesignCategoryBucket'
- Field 'count' was added to object type 'SupSolutionTemplateRefDesignCategoryBucket'
- Field 'categoryAgg' was added to object type 'SupSolutionTemplateRefDesignResultSet'

#### Input / Payload

- Input field 'clearCompileModel' of type 'Boolean' was added to input object type 'SupSolutionTemplatePatchEsdSourceInput'
- Input field 'clearPreviewImage' of type 'Boolean' was added to input object type 'SupSolutionTemplatePatchEsdSourceInput'
- Input field 'compileModel' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplatePatchEsdSourceInput'
- Input field 'documentFile' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplatePatchEsdSourceInput'
- Input field 'previewImageFile' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplatePatchEsdSourceInput'
- Input field 'previewImageFile' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplateEsdSourceInput'


