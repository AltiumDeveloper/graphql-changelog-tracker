# gateway-changelog-15-Jan-2025

## ✅ Non-Breaking Changes (12)

### Design

#### Types

- Type 'DesReleaseComponentFootprintInput' was added
- Object type 'DesReleaseComponentFootprintInput' has description 'Input for adding existing footprints to the release'
- Type 'DesReleaseComponentSymbolInput' was added
- Object type 'DesReleaseComponentSymbolInput' has description 'Input for adding existing symbols to the release'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'DesReleaseComponentFootprintInput'
- Input field 'id' of type 'ID!' was added to input object type 'DesReleaseComponentSymbolInput'
- Input field 'symbol' of type 'DesReleaseComponentSymbolInput' was added to input object type 'DesReleaseComponentInput'
- Input field 'footprints' of type '[DesReleaseComponentFootprintInput!]' was added to input object type 'DesReleaseComponentInput'
- Input field 'DesReleaseComponentInput.symbolReleaseFolder' changed type from 'String!' to 'String'
- Input field 'DesReleaseComponentInput.symbolFiles' changed type from '[DesReleaseComponentFileInput!]!' to '[DesReleaseComponentFileInput!]'
- Input field 'DesReleaseComponentInput.footprintReleaseFolder' changed type from 'String!' to 'String'
- Input field 'DesReleaseComponentInput.footprintFiles' changed type from '[DesReleaseComponentFileInput!]!' to '[DesReleaseComponentFileInput!]'


