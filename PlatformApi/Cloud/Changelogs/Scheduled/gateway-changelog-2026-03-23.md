# gateway-changelog-23-Mar-2026

## ✅ Non-Breaking Changes (28)

### Supply

#### 🔍 Query

- Field 'supEvalKitDetailsByRefDesignId' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supEvalKitDetailsByRefDesignId'
- Argument 'before: String' added to 'Query.supEvalKitDetailsByRefDesignId'
- Argument 'first: Int' added to 'Query.supEvalKitDetailsByRefDesignId'
- Argument 'last: Int' added to 'Query.supEvalKitDetailsByRefDesignId'
- Argument 'refDesignId: ID!' added to 'Query.supEvalKitDetailsByRefDesignId'
- Argument 'where: SupEvalKitByRefDesignFilterInput' added to 'Query.supEvalKitDetailsByRefDesignId'

#### Types

- Type 'SupEvalKitByRefDesignFilterInput' was added
- Object type 'SupEvalKitByRefDesignFilterInput' has description 'Represents the filter for searching evaluation kits.'

#### Arguments

- Argument 'after: String' added to 'SupEvalKit.compatibleSoftwareProjectDetails'
- Argument 'before: String' added to 'SupEvalKit.compatibleSoftwareProjectDetails'
- Argument 'first: Int' added to 'SupEvalKit.compatibleSoftwareProjectDetails'
- Argument 'last: Int' added to 'SupEvalKit.compatibleSoftwareProjectDetails'
- Argument 'order: [SupSoftwareProjectSortInput!]' added to 'SupEvalKit.compatibleSoftwareProjectDetails'
- Argument 'where: SupEvalKitCompatibleSoftwareProjectFilterInput' added to 'SupEvalKit.compatibleSoftwareProjectDetails'
- Argument 'after: String' added to 'SupRefDesign.evalKitDetails'
- Argument 'before: String' added to 'SupRefDesign.evalKitDetails'
- Argument 'first: Int' added to 'SupRefDesign.evalKitDetails'
- Argument 'last: Int' added to 'SupRefDesign.evalKitDetails'
- Argument 'where: SupEvalKitByRefDesignFilterInput' added to 'SupRefDesign.evalKitDetails'

#### Fields

- Field 'compatibleSoftwareProjectDetails' was added to object type 'SupEvalKit'
- Field 'SupEvalKit.compatibleSoftwareProjectData' is deprecated
- Directive 'deprecated' was added to 'SupEvalKit.compatibleSoftwareProjectData'
- Field 'evalKitDetails' was added to object type 'SupRefDesign'

#### Input / Payload

- Input field 'description' of type 'String' was added to input object type 'SupEvalKitByRefDesignFilterInput'
- Input field 'partIds' of type '[String!]' was added to input object type 'SupEvalKitByRefDesignFilterInput'
- Input field 'q' of type 'String' was added to input object type 'SupEvalKitByRefDesignFilterInput'
- Input field 'title' of type 'String' was added to input object type 'SupEvalKitByRefDesignFilterInput'


