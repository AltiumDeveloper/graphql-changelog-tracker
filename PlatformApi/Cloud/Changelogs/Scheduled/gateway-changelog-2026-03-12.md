# gateway-changelog-12-Mar-2026

## 🔴 Breaking Changes (7)

### System Design

#### Types

- Type 'SysSdmClientMetadata' was removed

#### Fields

- Field 'metadata' was removed from object type 'SysSdmConnection'
- Field 'metadata' was removed from object type 'SysSdmFunctionalBlock'
- Field 'metadata' was removed from object type 'SysSdmFunctionalModel'
- Field 'metadata' was removed from object type 'SysSdmHardwareComponent'
- Field 'metadata' was removed from object type 'SysSdmPort'
- Field 'SysSdmSoftwareComponent.implementedBy' changed type from 'String' to '[String!]'


---

## ✅ Non-Breaking Changes (16)

### Platform

#### ✏️ Mutation

- Field 'solBldImportSoftwareProjects' was added to object type 'Mutation'
- Argument 'input: SolBldImportSoftwareProjectsInput!' added to 'Mutation.solBldImportSoftwareProjects'

#### Types

- Type 'SolBldImportSoftwareProjectsPayload' was added
- Type 'SolBldImportSoftwareProjectsInput' was added

#### Fields

- Field 'jobId' was added to object type 'SolBldImportSoftwareProjectsPayload'

#### Input / Payload

- Input field 'evalKitId' of type 'ID!' was added to input object type 'SolBldImportSoftwareProjectsInput'
- Input field 'softwareProjectIds' of type '[ID!]!' was added to input object type 'SolBldImportSoftwareProjectsInput'
- Input field 'solutionId' of type 'ID!' was added to input object type 'SolBldImportSoftwareProjectsInput'

### System Design

#### Fields

- Field 'sdmReferenceDesignator' was added to object type 'SysSdmFunctionalBlock'
- Field 'sdmReferenceDesignator' was added to object type 'SysSdmHardwareComponent'
- Field 'SysSdmHardwareModel.sdmReferenceDesignator' changed type from 'String' to 'String!'
- Field 'sdmReferenceDesignator' was added to object type 'SysSdmPort'
- Field 'SysSdmSoftwareComponent.sdmReferenceDesignator' changed type from 'String' to 'String!'
- Field 'SysSdmSoftwareModel.sdmReferenceDesignator' changed type from 'String' to 'String!'
- Field 'SysSdmSoftwareSpecification.category' changed type from 'SysSdmSoftwareComponentCategory' to 'SysSdmSoftwareComponentCategory!'
- Field 'SysSdmSoftwareStackInstance.dependencyIds' changed type from '[String!]' to '[String!]!'


