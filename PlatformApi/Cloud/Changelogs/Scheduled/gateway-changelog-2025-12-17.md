# gateway-changelog-17-Dec-2025

## ✅ Non-Breaking Changes (11)

### Platform

#### ✏️ Mutation

- Field 'solBldScaffoldingWithEmptyEsd' was added to object type 'Mutation'

#### Types

- Type 'SolBldScaffoldingWithEmptyEsdPayload' was added

#### Fields

- Field 'jobId' was added to object type 'SolBldScaffoldingWithEmptyEsdPayload'

### Supply

#### Types

- Object type 'SupRefApplicationBucket' has description 'Aggregation bucket for reference design applications with application identifier + counts.'
- Object type 'SupRefCategoryBucket' has description 'Aggregation bucket for reference design categories with category identifier + counts.'
- Object type 'SupRefDesignTypeBucket' has description 'Aggregation bucket for reference design types with type + counts.'
- Object type 'SupRefPublisherBucket' has description 'Aggregation bucket for reference design publishers with company identifier + counts.'
- Object type 'SupRefTagBucket' has description 'Aggregation bucket for reference design tags with name + counts.'
- Object type 'SupRefDesignFilterInput' has description 'Input for filtering reference designs by additional conditions.'

#### Fields

- Field 'SupRefDesign.createdAt' changed type from 'DateTime' to 'DateTime!'
- Field 'SupRefDesign.updatedAt' changed type from 'DateTime' to 'DateTime!'


