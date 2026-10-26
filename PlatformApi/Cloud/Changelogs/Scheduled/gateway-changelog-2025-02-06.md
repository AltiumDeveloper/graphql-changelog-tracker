# gateway-changelog-06-Feb-2025

## 🔴 Breaking Changes (1)

### Design

#### Input / Payload

- Input field 'id' was removed from input object type 'DesReleaseFilterInput'


---

## ⚠️ Dangerous Changes (2)

### Design

#### Types

- 'DesReleaseVariant' object implements 'Node' interface
- 'DesWipVariant' object implements 'Node' interface


---

## ✅ Non-Breaking Changes (10)

### Design

#### 🔍 Query

- Field 'desReleaseVariantById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.desReleaseVariantById'
- Field 'desWipVariantById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.desWipVariantById'
- Field 'Query.desBomById' is deprecated
- Directive 'deprecated' was added to 'Query.desBomById'

#### Fields

- Field 'DesBom.id' is deprecated
- Directive 'deprecated' was added to 'DesBom.id'
- Field 'id' was added to object type 'DesReleaseVariant'
- Field 'id' was added to object type 'DesWipVariant'


