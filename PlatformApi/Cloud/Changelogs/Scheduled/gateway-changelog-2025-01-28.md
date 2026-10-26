# gateway-changelog-28-Jan-2025

## ✅ Non-Breaking Changes (13)

### Library Management

#### 🔍 Query

- Field 'desSearchComponentsByMpns' was added to object type 'Query'
- Argument 'input: [DesSearchComponentByMpnInput!]!' added to 'Query.desSearchComponentsByMpns'

#### Types

- Type 'DesSearchComponentResult' was added
- Object type 'DesSearchComponentResult' has description 'Result of desSearchComponentsByMpns query.'
- Type 'DesSearchComponentByMpnInput' was added
- Object type 'DesSearchComponentByMpnInput' has description 'Input parameter for desSearchComponentsByMpns query.'

#### Fields

- Field 'componentId' was added to object type 'DesSearchComponentResult'
- Field 'itemId' was added to object type 'DesSearchComponentResult'
- Field 'itemName' was added to object type 'DesSearchComponentResult'
- Field 'revisionId' was added to object type 'DesSearchComponentResult'
- Field 'revisionName' was added to object type 'DesSearchComponentResult'

#### Input / Payload

- Input field 'mpn' of type 'String!' was added to input object type 'DesSearchComponentByMpnInput'
- Input field 'manufacturerName' of type 'String' was added to input object type 'DesSearchComponentByMpnInput'


