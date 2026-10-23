# gateway-changelog-10-Aug-2026

## 🔴 Breaking Changes (6)

### Supply

#### 🔍 Query

- Field 'supSolutionTemplateAuditSearch' was removed from object type 'Query'

#### Types

- Type 'SupSolutionTemplateAudit' was removed
- Type 'SupSolutionTemplateAuditConnection' was removed
- Type 'SupSolutionTemplateAuditEdge' was removed
- Type 'SupSolutionTemplateAuditAction' was removed
- Type 'SupSolutionTemplateAuditSearchFilter' was removed


---

## ⚠️ Dangerous Changes (1)

### Platform

#### Types

- Member 'PlatformTokenDeletePartiallyFailedError' was added to Union type 'PlatformTokenDeleteError'


---

## ✅ Non-Breaking Changes (102)

### Platform

#### ✏️ Mutation

- Field 'platformWorkspaceRefreshTokenDeleteSecret' was added to object type 'Mutation'
- Argument 'input: PlatformWorkspaceRefreshTokenDeleteSecretInput!' added to 'Mutation.platformWorkspaceRefreshTokenDeleteSecret'

#### Types

- Type 'PlatformTokenDeletePartiallyFailedError' was added
- 'PlatformTokenDeletePartiallyFailedError' object implements 'Error' interface
- Object type 'PlatformTokenDeletePartiallyFailedError' has description 'Error returned by the Token API when a `PlatformToken` could not be fully deleted, leaving it in an inconsistent state.'
- Type 'PlatformTokenDeleteRefreshTokenSecretError' was added
- 'PlatformTokenDeleteRefreshTokenSecretError' object implements 'Error' interface
- Object type 'PlatformTokenDeleteRefreshTokenSecretError' has description 'Error returned by the Token API when a client secret for a `PlatformWorkspaceRefreshToken` could not be deleted.'
- Type 'PlatformWorkspaceRefreshTokenDeleteSecretPayload' was added
- Type 'PlatformWorkspaceRefreshTokenDeleteSecretError' was added
- Member 'PlatformTokenNotFoundError' was added to Union type 'PlatformWorkspaceRefreshTokenDeleteSecretError'
- Member 'PlatformTokenDeleteRefreshTokenSecretError' was added to Union type 'PlatformWorkspaceRefreshTokenDeleteSecretError'
- Type 'PlatformWorkspaceRefreshTokenDeleteSecretInput' was added

#### Fields

- Field 'message' was added to object type 'PlatformTokenDeletePartiallyFailedError'
- Field 'message' was added to object type 'PlatformTokenDeleteRefreshTokenSecretError'
- Field 'errors' was added to object type 'PlatformWorkspaceRefreshTokenDeleteSecretPayload'
- Field 'refreshToken' was added to object type 'PlatformWorkspaceRefreshTokenDeleteSecretPayload'

#### Input / Payload

- Input field 'clientSecret' of type 'String!' was added to input object type 'PlatformWorkspaceRefreshTokenDeleteSecretInput'
- Input field 'tokenId' of type 'String!' was added to input object type 'PlatformWorkspaceRefreshTokenDeleteSecretInput'

### Supply

#### ✏️ Mutation

- Field 'supSolutionTemplatePatchCompatibleEvalKits' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplatePatchCompatibleEvalKitsInput!' added to 'Mutation.supSolutionTemplatePatchCompatibleEvalKits'
- Field 'supSolutionTemplatePatchEsdSource' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateEsdSourcePatchInput!' added to 'Mutation.supSolutionTemplatePatchEsdSource'
- Field 'supSolutionTemplatePatchParameters' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplatePatchParametersInput!' added to 'Mutation.supSolutionTemplatePatchParameters'
- Field 'supSolutionTemplateSetCompatibleEvalKits' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateSetCompatibleEvalKitsInput!' added to 'Mutation.supSolutionTemplateSetCompatibleEvalKits'
- Field 'supSolutionTemplateSetParameters' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateSetParametersInput!' added to 'Mutation.supSolutionTemplateSetParameters'

#### Types

- Type 'SupSolutionTemplatePatchCompatibleEvalKitsPayload' was added
- Object type 'SupSolutionTemplatePatchCompatibleEvalKitsPayload' has description 'Payload for patching compatible eval kits on a solution template.'
- Type 'SupSolutionTemplatePatchEsdSourcePayload' was added
- Object type 'SupSolutionTemplatePatchEsdSourcePayload' has description 'Payload for patching the ESD source of a solution template.'
- Type 'SupSolutionTemplatePatchParametersPayload' was added
- Object type 'SupSolutionTemplatePatchParametersPayload' has description 'Payload for patching parameters on a solution template.'
- Type 'SupSolutionTemplateSetCompatibleEvalKitsPayload' was added
- Object type 'SupSolutionTemplateSetCompatibleEvalKitsPayload' has description 'Payload for replacing all compatible eval kits on a solution template.'
- Type 'SupSolutionTemplateSetParametersPayload' was added
- Object type 'SupSolutionTemplateSetParametersPayload' has description 'Payload for replacing all parameters on a solution template.'
- Type 'SupSolutionTemplatePatchCompatibleEvalKitsError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchCompatibleEvalKitsError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchCompatibleEvalKitsError'
- Type 'SupSolutionTemplatePatchEsdSourceError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchEsdSourceError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchEsdSourceError'
- Type 'SupSolutionTemplatePatchParametersError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchParametersError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchParametersError'
- Type 'SupSolutionTemplateSetCompatibleEvalKitsError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateSetCompatibleEvalKitsError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateSetCompatibleEvalKitsError'
- Type 'SupSolutionTemplateSetParametersError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateSetParametersError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateSetParametersError'
- Type 'SupSolutionTemplateCompatibleEvalKitUpdateInput' was added
- Object type 'SupSolutionTemplateCompatibleEvalKitUpdateInput' has description 'Input for updating an existing compatible eval kit on a solution template.'
- Type 'SupSolutionTemplateEsdSourcePatchInput' was added
- Object type 'SupSolutionTemplateEsdSourcePatchInput' has description 'Input for patching the ESD source of a solution template.'
- Type 'SupSolutionTemplatePatchCompatibleEvalKitsInput' was added
- Object type 'SupSolutionTemplatePatchCompatibleEvalKitsInput' has description 'Input for adding or removing individual compatible eval kits on a solution template.'
- Type 'SupSolutionTemplatePatchParametersInput' was added
- Object type 'SupSolutionTemplatePatchParametersInput' has description 'Input for adding or removing individual parameters on a solution template.'
- Type 'SupSolutionTemplateSetCompatibleEvalKitsInput' was added
- Object type 'SupSolutionTemplateSetCompatibleEvalKitsInput' has description 'Input for replacing all compatible eval kits on a solution template.'
- Type 'SupSolutionTemplateSetParametersInput' was added
- Object type 'SupSolutionTemplateSetParametersInput' has description 'Input for replacing all parameters on a solution template.'

#### Fields

- Field 'errors' was added to object type 'SupSolutionTemplatePatchCompatibleEvalKitsPayload'
- Field 'success' was added to object type 'SupSolutionTemplatePatchCompatibleEvalKitsPayload'
- Field 'errors' was added to object type 'SupSolutionTemplatePatchEsdSourcePayload'
- Field 'success' was added to object type 'SupSolutionTemplatePatchEsdSourcePayload'
- Field 'errors' was added to object type 'SupSolutionTemplatePatchParametersPayload'
- Field 'success' was added to object type 'SupSolutionTemplatePatchParametersPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateSetCompatibleEvalKitsPayload'
- Field 'success' was added to object type 'SupSolutionTemplateSetCompatibleEvalKitsPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateSetParametersPayload'
- Field 'success' was added to object type 'SupSolutionTemplateSetParametersPayload'
- Field 'compatibleEvalKitId' was added to object type 'SupSolutionTemplateCompatibleEvalKit'
- Field 'SupSolutionTemplateCompatibleEvalKit.compatibleEvalKitId' is deprecated
- Directive 'deprecated' was added to 'SupSolutionTemplateCompatibleEvalKit.compatibleEvalKitId'

#### Input / Payload

- Input field 'addParameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateCompatibleEvalKitUpdateInput'
- Input field 'compatibleEvalKitId' of type 'String!' was added to input object type 'SupSolutionTemplateCompatibleEvalKitUpdateInput'
- Input field 'evalKitId' of type 'ID' was added to input object type 'SupSolutionTemplateCompatibleEvalKitUpdateInput'
- Input field 'removeParameterTitles' of type '[String!]' was added to input object type 'SupSolutionTemplateCompatibleEvalKitUpdateInput'
- Input field 'updateParameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateCompatibleEvalKitUpdateInput'
- Input field 'clearCompileModel' of type 'Boolean' was added to input object type 'SupSolutionTemplateEsdSourcePatchInput'
- Input field 'clearPreviewImage' of type 'Boolean' was added to input object type 'SupSolutionTemplateEsdSourcePatchInput'
- Input field 'compileModel' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplateEsdSourcePatchInput'
- Input field 'documentFile' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplateEsdSourcePatchInput'
- Input field 'previewImageFile' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplateEsdSourcePatchInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateEsdSourcePatchInput'
- Input field 'addCompatibleEvalKits' of type '[SupSolutionTemplateCompatibleEvalKitInput!]' was added to input object type 'SupSolutionTemplatePatchCompatibleEvalKitsInput'
- Input field 'removeCompatibleEvalKitIds' of type '[String!]' was added to input object type 'SupSolutionTemplatePatchCompatibleEvalKitsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplatePatchCompatibleEvalKitsInput'
- Input field 'updateCompatibleEvalKits' of type '[SupSolutionTemplateCompatibleEvalKitUpdateInput!]' was added to input object type 'SupSolutionTemplatePatchCompatibleEvalKitsInput'
- Input field 'addParameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplatePatchParametersInput'
- Input field 'removeParameterTitles' of type '[String!]' was added to input object type 'SupSolutionTemplatePatchParametersInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplatePatchParametersInput'
- Input field 'updateParameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplatePatchParametersInput'
- Input field 'compatibleEvalKits' of type '[SupSolutionTemplateCompatibleEvalKitInput!]' was added to input object type 'SupSolutionTemplateSetCompatibleEvalKitsInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateSetCompatibleEvalKitsInput'
- Input field 'parameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateSetParametersInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateSetParametersInput'


