# gateway-changelog-19-Nov-2025

## ✅ Non-Breaking Changes (12)

### Platform

#### 🔍 Query

- Field 'solBldEntityScaffoldingStatus' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.solBldEntityScaffoldingStatus'

#### Types

- Type 'SolBldEntityScaffoldingStatusPayload' was added

#### Fields

- Field 'isScaffolding' was added to object type 'SolBldEntityScaffoldingStatusPayload'

### Renesas (preview)

#### Types

- Type 'SupSoftwareProjectFileInput' was added

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'SupSoftwareProjectFileInput'
- Input field 'fileName' of type 'String!' was added to input object type 'SupSoftwareProjectFileInput'
- Input field 'fileType' of type 'String!' was added to input object type 'SupSoftwareProjectFileInput'
- Input field 'sourceFile' of type 'SupSoftwareProjectFileInput' was added to input object type 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'SupSoftwareProjectEvalKitSourceInput.sourceUrl' changed type from 'String!' to 'String'

### Supply

#### Input / Payload

- Input field 'sourceFile' of type 'SupEvalKitFileInput' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'sourceFile' of type 'SupEvalKitFileInput' was added to input object type 'SupEvalKitUpdateEvalKitInput'


