# gateway-changelog-07-Nov-2025

## 🔴 Breaking Changes (2)

### Design

#### 🔍 Query

- Type for argument 'args' on field 'Query.desProjects' changed from 'DesProjectArgsInput' to 'DesProjectsInput'

#### Types

- Type 'DesProjectArgsInput' was removed


---

## ✅ Non-Breaking Changes (106)

### Design

#### 🔍 Query

- Field 'Query.desDesignItemById' is deprecated
- Directive 'deprecated' was added to 'Query.desDesignItemById'

#### Types

- Type 'DesProjectsInput' was added
- Object type 'DesProjectsInput' has description '`desProjects` extra arguments.'

#### Fields

- Field 'pcbId' was added to object type 'DesDesignItem'
- Field 'schId' was added to object type 'DesDesignItem'
- Field 'DesDesignItem.id' is deprecated
- Directive 'deprecated' was added to 'DesDesignItem.id'

#### Input / Payload

- Input field 'hasLayers' of type 'Boolean' was added to input object type 'DesProjectsInput'
- Input field 'itemAsDesignItemPcbUniqueId' of type 'String' was added to input object type 'DesCreateCommentThreadInput'
- Input field 'itemAsDesignItemSchUniqueId' of type 'String' was added to input object type 'DesCreateCommentThreadInput'
- Directive 'deprecated' was added to input field 'itemAsDesignItemId' in input object 'DesCreateCommentThreadInput'

### Platform

#### ✏️ Mutation

- Field 'solBldScaffoldingByExistingEsd' was added to object type 'Mutation'
- Argument 'input: SolBldScaffoldingByExistingEsdInput!' added to 'Mutation.solBldScaffoldingByExistingEsd'

#### Types

- Type 'SolBldScaffoldingByExistingEsdPayload' was added
- Type 'SolBldScaffoldingByExistingEsdInput' was added

#### Fields

- Field 'jobId' was added to object type 'SolBldScaffoldingByExistingEsdPayload'
- Field 'aiModels' was added to object type 'SolSolution'

#### Input / Payload

- Input field 'solutionId' of type 'ID!' was added to input object type 'SolBldScaffoldingByExistingEsdInput'

### Renesas (preview)

#### 🔍 Query

- Field 'sftAIModelById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sftAIModelById'
- Field 'sftAIModels' was added to object type 'Query'
- Field 'sftAIModelsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sftAIModelsByIds'

#### ✏️ Mutation

- Field 'sftAIModelCreate' was added to object type 'Mutation'
- Argument 'input: SftAIModelCreateInput!' added to 'Mutation.sftAIModelCreate'
- Field 'sftAIModelCreateCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftAIModelCreatePropertiesInput!' added to 'Mutation.sftAIModelCreateCustomProperties'
- Field 'sftAIModelDelete' was added to object type 'Mutation'
- Argument 'input: SftAIModelDeleteInput!' added to 'Mutation.sftAIModelDelete'
- Field 'sftAIModelDeleteCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftAIModelDeletePropertiesInput!' added to 'Mutation.sftAIModelDeleteCustomProperties'
- Field 'sftAIModelUpdate' was added to object type 'Mutation'
- Argument 'input: SftAIModelUpdateInput!' added to 'Mutation.sftAIModelUpdate'
- Field 'sftAIModelUpdateCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftAIModelUpdatePropertiesInput!' added to 'Mutation.sftAIModelUpdateCustomProperties'

#### Types

- Type 'SftAIModel' was added
- Type 'SftAIModelCreatePayload' was added
- Type 'SftAIModelCreatePropertiesPayload' was added
- Type 'SftAIModelCustomProperty' was added
- Type 'SftAIModelDeletePayload' was added
- Type 'SftAIModelDeletePropertiesPayload' was added
- Type 'SftAIModelUpdatePayload' was added
- Type 'SftAIModelUpdatePropertiesPayload' was added
- Type 'SftAIModelCreateInput' was added
- Type 'SftAIModelCreatePropertiesInput' was added
- Type 'SftAIModelCustomPropertyInput' was added
- Type 'SftAIModelDeleteInput' was added
- Type 'SftAIModelDeletePropertiesInput' was added
- Type 'SftAIModelUpdateInput' was added
- Type 'SftAIModelUpdatePropertiesInput' was added

#### Fields

- Field 'createdAt' was added to object type 'SftAIModel'
- Field 'createdBy' was added to object type 'SftAIModel'
- Field 'customProperties' was added to object type 'SftAIModel'
- Field 'description' was added to object type 'SftAIModel'
- Field 'folderId' was added to object type 'SftAIModel'
- Field 'id' was added to object type 'SftAIModel'
- Field 'modifiedAt' was added to object type 'SftAIModel'
- Field 'modifiedBy' was added to object type 'SftAIModel'
- Field 'name' was added to object type 'SftAIModel'
- Field 'previewUrl' was added to object type 'SftAIModel'
- Field 'url' was added to object type 'SftAIModel'
- Field 'data' was added to object type 'SftAIModelCreatePayload'
- Field 'customProperties' was added to object type 'SftAIModelCreatePropertiesPayload'
- Field 'id' was added to object type 'SftAIModelCreatePropertiesPayload'
- Field 'key' was added to object type 'SftAIModelCustomProperty'
- Field 'value' was added to object type 'SftAIModelCustomProperty'
- Field 'isDeleted' was added to object type 'SftAIModelDeletePayload'
- Field 'deletedParametersCount' was added to object type 'SftAIModelDeletePropertiesPayload'
- Field 'id' was added to object type 'SftAIModelDeletePropertiesPayload'
- Field 'data' was added to object type 'SftAIModelUpdatePayload'
- Field 'customProperties' was added to object type 'SftAIModelUpdatePropertiesPayload'
- Field 'id' was added to object type 'SftAIModelUpdatePropertiesPayload'

#### Input / Payload

- Input field 'customProperties' of type '[SftAIModelCustomPropertyInput!]' was added to input object type 'SftAIModelCreateInput'
- Input field 'description' of type 'String' was added to input object type 'SftAIModelCreateInput'
- Input field 'fileToken' of type 'String' was added to input object type 'SftAIModelCreateInput'
- Input field 'folderId' of type 'String!' was added to input object type 'SftAIModelCreateInput'
- Input field 'name' of type 'String!' was added to input object type 'SftAIModelCreateInput'
- Input field 'customProperties' of type '[SftAIModelCustomPropertyInput!]!' was added to input object type 'SftAIModelCreatePropertiesInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftAIModelCreatePropertiesInput'
- Input field 'key' of type 'String!' was added to input object type 'SftAIModelCustomPropertyInput'
- Input field 'value' of type 'String' was added to input object type 'SftAIModelCustomPropertyInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftAIModelDeleteInput'
- Input field 'customPropertyNames' of type '[String!]!' was added to input object type 'SftAIModelDeletePropertiesInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftAIModelDeletePropertiesInput'
- Input field 'description' of type 'String' was added to input object type 'SftAIModelUpdateInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftAIModelUpdateInput'
- Input field 'name' of type 'String' was added to input object type 'SftAIModelUpdateInput'
- Input field 'customProperties' of type '[SftAIModelCustomPropertyInput!]!' was added to input object type 'SftAIModelUpdatePropertiesInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftAIModelUpdatePropertiesInput'

### Supply

#### Types

- Type 'SupRefDesignStatus' was added
- Enum value 'ACTIVE' was added to enum 'SupRefDesignStatus'
- Enum value 'DRAFT' was added to enum 'SupRefDesignStatus'
- Enum value 'INACTIVE' was added to enum 'SupRefDesignStatus'
- Enum value 'ON_HOLD' was added to enum 'SupRefDesignStatus'
- Enum value 'REJECTED' was added to enum 'SupRefDesignStatus'
- Enum value 'REVIEWING' was added to enum 'SupRefDesignStatus'
- Enum value 'SUBMITTED' was added to enum 'SupRefDesignStatus'

#### Fields

- Field 'status' was added to object type 'SupRefDesign'

#### Input / Payload

- Input field 'statuses' of type '[SupRefDesignStatus!]' was added to input object type 'SupRefDesignFilterInput'

### System Design

#### ✏️ Mutation

- Field 'sysEsdExportDocument' was added to object type 'Mutation'
- Argument 'input: SysEsdExportDocumentInput!' added to 'Mutation.sysEsdExportDocument'

#### Types

- Type 'SysEsdExportDocumentPayload' was added
- Type 'SysEsdExportDocumentInput' was added

#### Fields

- Field 'esdDocumentJson' was added to object type 'SysEsdExportDocumentPayload'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'SysEsdExportDocumentInput'


