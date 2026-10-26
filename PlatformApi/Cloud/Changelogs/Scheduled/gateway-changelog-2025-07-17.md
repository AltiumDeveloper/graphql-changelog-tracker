# gateway-changelog-17-Jul-2025

## ✅ Non-Breaking Changes (25)

### Design

#### ✏️ Mutation

- Field 'desCreateFootprint' was added to object type 'Mutation'
- Argument 'input: DesCreateFootprintInput!' added to 'Mutation.desCreateFootprint'

#### Types

- Type 'DesCreateFootprintPayload' was added
- Object type 'DesCreateFootprintPayload' has description 'Payload associated with creating footprint.'
- Type 'DesCreateFootprintFileInput' was added
- Object type 'DesCreateFootprintFileInput' has description 'Input for creating a footprint file.'
- Type 'DesCreateFootprintInput' was added
- Object type 'DesCreateFootprintInput' has description 'Input for creating a footprint.'

#### Fields

- Field 'errors' was added to object type 'DesCreateFootprintPayload'
- Field 'footprintId' was added to object type 'DesCreateFootprintPayload'
- Field 'DesLayer.copperArea' is deprecated
- Directive 'deprecated' was added to 'DesLayer.copperArea'
- Field 'DesLayer.copperRatio' is deprecated
- Directive 'deprecated' was added to 'DesLayer.copperRatio'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DesCreateFootprintFileInput'
- Input field 'relativePath' of type 'String!' was added to input object type 'DesCreateFootprintFileInput'
- Input field 'workspaceUrl' of type 'String' was added to input object type 'DesCreateFootprintInput'
- Input field 'folderId' of type 'ID!' was added to input object type 'DesCreateFootprintInput'
- Input field 'name' of type 'String' was added to input object type 'DesCreateFootprintInput'
- Input field 'files' of type '[DesCreateFootprintFileInput!]!' was added to input object type 'DesCreateFootprintInput'
- Input field 'revisionNamingSchemeId' of type 'ID' was added to input object type 'DesCreateFootprintInput'
- Input field 'lifeCycleDefinitionId' of type 'ID' was added to input object type 'DesCreateFootprintInput'
- Input field 'comment' of type 'String' was added to input object type 'DesCreateFootprintInput'
- Input field 'description' of type 'String' was added to input object type 'DesCreateFootprintInput'
- Input field 'parameters' of type '[DesRevisionParameterInput!]' was added to input object type 'DesCreateFootprintInput'


