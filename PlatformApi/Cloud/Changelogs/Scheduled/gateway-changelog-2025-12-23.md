# gateway-changelog-23-Dec-2025

## 🔴 Breaking Changes (1)

### Renesas (preview)

#### Input / Payload

- Input field 'projectSources' of type '[SupSoftwareProjectEvalKitProjectSourceInput!]!' was added to input object type 'SupSoftwareProjectEvalKitSourceInput'


---

## ✅ Non-Breaking Changes (73)

### Design

#### Types

- Object type 'DesSetProjectRequirementsBlockPayload' has description 'Payload for setting the requirements block of a project.'
- Object type 'DesUnionPayload' has description 'Union type for various payloads.'
- Object type 'DesCadBoardCollaborationFlag' has description 'Board option flags.'
- Object type 'DesCadBoardComponentPlacement' has description 'Component placement kind.'
- Object type 'DesCadBoardCopperExportFeature' has description 'Specifies which copper features to include when exporting board copper data.'
- Object type 'DesCadBoardCopperRegionType' has description 'Specifies the type of copper region.'
- Object type 'DesCadBoardLayerCategory' has description 'Category of the board layer.'
- Object type 'DesCadBoardLayerComponentPlacement' has description 'Component placement for the signal layer.'
- Object type 'DesCadBoardLayerDielectricType' has description 'Dielectric type for the dielectric layer.'
- Object type 'DesCadBoardLayerPhysicalCategory' has description 'Physical category of the board layer.'
- Object type 'DesCadBoardLayerPosition' has description 'Position of the board layer within the stackup.'
- Object type 'DesCadBoardLayerType' has description 'Type of the board layer.'
- Object type 'DesCadBoardObjectType' has description 'The type of the board object.'
- Object type 'DesCadComponentVariationKind' has description 'The kind of component variation in a CAD design.'
- Object type 'DesCadCounterType' has description 'The type of the hole.'
- Object type 'DesCadHoleType' has description 'The type of the hole.'
- Object type 'DesCadLayersExportMode' has description 'The mode for exporting layers in a design.'
- Object type 'DesCadWorkflowState' has description 'The workflow state for proposed changes.'
- Object type 'DesCommentContextType' has description 'The comment context type.'
- Object type 'DesDocumentType' has description 'The document type.'
- Object type 'DesFolderFilterMatchMode' has description 'The filter match mode.'
- Object type 'DesLayerType' has description 'The type of PCB layer.'
- Object type 'DesLifeCycleStateTransitionKind' has description 'The kind of life cycle state transition.'
- Object type 'DesParameterType' has description 'Component parameter type.'
- Object type 'DesPinElectricalType' has description 'The electrical type of a pin.'
- Object type 'DesRevisionNamingPolicy' has description 'Describes the naming policy for design revisions.'
- Object type 'DesTaskPriority' has description 'Priority levels for a task.'
- Object type 'DesTaskStatus' has description 'Status values for a task.'
- Object type 'DesUserPictureSize' has description 'Sizes for user profile pictures.'
- Object type 'DesComponentStringOperationFilterInput' has description 'String operation filter input type for components.'
- Object type 'DesComponentUpgradeFilterInput' has description 'Filter input type for component upgrades.'
- Object type 'DesFolderFilterInput' has description 'Input type for filtering folders in the design library.'
- Object type 'DesLifecycleStateUpgradeOperationFilterInput' has description 'Filter input type for lifecycle state names.'
- Object type 'DesProjectsRequirementsBlockFilterInput' has description 'Filter for requirements blocks in projects.'
- Object type 'DesSetProjectRequirementsBlockInput' has description 'Sets the requirements block for a project.'
- Object type 'DesStringUpgradeOperationFilterInput' has description 'String filter input type for component upgrades.'

### Renesas (preview)

#### Types

- Type 'SupSoftwareProjectEvalKitProjectSource' was added
- Type 'SupSoftwareProjectEvalKitProjectSourceType' was added
- Enum value 'CMAKE' was added to enum 'SupSoftwareProjectEvalKitProjectSourceType'
- Enum value 'E2STUDIO' was added to enum 'SupSoftwareProjectEvalKitProjectSourceType'
- Type 'SupSoftwareProjectCreateEvalKitSourceInput' was added
- Type 'SupSoftwareProjectEvalKitProjectSourceInput' was added
- Type 'SupSoftwareProjectRemoveEvalKitSourceInput' was added
- Type 'SupSoftwareProjectUpdateEvalKitSourceInput' was added

#### Arguments

- Argument 'types: [SupSoftwareProjectEvalKitProjectSourceType]' added to 'SupSoftwareProjectEvalKitSource.projectSources'

#### Fields

- Field 'configXmlUrl' was added to object type 'SupSoftwareProjectEvalKitProjectSource'
- Field 'sourceUrl' was added to object type 'SupSoftwareProjectEvalKitProjectSource'
- Field 'type' was added to object type 'SupSoftwareProjectEvalKitProjectSource'
- Field 'compatibleEvalKitId' was added to object type 'SupSoftwareProjectEvalKitSource'
- Field 'projectSources' was added to object type 'SupSoftwareProjectEvalKitSource'

#### Input / Payload

- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupSoftwareProjectCreateEvalKitSourceInput'
- Input field 'projectSources' of type '[SupSoftwareProjectEvalKitProjectSourceInput!]!' was added to input object type 'SupSoftwareProjectCreateEvalKitSourceInput'
- Input field 'configXmlUrl' of type 'String!' was added to input object type 'SupSoftwareProjectEvalKitProjectSourceInput'
- Input field 'sourceFile' of type 'SupSoftwareProjectFileInput' was added to input object type 'SupSoftwareProjectEvalKitProjectSourceInput'
- Input field 'sourceUrl' of type 'String' was added to input object type 'SupSoftwareProjectEvalKitProjectSourceInput'
- Input field 'type' of type 'SupSoftwareProjectEvalKitProjectSourceType!' was added to input object type 'SupSoftwareProjectEvalKitProjectSourceInput'
- Input field 'compatibleEvalKitId' of type 'String!' was added to input object type 'SupSoftwareProjectRemoveEvalKitSourceInput'
- Input field 'compatibleEvalKitId' of type 'String!' was added to input object type 'SupSoftwareProjectUpdateEvalKitSourceInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupSoftwareProjectUpdateEvalKitSourceInput'
- Input field 'newProjectSources' of type '[SupSoftwareProjectEvalKitProjectSourceInput!]' was added to input object type 'SupSoftwareProjectUpdateEvalKitSourceInput'
- Input field 'SupSoftwareProjectEvalKitSourceInput.configUrl' changed type from 'String!' to 'String'
- Directive 'deprecated' was added to input field 'configUrl' in input object 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'SupSoftwareProjectEvalKitSourceInput.configXmlUrl' changed type from 'String!' to 'String'
- Directive 'deprecated' was added to input field 'configXmlUrl' in input object 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'SupSoftwareProjectEvalKitSourceInput.readmeUrl' changed type from 'String!' to 'String'
- Directive 'deprecated' was added to input field 'readmeUrl' in input object 'SupSoftwareProjectEvalKitSourceInput'
- Directive 'deprecated' was added to input field 'sourceFile' in input object 'SupSoftwareProjectEvalKitSourceInput'
- Directive 'deprecated' was added to input field 'sourceUrl' in input object 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'addCompatibleEvalKits' of type '[SupSoftwareProjectCreateEvalKitSourceInput!]' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Input field 'removeCompatibleEvalKits' of type '[SupSoftwareProjectRemoveEvalKitSourceInput!]' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Input field 'updateCompatibleEvalKits' of type '[SupSoftwareProjectUpdateEvalKitSourceInput!]' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Input field 'SupSoftwareProjectUpdateSoftwareProjectInput.newCompatibleEvalKits' changed type from '[SupSoftwareProjectEvalKitSourceInput!]!' to '[SupSoftwareProjectEvalKitSourceInput!]'
- Directive 'deprecated' was added to input field 'newCompatibleEvalKits' in input object 'SupSoftwareProjectUpdateSoftwareProjectInput'


