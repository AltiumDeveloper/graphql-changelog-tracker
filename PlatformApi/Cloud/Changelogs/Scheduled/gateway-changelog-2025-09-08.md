# gateway-changelog-08-Sep-2025

## ⚠️ Dangerous Changes (2)

### Design

#### Types

- Enum value 'DEVICE_CONFIGURATION' was added to enum 'DesContentTypeKind'
- Enum value 'SIMULATION' was added to enum 'DesContentTypeKind'


---

## ✅ Non-Breaking Changes (192)

### Design

#### ✏️ Mutation

- Field 'desAddFootprintToComponent' was added to object type 'Mutation'
- Argument 'input: DesAddFootprintToComponentInput!' added to 'Mutation.desAddFootprintToComponent'
- Field 'desRemoveFootprintFromComponent' was added to object type 'Mutation'
- Argument 'input: DesRemoveFootprintFromComponentInput!' added to 'Mutation.desRemoveFootprintFromComponent'

#### Types

- Type 'DesAddFootprintToComponentPayload' was added
- Object type 'DesAddFootprintToComponentPayload' has description 'Payload associated with adding a footprint to a component.'
- Type 'DesRemoveFootprintFromComponentPayload' was added
- Object type 'DesRemoveFootprintFromComponentPayload' has description 'Payload associated with removing a footprint from a component.'
- Type 'DesAddFootprintToComponentInput' was added
- Object type 'DesAddFootprintToComponentInput' has description 'Input for adding a footprint to a component.'
- Type 'DesRemoveFootprintFromComponentInput' was added
- Object type 'DesRemoveFootprintFromComponentInput' has description 'Input for removing a footprint from a component.'

#### Fields

- Field 'errors' was added to object type 'DesAddFootprintToComponentPayload'
- Field 'errors' was added to object type 'DesRemoveFootprintFromComponentPayload'

#### Input / Payload

- Input field 'addAtIndex' of type 'Int' was added to input object type 'DesAddFootprintToComponentInput'
- Input field 'componentId' of type 'ID!' was added to input object type 'DesAddFootprintToComponentInput'
- Input field 'footprintId' of type 'ID!' was added to input object type 'DesAddFootprintToComponentInput'
- Input field 'componentId' of type 'ID!' was added to input object type 'DesRemoveFootprintFromComponentInput'
- Input field 'footprintId' of type 'ID!' was added to input object type 'DesRemoveFootprintFromComponentInput'

### Platform

#### 🔍 Query

- Field 'desWorkspaceUserById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.desWorkspaceUserById'
- Field 'desWorkspaceUsersByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.desWorkspaceUsersByIds'

#### Fields

- Field 'id' was added to object type 'DesWorkspaceGroup'
- Field 'id' was added to object type 'DesWorkspaceUser'
- Field 'createdBy' was added to object type 'SolSolution'
- Field 'esdDocuments' was added to object type 'SolSolution'
- Field 'modifiedBy' was added to object type 'SolSolution'
- Field 'sharedWith' was added to object type 'SolSolution'
- Field 'simulations' was added to object type 'SolSolution'
- Field 'softwareProjects' was added to object type 'SolSolution'

### Renesas (preview)

#### 🔍 Query

- Field 'sftDevCfgDeviceConfigurationRevisionById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sftDevCfgDeviceConfigurationRevisionById'
- Field 'sftDevCfgDeviceConfigurationRevisionsByDeviceConfigurationId' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sftDevCfgDeviceConfigurationRevisionsByDeviceConfigurationId'
- Field 'sftDevCfgDeviceConfigurationRevisionsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sftDevCfgDeviceConfigurationRevisionsByIds'
- Field 'sftSimSimulation' was added to object type 'Query'
- Field 'Query.sftSimSimulation' is deprecated
- Directive 'deprecated' was added to 'Query.sftSimSimulation'
- Field 'sftSimSimulationById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.sftSimSimulationById'
- Field 'sftSimSimulations' was added to object type 'Query'
- Field 'sftSimSimulationsByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.sftSimSimulationsByIds'

#### ✏️ Mutation

- Field 'sftDevCfgLinkDeviceConfigurationRevisionToHardwareProject' was added to object type 'Mutation'
- Argument 'input: SftDevCfgLinkDeviceConfigurationRevisionToHardwareProjectInput!' added to 'Mutation.sftDevCfgLinkDeviceConfigurationRevisionToHardwareProject'
- Field 'sftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProject' was added to object type 'Mutation'
- Argument 'input: SftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProjectInput!' added to 'Mutation.sftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProject'
- Field 'sftSimSimulationCreate' was added to object type 'Mutation'
- Argument 'input: SftSimSimulationCreateInput!' added to 'Mutation.sftSimSimulationCreate'
- Field 'sftSimSimulationCreateCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftSimSimulationCreatePropertiesInput!' added to 'Mutation.sftSimSimulationCreateCustomProperties'
- Field 'sftSimSimulationDelete' was added to object type 'Mutation'
- Argument 'input: SftSimSimulationDeleteInput!' added to 'Mutation.sftSimSimulationDelete'
- Field 'sftSimSimulationDeleteCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftSimSimulationDeletePropertiesInput!' added to 'Mutation.sftSimSimulationDeleteCustomProperties'
- Field 'sftSimSimulationUpdate' was added to object type 'Mutation'
- Argument 'input: SftSimSimulationUpdateInput!' added to 'Mutation.sftSimSimulationUpdate'
- Field 'sftSimSimulationUpdateCustomProperties' was added to object type 'Mutation'
- Argument 'input: SftSimSimulationUpdatePropertiesInput!' added to 'Mutation.sftSimSimulationUpdateCustomProperties'

#### Types

- Type 'SftDevCfgDeviceConfigurationRevision' was added
- Type 'SftDevCfgLinkDeviceConfigurationRevisionToHardwareProjectPayload' was added
- Type 'SftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProjectPayload' was added
- Type 'SftSimSimulation' was added
- Type 'SftSimSimulationCreatePayload' was added
- Type 'SftSimSimulationCreatePropertiesPayload' was added
- Type 'SftSimSimulationCustomProperty' was added
- Type 'SftSimSimulationDeletePayload' was added
- Type 'SftSimSimulationDeletePropertiesPayload' was added
- Type 'SftSimSimulationUpdatePayload' was added
- Type 'SftSimSimulationUpdatePropertiesPayload' was added
- Type 'SftSimSimulationRepositoryType' was added
- Enum value 'EXTERNAL' was added to enum 'SftSimSimulationRepositoryType'
- Enum value 'INTERNAL' was added to enum 'SftSimSimulationRepositoryType'
- Type 'SftSimSimulationType' was added
- Enum value 'MATLAB' was added to enum 'SftSimSimulationType'
- Enum value 'UNKNOWN' was added to enum 'SftSimSimulationType'
- Type 'SftSoftwareRepositoryType' was added
- Enum value 'EXTERNAL' was added to enum 'SftSoftwareRepositoryType'
- Enum value 'INTERNAL' was added to enum 'SftSoftwareRepositoryType'
- Type 'SftDevCfgLinkDeviceConfigurationRevisionToHardwareProjectInput' was added
- Type 'SftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProjectInput' was added
- Type 'SftSimSimulationCreateInput' was added
- Type 'SftSimSimulationCreatePropertiesInput' was added
- Type 'SftSimSimulationCustomPropertyInput' was added
- Type 'SftSimSimulationDeleteInput' was added
- Type 'SftSimSimulationDeletePropertiesInput' was added
- Type 'SftSimSimulationUpdateInput' was added
- Type 'SftSimSimulationUpdatePropertiesInput' was added

#### Fields

- Field 'commitId' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'createdAt' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'createdBy' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'createdById' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'SftDevCfgDeviceConfigurationRevision.createdById' is deprecated
- Directive 'deprecated' was added to 'SftDevCfgDeviceConfigurationRevision.createdById'
- Field 'description' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'deviceConfigurationId' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'SftDevCfgDeviceConfigurationRevision.deviceConfigurationId' is deprecated
- Directive 'deprecated' was added to 'SftDevCfgDeviceConfigurationRevision.deviceConfigurationId'
- Field 'hardwareProjectId' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'SftDevCfgDeviceConfigurationRevision.hardwareProjectId' is deprecated
- Directive 'deprecated' was added to 'SftDevCfgDeviceConfigurationRevision.hardwareProjectId'
- Field 'id' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'modifiedAt' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'modifiedBy' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'modifiedById' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'SftDevCfgDeviceConfigurationRevision.modifiedById' is deprecated
- Directive 'deprecated' was added to 'SftDevCfgDeviceConfigurationRevision.modifiedById'
- Field 'name' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'url' was added to object type 'SftDevCfgDeviceConfigurationRevision'
- Field 'isSuccess' was added to object type 'SftDevCfgLinkDeviceConfigurationRevisionToHardwareProjectPayload'
- Field 'isSuccess' was added to object type 'SftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProjectPayload'
- Field 'createdAt' was added to object type 'SftSimSimulation'
- Field 'createdBy' was added to object type 'SftSimSimulation'
- Field 'createdById' was added to object type 'SftSimSimulation'
- Field 'SftSimSimulation.createdById' is deprecated
- Directive 'deprecated' was added to 'SftSimSimulation.createdById'
- Field 'customProperties' was added to object type 'SftSimSimulation'
- Field 'description' was added to object type 'SftSimSimulation'
- Field 'folderId' was added to object type 'SftSimSimulation'
- Field 'id' was added to object type 'SftSimSimulation'
- Field 'modifiedAt' was added to object type 'SftSimSimulation'
- Field 'modifiedBy' was added to object type 'SftSimSimulation'
- Field 'modifiedById' was added to object type 'SftSimSimulation'
- Field 'SftSimSimulation.modifiedById' is deprecated
- Directive 'deprecated' was added to 'SftSimSimulation.modifiedById'
- Field 'name' was added to object type 'SftSimSimulation'
- Field 'previewUrl' was added to object type 'SftSimSimulation'
- Field 'repositoryUrl' was added to object type 'SftSimSimulation'
- Field 'type' was added to object type 'SftSimSimulation'
- Field 'data' was added to object type 'SftSimSimulationCreatePayload'
- Field 'customProperties' was added to object type 'SftSimSimulationCreatePropertiesPayload'
- Field 'id' was added to object type 'SftSimSimulationCreatePropertiesPayload'
- Field 'key' was added to object type 'SftSimSimulationCustomProperty'
- Field 'value' was added to object type 'SftSimSimulationCustomProperty'
- Field 'isDeleted' was added to object type 'SftSimSimulationDeletePayload'
- Field 'deletedParametersCount' was added to object type 'SftSimSimulationDeletePropertiesPayload'
- Field 'id' was added to object type 'SftSimSimulationDeletePropertiesPayload'
- Field 'data' was added to object type 'SftSimSimulationUpdatePayload'
- Field 'customProperties' was added to object type 'SftSimSimulationUpdatePropertiesPayload'
- Field 'id' was added to object type 'SftSimSimulationUpdatePropertiesPayload'
- Field 'createdBy' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'modifiedBy' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'revisionIds' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'SftDevCfgDeviceConfiguration.revisionIds' is deprecated
- Directive 'deprecated' was added to 'SftDevCfgDeviceConfiguration.revisionIds'
- Field 'SftDevCfgDeviceConfiguration.createdById' is deprecated
- Directive 'deprecated' was added to 'SftDevCfgDeviceConfiguration.createdById'
- Field 'SftDevCfgDeviceConfiguration.modifiedById' is deprecated
- Directive 'deprecated' was added to 'SftDevCfgDeviceConfiguration.modifiedById'
- Field 'createdBy' was added to object type 'SftSoftwareProject'
- Field 'modifiedBy' was added to object type 'SftSoftwareProject'
- Field 'SftSoftwareProject.createdById' is deprecated
- Directive 'deprecated' was added to 'SftSoftwareProject.createdById'
- Field 'SftSoftwareProject.deviceConfigurationId' is deprecated
- Directive 'deprecated' was added to 'SftSoftwareProject.deviceConfigurationId'
- Field 'SftSoftwareProject.modifiedById' is deprecated
- Directive 'deprecated' was added to 'SftSoftwareProject.modifiedById'

#### Input / Payload

- Input field 'deviceConfigurationId' of type 'ID!' was added to input object type 'SftDevCfgLinkDeviceConfigurationRevisionToHardwareProjectInput'
- Input field 'hardwareProjectId' of type 'ID!' was added to input object type 'SftDevCfgLinkDeviceConfigurationRevisionToHardwareProjectInput'
- Input field 'revisionId' of type 'ID!' was added to input object type 'SftDevCfgLinkDeviceConfigurationRevisionToHardwareProjectInput'
- Input field 'deviceConfigurationId' of type 'ID!' was added to input object type 'SftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProjectInput'
- Input field 'hardwareProjectId' of type 'ID!' was added to input object type 'SftDevCfgUnlinkDeviceConfigurationRevisionFromHardwareProjectInput'
- Input field 'customProperties' of type '[SftSimSimulationCustomPropertyInput!]' was added to input object type 'SftSimSimulationCreateInput'
- Input field 'description' of type 'String' was added to input object type 'SftSimSimulationCreateInput'
- Input field 'folderId' of type 'String!' was added to input object type 'SftSimSimulationCreateInput'
- Input field 'name' of type 'String!' was added to input object type 'SftSimSimulationCreateInput'
- Input field 'repositoryType' of type 'SftSimSimulationRepositoryType' was added to input object type 'SftSimSimulationCreateInput'
- Input field 'type' of type 'SftSimSimulationType!' was added to input object type 'SftSimSimulationCreateInput'
- Input field 'url' of type 'String' was added to input object type 'SftSimSimulationCreateInput'
- Input field 'customProperties' of type '[SftSimSimulationCustomPropertyInput!]!' was added to input object type 'SftSimSimulationCreatePropertiesInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSimSimulationCreatePropertiesInput'
- Input field 'key' of type 'String!' was added to input object type 'SftSimSimulationCustomPropertyInput'
- Input field 'value' of type 'String' was added to input object type 'SftSimSimulationCustomPropertyInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSimSimulationDeleteInput'
- Input field 'customPropertyNames' of type '[String!]!' was added to input object type 'SftSimSimulationDeletePropertiesInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSimSimulationDeletePropertiesInput'
- Input field 'folderId' of type 'String' was added to input object type 'SftSimSimulationUpdateInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSimSimulationUpdateInput'
- Input field 'name' of type 'String' was added to input object type 'SftSimSimulationUpdateInput'
- Input field 'url' of type 'String' was added to input object type 'SftSimSimulationUpdateInput'
- Input field 'customProperties' of type '[SftSimSimulationCustomPropertyInput!]!' was added to input object type 'SftSimSimulationUpdatePropertiesInput'
- Input field 'id' of type 'ID!' was added to input object type 'SftSimSimulationUpdatePropertiesInput'
- Input field 'repositoryType' of type 'SftSoftwareRepositoryType' was added to input object type 'SftSoftwareCreateProjectInput'
- Input field 'SftSoftwareCreateProjectInput.url' changed type from 'String!' to 'String'

### System Design

#### Fields

- Field 'createdBy' was added to object type 'SysEsdDocument'
- Field 'modifiedBy' was added to object type 'SysEsdDocument'
- Field 'SysEsdDocument.createdById' is deprecated
- Directive 'deprecated' was added to 'SysEsdDocument.createdById'
- Field 'SysEsdDocument.modifiedById' is deprecated
- Directive 'deprecated' was added to 'SysEsdDocument.modifiedById'


