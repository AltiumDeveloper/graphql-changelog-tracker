# gateway-changelog-03-Jul-2026

## ✅ Non-Breaking Changes (32)

### Design

#### Fields

- Field 'apiVoyagerUrl' was added to object type 'DesWorkspaceLocation'

### Renesas (preview)

#### Fields

- Field 'isArrayPackage' was added to object type 'DmRaPartNumberModel'

### Supply

#### ✏️ Mutation

- Field 'supSolutionTemplatePatchPreviewImages' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplatePatchPreviewImagesInput!' added to 'Mutation.supSolutionTemplatePatchPreviewImages'
- Field 'supSolutionTemplateSetPreviewImages' was added to object type 'Mutation'
- Argument 'input: SupSolutionTemplateSetPreviewImagesInput!' added to 'Mutation.supSolutionTemplateSetPreviewImages'

#### Types

- Type 'SupSolutionTemplatePatchPreviewImagesPayload' was added
- Object type 'SupSolutionTemplatePatchPreviewImagesPayload' has description 'Payload for patching preview images on a solution template.'
- Type 'SupSolutionTemplateSetPreviewImagesPayload' was added
- Object type 'SupSolutionTemplateSetPreviewImagesPayload' has description 'Payload for replacing all preview images on a solution template.'
- Type 'SupSolutionTemplatePatchPreviewImagesError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplatePatchPreviewImagesError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplatePatchPreviewImagesError'
- Type 'SupSolutionTemplateSetPreviewImagesError' was added
- Member 'SupSolutionTemplateOperationFailedError' was added to Union type 'SupSolutionTemplateSetPreviewImagesError'
- Member 'SupSolutionTemplateNotFoundError' was added to Union type 'SupSolutionTemplateSetPreviewImagesError'
- Type 'SupSolutionTemplatePatchPreviewImagesInput' was added
- Object type 'SupSolutionTemplatePatchPreviewImagesInput' has description 'Input for patching preview images on a solution template.'
- Type 'SupSolutionTemplateSetPreviewImagesInput' was added
- Object type 'SupSolutionTemplateSetPreviewImagesInput' has description 'Input for replacing all preview images on a solution template.'

#### Fields

- Field 'errors' was added to object type 'SupSolutionTemplatePatchPreviewImagesPayload'
- Field 'success' was added to object type 'SupSolutionTemplatePatchPreviewImagesPayload'
- Field 'errors' was added to object type 'SupSolutionTemplateSetPreviewImagesPayload'
- Field 'success' was added to object type 'SupSolutionTemplateSetPreviewImagesPayload'

#### Input / Payload

- Input field 'addPreviewImages' of type '[SupSolutionTemplateFileInput!]' was added to input object type 'SupSolutionTemplatePatchPreviewImagesInput'
- Input field 'deletePreviewImageUrls' of type '[String!]' was added to input object type 'SupSolutionTemplatePatchPreviewImagesInput'
- Input field 'reorderPreviewImageUrls' of type '[String!]' was added to input object type 'SupSolutionTemplatePatchPreviewImagesInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplatePatchPreviewImagesInput'
- Input field 'previewImages' of type '[SupSolutionTemplateFileInput!]' was added to input object type 'SupSolutionTemplateSetPreviewImagesInput'
- Input field 'solutionTemplateId' of type 'ID!' was added to input object type 'SupSolutionTemplateSetPreviewImagesInput'
- Input field 'publisherIds' of type '[String!]' was added to input object type 'SupSolutionTemplateSearchFilterInput'
- Input field 'updatedByIds' of type '[String!]' was added to input object type 'SupSolutionTemplateSearchFilterInput'


