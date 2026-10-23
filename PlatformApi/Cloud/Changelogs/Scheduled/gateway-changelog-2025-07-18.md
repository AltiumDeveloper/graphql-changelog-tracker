# gateway-changelog-18-Jul-2025

## ✅ Non-Breaking Changes (48)

### Common

#### Directives

- Directive 'skipWhenNull' was added
- Directive 'skipWhenNull' added repeatable.
- Location 'FIELD_DEFINITION' was added to directive 'skipWhenNull'
- Argument 'field' was added to directive 'skipWhenNull'

### Renesas (preview)

#### 🔍 Query

- Field 'sftDevCfgDeviceConfigurationById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sftDevCfgDeviceConfigurationById'
- Field 'sftDevCfgDeviceConfigurations' was added to object type 'Query'
- Field 'sftDevCfgDeviceConfigurationsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sftDevCfgDeviceConfigurationsByIds'

#### ✏️ Mutation

- Field 'sftDevCfgCreateDeviceConfiguration' was added to object type 'Mutation'
- Argument 'input: SftDevCfgCreateDeviceConfigurationInput!' added to 'Mutation.sftDevCfgCreateDeviceConfiguration'
- Field 'sftDevCfgDeleteDeviceConfiguration' was added to object type 'Mutation'
- Argument 'input: SftDevCfgDeleteDeviceConfigurationInput!' added to 'Mutation.sftDevCfgDeleteDeviceConfiguration'
- Field 'sftDevCfgLinkDeviceConfigurationToSoftwareProject' was added to object type 'Mutation'
- Argument 'input: SftDevCfgLinkDeviceConfigurationToSoftwareProjectInput!' added to 'Mutation.sftDevCfgLinkDeviceConfigurationToSoftwareProject'
- Field 'sftDevCfgUnlinkDeviceConfigurationFromSoftwareProject' was added to object type 'Mutation'
- Argument 'input: SftDevCfgUnlinkDeviceConfigurationFromSoftwareProjectInput!' added to 'Mutation.sftDevCfgUnlinkDeviceConfigurationFromSoftwareProject'

#### Types

- Type 'SftDevCfgCreateDeviceConfigurationPayload' was added
- Type 'SftDevCfgDeleteDeviceConfigurationPayload' was added
- Type 'SftDevCfgDeviceConfiguration' was added
- Type 'SftDevCfgLinkDeviceConfigurationToSoftwareProjectPayload' was added
- Type 'SftDevCfgUnlinkDeviceConfigurationFromSoftwareProjectPayload' was added
- Type 'SftDevCfgCreateDeviceConfigurationInput' was added
- Type 'SftDevCfgDeleteDeviceConfigurationInput' was added
- Type 'SftDevCfgLinkDeviceConfigurationToSoftwareProjectInput' was added
- Type 'SftDevCfgUnlinkDeviceConfigurationFromSoftwareProjectInput' was added

#### Fields

- Field 'data' was added to object type 'SftDevCfgCreateDeviceConfigurationPayload'
- Field 'isDeleted' was added to object type 'SftDevCfgDeleteDeviceConfigurationPayload'
- Field 'createdAt' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'createdBy' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'folderId' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'id' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'modifiedAt' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'modifiedBy' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'name' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'softwareProject' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'softwareProjectId' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'isSuccess' was added to object type 'SftDevCfgLinkDeviceConfigurationToSoftwareProjectPayload'
- Field 'isSuccess' was added to object type 'SftDevCfgUnlinkDeviceConfigurationFromSoftwareProjectPayload'
- Field 'deviceConfiguration' was added to object type 'SftSoftwareProject'
- Field 'deviceConfigurationId' was added to object type 'SftSoftwareProject'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'SftDevCfgCreateDeviceConfigurationInput'
- Input field 'folderId' of type 'String!' was added to input object type 'SftDevCfgCreateDeviceConfigurationInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftDevCfgDeleteDeviceConfigurationInput'
- Input field 'deviceConfigurationId' of type 'ID!' was added to input object type 'SftDevCfgLinkDeviceConfigurationToSoftwareProjectInput'
- Input field 'softwareProjectId' of type 'ID!' was added to input object type 'SftDevCfgLinkDeviceConfigurationToSoftwareProjectInput'
- Input field 'deviceConfigurationId' of type 'ID!' was added to input object type 'SftDevCfgUnlinkDeviceConfigurationFromSoftwareProjectInput'
- Input field 'softwareProjectId' of type 'ID!' was added to input object type 'SftDevCfgUnlinkDeviceConfigurationFromSoftwareProjectInput'


