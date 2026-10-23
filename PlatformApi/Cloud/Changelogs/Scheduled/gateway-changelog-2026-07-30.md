# gateway-changelog-30-Jul-2026

## ✅ Non-Breaking Changes (33)

### Renesas (preview)

#### 🔍 Query

- Field 'supSoftwareProjectSolutionTemplateSoftwareProjectIdsBySolutionTemplateId' was added to object type 'Query'
- Argument 'solutionTemplateId: ID!' added to 'Query.supSoftwareProjectSolutionTemplateSoftwareProjectIdsBySolutionTemplateId'
- Field 'supSoftwareProjectSolutionTemplateSoftwareProjectsBySolutionTemplateId' was added to object type 'Query'
- Argument 'solutionTemplateId: ID!' added to 'Query.supSoftwareProjectSolutionTemplateSoftwareProjectsBySolutionTemplateId'

#### ✏️ Mutation

- Field 'supSoftwareProjectPatchSoftwareProjectSolutionTemplates' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesInput!' added to 'Mutation.supSoftwareProjectPatchSoftwareProjectSolutionTemplates'
- Field 'supSoftwareProjectSetSoftwareProjectSolutionTemplates' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectSetSoftwareProjectSolutionTemplatesInput!' added to 'Mutation.supSoftwareProjectSetSoftwareProjectSolutionTemplates'

#### Types

- Type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesPayload' was added
- Object type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesPayload' has description 'Payload returned after patching software projects on a solution template.'
- Type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesPayload' was added
- Object type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesPayload' has description 'Payload returned after setting software projects on a solution template.'
- Type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesError'
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesError'
- Type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesError' was added
- Member 'SupSoftwareProjectOperationFailedError' was added to Union type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesError'
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesError'
- Type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesInput' was added
- Object type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesInput' has description 'Input for patching software project associations on a solution template.'
- Type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesInput' was added
- Object type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesInput' has description 'Input for replacing all software project associations on a solution template.'

#### Fields

- Field 'errors' was added to object type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesPayload'
- Field 'success' was added to object type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesPayload'
- Field 'errors' was added to object type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesPayload'
- Field 'success' was added to object type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesPayload'

#### Input / Payload

- Input field 'addSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesInput'
- Input field 'removeSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSoftwareProjectPatchSoftwareProjectSolutionTemplatesInput'
- Input field 'softwareProjectIds' of type '[ID!]' was added to input object type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSoftwareProjectSetSoftwareProjectSolutionTemplatesInput'

### Supply

#### Fields

- Field 'SupSolutionTemplate.softwareProjectIds' is deprecated
- Directive 'deprecated' was added to 'SupSolutionTemplate.softwareProjectIds'


