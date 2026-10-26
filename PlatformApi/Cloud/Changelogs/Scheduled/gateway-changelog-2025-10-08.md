# gateway-changelog-08-Oct-2025

## ✅ Non-Breaking Changes (77)

### Design

#### Fields

- Field 'releaseDate' was added to object type 'DesRevisionDetails'

### Platform

#### ✏️ Mutation

- Field 'solBldScaffoldingExistingSolutionBySolutionTemplate' was added to object type 'Mutation'
- Argument 'input: SolBldScaffoldingExistingSolutionBySolutionTemplateInput!' added to 'Mutation.solBldScaffoldingExistingSolutionBySolutionTemplate'

#### Types

- Type 'SolBldScaffoldingExistingSolutionBySolutionTemplatePayload' was added
- Type 'SolBldScaffoldingExistingSolutionBySolutionTemplateInput' was added

#### Fields

- Field 'jobId' was added to object type 'SolBldScaffoldingExistingSolutionBySolutionTemplatePayload'

#### Input / Payload

- Input field 'evalKitId' of type 'ID' was added to input object type 'SolBldScaffoldingExistingSolutionBySolutionTemplateInput'
- Input field 'solutionId' of type 'ID!' was added to input object type 'SolBldScaffoldingExistingSolutionBySolutionTemplateInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SolBldScaffoldingExistingSolutionBySolutionTemplateInput'

### Renesas (preview)

#### 🔍 Query

- Field 'supSoftwareProjectById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.supSoftwareProjectById'
- Field 'supSoftwareProjects' was added to object type 'Query'
- Argument 'limit: Int!' (with default value) added to 'Query.supSoftwareProjects'
- Argument 'q: String' added to 'Query.supSoftwareProjects'
- Argument 'start: Int!' (with default value) added to 'Query.supSoftwareProjects'
- Field 'supSoftwareProjectsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.supSoftwareProjectsByIds'

#### Types

- Type 'SupSoftwareProject' was added
- Type 'SupSoftwareProjectEvalKitSource' was added

#### Arguments

- Argument 'id: ID!' added to 'SupSoftwareProject.compatibleEvalKit'

#### Fields

- Field 'compatibleEvalKit' was added to object type 'SupSoftwareProject'
- Field 'compatibleEvalKits' was added to object type 'SupSoftwareProject'
- Field 'createdAt' was added to object type 'SupSoftwareProject'
- Field 'description' was added to object type 'SupSoftwareProject'
- Field 'id' was added to object type 'SupSoftwareProject'
- Field 'title' was added to object type 'SupSoftwareProject'
- Field 'updatedAt' was added to object type 'SupSoftwareProject'
- Field 'configUrl' was added to object type 'SupSoftwareProjectEvalKitSource'
- Field 'configXmlUrl' was added to object type 'SupSoftwareProjectEvalKitSource'
- Field 'evalKit' was added to object type 'SupSoftwareProjectEvalKitSource'
- Field 'evalKitId' was added to object type 'SupSoftwareProjectEvalKitSource'
- Field 'readmeUrl' was added to object type 'SupSoftwareProjectEvalKitSource'
- Field 'sourceUrl' was added to object type 'SupSoftwareProjectEvalKitSource'

### Supply

#### 🔍 Query

- Field 'supEvalKitById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.supEvalKitById'
- Field 'supEvalKits' was added to object type 'Query'
- Argument 'limit: Int!' (with default value) added to 'Query.supEvalKits'
- Argument 'q: String' added to 'Query.supEvalKits'
- Argument 'start: Int!' (with default value) added to 'Query.supEvalKits'
- Field 'supEvalKitsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.supEvalKitsByIds'
- Field 'supSolutionTemplateById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.supSolutionTemplateById'
- Field 'supSolutionTemplates' was added to object type 'Query'
- Argument 'limit: Int!' (with default value) added to 'Query.supSolutionTemplates'
- Argument 'q: String' added to 'Query.supSolutionTemplates'
- Argument 'start: Int!' (with default value) added to 'Query.supSolutionTemplates'
- Field 'supSolutionTemplatesByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.supSolutionTemplatesByIds'

#### Types

- Type 'SupEvalKit' was added
- Type 'SupSolutionTemplate' was added
- Type 'SupSolutionTemplateESDSource' was added

#### Arguments

- Argument 'id: ID' added to 'SupSolutionTemplate.evalKits'

#### Fields

- Field 'bestPreviewImage' was added to object type 'SupEvalKit'
- Field 'createdAt' was added to object type 'SupEvalKit'
- Field 'description' was added to object type 'SupEvalKit'
- Field 'id' was added to object type 'SupEvalKit'
- Field 'partIds' was added to object type 'SupEvalKit'
- Field 'previewImages' was added to object type 'SupEvalKit'
- Field 'refDesignIds' was added to object type 'SupEvalKit'
- Field 'refDesigns' was added to object type 'SupEvalKit'
- Field 'sourceUrl' was added to object type 'SupEvalKit'
- Field 'title' was added to object type 'SupEvalKit'
- Field 'updatedAt' was added to object type 'SupEvalKit'
- Field 'createdAt' was added to object type 'SupSolutionTemplate'
- Field 'description' was added to object type 'SupSolutionTemplate'
- Field 'esdSource' was added to object type 'SupSolutionTemplate'
- Field 'evalKitIds' was added to object type 'SupSolutionTemplate'
- Field 'evalKits' was added to object type 'SupSolutionTemplate'
- Field 'id' was added to object type 'SupSolutionTemplate'
- Field 'softwareProjectIds' was added to object type 'SupSolutionTemplate'
- Field 'softwareProjects' was added to object type 'SupSolutionTemplate'
- Field 'solutionSourceUrl' was added to object type 'SupSolutionTemplate'
- Field 'title' was added to object type 'SupSolutionTemplate'
- Field 'updatedAt' was added to object type 'SupSolutionTemplate'
- Field 'compileModelUrl' was added to object type 'SupSolutionTemplateESDSource'
- Field 'documentFileUrl' was added to object type 'SupSolutionTemplateESDSource'


