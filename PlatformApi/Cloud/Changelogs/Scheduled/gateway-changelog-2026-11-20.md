# gateway-changelog-20-Nov-2026

## ⚠️ Dangerous Changes (3)

### Design

#### Arguments

- Argument 'revisionId: String' added to 'DesignDataQueries.byDesignId'
- Argument 'revisionId: String' added to 'DesignDataQueries.isGeneratingByDesignId'

### System Design

#### Fields

- Directive 'experimental' was removed from object 'SysSdmSystemModel'


---

## ✅ Non-Breaking Changes (6)

### Platform

#### 🔍 Query

- Field 'solSupportedGrids' was added to object type 'Query'

#### Types

- Type 'SolSupportedGrid' was added

#### Fields

- Field 'entityType' was added to object type 'SolSupportedGrid'
- Field 'gridTemplate' was added to object type 'SolSupportedGrid'

### Supply

#### Input / Payload

- Input field 'partIds' of type '[String!]' was added to input object type 'SupRefDesignFilterInput'

### System Design

#### Types

- Description '**Experimental**' was removed from object type 'SysSdmSystemModel'


