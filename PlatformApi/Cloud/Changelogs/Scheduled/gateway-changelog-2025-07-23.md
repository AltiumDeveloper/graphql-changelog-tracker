# gateway-changelog-23-Jul-2025

## 🔴 Breaking Changes (1)

### Platform

#### Fields

- Field 'SolSolution.description' changed type from 'String!' to 'String'


---

## ⚠️ Dangerous Changes (1)

### Supply

#### Arguments

- Argument 'type: String' added to 'SupRefDesign.designFiles'


---

## ✅ Non-Breaking Changes (16)

### Design

#### ✏️ Mutation

- Field 'desUpdateSymbol' was added to object type 'Mutation'
- Argument 'input: DesUpdateSymbolInput!' added to 'Mutation.desUpdateSymbol'

#### Types

- Type 'DesUpdateSymbolPayload' was added
- Object type 'DesUpdateSymbolPayload' has description 'Payload of updating a symbol.'
- Type 'DesUpdateSymbolInput' was added
- Object type 'DesUpdateSymbolInput' has description 'Input for updating a symbol.'

#### Fields

- Field 'errors' was added to object type 'DesUpdateSymbolPayload'
- Field 'id' was added to object type 'DesUpdateSymbolPayload'

#### Input / Payload

- Input field 'symbolId' of type 'ID!' was added to input object type 'DesUpdateSymbolInput'
- Input field 'comment' of type 'String' was added to input object type 'DesUpdateSymbolInput'
- Input field 'description' of type 'String' was added to input object type 'DesUpdateSymbolInput'
- Input field 'releaseNote' of type 'String' was added to input object type 'DesUpdateSymbolInput'

### Platform

#### Input / Payload

- Input field 'SolCreateSolutionInput.description' changed type from 'String!' to 'String'

### Renesas (preview)

#### Fields

- Field 'description' was added to object type 'SftSoftwareProject'

#### Input / Payload

- Input field 'description' of type 'String' was added to input object type 'SftSoftwareCreateProjectInput'

### Supply

#### Fields

- Field 'refDesignFileId' was added to object type 'SupRefDesignFile'


