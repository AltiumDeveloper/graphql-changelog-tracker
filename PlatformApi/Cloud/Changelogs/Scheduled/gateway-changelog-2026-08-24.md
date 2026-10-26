# gateway-changelog-24-Aug-2026

## 🔴 Breaking Changes (4)

### Library Management

#### ✏️ Mutation

- Field 'desPartUploadParts' was removed from object type 'Mutation'

#### Types

- Type 'DesPartUploadPartOperationResult' was removed
- Type 'DesPartUploadPartsPayload' was removed
- Type 'DesPartUploadPartsInput' was removed


---

## ✅ Non-Breaking Changes (227)

### Library Management

#### 🔍 Query

- Field 'desPartTags' was added to object type 'Query'
- Field 'desPartUploadComponentsReport' was added to object type 'Query'
- Argument 'operationId: UUID!' added to 'Query.desPartUploadComponentsReport'
- Field 'desPartUploadLibraryPartsReport' was added to object type 'Query'
- Argument 'operationId: UUID!' added to 'Query.desPartUploadLibraryPartsReport'
- Field 'desPartUploadOperation' was added to object type 'Query'
- Field 'desPartUploadPartFileColumns' was added to object type 'Query'
- Argument 'fileId: String!' added to 'Query.desPartUploadPartFileColumns'
- Argument 'fileName: String!' added to 'Query.desPartUploadPartFileColumns'

#### ✏️ Mutation

- Field 'desPartAcknowledgeUploadOperation' was added to object type 'Mutation'
- Argument 'input: DesPartAcknowledgeUploadOperationInput!' added to 'Mutation.desPartAcknowledgeUploadOperation'
- Field 'desPartAttachTag' was added to object type 'Mutation'
- Argument 'input: DesPartAttachTagInput!' added to 'Mutation.desPartAttachTag'
- Field 'desPartChangeLifecycleState' was added to object type 'Mutation'
- Argument 'input: DesPartChangeLifecycleStateInput!' added to 'Mutation.desPartChangeLifecycleState'
- Field 'desPartCreateTag' was added to object type 'Mutation'
- Argument 'input: DesPartCreateTagInput!' added to 'Mutation.desPartCreateTag'
- Field 'desPartDeleteTag' was added to object type 'Mutation'
- Argument 'input: DesPartDeleteTagInput!' added to 'Mutation.desPartDeleteTag'
- Field 'desPartDetachTag' was added to object type 'Mutation'
- Argument 'input: DesPartDetachTagInput!' added to 'Mutation.desPartDetachTag'
- Field 'desPartUploadComponents' was added to object type 'Mutation'
- Argument 'input: DesPartUploadComponentsInput!' added to 'Mutation.desPartUploadComponents'
- Field 'desPartUploadLibraryParts' was added to object type 'Mutation'
- Argument 'input: DesPartUploadLibraryPartsInput!' added to 'Mutation.desPartUploadLibraryParts'

#### Types

- Type 'DesPartAcknowledgeUploadOperationPayload' was added
- Object type 'DesPartAcknowledgeUploadOperationPayload' has description 'Payload produced when the result of a parts upload operation is marked as read.'
- Type 'DesPartAttachTagPayload' was added
- Object type 'DesPartAttachTagPayload' has description 'Represents the payload returned after assigning a part tag to parts.'
- Type 'DesPartChangeLifecycleStatePayload' was added
- Object type 'DesPartChangeLifecycleStatePayload' has description 'Represents the payload returned after changing the lifecycle state of a part.'
- Type 'DesPartCreateTagPayload' was added
- Object type 'DesPartCreateTagPayload' has description 'Represents the payload returned after creating a part tag.'
- Type 'DesPartDeleteTagPayload' was added
- Object type 'DesPartDeleteTagPayload' has description 'Represents the payload returned after deleting a part tag.'
- Type 'DesPartDetachTagPayload' was added
- Object type 'DesPartDetachTagPayload' has description 'Represents the payload returned after unassigning a part tag from parts.'
- Type 'DesPartDocumentMapping' was added
- Object type 'DesPartDocumentMapping' has description 'Maps file columns to a document.'
- Type 'DesPartLifecycle' was added
- Object type 'DesPartLifecycle' has description 'Represents the lifecycle of a managed part.'
- Type 'DesPartPriceMapping' was added
- Object type 'DesPartPriceMapping' has description 'Maps the price of a fixed break quantity to a file column.'
- Type 'DesPartSellerMapping' was added
- Object type 'DesPartSellerMapping' has description 'Maps file columns to a seller and its prices/stocks.'
- Type 'DesPartSpecMapping' was added
- Object type 'DesPartSpecMapping' has description 'Maps a file column to a spec value.'
- Type 'DesPartStartUploadPayload' was added
- Object type 'DesPartStartUploadPayload' has description 'Payload produced when a parts upload is started.'
- Type 'DesPartStockMapping' was added
- Object type 'DesPartStockMapping' has description 'Maps a file column to a stock quantity and optional location.'
- Type 'DesPartTag' was added
- Object type 'DesPartTag' has description 'Represents a tag that can be assigned to parts.'
- Type 'DesPartUploadComponentOperationResult' was added
- Object type 'DesPartUploadComponentOperationResult' has description 'Represents the result of the upload components operation.'
- Type 'DesPartUploadComponentsColumnMapping' was added
- Object type 'DesPartUploadComponentsColumnMapping' has description 'Column mapping for components upload. Only MPN, Manufacturer and IPN columns are supported.'
- Type 'DesPartUploadComponentsPayload' was added
- Object type 'DesPartUploadComponentsPayload' has description 'Payload produced when uploading components.'
- Type 'DesPartUploadLibraryPartOperationResult' was added
- Object type 'DesPartUploadLibraryPartOperationResult' has description 'Represents the result of a library part upload operation.'
- Type 'DesPartUploadLibraryPartsColumnMapping' was added
- Object type 'DesPartUploadLibraryPartsColumnMapping' has description 'Maps file columns to part fields.'
- Type 'DesPartUploadLibraryPartsPayload' was added
- Object type 'DesPartUploadLibraryPartsPayload' has description 'Payload produced when uploading custom library parts.'
- Type 'DesPartUploadOperationPayload' was added
- Object type 'DesPartUploadOperationPayload' has description 'Represents a parts upload operation of the workspace.'
- Type 'DesPartUploadPartFileColumnsPayload' was added
- Object type 'DesPartUploadPartFileColumnsPayload' has description 'Payload produced when reading columns from an uploaded file.'
- Type 'DesPartPartChoiceUpdateMode' was added
- Enum value 'RECREATE' was added to enum 'DesPartPartChoiceUpdateMode'
- Enum value 'UPDATE' was added to enum 'DesPartPartChoiceUpdateMode'
- Object type 'DesPartPartChoiceUpdateMode' has description 'Specifies how existing part choices are handled during upload.'
- Type 'DesPartAcknowledgeUploadOperationInput' was added
- Object type 'DesPartAcknowledgeUploadOperationInput' has description 'Input for marking the result of a parts upload operation as read.'
- Type 'DesPartAttachTagInput' was added
- Object type 'DesPartAttachTagInput' has description 'Represents the input for assigning a part tag to parts.'
- Type 'DesPartChangeLifecycleStateInput' was added
- Object type 'DesPartChangeLifecycleStateInput' has description 'Represents the input for changing the lifecycle state of a part.'
- Type 'DesPartCreateTagInput' was added
- Object type 'DesPartCreateTagInput' has description 'Represents the input for creating a part tag.'
- Type 'DesPartDeleteTagInput' was added
- Object type 'DesPartDeleteTagInput' has description 'Represents the input for deleting a part tag.'
- Type 'DesPartDetachTagInput' was added
- Object type 'DesPartDetachTagInput' has description 'Represents the input for unassigning a part tag from parts.'
- Type 'DesPartDocumentMappingInput' was added
- Object type 'DesPartDocumentMappingInput' has description 'Maps file columns to a document.'
- Type 'DesPartPriceMappingInput' was added
- Object type 'DesPartPriceMappingInput' has description 'Maps the price of a fixed break quantity to a file column.'
- Type 'DesPartSellerMappingInput' was added
- Object type 'DesPartSellerMappingInput' has description 'Maps file columns to a seller and its prices/stocks.'
- Type 'DesPartSpecMappingInput' was added
- Object type 'DesPartSpecMappingInput' has description 'Maps a file column to a spec value.'
- Type 'DesPartStockMappingInput' was added
- Object type 'DesPartStockMappingInput' has description 'Maps a file column to a stock quantity and optional location.'
- Type 'DesPartUploadComponentsColumnMappingInput' was added
- Object type 'DesPartUploadComponentsColumnMappingInput' has description 'Column mapping for components upload. Only MPN, Manufacturer and IPN columns are supported.'
- Type 'DesPartUploadComponentsInput' was added
- Object type 'DesPartUploadComponentsInput' has description 'Input for uploading components with part choices.'
- Type 'DesPartUploadLibraryPartsColumnMappingInput' was added
- Object type 'DesPartUploadLibraryPartsColumnMappingInput' has description 'Maps file columns to part fields.'
- Type 'DesPartUploadLibraryPartsInput' was added
- Object type 'DesPartUploadLibraryPartsInput' has description 'Input for uploading custom library parts (Custom Part Provider mode). Column mapping is required.'
- Object type 'DesPartBomAlternativePartsEntry' has description 'Represents the alternative parts of a single element.'

#### Fields

- Field 'errors' was added to object type 'DesPartAcknowledgeUploadOperationPayload'
- Field 'operation' was added to object type 'DesPartAcknowledgeUploadOperationPayload'
- Field 'errors' was added to object type 'DesPartAttachTagPayload'
- Field 'isSuccessful' was added to object type 'DesPartAttachTagPayload'
- Field 'errors' was added to object type 'DesPartChangeLifecycleStatePayload'
- Field 'isSuccessful' was added to object type 'DesPartChangeLifecycleStatePayload'
- Field 'errors' was added to object type 'DesPartCreateTagPayload'
- Field 'tag' was added to object type 'DesPartCreateTagPayload'
- Field 'deletedTagId' was added to object type 'DesPartDeleteTagPayload'
- Field 'errors' was added to object type 'DesPartDeleteTagPayload'
- Field 'errors' was added to object type 'DesPartDetachTagPayload'
- Field 'isSuccessful' was added to object type 'DesPartDetachTagPayload'
- Field 'nameColumn' was added to object type 'DesPartDocumentMapping'
- Field 'urlColumn' was added to object type 'DesPartDocumentMapping'
- Field 'currentLifecycleStateId' was added to object type 'DesPartLifecycle'
- Field 'definition' was added to object type 'DesPartLifecycle'
- Field 'priceColumn' was added to object type 'DesPartPriceMapping'
- Field 'quantity' was added to object type 'DesPartPriceMapping'
- Field 'currencyColumn' was added to object type 'DesPartSellerMapping'
- Field 'nameColumn' was added to object type 'DesPartSellerMapping'
- Field 'prices' was added to object type 'DesPartSellerMapping'
- Field 'skuColumn' was added to object type 'DesPartSellerMapping'
- Field 'stocks' was added to object type 'DesPartSellerMapping'
- Field 'urlColumn' was added to object type 'DesPartSellerMapping'
- Field 'nameColumn' was added to object type 'DesPartSpecMapping'
- Field 'valueColumn' was added to object type 'DesPartSpecMapping'
- Field 'errors' was added to object type 'DesPartStartUploadPayload'
- Field 'operationId' was added to object type 'DesPartStartUploadPayload'
- Field 'locationColumn' was added to object type 'DesPartStockMapping'
- Field 'qtyColumn' was added to object type 'DesPartStockMapping'
- Field 'isDeletable' was added to object type 'DesPartTag'
- Field 'name' was added to object type 'DesPartTag'
- Field 'tagId' was added to object type 'DesPartTag'
- Field 'errorMessage' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'partId' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'status' was added to object type 'DesPartUploadComponentOperationResult'
- Field 'ipnColumn' was added to object type 'DesPartUploadComponentsColumnMapping'
- Field 'manufacturerNameColumn' was added to object type 'DesPartUploadComponentsColumnMapping'
- Field 'mpnColumn' was added to object type 'DesPartUploadComponentsColumnMapping'
- Field 'errors' was added to object type 'DesPartUploadComponentsPayload'
- Field 'results' was added to object type 'DesPartUploadComponentsPayload'
- Field 'errorMessage' was added to object type 'DesPartUploadLibraryPartOperationResult'
- Field 'partId' was added to object type 'DesPartUploadLibraryPartOperationResult'
- Field 'status' was added to object type 'DesPartUploadLibraryPartOperationResult'
- Field 'categoryNameColumn' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'datasheetUrlColumn' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'descriptionColumn' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'documents' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'imageUrlColumn' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'manufacturerNameColumn' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'mpnColumn' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'sellers' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'specs' was added to object type 'DesPartUploadLibraryPartsColumnMapping'
- Field 'errors' was added to object type 'DesPartUploadLibraryPartsPayload'
- Field 'results' was added to object type 'DesPartUploadLibraryPartsPayload'
- Field 'componentsColumnMapping' was added to object type 'DesPartUploadOperationPayload'
- Field 'createdAt' was added to object type 'DesPartUploadOperationPayload'
- Field 'fileId' was added to object type 'DesPartUploadOperationPayload'
- Field 'fileName' was added to object type 'DesPartUploadOperationPayload'
- Field 'finishedAt' was added to object type 'DesPartUploadOperationPayload'
- Field 'isAck' was added to object type 'DesPartUploadOperationPayload'
- Field 'kind' was added to object type 'DesPartUploadOperationPayload'
- Field 'libraryPartsColumnMapping' was added to object type 'DesPartUploadOperationPayload'
- Field 'operationId' was added to object type 'DesPartUploadOperationPayload'
- Field 'partChoiceUpdateMode' was added to object type 'DesPartUploadOperationPayload'
- Field 'startedAt' was added to object type 'DesPartUploadOperationPayload'
- Field 'status' was added to object type 'DesPartUploadOperationPayload'
- Field 'columns' was added to object type 'DesPartUploadPartFileColumnsPayload'
- Field 'errors' was added to object type 'DesPartUploadPartFileColumnsPayload'
- Field 'lifecycle' was added to object type 'DesPart'
- Field 'tags' was added to object type 'DesPart'
- Field 'tags' was added to object type 'DesPartSearchFixedFacets'

#### Input / Payload

- Input field 'operationId' of type 'UUID!' was added to input object type 'DesPartAcknowledgeUploadOperationInput'
- Input field 'partIds' of type '[ID!]!' was added to input object type 'DesPartAttachTagInput'
- Input field 'tagId' of type 'String!' was added to input object type 'DesPartAttachTagInput'
- Input field 'partId' of type 'ID!' was added to input object type 'DesPartChangeLifecycleStateInput'
- Input field 'transitionLifecycleStateId' of type 'String!' was added to input object type 'DesPartChangeLifecycleStateInput'
- Input field 'name' of type 'String!' was added to input object type 'DesPartCreateTagInput'
- Input field 'tagId' of type 'String!' was added to input object type 'DesPartDeleteTagInput'
- Input field 'partIds' of type '[ID!]!' was added to input object type 'DesPartDetachTagInput'
- Input field 'tagId' of type 'String!' was added to input object type 'DesPartDetachTagInput'
- Input field 'nameColumn' of type 'String' was added to input object type 'DesPartDocumentMappingInput'
- Input field 'urlColumn' of type 'String!' was added to input object type 'DesPartDocumentMappingInput'
- Input field 'priceColumn' of type 'String!' was added to input object type 'DesPartPriceMappingInput'
- Input field 'quantity' of type 'Int!' was added to input object type 'DesPartPriceMappingInput'
- Input field 'currencyColumn' of type 'String' was added to input object type 'DesPartSellerMappingInput'
- Input field 'nameColumn' of type 'String!' was added to input object type 'DesPartSellerMappingInput'
- Input field 'prices' of type '[DesPartPriceMappingInput!]' was added to input object type 'DesPartSellerMappingInput'
- Input field 'skuColumn' of type 'String' was added to input object type 'DesPartSellerMappingInput'
- Input field 'stocks' of type '[DesPartStockMappingInput!]' was added to input object type 'DesPartSellerMappingInput'
- Input field 'urlColumn' of type 'String' was added to input object type 'DesPartSellerMappingInput'
- Input field 'nameColumn' of type 'String!' was added to input object type 'DesPartSpecMappingInput'
- Input field 'valueColumn' of type 'String!' was added to input object type 'DesPartSpecMappingInput'
- Input field 'locationColumn' of type 'String' was added to input object type 'DesPartStockMappingInput'
- Input field 'qtyColumn' of type 'String!' was added to input object type 'DesPartStockMappingInput'
- Input field 'ipnColumn' of type 'String!' was added to input object type 'DesPartUploadComponentsColumnMappingInput'
- Input field 'manufacturerNameColumn' of type 'String!' was added to input object type 'DesPartUploadComponentsColumnMappingInput'
- Input field 'mpnColumn' of type 'String!' was added to input object type 'DesPartUploadComponentsColumnMappingInput'
- Input field 'columnMapping' of type 'DesPartUploadComponentsColumnMappingInput!' was added to input object type 'DesPartUploadComponentsInput'
- Input field 'fileId' of type 'String!' was added to input object type 'DesPartUploadComponentsInput'
- Input field 'fileName' of type 'String!' was added to input object type 'DesPartUploadComponentsInput'
- Input field 'partChoiceUpdateMode' of type 'DesPartPartChoiceUpdateMode!' was added to input object type 'DesPartUploadComponentsInput'
- Input field 'categoryNameColumn' of type 'String' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'datasheetUrlColumn' of type 'String' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'descriptionColumn' of type 'String' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'documents' of type '[DesPartDocumentMappingInput!]' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'imageUrlColumn' of type 'String' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'manufacturerNameColumn' of type 'String' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'mpnColumn' of type 'String' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'sellers' of type '[DesPartSellerMappingInput!]' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'specs' of type '[DesPartSpecMappingInput!]' was added to input object type 'DesPartUploadLibraryPartsColumnMappingInput'
- Input field 'columnMapping' of type 'DesPartUploadLibraryPartsColumnMappingInput!' was added to input object type 'DesPartUploadLibraryPartsInput'
- Input field 'fileId' of type 'String!' was added to input object type 'DesPartUploadLibraryPartsInput'
- Input field 'fileName' of type 'String!' was added to input object type 'DesPartUploadLibraryPartsInput'
- Input field 'lifecycleState' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Input field 'tags' of type '[String!]' was added to input object type 'DesPartSearchFilterInput'
- Directive 'deprecated' was added to input field 'supplierName' in input object 'DesPartSearchFilterInput'
- Directive 'deprecated' was added to input field 'supplierPartNumber' in input object 'DesPartSearchFilterInput'
- Input field 'lifecycleState' of type 'SortEnumType' was added to input object type 'DesPartSortInput'

### Supply

#### Input / Payload

- Directive 'deprecated' was added to input field 'newCompatibleEvalKits' in input object 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Directive 'deprecated' was added to input field 'newEsdSource' in input object 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Directive 'deprecated' was added to input field 'newParameters' in input object 'SupSolutionTemplateUpdateSolutionTemplateInput'
- Directive 'deprecated' was added to input field 'newPreviewImages' in input object 'SupSolutionTemplateUpdateSolutionTemplateInput'


