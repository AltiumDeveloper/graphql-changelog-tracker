# gateway-changelog-13-Jan-2026

## ⚠️ Dangerous Changes (2)

### Renesas (preview)

#### 🔍 Query

- Argument 'order: [SupSoftwareProjectOrderInput!]' added to 'Query.supSoftwareProjects'

### Supply

#### 🔍 Query

- Argument 'order: [SupEvalKitOrderInput!]' added to 'Query.supEvalKits'


---

## ✅ Non-Breaking Changes (25)

### Renesas (preview)

#### Types

- Type 'SupSoftwareProjectOrderDirection' was added
- Enum value 'ASC' was added to enum 'SupSoftwareProjectOrderDirection'
- Enum value 'DESC' was added to enum 'SupSoftwareProjectOrderDirection'
- Type 'SupSoftwareProjectOrderField' was added
- Enum value 'CREATED_AT' was added to enum 'SupSoftwareProjectOrderField'
- Enum value 'DESCRIPTION' was added to enum 'SupSoftwareProjectOrderField'
- Enum value 'TITLE' was added to enum 'SupSoftwareProjectOrderField'
- Enum value 'TYPE' was added to enum 'SupSoftwareProjectOrderField'
- Enum value 'UPDATED_AT' was added to enum 'SupSoftwareProjectOrderField'
- Type 'SupSoftwareProjectOrderInput' was added
- Object type 'SupSoftwareProjectOrderInput' has description 'Input type for ordering.'

#### Input / Payload

- Input field 'direction' of type 'SupSoftwareProjectOrderDirection!' was added to input object type 'SupSoftwareProjectOrderInput'
- Input field 'field' of type 'SupSoftwareProjectOrderField!' was added to input object type 'SupSoftwareProjectOrderInput'

### Supply

#### Types

- Type 'SupEvalKitOrderDirection' was added
- Enum value 'ASC' was added to enum 'SupEvalKitOrderDirection'
- Enum value 'DESC' was added to enum 'SupEvalKitOrderDirection'
- Type 'SupEvalKitOrderField' was added
- Enum value 'CREATED_AT' was added to enum 'SupEvalKitOrderField'
- Enum value 'DESCRIPTION' was added to enum 'SupEvalKitOrderField'
- Enum value 'TITLE' was added to enum 'SupEvalKitOrderField'
- Enum value 'UPDATED_AT' was added to enum 'SupEvalKitOrderField'
- Type 'SupEvalKitOrderInput' was added
- Object type 'SupEvalKitOrderInput' has description 'Input type for ordering.'

#### Input / Payload

- Input field 'direction' of type 'SupEvalKitOrderDirection!' was added to input object type 'SupEvalKitOrderInput'
- Input field 'field' of type 'SupEvalKitOrderField!' was added to input object type 'SupEvalKitOrderInput'


