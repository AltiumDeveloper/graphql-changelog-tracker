# gateway-changelog-11-Mar-2026

## ✅ Non-Breaking Changes (14)

### Renesas (preview)

#### 🔍 Query

- Field 'dmSoftwareModelFromConfigurationXml' was added to object type 'Query'
- Field 'Query.dmSoftwareModelFromConfigurationXml' is deprecated
- Argument 'fileId: String!' added to 'Query.dmSoftwareModelFromConfigurationXml'
- Directive 'deprecated' was added to 'Query.dmSoftwareModelFromConfigurationXml'

#### Types

- Type 'DmSoftwareComponent' was added
- Object type 'DmSoftwareComponent' has description '**Experimental** The software component used in configuration.xml, optionally linked to a library ID.'
- Type 'DmSoftwareModel' was added
- Object type 'DmSoftwareModel' has description '**Experimental** The software model for a device, including the device part number, its ports, and associated software components such as middleware and drivers.'

#### Fields

- Field 'componentLibraryId' was added to object type 'DmSoftwareComponent'
- Field 'id' was added to object type 'DmSoftwareComponent'
- Field 'name' was added to object type 'DmSoftwareComponent'
- Field 'deviceMpn' was added to object type 'DmSoftwareModel'
- Field 'ports' was added to object type 'DmSoftwareModel'
- Field 'softwareComponents' was added to object type 'DmSoftwareModel'


