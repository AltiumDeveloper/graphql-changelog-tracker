# gateway-changelog-30-Mar-2026

## ⚠️ Dangerous Changes (1)

### Renesas (preview)

#### Arguments

- Argument 'order: [SupSoftwareProjectCompatibleEvalKitSortInput!]' added to 'SupSoftwareProject.compatibleEvalKitData'


---

## ✅ Non-Breaking Changes (64)

### Platform

#### 🔍 Query

- Field 'solEnvironmentLinks' was added to object type 'Query'

#### Types

- Type 'SolStringKeyValue' was added

#### Fields

- Field 'key' was added to object type 'SolStringKeyValue'
- Field 'value' was added to object type 'SolStringKeyValue'
- Field 'motorStudioProjects' was added to object type 'SolSolution'

### Renesas (preview)

#### 🔍 Query

- Field 'rsaMotorStudioProjectsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.rsaMotorStudioProjectsByIds'

#### Types

- Type 'SupSoftwareProjectCompatibleEvalKitSortInput' was added
- Object type 'SupSoftwareProjectCompatibleEvalKitSortInput' has description 'Input type for sorting.'

#### Arguments

- Argument 'after: String' added to 'SupSoftwareProject.compatibleEvalKitDetails'
- Argument 'before: String' added to 'SupSoftwareProject.compatibleEvalKitDetails'
- Argument 'first: Int' added to 'SupSoftwareProject.compatibleEvalKitDetails'
- Argument 'last: Int' added to 'SupSoftwareProject.compatibleEvalKitDetails'
- Argument 'order: [SupSoftwareProjectCompatibleEvalKitSortInput!]' added to 'SupSoftwareProject.compatibleEvalKitDetails'
- Argument 'where: SupSoftwareProjectCompatibleEvalKitFilterInput' added to 'SupSoftwareProject.compatibleEvalKitDetails'

#### Fields

- Field 'compatibleEvalKitDetails' was added to object type 'SupSoftwareProject'
- Field 'SupSoftwareProject.compatibleEvalKitData' is deprecated
- Directive 'deprecated' was added to 'SupSoftwareProject.compatibleEvalKitData'
- Field 'SupSoftwareProjectEvalKitSource.compatibleEvalKitId' is deprecated
- Directive 'deprecated' was added to 'SupSoftwareProjectEvalKitSource.compatibleEvalKitId'
- Field 'SupSoftwareProjectEvalKitSource.evalKitId' is deprecated
- Directive 'deprecated' was added to 'SupSoftwareProjectEvalKitSource.evalKitId'

#### Input / Payload

- Input field 'evalKit' of type 'SupEvalKitSortInput' was added to input object type 'SupSoftwareProjectCompatibleEvalKitSortInput'
- Input field 'q' of type 'String' was added to input object type 'SupSoftwareProjectCompatibleEvalKitFilterInput'

### Supply

#### 🔍 Query

- Field 'supEvalKitSoftwareProjectCompatibleEvalKitBySoftwareProjectIdAndEvalKitId' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitBySoftwareProjectIdAndEvalKitId'
- Argument 'softwareProjectId: ID!' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitBySoftwareProjectIdAndEvalKitId'
- Field 'supEvalKitSoftwareProjectCompatibleEvalKitsBySoftwareProjectId' was added to object type 'Query'
- Argument 'softwareProjectId: ID!' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitsBySoftwareProjectId'
- Field 'supEvalKitSoftwareProjectCompatibleEvalKitSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitSearch'
- Argument 'before: String' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitSearch'
- Argument 'first: Int' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitSearch'
- Argument 'last: Int' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitSearch'
- Argument 'order: [SupSoftwareProjectCompatibleEvalKitSortInput!]' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitSearch'
- Argument 'softwareProjectId: ID!' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitSearch'
- Argument 'where: SupSoftwareProjectCompatibleEvalKitFilterInput' added to 'Query.supEvalKitSoftwareProjectCompatibleEvalKitSearch'

#### ✏️ Mutation

- Field 'supEvalKitSoftwareProjectCompatibleEvalKit' was added to object type 'Mutation'
- Argument 'input: SupEvalKitSoftwareProjectCompatibleEvalKitInput!' added to 'Mutation.supEvalKitSoftwareProjectCompatibleEvalKit'

#### Types

- Type 'SupEvalKitSoftwareProjectCompatibleEvalKitPayload' was added
- Object type 'SupEvalKitSoftwareProjectCompatibleEvalKitPayload' has description 'Payload associated with updating a software project compatible evaluation kits.'
- Type 'SupEvalKitSoftwareProjectCompatibleEvalKitError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitSoftwareProjectCompatibleEvalKitError'
- Type 'SupEvalKitCreateSoftwareProjectCompatibleEvalKitInput' was added
- Type 'SupEvalKitRemoveSoftwareProjectCompatibleEvalKitInput' was added
- Type 'SupEvalKitSoftwareProjectCompatibleEvalKitInput' was added
- Object type 'SupEvalKitSoftwareProjectCompatibleEvalKitInput' has description 'Input for software project update.'
- Type 'SupEvalKitSoftwareProjectCompatibleEvalKitProjectSourceInput' was added
- Type 'SupEvalKitUpdateSoftwareProjectCompatibleEvalKitInput' was added

#### Fields

- Field 'errors' was added to object type 'SupEvalKitSoftwareProjectCompatibleEvalKitPayload'

#### Input / Payload

- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitCreateSoftwareProjectCompatibleEvalKitInput'
- Input field 'projectSources' of type '[SupEvalKitSoftwareProjectCompatibleEvalKitProjectSourceInput!]!' was added to input object type 'SupEvalKitCreateSoftwareProjectCompatibleEvalKitInput'
- Input field 'compatibleEvalKitId' of type 'String!' was added to input object type 'SupEvalKitRemoveSoftwareProjectCompatibleEvalKitInput'
- Input field 'addCompatibleEvalKits' of type '[SupEvalKitCreateSoftwareProjectCompatibleEvalKitInput!]' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitInput'
- Input field 'removeCompatibleEvalKits' of type '[SupEvalKitRemoveSoftwareProjectCompatibleEvalKitInput!]' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitInput'
- Input field 'updateCompatibleEvalKits' of type '[SupEvalKitUpdateSoftwareProjectCompatibleEvalKitInput!]' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitInput'
- Input field 'configXmlUrl' of type 'String!' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitProjectSourceInput'
- Input field 'sourceFile' of type 'SupEvalKitFileInput' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitProjectSourceInput'
- Input field 'sourceUrl' of type 'String' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitProjectSourceInput'
- Input field 'type' of type 'SupSoftwareProjectEvalKitProjectSourceType!' was added to input object type 'SupEvalKitSoftwareProjectCompatibleEvalKitProjectSourceInput'
- Input field 'compatibleEvalKitId' of type 'String!' was added to input object type 'SupEvalKitUpdateSoftwareProjectCompatibleEvalKitInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitUpdateSoftwareProjectCompatibleEvalKitInput'
- Input field 'newProjectSources' of type '[SupEvalKitSoftwareProjectCompatibleEvalKitProjectSourceInput!]' was added to input object type 'SupEvalKitUpdateSoftwareProjectCompatibleEvalKitInput'


