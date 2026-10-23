# gateway-changelog-12-Nov-2025

## ✅ Non-Breaking Changes (204)

### Design

#### 🔍 Query

- Field 'desFolderByFolderId' was added to object type 'Query'
- Argument 'folderId: String!' added to 'Query.desFolderByFolderId'
- Argument 'workspaceUrl: String!' added to 'Query.desFolderByFolderId'
- Field 'Query.desFolderById' is deprecated
- Directive 'deprecated' was added to 'Query.desFolderById'

#### Types

- Type 'DesDatasheetConnection' was added
- Object type 'DesDatasheetConnection' has description 'A connection to a list of items.'
- Type 'DesDatasheetEdge' was added
- Object type 'DesDatasheetEdge' has description 'An edge in a connection.'
- Type 'DesDatasheetFilterInput' was added
- Object type 'DesDatasheetFilterInput' has description 'A component datasheet.'

#### Arguments

- Argument 'after: String' added to 'DesLibrary.datasheets'
- Argument 'before: String' added to 'DesLibrary.datasheets'
- Argument 'first: Int' added to 'DesLibrary.datasheets'
- Argument 'last: Int' added to 'DesLibrary.datasheets'
- Argument 'where: DesDatasheetFilterInput' added to 'DesLibrary.datasheets'

#### Fields

- Field 'edges' was added to object type 'DesDatasheetConnection'
- Field 'nodes' was added to object type 'DesDatasheetConnection'
- Field 'pageInfo' was added to object type 'DesDatasheetConnection'
- Field 'totalCount' was added to object type 'DesDatasheetConnection'
- Field 'cursor' was added to object type 'DesDatasheetEdge'
- Field 'node' was added to object type 'DesDatasheetEdge'
- Field 'folderId' was added to object type 'DesCreateFolderPayload'
- Field 'DesCreateFolderPayload.id' is deprecated
- Directive 'deprecated' was added to 'DesCreateFolderPayload.id'
- Field 'DesFolder.id' is deprecated
- Directive 'deprecated' was added to 'DesFolder.id'
- Field 'datasheets' was added to object type 'DesLibrary'
- Field 'DesUpdateFolderPermissionsPayload.folderId' is deprecated
- Directive 'deprecated' was added to 'DesUpdateFolderPermissionsPayload.folderId'

#### Input / Payload

- Input field 'and' of type '[DesDatasheetFilterInput!]' was added to input object type 'DesDatasheetFilterInput'
- Input field 'comment' of type 'StringOperationFilterInput' was added to input object type 'DesDatasheetFilterInput'
- Input field 'description' of type 'StringOperationFilterInput' was added to input object type 'DesDatasheetFilterInput'
- Input field 'name' of type 'StringOperationFilterInput' was added to input object type 'DesDatasheetFilterInput'
- Input field 'or' of type '[DesDatasheetFilterInput!]' was added to input object type 'DesDatasheetFilterInput'
- Input field 'parentFolderId' of type 'String' was added to input object type 'DesCreateFolderInput'
- Directive 'deprecated' was added to input field 'parentId' in input object 'DesCreateFolderInput'
- Input field 'folderId' of type 'String' was added to input object type 'DesDeleteFolderInput'
- Input field 'workspaceUrl' of type 'String' was added to input object type 'DesDeleteFolderInput'
- Input field 'DesDeleteFolderInput.id' changed type from 'ID!' to 'ID'
- Directive 'deprecated' was added to input field 'id' in input object 'DesDeleteFolderInput'
- Input field 'folderId' of type 'String' was added to input object type 'DesMoveFolderInput'
- Input field 'parentFolderId' of type 'String' was added to input object type 'DesMoveFolderInput'
- Input field 'workspaceUrl' of type 'String' was added to input object type 'DesMoveFolderInput'
- Input field 'DesMoveFolderInput.id' changed type from 'ID!' to 'ID'
- Directive 'deprecated' was added to input field 'id' in input object 'DesMoveFolderInput'
- Directive 'deprecated' was added to input field 'parentId' in input object 'DesMoveFolderInput'
- Input field 'folderId' of type 'String' was added to input object type 'DesUpdateFolderInput'
- Input field 'workspaceUrl' of type 'String' was added to input object type 'DesUpdateFolderInput'
- Input field 'DesUpdateFolderInput.id' changed type from 'ID!' to 'ID'
- Directive 'deprecated' was added to input field 'id' in input object 'DesUpdateFolderInput'
- Input field 'workspaceUrl' of type 'String' was added to input object type 'DesUpdateFolderPermissionsInput'

### Platform

#### Input / Payload

- Input field 'clientId' of type 'String' was added to input object type 'GloCreateAppOAuthClientInput'

### Supply

#### ✏️ Mutation

- Field 'supSolutionTemplateCreateSolutionTemplate' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateCreateSolutionTemplateInput!' added to 'Mutation.supSolutionTemplateCreateSolutionTemplate'
- Field 'supSolutionTemplateCreateSolutionTemplateApplication' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateCreateSolutionTemplateApplicationInput!' added to 'Mutation.supSolutionTemplateCreateSolutionTemplateApplication'
- Field 'supSolutionTemplateDeleteSolutionTemplate' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateDeleteSolutionTemplateInput!' added to 'Mutation.supSolutionTemplateDeleteSolutionTemplate'
- Field 'supSolutionTemplateDeleteSolutionTemplateApplication' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateDeleteSolutionTemplateApplicationInput!' added to 'Mutation.supSolutionTemplateDeleteSolutionTemplateApplication'
- Field 'supSolutionTemplateUpdateSolutionTemplate' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateUpdateSolutionTemplateInput!' added to 'Mutation.supSolutionTemplateUpdateSolutionTemplate'
- Field 'supSolutionTemplateUpdateSolutionTemplateApplication' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateUpdateSolutionTemplateApplicationInput!' added to 'Mutation.supSolutionTemplateUpdateSolutionTemplateApplication'

#### Types

- Type 'SupSolutionTemplateApplicationIsExistedError' was added
- 'SupSolutionTemplateApplicationIsExistedError' object implements 'Error' interface
- Type 'SupSolutionTemplateApplicationNotFoundError' was added
- 'SupSolutionTemplateApplicationNotFoundError' object implements 'Error' interface
- Type 'SupSolutionTemplateCreateSolutionTemplateApplicationPayload' was added
- Object type 'SupSolutionTemplateCreateSolutionTemplateApplicationPayload' has description 'Payload associated with creating a solution template application.'
- Type 'SupSolutionTemplateCreateSolutionTemplatePayload' was added
- Object type 'SupSolutionTemplateCreateSolutionTemplatePayload' has description 'Payload associated with creating a solution template.'
- Type 'SupSolutionTemplateDeleteSolutionTemplateApplicationPayload' was added
- Object type 'SupSolutionTemplateDeleteSolutionTemplateApplicationPayload' has description 'Payload associated with deleting a solution template application.'
- Type 'SupSolutionTemplateDeleteSolutionTemplatePayload' was added
- Object type 'SupSolutionTemplateDeleteSolutionTemplatePayload' has description 'Payload associated with deleting a solution template.'
- Type 'SupSolutionTemplateNotFoundError' was added
- 'SupSolutionTemplateNotFoundError' object implements 'Error' interface
- Type 'SupSolutionTemplateUpdateSolutionTemplateApplicationPayload' was added
- Object type 'SupSolutionTemplateUpdateSolutionTemplateApplicationPayload' has description 'Payload associated with updating a solution template application.'
- Type 'SupSolutionTemplateUpdateSolutionTemplatePayload' was added
- Object type 'SupSolutionTemplateUpdateSolutionTemplatePayload' has description 'Payload associated with updating a solution template.'
- Type 'SupSolutionTemplateCreateSolutionTemplateApplicationError' was added
- Member 'SupSolutionTemplateApplicationIsExistedError' was added to Union type 'SupSolutionTemplateCreateSolutionTemplateApplicationError'
- Type 'SupSolutionTemplateDeleteSolutionTemplateApplicationError' was added
- Member 'SupSolutionTemplateApplicationNotFoundError' was added to Union type 'SupSolutionTemplateDeleteSolutionTemplateApplicationError'
- Type 'SupSolutionTemplateDeleteSolutionTemplateError' was added
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateDeleteSolutionTemplateError'
- Type 'SupSolutionTemplateUpdateSolutionTemplateApplicationError' was added
- Member 'SupSolutionTemplateApplicationNotFoundError' was added to Union type 'SupSolutionTemplateUpdateSolutionTemplateApplicationError'
- Type 'SupSolutionTemplateUpdateSolutionTemplateError' was added
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateUpdateSolutionTemplateError'
- Type 'SupSolutionTemplateErrorCode' was added
- Enum value 'SUP_SOLUTION_TEMPLATE_APPLICATION_IS_EXISTED' was added to enum 'SupSolutionTemplateErrorCode'
- Enum value 'SUP_SOLUTION_TEMPLATE_APPLICATION_NOT_FOUND' was added to enum 'SupSolutionTemplateErrorCode'
- Enum value 'SUP_SOLUTION_TEMPLATE_NOT_FOUND' was added to enum 'SupSolutionTemplateErrorCode'
- Type 'SupSolutionTemplateApplicationCreateParameterBundleInput' was added
- Type 'SupSolutionTemplateApplicationRemoveParameterBundleInput' was added
- Type 'SupSolutionTemplateApplicationUpdateParameterBundleInput' was added
- Type 'SupSolutionTemplateCompatibleEvalKitInput' was added
- Type 'SupSolutionTemplateCreateParameterInfoInput' was added
- Type 'SupSolutionTemplateCreateParameterInput' was added
- Type 'SupSolutionTemplateCreateParameterValueInput' was added
- Type 'SupSolutionTemplateCreateSolutionTemplateApplicationInput' was added
- Type 'SupSolutionTemplateCreateSolutionTemplateInput' was added
- Object type 'SupSolutionTemplateCreateSolutionTemplateInput' has description 'Input for solution template creation.'
- Type 'SupSolutionTemplateDeleteSolutionTemplateApplicationInput' was added
- Object type 'SupSolutionTemplateDeleteSolutionTemplateApplicationInput' has description 'Input for solution template application delete.'
- Type 'SupSolutionTemplateDeleteSolutionTemplateInput' was added
- Object type 'SupSolutionTemplateDeleteSolutionTemplateInput' has description 'Input for solution template delete.'
- Type 'SupSolutionTemplateEsdSourceInput' was added
- Type 'SupSolutionTemplateFileInput' was added
- Type 'SupSolutionTemplateParameterBundleInput' was added
- Type 'SupSolutionTemplateParameterInput' was added
- Type 'SupSolutionTemplateParameterValueInput' was added
- Type 'SupSolutionTemplateUpdateParameterInfoInput' was added
- Type 'SupSolutionTemplateUpdateParameterInput' was added
- Type 'SupSolutionTemplateUpdateSolutionTemplateApplicationInput' was added
- Type 'SupSolutionTemplateUpdateSolutionTemplateInput' was added
- Object type 'SupSolutionTemplateUpdateSolutionTemplateInput' has description 'Input for solution template update.'

#### Fields

- Field 'errorCode' was added to object type 'SupSolutionTemplateApplicationIsExistedError'
- Field 'message' was added to object type 'SupSolutionTemplateApplicationIsExistedError'
- Field 'errorCode' was added to object type 'SupSolutionTemplateApplicationNotFoundError'
- Field 'message' was added to object type 'SupSolutionTemplateApplicationNotFoundError'
- Field 'errors' was added to object type 'SupSolutionTemplateCreateSolutionTemplateApplicationPayload'
- Field 'id' was added to object type 'SupSolutionTemplateCreateSolutionTemplateApplicationPayload'
- Field 'id' was added to object type 'SupSolutionTemplateCreateSolutionTemplatePayload'
- Field 'errors' was added to object type 'SupSolutionTemplateDeleteSolutionTemplateApplicationPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateDeleteSolutionTemplatePayload'
- Field 'errorCode' was added to object type 'SupSolutionTemplateNotFoundError'
- Field 'message' was added to object type 'SupSolutionTemplateNotFoundError'
- Field 'errors' was added to object type 'SupSolutionTemplateUpdateSolutionTemplateApplicationPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateUpdateSolutionTemplatePayload'
- Field 'aiModelIds' was added to object type 'SupSolutionTemplate'
- Field 'SupSolutionTemplate.evalKitIds' is deprecated
- Directive 'deprecated' was added to 'SupSolutionTemplate.evalKitIds'
- Field 'SupSolutionTemplate.evalKits' is deprecated
- Directive 'deprecated' was added to 'SupSolutionTemplate.evalKits'

#### Input / Payload

- Input field 'order' of type 'Int!' was added to input object type 'SupSolutionTemplateApplicationCreateParameterBundleInput'
- Input field 'parameter' of type 'SupSolutionTemplateCreateParameterInput!' was added to input object type 'SupSolutionTemplateApplicationCreateParameterBundleInput'
- Input field 'question' of type 'String!' was added to input object type 'SupSolutionTemplateApplicationCreateParameterBundleInput'
- Input field 'required' of type 'Boolean!' was added to input object type 'SupSolutionTemplateApplicationCreateParameterBundleInput'
- Input field 'values' of type '[SupSolutionTemplateCreateParameterValueInput!]!' was added to input object type 'SupSolutionTemplateApplicationCreateParameterBundleInput'
- Input field 'parameterTitle' of type 'String!' was added to input object type 'SupSolutionTemplateApplicationRemoveParameterBundleInput'
- Input field 'newValues' of type '[SupSolutionTemplateCreateParameterValueInput!]' was added to input object type 'SupSolutionTemplateApplicationUpdateParameterBundleInput'
- Input field 'order' of type 'Int' was added to input object type 'SupSolutionTemplateApplicationUpdateParameterBundleInput'
- Input field 'parameter' of type 'SupSolutionTemplateUpdateParameterInput!' was added to input object type 'SupSolutionTemplateApplicationUpdateParameterBundleInput'
- Input field 'question' of type 'String!' was added to input object type 'SupSolutionTemplateApplicationUpdateParameterBundleInput'
- Input field 'required' of type 'Boolean' was added to input object type 'SupSolutionTemplateApplicationUpdateParameterBundleInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupSolutionTemplateCompatibleEvalKitInput'
- Input field 'parameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateCompatibleEvalKitInput'
- Input field 'description' of type 'String!' was added to input object type 'SupSolutionTemplateCreateParameterInfoInput'
- Input field 'imageUrl' of type 'String' was added to input object type 'SupSolutionTemplateCreateParameterInfoInput'
- Input field 'summary' of type 'String' was added to input object type 'SupSolutionTemplateCreateParameterInfoInput'
- Input field 'info' of type 'SupSolutionTemplateCreateParameterInfoInput' was added to input object type 'SupSolutionTemplateCreateParameterInput'
- Input field 'title' of type 'String!' was added to input object type 'SupSolutionTemplateCreateParameterInput'
- Input field 'info' of type 'SupSolutionTemplateCreateParameterInfoInput' was added to input object type 'SupSolutionTemplateCreateParameterValueInput'
- Input field 'name' of type 'String!' was added to input object type 'SupSolutionTemplateCreateParameterValueInput'
- Input field 'value' of type 'String!' was added to input object type 'SupSolutionTemplateCreateParameterValueInput'
- Input field 'applicationId' of type 'String!' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateApplicationInput'
- Input field 'description' of type 'String' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateApplicationInput'
- Input field 'parameters' of type '[SupSolutionTemplateApplicationCreateParameterBundleInput!]!' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateApplicationInput'
- Input field 'applicationIds' of type '[String!]' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'compatibleEvalKits' of type '[SupSolutionTemplateCompatibleEvalKitInput!]' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'description' of type 'String' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'esdSource' of type 'SupSolutionTemplateEsdSourceInput!' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'parameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'previewImages' of type '[SupSolutionTemplateFileInput!]!' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'softwareProjectIds' of type '[ID!]' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'title' of type 'String!' was added to input object type 'SupSolutionTemplateCreateSolutionTemplateInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupSolutionTemplateDeleteSolutionTemplateApplicationInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupSolutionTemplateDeleteSolutionTemplateInput'
- Input field 'compileModel' of type 'SupSolutionTemplateFileInput' was added to input object type 'SupSolutionTemplateEsdSourceInput'
- Input field 'documentFile' of type 'SupSolutionTemplateFileInput!' was added to input object type 'SupSolutionTemplateEsdSourceInput'
- Input field 'fileId' of type 'String!' was added to input object type 'SupSolutionTemplateFileInput'
- Input field 'fileName' of type 'String!' was added to input object type 'SupSolutionTemplateFileInput'
- Input field 'fileType' of type 'String!' was added to input object type 'SupSolutionTemplateFileInput'
- Input field 'parameter' of type 'SupSolutionTemplateParameterInput!' was added to input object type 'SupSolutionTemplateParameterBundleInput'
- Input field 'values' of type '[SupSolutionTemplateParameterValueInput!]!' was added to input object type 'SupSolutionTemplateParameterBundleInput'
- Input field 'title' of type 'String!' was added to input object type 'SupSolutionTemplateParameterInput'
- Input field 'name' of type 'String!' was added to input object type 'SupSolutionTemplateParameterValueInput'
- Input field 'value' of type 'String!' was added to input object type 'SupSolutionTemplateParameterValueInput'
- Input field 'description' of type 'String!' was added to input object type 'SupSolutionTemplateUpdateParameterInfoInput'
- Input field 'imageUrl' of type 'String' was added to input object type 'SupSolutionTemplateUpdateParameterInfoInput'
- Input field 'summary' of type 'String' was added to input object type 'SupSolutionTemplateUpdateParameterInfoInput'
- Input field 'info' of type 'SupSolutionTemplateUpdateParameterInfoInput' was added to input object type 'SupSolutionTemplateUpdateParameterInput'
- Input field 'title' of type 'String!' was added to input object type 'SupSolutionTemplateUpdateParameterInput'
- Input field 'addParameters' of type '[SupSolutionTemplateApplicationCreateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateApplicationInput'
- Input field 'description' of type 'String' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateApplicationInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateApplicationInput'
- Input field 'removeParameters' of type '[SupSolutionTemplateApplicationRemoveParameterBundleInput!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateApplicationInput'
- Input field 'updateParameters' of type '[SupSolutionTemplateApplicationUpdateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateApplicationInput'
- Input field 'addApplicationIds' of type '[String!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'addSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'description' of type 'String' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'newCompatibleEvalKits' of type '[SupSolutionTemplateCompatibleEvalKitInput!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'newEsdSource' of type 'SupSolutionTemplateEsdSourceInput' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'newParameters' of type '[SupSolutionTemplateParameterBundleInput!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'newPreviewImages' of type '[SupSolutionTemplateFileInput!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'removeApplicationIds' of type '[String!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'removeSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Input field 'title' of type 'String!' was added to input object type 'SupSolutionTemplateUpdateSolutionTemplateInput'


