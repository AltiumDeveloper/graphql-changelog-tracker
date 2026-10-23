# gateway-changelog-17-Apr-2025

## ✅ Non-Breaking Changes (18)

### Design

#### ✏️ Mutation

- Field 'desCreateSymbol' was added to object type 'Mutation'
- Argument 'input: DesCreateSymbolInput!' added to 'Mutation.desCreateSymbol'

#### Types

- Type 'DesCreateSymbolPayload' was added
- Object type 'DesCreateSymbolPayload' has description 'Payload associated with creating a symbol.'
- Type 'DesCreateSymbolFileInput' was added
- Object type 'DesCreateSymbolFileInput' has description 'Input for creating a symbol file.'
- Type 'DesCreateSymbolInput' was added
- Object type 'DesCreateSymbolInput' has description 'Input for creating a symbol.'

#### Fields

- Field 'errors' was added to object type 'DesCreateSymbolPayload'
- Field 'id' was added to object type 'DesCreateSymbolPayload'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DesCreateSymbolFileInput'
- Input field 'relativePath' of type 'String!' was added to input object type 'DesCreateSymbolFileInput'
- Input field 'workspaceUrl' of type 'String!' was added to input object type 'DesCreateSymbolInput'
- Input field 'folderId' of type 'ID!' was added to input object type 'DesCreateSymbolInput'
- Input field 'name' of type 'String' was added to input object type 'DesCreateSymbolInput'
- Input field 'files' of type '[DesCreateSymbolFileInput!]!' was added to input object type 'DesCreateSymbolInput'
- Input field 'revisionNamingSchemeId' of type 'ID' was added to input object type 'DesCreateSymbolInput'
- Input field 'lifeCycleDefinitionId' of type 'ID' was added to input object type 'DesCreateSymbolInput'


