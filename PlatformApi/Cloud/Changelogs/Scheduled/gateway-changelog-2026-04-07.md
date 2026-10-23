# gateway-changelog-07-Apr-2026

## ⚠️ Dangerous Changes (2)

### Library Management

#### 🔍 Query

- Argument 'requestPaidData: Boolean' added to 'Query.desPartById'
- Argument 'requestPaidData: Boolean' added to 'Query.desPartByIds'


---

## ✅ Non-Breaking Changes (38)

### Library Management

#### 🔍 Query

- Field 'desPartAttributesByProvider' was added to object type 'Query'

#### ✏️ Mutation

- Field 'desPartUploadParts' was added to object type 'Mutation'
- Argument 'input: DesPartUploadPartsInput!' added to 'Mutation.desPartUploadParts'

#### Types

- Type 'DesPartAttributes' was added
- Object type 'DesPartAttributes' has description 'Represents part attributes by provider.'
- Type 'DesPartHealthCheckResult' was added
- Object type 'DesPartHealthCheckResult' has description 'Represents a health check result for a part.'
- Type 'DesPartManufacturerPartIdWithIpn' was added
- Object type 'DesPartManufacturerPartIdWithIpn' has description 'Represents the part manufacturer name and part number with internal part number.'
- Type 'DesPartUploadPartOperationResult' was added
- Object type 'DesPartUploadPartOperationResult' has description '**Experimental** Represents the result of the upload parts operation.'
- Type 'DesPartUploadPartsPayload' was added
- Object type 'DesPartUploadPartsPayload' has description '**Experimental** Payload produced when uploading parts.'
- Type 'DesPartUploadPartsInput' was added
- Object type 'DesPartUploadPartsInput' has description '**Experimental** Input for upload parts.'

#### Fields

- Field 'customPart' was added to object type 'DesPartAttributes'
- Field 'siliconExpertPart' was added to object type 'DesPartAttributes'
- Field 'supplyPart' was added to object type 'DesPartAttributes'
- Field 'z2DataPart' was added to object type 'DesPartAttributes'
- Field 'description' was added to object type 'DesPartHealthCheckResult'
- Field 'healthCheckId' was added to object type 'DesPartHealthCheckResult'
- Field 'severity' was added to object type 'DesPartHealthCheckResult'
- Field 'shortDescription' was added to object type 'DesPartHealthCheckResult'
- Field 'source' was added to object type 'DesPartHealthCheckResult'
- Field 'ipn' was added to object type 'DesPartManufacturerPartIdWithIpn'
- Field 'manufacturerName' was added to object type 'DesPartManufacturerPartIdWithIpn'
- Field 'mpn' was added to object type 'DesPartManufacturerPartIdWithIpn'
- Field 'errorMessage' was added to object type 'DesPartUploadPartOperationResult'
- Field 'partId' was added to object type 'DesPartUploadPartOperationResult'
- Field 'errors' was added to object type 'DesPartUploadPartsPayload'
- Field 'results' was added to object type 'DesPartUploadPartsPayload'
- Field 'healthChecks' was added to object type 'DesPart'
- Field 'healthCheckResults' was added to object type 'DesPartGlobalPart'
- Field 'totalAvail' was added to object type 'DesPartProviderPart'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DesPartUploadPartsInput'
- Input field 'fileName' of type 'String!' was added to input object type 'DesPartUploadPartsInput'
- Input field 'medianPrice1000' of type 'SortEnumType' was added to input object type 'DesPartGlobalSearchSortInput'
- Input field 'medianPrice1000' of type 'SortEnumType' was added to input object type 'DesPartSortInput'


