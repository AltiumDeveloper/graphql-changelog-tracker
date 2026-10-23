# gateway-changelog-13-Feb-2026

## ✅ Non-Breaking Changes (27)

### Renesas (preview)

#### Types

- Type 'SupSoftwareProjectEvalKitSourceConnection' was added
- Object type 'SupSoftwareProjectEvalKitSourceConnection' has description 'A connection to a list of items.'
- Type 'SupSoftwareProjectEvalKitSourceEdge' was added
- Object type 'SupSoftwareProjectEvalKitSourceEdge' has description 'An edge in a connection.'
- Type 'SupSoftwareProjectCompatibleEvalKitFilterInput' was added
- Object type 'SupSoftwareProjectCompatibleEvalKitFilterInput' has description 'Represents the filter for searching compatible software projects.'

#### Arguments

- Argument 'after: String' added to 'SupSoftwareProject.compatibleEvalKitData'
- Argument 'before: String' added to 'SupSoftwareProject.compatibleEvalKitData'
- Argument 'first: Int' added to 'SupSoftwareProject.compatibleEvalKitData'
- Argument 'last: Int' added to 'SupSoftwareProject.compatibleEvalKitData'
- Argument 'where: SupSoftwareProjectCompatibleEvalKitFilterInput' added to 'SupSoftwareProject.compatibleEvalKitData'

#### Fields

- Field 'edges' was added to object type 'SupSoftwareProjectEvalKitSourceConnection'
- Field 'nodes' was added to object type 'SupSoftwareProjectEvalKitSourceConnection'
- Field 'pageInfo' was added to object type 'SupSoftwareProjectEvalKitSourceConnection'
- Field 'totalCount' was added to object type 'SupSoftwareProjectEvalKitSourceConnection'
- Field 'cursor' was added to object type 'SupSoftwareProjectEvalKitSourceEdge'
- Field 'node' was added to object type 'SupSoftwareProjectEvalKitSourceEdge'
- Field 'compatibleEvalKitData' was added to object type 'SupSoftwareProject'
- Field 'SupSoftwareProjectEvalKitSource.configUrl' is deprecated
- Directive 'deprecated' was added to 'SupSoftwareProjectEvalKitSource.configUrl'
- Field 'SupSoftwareProjectEvalKitSource.configXmlUrl' is deprecated
- Directive 'deprecated' was added to 'SupSoftwareProjectEvalKitSource.configXmlUrl'
- Field 'SupSoftwareProjectEvalKitSource.readmeUrl' is deprecated
- Directive 'deprecated' was added to 'SupSoftwareProjectEvalKitSource.readmeUrl'
- Field 'SupSoftwareProjectEvalKitSource.sourceUrl' is deprecated
- Directive 'deprecated' was added to 'SupSoftwareProjectEvalKitSource.sourceUrl'

#### Input / Payload

- Input field 'evalKitIds' of type '[ID!]' was added to input object type 'SupSoftwareProjectCompatibleEvalKitFilterInput'


