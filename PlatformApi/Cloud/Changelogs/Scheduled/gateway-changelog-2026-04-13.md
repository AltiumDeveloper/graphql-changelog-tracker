# gateway-changelog-13-Apr-2026

## ✅ Non-Breaking Changes (18)

### Platform

#### Input / Payload

- Input field 'ignoreExistingSources' of type 'Boolean' was added to input object type 'SolBldScaffoldingBySdmInput'

### Renesas (preview)

#### 🔍 Query

- Field 'supSoftwareProjectEvalKitCompatibleSoftwareProjectIdsByEvalKitId' was added to object type 'Query'
- Argument 'evalKitId: ID!' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectIdsByEvalKitId'
- Argument 'limit: Int!' (with default value) added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectIdsByEvalKitId'
- Argument 'start: Int!' (with default value) added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectIdsByEvalKitId'
- Field 'supSoftwareProjectEvalKitCompatibleSoftwareProjectsByEvalKitId' was added to object type 'Query'
- Argument 'evalKitId: ID!' added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectsByEvalKitId'
- Argument 'limit: Int!' (with default value) added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectsByEvalKitId'
- Argument 'start: Int!' (with default value) added to 'Query.supSoftwareProjectEvalKitCompatibleSoftwareProjectsByEvalKitId'

#### Input / Payload

- Directive 'deprecated' was added to input field 'compatibleEvalKits' in input object 'SupSoftwareProjectCreateSoftwareProjectInput'
- Directive 'deprecated' was added to input field 'addCompatibleEvalKits' in input object 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Directive 'deprecated' was added to input field 'removeCompatibleEvalKits' in input object 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Directive 'deprecated' was added to input field 'updateCompatibleEvalKits' in input object 'SupSoftwareProjectUpdateSoftwareProjectInput'

### Supply

#### Fields

- Field 'SupEvalKit.compatibleSoftwareProjects' is deprecated
- Directive 'deprecated' was added to 'SupEvalKit.compatibleSoftwareProjects'

#### Input / Payload

- Directive 'deprecated' was added to input field 'compatibleSoftwareProjectIds' in input object 'SupEvalKitCreateEvalKitInput'
- Directive 'deprecated' was added to input field 'addCompatibleSoftwareProjectIds' in input object 'SupEvalKitUpdateEvalKitInput'
- Directive 'deprecated' was added to input field 'removeCompatibleSoftwareProjectIds' in input object 'SupEvalKitUpdateEvalKitInput'


