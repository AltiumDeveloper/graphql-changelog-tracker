# gateway-changelog-16-Oct-2025

## 🔴 Breaking Changes (3)

### Common

#### Types

- Type 'Date' was removed

### Procurement

#### Fields

- Field 'BomProduction.dueDate' changed type from 'Date' to 'LocalDate'

#### Input / Payload

- Input field 'BomCreateBomProductionSettingsInput.dueDate' changed type from 'Date' to 'LocalDate'


---

## ✅ Non-Breaking Changes (56)

### Common

#### Types

- Type 'LocalDate' was added
- Object type 'LocalDate' has description 'The `LocalDate` scalar type represents a ISO date string, represented as UTF-8 character sequences YYYY-MM-DD. The scalar follows the specification defined in RFC3339'

### Procurement

#### 🔍 Query

- Field 'bomBomById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.bomBomById'
- Field 'Query.bomBom' is deprecated
- Directive 'deprecated' was added to 'Query.bomBom'
- Field 'Query.bomBomRelease' is deprecated
- Directive 'deprecated' was added to 'Query.bomBomRelease'

#### ✏️ Mutation

- Field 'bomExportBomById' was added to object type 'Mutation'
- Argument 'input: BomExportBomByIdInput!' added to 'Mutation.bomExportBomById'
- Field 'Mutation.bomExportBom' is deprecated
- Directive 'deprecated' was added to 'Mutation.bomExportBom'
- Field 'Mutation.bomExportBomRelease' is deprecated
- Directive 'deprecated' was added to 'Mutation.bomExportBomRelease'

#### Types

- Type 'BomOctopartOfferReference' was added
- Object type 'BomOctopartOfferReference' has description 'A reference to an offer in Octopart.'
- Type 'BomPartCatalogOfferReference' was added
- Object type 'BomPartCatalogOfferReference' has description 'A reference to an offer in Part Catalog.'
- Type 'BomSelectedElementOffer' was added
- Object type 'BomSelectedElementOffer' has description 'Selected element offer.'
- Type 'BomSelectedElementOfferItem' was added
- Object type 'BomSelectedElementOfferItem' has description 'Selected element offer\'s item.'
- Type 'BomOfferReference' was added
- Member 'BomOctopartOfferReference' was added to Union type 'BomOfferReference'
- Member 'BomPartCatalogOfferReference' was added to Union type 'BomOfferReference'
- Object type 'BomOfferReference' has description 'A reference to an offer.'
- Type 'BomExportBomByIdInput' was added

#### Fields

- Field 'offerId' was added to object type 'BomOctopartOfferReference'
- Field 'manufacturer' was added to object type 'BomPartCatalogOfferReference'
- Field 'mpn' was added to object type 'BomPartCatalogOfferReference'
- Field 'sourceName' was added to object type 'BomPartCatalogOfferReference'
- Field 'supplier' was added to object type 'BomPartCatalogOfferReference'
- Field 'supplierPartNumber' was added to object type 'BomPartCatalogOfferReference'
- Field 'items' was added to object type 'BomSelectedElementOffer'
- Field 'surplus' was added to object type 'BomSelectedElementOffer'
- Field 'totalOrderQuantity' was added to object type 'BomSelectedElementOffer'
- Field 'totalPrice' was added to object type 'BomSelectedElementOffer'
- Field 'offerId' was added to object type 'BomSelectedElementOfferItem'
- Field 'offerReference' was added to object type 'BomSelectedElementOfferItem'
- Field 'orderQuantity' was added to object type 'BomSelectedElementOfferItem'
- Field 'sku' was added to object type 'BomSelectedElementOfferItem'
- Field 'subtotalPrice' was added to object type 'BomSelectedElementOfferItem'
- Field 'supplierName' was added to object type 'BomSelectedElementOfferItem'
- Field 'supplierOfferUrl' was added to object type 'BomSelectedElementOfferItem'
- Field 'BomItem.componentReference' is deprecated
- Directive 'deprecated' was added to 'BomItem.componentReference'
- Field 'partId' was added to object type 'BomItemAlternate'
- Field 'selectedOffer' was added to object type 'BomItemAlternate'
- Field 'partId' was added to object type 'BomItemSubstitute'
- Field 'selectedOffer' was added to object type 'BomItemSubstitute'
- Field 'id' was added to object type 'BomRelease'
- Field 'id' was added to object type 'BomWip'
- Field 'id' was added to interface 'Bom'
- Field 'partId' was added to interface 'BomItemElement'
- Field 'selectedOffer' was added to interface 'BomItemElement'

#### Input / Payload

- Input field 'id' of type 'ID!' was added to input object type 'BomExportBomByIdInput'


