# gateway-changelog-15-May-2026

## ⚠️ Dangerous Changes (1)

### Library Management

#### 🔍 Query

- Argument 'attributeFacets: [String!]' added to 'Query.desPartGlobalSearch'


---

## ✅ Non-Breaking Changes (113)

### Customization

#### ✏️ Mutation

- Field 'gloCusExecuteExtensionPoint' was added to object type 'Mutation'
- Argument 'input: GloCusExecuteExtensionPointInput!' added to 'Mutation.gloCusExecuteExtensionPoint'

#### Types

- Type 'GloCusAssignmentExecution' was added
- Object type 'GloCusAssignmentExecution' has description 'Dispatch result for a single assignment started by an extension point execution.'
- Type 'GloCusExecuteExtensionPointPayload' was added
- Object type 'GloCusExecuteExtensionPointPayload' has description 'Represents output value for extension point execution.'
- Type 'GloCusExecuteExtensionPointInput' was added
- Object type 'GloCusExecuteExtensionPointInput' has description 'Represents input value for extension point execution.'

#### Fields

- Field 'assignmentId' was added to object type 'GloCusAssignmentExecution'
- Field 'assignmentType' was added to object type 'GloCusAssignmentExecution'
- Field 'error' was added to object type 'GloCusAssignmentExecution'
- Field 'executionId' was added to object type 'GloCusAssignmentExecution'
- Field 'executions' was added to object type 'GloCusExecuteExtensionPointPayload'

#### Input / Payload

- Input field 'extensionPointId' of type 'String!' was added to input object type 'GloCusExecuteExtensionPointInput'
- Input field 'parameters' of type '[GloCusAssignmentExecutionParameterInput!]' was added to input object type 'GloCusExecuteExtensionPointInput'

### Library Management

#### 🔍 Query

- Field 'desPartCategoriesByProvider' was added to object type 'Query'
- Field 'desPartManufacturersByProvider' was added to object type 'Query'
- Field 'desPartSearchSuggestions' was added to object type 'Query'
- Argument 'requestedAttributes: [String!]' added to 'Query.desPartSearchSuggestions'
- Argument 'where: DesPartSearchSuggestionFilterInput!' added to 'Query.desPartSearchSuggestions'
- Field 'desPartSellersByProvider' was added to object type 'Query'

#### ✏️ Mutation

- Field 'desPartUploadCustomPartDatasheet' was added to object type 'Mutation'
- Argument 'input: DesPartUploadCustomPartFileInput!' added to 'Mutation.desPartUploadCustomPartDatasheet'
- Field 'desPartUploadCustomPartImage' was added to object type 'Mutation'
- Argument 'input: DesPartUploadCustomPartFileInput!' added to 'Mutation.desPartUploadCustomPartImage'

#### Types

- Type 'DesPartCategoriesByProviders' was added
- Object type 'DesPartCategoriesByProviders' has description 'Represents a collection of part categories grouped by providers.'
- Type 'DesPartManufacturerCompany' was added
- Object type 'DesPartManufacturerCompany' has description 'Represents a manufacturer company.'
- Type 'DesPartManufacturers' was added
- Object type 'DesPartManufacturers' has description 'Represents a collection of manufacturer companies by provider.'
- Type 'DesPartSearchSuggestionValues' was added
- Object type 'DesPartSearchSuggestionValues' has description 'Represents the results of a part search suggestion request.'
- Type 'DesPartSellers' was added
- Object type 'DesPartSellers' has description 'Represents a collection of seller companies by provider.'
- Type 'DesPartUploadCustomPartFilePayload' was added
- Object type 'DesPartUploadCustomPartFilePayload' has description 'Payload produced when uploading a custom part file.'
- Type 'DesPartSearchSuggestionFilterInput' was added
- Object type 'DesPartSearchSuggestionFilterInput' has description 'Filter for part search suggestions.'
- Type 'DesPartUploadCustomPartFileInput' was added
- Object type 'DesPartUploadCustomPartFileInput' has description 'Input for uploading a custom part file.'

#### Fields

- Field 'customPart' was added to object type 'DesPartCategoriesByProviders'
- Field 'siliconExpertPart' was added to object type 'DesPartCategoriesByProviders'
- Field 'supplyPart' was added to object type 'DesPartCategoriesByProviders'
- Field 'z2DataPart' was added to object type 'DesPartCategoriesByProviders'
- Field 'companyId' was added to object type 'DesPartManufacturerCompany'
- Field 'isActive' was added to object type 'DesPartManufacturerCompany'
- Field 'name' was added to object type 'DesPartManufacturerCompany'
- Field 'slug' was added to object type 'DesPartManufacturerCompany'
- Field 'customPart' was added to object type 'DesPartManufacturers'
- Field 'siliconExpertPart' was added to object type 'DesPartManufacturers'
- Field 'supplyPart' was added to object type 'DesPartManufacturers'
- Field 'z2DataPart' was added to object type 'DesPartManufacturers'
- Field 'allAttributes' was added to object type 'DesPartSearchSuggestionValues'
- Field 'attributeFacets' was added to object type 'DesPartSearchSuggestionValues'
- Field 'customPart' was added to object type 'DesPartSellers'
- Field 'siliconExpertPart' was added to object type 'DesPartSellers'
- Field 'supplyPart' was added to object type 'DesPartSellers'
- Field 'z2DataPart' was added to object type 'DesPartSellers'
- Field 'errors' was added to object type 'DesPartUploadCustomPartFilePayload'
- Field 'url' was added to object type 'DesPartUploadCustomPartFilePayload'
- Field 'relevantAttributes' was added to object type 'DesPartCategory'
- Field 'slug' was added to object type 'DesPartCompany'
- Field 'floatValue' was added to object type 'DesPartSearchFacetValue'

#### Input / Payload

- Input field 'categories' of type '[String!]' was added to input object type 'DesPartSearchSuggestionFilterInput'
- Input field 'manufacturers' of type '[String!]' was added to input object type 'DesPartSearchSuggestionFilterInput'
- Input field 'fileId' of type 'String!' was added to input object type 'DesPartUploadCustomPartFileInput'
- Input field 'fileName' of type 'String!' was added to input object type 'DesPartUploadCustomPartFileInput'
- Input field 'hasCADModelOnly' of type 'Boolean' was added to input object type 'DesPartGlobalSearchFilterInput'
- Input field 'hasDatasheetOnly' of type 'Boolean' was added to input object type 'DesPartGlobalSearchFilterInput'
- Input field 'inStockOnly' of type 'Boolean' was added to input object type 'DesPartGlobalSearchFilterInput'
- Input field 'manufacturerName' of type '[String!]' was added to input object type 'DesPartGlobalSearchFilterInput'

### Renesas (preview)

#### 🔍 Query

- Field 'dmInterfaceSupportSummary' was added to object type 'Query'

#### Types

- Type 'DmHistogramBucket' was added
- Object type 'DmHistogramBucket' has description '**Experimental** A histogram bucket mapping an instance count to the number of models with that count.'
- Type 'DmInstanceStatistics' was added
- Object type 'DmInstanceStatistics' has description '**Experimental** Statistics on instance counts across supported models for an interface.'
- Type 'DmInterfaceModelSupport' was added
- Object type 'DmInterfaceModelSupport' has description '**Experimental** Support details for an interface across a set of models (devices or boards).'
- Type 'DmInterfaceSummary' was added
- Object type 'DmInterfaceSummary' has description '**Experimental** Summary of a single generic interface (e.g., UART, PWM) showing device and board support details.'
- Type 'DmInterfaceSupportSummary' was added
- Object type 'DmInterfaceSupportSummary' has description '**Experimental** Summary of supported interfaces across all devices in the catalog.'
- Type 'DmModelSupportEntry' was added
- Object type 'DmModelSupportEntry' has description '**Experimental** Support entry for a device or board, showing max instance count and access to the full model.'

#### Arguments

- Argument 'deviceMpn: String' added to 'DmInterfaceModelSupport.supported'
- Argument 'family: String' added to 'DmInterfaceModelSupport.supported'
- Argument 'deviceMpn: String' added to 'DmInterfaceModelSupport.unsupported'
- Argument 'family: String' added to 'DmInterfaceModelSupport.unsupported'
- Argument 'interfaceType: String' added to 'DmInterfaceSupportSummary.interfaces'

#### Fields

- Field 'deviceCount' was added to object type 'DmHistogramBucket'
- Field 'instanceCount' was added to object type 'DmHistogramBucket'
- Field 'avg' was added to object type 'DmInstanceStatistics'
- Field 'histogram' was added to object type 'DmInstanceStatistics'
- Field 'max' was added to object type 'DmInstanceStatistics'
- Field 'median' was added to object type 'DmInstanceStatistics'
- Field 'min' was added to object type 'DmInstanceStatistics'
- Field 'statistics' was added to object type 'DmInterfaceModelSupport'
- Field 'supported' was added to object type 'DmInterfaceModelSupport'
- Field 'supportedCount' was added to object type 'DmInterfaceModelSupport'
- Field 'supportedPercentage' was added to object type 'DmInterfaceModelSupport'
- Field 'unsupported' was added to object type 'DmInterfaceModelSupport'
- Field 'boards' was added to object type 'DmInterfaceSummary'
- Field 'devices' was added to object type 'DmInterfaceSummary'
- Field 'interfaceType' was added to object type 'DmInterfaceSummary'
- Field 'interfaces' was added to object type 'DmInterfaceSupportSummary'
- Field 'totalBoards' was added to object type 'DmInterfaceSupportSummary'
- Field 'totalDevices' was added to object type 'DmInterfaceSupportSummary'
- Field 'maxInstances' was added to object type 'DmModelSupportEntry'
- Field 'model' was added to object type 'DmModelSupportEntry'
- Field 'board' was added to object type 'DmFullStackDeviceModel'
- Field 'DmResolverResult.completedOpModeGroups' is deprecated
- Directive 'deprecated' was added to 'DmResolverResult.completedOpModeGroups'


