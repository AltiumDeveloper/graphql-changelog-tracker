# gateway-changelog-24-Mar-2026

## ✅ Non-Breaking Changes (169)

### Library Management

#### 🔍 Query

- Field 'desPartSearchCustomParts' was added to object type 'Query'
- Argument 'items: [DesPartManufacturerPartIdInput!]!' added to 'Query.desPartSearchCustomParts'

#### ✏️ Mutation

- Field 'desPartRemoveCustomParts' was added to object type 'Mutation'
- Argument 'input: DesPartRemoveCustomPartsInput!' added to 'Mutation.desPartRemoveCustomParts'
- Field 'desPartUpsertCustomParts' was added to object type 'Mutation'
- Argument 'input: DesPartUpsertCustomPartsInput!' added to 'Mutation.desPartUpsertCustomParts'

#### Types

- Type 'DesPartBestImage' was added
- Object type 'DesPartBestImage' has description 'Represents the image for a part.'
- Type 'DesPartCustomPart' was added
- Object type 'DesPartCustomPart' has description 'Represents a custom part.'
- Type 'DesPartCustomPartData' was added
- Object type 'DesPartCustomPartData' has description 'Represents custom part data.'
- Type 'DesPartCustomPartDocument' was added
- Object type 'DesPartCustomPartDocument' has description 'Represents a custom part document.'
- Type 'DesPartCustomPartOperationResult' was added
- Object type 'DesPartCustomPartOperationResult' has description 'Represents the result of an operation for a custom part.'
- Type 'DesPartCustomPartPricePoint' was added
- Object type 'DesPartCustomPartPricePoint' has description 'Represents a price point.'
- Type 'DesPartCustomPartSearchResultItem' was added
- Object type 'DesPartCustomPartSearchResultItem' has description 'Represents a search result item.'
- Type 'DesPartCustomPartSeller' was added
- Object type 'DesPartCustomPartSeller' has description 'Represents a seller for a custom part.'
- Type 'DesPartCustomPartSellerSpec' was added
- Object type 'DesPartCustomPartSellerSpec' has description 'Represents a specification for a seller.'
- Type 'DesPartCustomPartSource' was added
- Object type 'DesPartCustomPartSource' has description 'Represents a custom part source.'
- Type 'DesPartCustomPartSpec' was added
- Object type 'DesPartCustomPartSpec' has description 'Represents a custom part specification.'
- Type 'DesPartCustomPartStockItem' was added
- Object type 'DesPartCustomPartStockItem' has description 'Represents a stock item.'
- Type 'DesPartErrorPayload' was added
- Object type 'DesPartErrorPayload' has description 'Represents a standard error payload.'
- Type 'DesPartRemoveCustomPartsPayload' was added
- Object type 'DesPartRemoveCustomPartsPayload' has description 'Represents the payload returned after removing custom parts.'
- Type 'DesPartUpsertCustomPartsPayload' was added
- Object type 'DesPartUpsertCustomPartsPayload' has description 'Represents the result of upserting custom parts.'
- Type 'DesPartCustomPartDataInput' was added
- Object type 'DesPartCustomPartDataInput' has description 'Represents custom part data.'
- Type 'DesPartCustomPartDocumentInput' was added
- Object type 'DesPartCustomPartDocumentInput' has description 'Represents a custom part document.'
- Type 'DesPartCustomPartPricePointInput' was added
- Object type 'DesPartCustomPartPricePointInput' has description 'Represents a price point.'
- Type 'DesPartCustomPartSellerInput' was added
- Object type 'DesPartCustomPartSellerInput' has description 'Represents a seller for a custom part.'
- Type 'DesPartCustomPartSellerSpecInput' was added
- Object type 'DesPartCustomPartSellerSpecInput' has description 'Represents a specification for a seller.'
- Type 'DesPartCustomPartSpecInput' was added
- Object type 'DesPartCustomPartSpecInput' has description 'Represents a custom part specification.'
- Type 'DesPartCustomPartStockItemInput' was added
- Object type 'DesPartCustomPartStockItemInput' has description 'Represents a stock item.'
- Type 'DesPartManufacturerPartIdWithLastSyncTimeInput' was added
- Object type 'DesPartManufacturerPartIdWithLastSyncTimeInput' has description 'Represents the part manufacturer name and part number with last sync time in part source.'
- Type 'DesPartRemoveCustomPartsInput' was added
- Object type 'DesPartRemoveCustomPartsInput' has description 'Represents the input for removing custom parts.'
- Type 'DesPartUpsertCustomPartsInput' was added
- Object type 'DesPartUpsertCustomPartsInput' has description 'Represents the input for upserting custom parts.'

#### Fields

- Field 'url' was added to object type 'DesPartBestImage'
- Field 'part' was added to object type 'DesPartCustomPart'
- Field 'source' was added to object type 'DesPartCustomPart'
- Field 'categoryName' was added to object type 'DesPartCustomPartData'
- Field 'datasheetUrl' was added to object type 'DesPartCustomPartData'
- Field 'description' was added to object type 'DesPartCustomPartData'
- Field 'documents' was added to object type 'DesPartCustomPartData'
- Field 'imageUrl' was added to object type 'DesPartCustomPartData'
- Field 'manufacturerName' was added to object type 'DesPartCustomPartData'
- Field 'mpn' was added to object type 'DesPartCustomPartData'
- Field 'sellers' was added to object type 'DesPartCustomPartData'
- Field 'specs' was added to object type 'DesPartCustomPartData'
- Field 'updatedAt' was added to object type 'DesPartCustomPartData'
- Field 'name' was added to object type 'DesPartCustomPartDocument'
- Field 'url' was added to object type 'DesPartCustomPartDocument'
- Field 'errorMessage' was added to object type 'DesPartCustomPartOperationResult'
- Field 'partId' was added to object type 'DesPartCustomPartOperationResult'
- Field 'price' was added to object type 'DesPartCustomPartPricePoint'
- Field 'quantity' was added to object type 'DesPartCustomPartPricePoint'
- Field 'parts' was added to object type 'DesPartCustomPartSearchResultItem'
- Field 'requested' was added to object type 'DesPartCustomPartSearchResultItem'
- Field 'currency' was added to object type 'DesPartCustomPartSeller'
- Field 'prices' was added to object type 'DesPartCustomPartSeller'
- Field 'sellerName' was added to object type 'DesPartCustomPartSeller'
- Field 'sellerUrl' was added to object type 'DesPartCustomPartSeller'
- Field 'sku' was added to object type 'DesPartCustomPartSeller'
- Field 'specs' was added to object type 'DesPartCustomPartSeller'
- Field 'stock' was added to object type 'DesPartCustomPartSeller'
- Field 'updatedAt' was added to object type 'DesPartCustomPartSeller'
- Field 'name' was added to object type 'DesPartCustomPartSellerSpec'
- Field 'value' was added to object type 'DesPartCustomPartSellerSpec'
- Field 'name' was added to object type 'DesPartCustomPartSource'
- Field 'partSourceId' was added to object type 'DesPartCustomPartSource'
- Field 'name' was added to object type 'DesPartCustomPartSpec'
- Field 'value' was added to object type 'DesPartCustomPartSpec'
- Field 'location' was added to object type 'DesPartCustomPartStockItem'
- Field 'quantity' was added to object type 'DesPartCustomPartStockItem'
- Field 'message' was added to object type 'DesPartErrorPayload'
- Field 'errors' was added to object type 'DesPartRemoveCustomPartsPayload'
- Field 'results' was added to object type 'DesPartRemoveCustomPartsPayload'
- Field 'errors' was added to object type 'DesPartUpsertCustomPartsPayload'
- Field 'results' was added to object type 'DesPartUpsertCustomPartsPayload'
- Field 'bestImage' was added to object type 'DesPartProviderPart'
- Field 'shortDescription' was added to object type 'DesPartProviderPart'

#### Input / Payload

- Input field 'categoryName' of type 'String' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'datasheetUrl' of type 'String' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'description' of type 'String' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'documents' of type '[DesPartCustomPartDocumentInput!]!' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'imageUrl' of type 'String' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'manufacturerName' of type 'String!' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'mpn' of type 'String!' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'sellers' of type '[DesPartCustomPartSellerInput!]!' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'specs' of type '[DesPartCustomPartSpecInput!]!' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'updatedAt' of type 'DateTime!' was added to input object type 'DesPartCustomPartDataInput'
- Input field 'name' of type 'String!' was added to input object type 'DesPartCustomPartDocumentInput'
- Input field 'url' of type 'String!' was added to input object type 'DesPartCustomPartDocumentInput'
- Input field 'price' of type 'Decimal!' was added to input object type 'DesPartCustomPartPricePointInput'
- Input field 'quantity' of type 'Int!' was added to input object type 'DesPartCustomPartPricePointInput'
- Input field 'currency' of type 'String' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'prices' of type '[DesPartCustomPartPricePointInput!]!' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'sellerName' of type 'String!' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'sellerUrl' of type 'String' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'sku' of type 'String' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'specs' of type '[DesPartCustomPartSellerSpecInput!]!' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'stock' of type '[DesPartCustomPartStockItemInput!]!' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'updatedAt' of type 'DateTime' was added to input object type 'DesPartCustomPartSellerInput'
- Input field 'name' of type 'String!' was added to input object type 'DesPartCustomPartSellerSpecInput'
- Input field 'value' of type 'String!' was added to input object type 'DesPartCustomPartSellerSpecInput'
- Input field 'name' of type 'String!' was added to input object type 'DesPartCustomPartSpecInput'
- Input field 'value' of type 'String!' was added to input object type 'DesPartCustomPartSpecInput'
- Input field 'location' of type 'String!' was added to input object type 'DesPartCustomPartStockItemInput'
- Input field 'quantity' of type 'Int!' was added to input object type 'DesPartCustomPartStockItemInput'
- Input field 'lastSyncTime' of type 'DateTime!' was added to input object type 'DesPartManufacturerPartIdWithLastSyncTimeInput'
- Input field 'manufacturerName' of type 'String!' was added to input object type 'DesPartManufacturerPartIdWithLastSyncTimeInput'
- Input field 'mpn' of type 'String!' was added to input object type 'DesPartManufacturerPartIdWithLastSyncTimeInput'
- Input field 'partIds' of type '[DesPartManufacturerPartIdWithLastSyncTimeInput!]!' was added to input object type 'DesPartRemoveCustomPartsInput'
- Input field 'partSourceGuid' of type 'String!' was added to input object type 'DesPartRemoveCustomPartsInput'
- Input field 'parts' of type '[DesPartCustomPartDataInput!]!' was added to input object type 'DesPartUpsertCustomPartsInput'
- Input field 'partSourceGuid' of type 'String!' was added to input object type 'DesPartUpsertCustomPartsInput'

### Platform

#### Input / Payload

- Input field 'GloCreateAppOAuthClientInput.accessTokenLifetime' changed type from 'Int!' to 'Int'

### Supply

#### ✏️ Mutation

- Field 'supEvalKitAddPreviewImages' was added to object type 'Mutation'
- Argument 'input: SupEvalKitAddPreviewImagesInput!' added to 'Mutation.supEvalKitAddPreviewImages'
- Field 'supEvalKitDeletePreviewImages' was added to object type 'Mutation'
- Argument 'input: SupEvalKitDeletePreviewImagesInput!' added to 'Mutation.supEvalKitDeletePreviewImages'
- Field 'supEvalKitSortPreviewImages' was added to object type 'Mutation'
- Argument 'input: SupEvalKitSortPreviewImagesInput!' added to 'Mutation.supEvalKitSortPreviewImages'

#### Types

- Type 'SupEvalKitAddPreviewImagesPayload' was added
- Type 'SupEvalKitDeletePreviewImagesPayload' was added
- Type 'SupEvalKitSortPreviewImagesPayload' was added
- Type 'SupEvalKitAddPreviewImagesError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitAddPreviewImagesError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitAddPreviewImagesError'
- Type 'SupEvalKitDeletePreviewImagesError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitDeletePreviewImagesError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitDeletePreviewImagesError'
- Type 'SupEvalKitSortPreviewImagesError' was added
- Member 'SupEvalKitOperationFailedError' was added to Union type 'SupEvalKitSortPreviewImagesError'
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitSortPreviewImagesError'
- Type 'SupEvalKitAddPreviewImagesInput' was added
- Object type 'SupEvalKitAddPreviewImagesInput' has description 'Input for adding preview images to an evaluation kit.'
- Type 'SupEvalKitDeletePreviewImagesInput' was added
- Object type 'SupEvalKitDeletePreviewImagesInput' has description 'Input for deleting preview images from an evaluation kit.'
- Type 'SupEvalKitSortPreviewImagesInput' was added
- Object type 'SupEvalKitSortPreviewImagesInput' has description 'Input for reordering preview images of an evaluation kit.'

#### Fields

- Field 'errors' was added to object type 'SupEvalKitAddPreviewImagesPayload'
- Field 'errors' was added to object type 'SupEvalKitDeletePreviewImagesPayload'
- Field 'errors' was added to object type 'SupEvalKitSortPreviewImagesPayload'

#### Input / Payload

- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitAddPreviewImagesInput'
- Input field 'previewImages' of type '[SupEvalKitFileInput!]!' was added to input object type 'SupEvalKitAddPreviewImagesInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitDeletePreviewImagesInput'
- Input field 'imageUrls' of type '[String!]!' was added to input object type 'SupEvalKitDeletePreviewImagesInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupEvalKitSortPreviewImagesInput'
- Input field 'sortedImageUrls' of type '[String!]!' was added to input object type 'SupEvalKitSortPreviewImagesInput'


