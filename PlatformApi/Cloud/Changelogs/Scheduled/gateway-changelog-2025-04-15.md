# gateway-changelog-15-Apr-2025

## 🔴 Breaking Changes (4)

### Common

#### Types

- Type 'Error' was removed

### Procurement

#### Types

- Type 'BomLifecycleStateTransitionNotApplicableError' was removed
- Type 'BomChangeBomReleaseLifecycleStateError' was removed

#### Fields

- Field 'BomChangeBomReleaseLifecycleStatePayload.errors' changed type from '[BomChangeBomReleaseLifecycleStateError!]' to '[BomError!]!'


---

## ✅ Non-Breaking Changes (101)

### Procurement

#### ✏️ Mutation

- Field 'bomCreateBom' was added to object type 'Mutation'
- Argument 'input: BomCreateBomInput!' added to 'Mutation.bomCreateBom'

#### Types

- Type 'BomCreateBomPayload' was added
- Type 'BomInputValidationError' was added
- 'BomInputValidationError' object implements 'BomError' interface
- Object type 'BomInputValidationError' has description 'Describes a problem with the provided input (validation error).'
- Type 'BomPayloadError' was added
- 'BomPayloadError' object implements 'BomError' interface
- Object type 'BomPayloadError' has description 'Describes an error occurred while executing a mutation.'
- Type 'BomProjectReleaseSource' was added
- 'BomProjectReleaseSource' object implements 'BomSource' interface
- Object type 'BomProjectReleaseSource' has description 'Describes the source project release used to create the current BOM.'
- Type 'BomError' was added
- Object type 'BomError' has description 'A common interface for all errors that might occur in mutations.'
- Type 'BomPackagingType' was added
- Enum value 'TAPE_AND_REEL' was added to enum 'BomPackagingType'
- Enum value 'BULK' was added to enum 'BomPackagingType'
- Enum value 'CUSTOM_REEL' was added to enum 'BomPackagingType'
- Enum value 'CUT_TAPE' was added to enum 'BomPackagingType'
- Enum value 'TAPE_AND_BOX' was added to enum 'BomPackagingType'
- Enum value 'TRAY' was added to enum 'BomPackagingType'
- Type 'BomCreateBomInput' was added
- Type 'BomCreateBomItemElementAttributeDeclarationInput' was added
- Object type 'BomCreateBomItemElementAttributeDeclarationInput' has description 'Describes a BOM item element\'s attribute.'
- Type 'BomCreateBomItemElementAttributeInput' was added
- Object type 'BomCreateBomItemElementAttributeInput' has description 'BOM item element attribute.'
- Type 'BomCreateBomItemElementAttributeValueInput' was added
- Object type 'BomCreateBomItemElementAttributeValueInput' has description 'BOM item element attribute\'s value.'
- Type 'BomCreateBomItemElementInput' was added
- Object type 'BomCreateBomItemElementInput' has description 'An element (part) that might be used for a particular BOM item.'
- Type 'BomCreateBomItemInput' was added
- Object type 'BomCreateBomItemInput' has description 'BOM items are the components of a product.'
- Type 'BomCreateBomOfferReferenceInput' was added
- Object type 'BomCreateBomOfferReferenceInput' has description 'Describes an offer selected for an element.
Only a single field must be specified.'
- Type 'BomCreateBomPackagingPrioritiesSettingsInput' was added
- Object type 'BomCreateBomPackagingPrioritiesSettingsInput' has description 'Specifies priorities of different packaging types.
This affects the offer selection in the order list.'
- Type 'BomCreateBomPartReferenceInput' was added
- Object type 'BomCreateBomPartReferenceInput' has description 'Describes a part associated with an element.
Only a single field must be specified.'
- Type 'BomCreateBomProductionSettingsInput' was added
- Object type 'BomCreateBomProductionSettingsInput' has description 'Production-related settings of a BOM (e.g., a \'production quantity\' or a \'due date\').'
- Type 'BomCreateBomSupplierReferenceInput' was added
- Object type 'BomCreateBomSupplierReferenceInput' has description 'Describes a supplier used in a BOM.
Only a single field must be specified.'
- Type 'BomOctopartOfferReferenceInput' was added
- Object type 'BomOctopartOfferReferenceInput' has description 'A reference to an offer in Octopart.'
- Type 'BomOctopartPartReferenceInput' was added
- Object type 'BomOctopartPartReferenceInput' has description 'A reference to a part in Octopart.'
- Type 'BomOctopartSupplierReferenceInput' was added
- Object type 'BomOctopartSupplierReferenceInput' has description 'A reference to a supplier in Octopart.'
- Type 'BomRawPartReferenceInput' was added
- Object type 'BomRawPartReferenceInput' has description 'A raw part descriptor (MPN + Manufacturer).'

#### Fields

- Field 'bom' was added to object type 'BomCreateBomPayload'
- Field 'errors' was added to object type 'BomCreateBomPayload'
- Field 'message' was added to object type 'BomInputValidationError'
- Field 'path' was added to object type 'BomInputValidationError'
- Field 'message' was added to object type 'BomPayloadError'
- Field 'designId' was added to object type 'BomProjectReleaseSource'
- Field 'quantity' was added to object type 'BomProjectReleaseSource'
- Field 'sourceRevisionId' was added to object type 'BomProjectReleaseSource'
- Field 'message' was added to interface 'BomError'
- Field 'waivingToken' was added to object type 'BomIssue'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'BomCreateBomInput'
- Input field 'description' of type 'String' was added to input object type 'BomCreateBomInput'
- Input field 'folderId' of type 'String' was added to input object type 'BomCreateBomInput'
- Input field 'countryCode' of type 'String' was added to input object type 'BomCreateBomInput'
- Input field 'currencyCode' of type 'String' was added to input object type 'BomCreateBomInput'
- Input field 'production' of type 'BomCreateBomProductionSettingsInput' was added to input object type 'BomCreateBomInput'
- Input field 'packagingPriorities' of type 'BomCreateBomPackagingPrioritiesSettingsInput' was added to input object type 'BomCreateBomInput'
- Input field 'suppliers' of type '[BomCreateBomSupplierReferenceInput!]' was added to input object type 'BomCreateBomInput'
- Input field 'itemElementAttributes' of type '[BomCreateBomItemElementAttributeDeclarationInput!]' was added to input object type 'BomCreateBomInput'
- Input field 'items' of type '[BomCreateBomItemInput!]!' was added to input object type 'BomCreateBomInput'
- Input field 'tolerateMissingReferences' of type 'Boolean!' with default value 'false' was added to input object type 'BomCreateBomInput'
- Input field 'attributeId' of type 'String!' was added to input object type 'BomCreateBomItemElementAttributeDeclarationInput'
- Input field 'name' of type 'String!' was added to input object type 'BomCreateBomItemElementAttributeDeclarationInput'
- Input field 'type' of type 'BomItemElementCustomAttributeType!' was added to input object type 'BomCreateBomItemElementAttributeDeclarationInput'
- Input field 'attributeId' of type 'String!' was added to input object type 'BomCreateBomItemElementAttributeInput'
- Input field 'value' of type 'BomCreateBomItemElementAttributeValueInput!' was added to input object type 'BomCreateBomItemElementAttributeInput'
- Input field 'stringValue' of type 'String' was added to input object type 'BomCreateBomItemElementAttributeValueInput'
- Input field 'integerValue' of type 'Long' was added to input object type 'BomCreateBomItemElementAttributeValueInput'
- Input field 'floatValue' of type 'Float' was added to input object type 'BomCreateBomItemElementAttributeValueInput'
- Input field 'part' of type 'BomCreateBomPartReferenceInput!' was added to input object type 'BomCreateBomItemElementInput'
- Input field 'offer' of type 'BomCreateBomOfferReferenceInput' was added to input object type 'BomCreateBomItemElementInput'
- Input field 'name' of type 'String' was added to input object type 'BomCreateBomItemElementInput'
- Input field 'description' of type 'String' was added to input object type 'BomCreateBomItemElementInput'
- Input field 'attributeValues' of type '[BomCreateBomItemElementAttributeInput!]' was added to input object type 'BomCreateBomItemElementInput'
- Input field 'quantity' of type 'Int!' was added to input object type 'BomCreateBomItemInput'
- Input field 'extraQuantity' of type 'Int' was added to input object type 'BomCreateBomItemInput'
- Input field 'designators' of type '[String!]!' was added to input object type 'BomCreateBomItemInput'
- Input field 'elements' of type '[BomCreateBomItemElementInput!]!' was added to input object type 'BomCreateBomItemInput'
- Input field 'octopart' of type 'BomOctopartOfferReferenceInput' was added to input object type 'BomCreateBomOfferReferenceInput'
- Input field 'enabled' of type 'Boolean!' was added to input object type 'BomCreateBomPackagingPrioritiesSettingsInput'
- Input field 'order' of type '[BomPackagingType!]!' was added to input object type 'BomCreateBomPackagingPrioritiesSettingsInput'
- Input field 'raw' of type 'BomRawPartReferenceInput' was added to input object type 'BomCreateBomPartReferenceInput'
- Input field 'octopart' of type 'BomOctopartPartReferenceInput' was added to input object type 'BomCreateBomPartReferenceInput'
- Input field 'quantity' of type 'Int!' was added to input object type 'BomCreateBomProductionSettingsInput'
- Input field 'dueDate' of type 'Date' was added to input object type 'BomCreateBomProductionSettingsInput'
- Input field 'octopart' of type 'BomOctopartSupplierReferenceInput' was added to input object type 'BomCreateBomSupplierReferenceInput'
- Input field 'offerId' of type 'String!' was added to input object type 'BomOctopartOfferReferenceInput'
- Input field 'partId' of type 'String!' was added to input object type 'BomOctopartPartReferenceInput'
- Input field 'supplierId' of type 'String!' was added to input object type 'BomOctopartSupplierReferenceInput'
- Input field 'mpn' of type 'String' was added to input object type 'BomRawPartReferenceInput'
- Input field 'manufacturer' of type 'String' was added to input object type 'BomRawPartReferenceInput'


