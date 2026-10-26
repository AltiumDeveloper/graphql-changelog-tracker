# gateway-changelog-06-May-2026

## ⚠️ Dangerous Changes (1)

### Supply

#### 🔍 Query

- Argument 'order: [SupRefDesignOrderInput!]' added to 'Query.supRefDesigns'


---

## ✅ Non-Breaking Changes (15)

### Design

#### Fields

- Field 'componentTemplate' was added to object type 'DesComponent'

#### Input / Payload

- Input field 'componentTemplateId' of type 'ID' was added to input object type 'DesReleaseComponentInput'
- Input field 'componentTypeId' of type 'String' was added to input object type 'DesReleaseComponentInput'

### Supply

#### Types

- Type 'SupRefSortDirection' was added
- Enum value 'ASC' was added to enum 'SupRefSortDirection'
- Enum value 'DESC' was added to enum 'SupRefSortDirection'
- Object type 'SupRefSortDirection' has description 'Specifies the sort direction for ordering results.'
- Type 'SupRefDesignOrderInput' was added
- Object type 'SupRefDesignOrderInput' has description 'Input for ordering reference designs by one or more fields.'

#### Input / Payload

- Input field 'createdAt' of type 'SupRefSortDirection' was added to input object type 'SupRefDesignOrderInput'
- Input field 'stableName' of type 'SupRefSortDirection' was added to input object type 'SupRefDesignOrderInput'
- Input field 'subtitle' of type 'SupRefSortDirection' was added to input object type 'SupRefDesignOrderInput'
- Input field 'title' of type 'SupRefSortDirection' was added to input object type 'SupRefDesignOrderInput'
- Input field 'type' of type 'SupRefSortDirection' was added to input object type 'SupRefDesignOrderInput'
- Input field 'updatedAt' of type 'SupRefSortDirection' was added to input object type 'SupRefDesignOrderInput'


