# gateway-changelog-13-Nov-2025

## ✅ Non-Breaking Changes (147)

### Common

#### 🔍 Query

- Field 'kgNode' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.kgNode'

#### Types

- Type 'KgAnchorNode' was added
- 'KgAnchorNode' object implements 'KgNode' interface
- Type 'KgNodeQueries' was added
- Type 'KgRelation' was added
- Type 'KgRelationQueries' was added
- Type 'KgNode' was added
- Type 'KgRelationSemantic' was added
- Enum value 'DERIVES_FROM' was added to enum 'KgRelationSemantic'
- Enum value 'DERIVES_INTO' was added to enum 'KgRelationSemantic'
- Enum value 'HAS_INPUT' was added to enum 'KgRelationSemantic'
- Enum value 'HAS_OUTPUT' was added to enum 'KgRelationSemantic'
- Enum value 'HAS_PART' was added to enum 'KgRelationSemantic'
- Enum value 'INFORMED_BY' was added to enum 'KgRelationSemantic'
- Enum value 'INFORMS' was added to enum 'KgRelationSemantic'
- Enum value 'INPUT_OF' was added to enum 'KgRelationSemantic'
- Enum value 'OUTPUT_OF' was added to enum 'KgRelationSemantic'
- Enum value 'PART_OF' was added to enum 'KgRelationSemantic'
- Enum value 'UNKNOWN' was added to enum 'KgRelationSemantic'
- Enum value 'KgRelationSemantic.UNKNOWN' was deprecated with reason 'Primarily here for backward compatibility with Vault. Don\'t use in the new code.'
- Object type 'KgRelationSemantic' has description 'Defines the semantic meaning of the relation.
See
net/wiki/spaces/GE/pages/3358752783/Relation+types
for details.'

#### Fields

- Field 'id' was added to object type 'KgAnchorNode'
- Field 'relatedNodes' was added to object type 'KgAnchorNode'
- Field 'relations' was added to object type 'KgAnchorNode'
- Field 'usedBy' was added to object type 'KgNodeQueries'
- Field 'uses' was added to object type 'KgNodeQueries'
- Field 'object' was added to object type 'KgRelation'
- Field 'semantic' was added to object type 'KgRelation'
- Field 'subject' was added to object type 'KgRelation'
- Field 'all' was added to object type 'KgRelationQueries'
- Field 'id' was added to interface 'KgNode'
- Field 'relatedNodes' was added to interface 'KgNode'
- Field 'relations' was added to interface 'KgNode'
- Directive 'deprecated' was added to enum value 'KgRelationSemantic.UNKNOWN'

#### Directives

- Directive 'experimental' was added
- Location 'OBJECT' was added to directive 'experimental'
- Location 'FIELD_DEFINITION' was added to directive 'experimental'
- Location 'INTERFACE' was added to directive 'experimental'
- Location 'ENUM' was added to directive 'experimental'

### Platform

#### Types

- Type 'SolParameterBundleValue' was added

#### Fields

- Field 'key' was added to object type 'SolParameterBundleValue'
- Field 'value' was added to object type 'SolParameterBundleValue'
- Field 'parameterBundleValues' was added to object type 'SolSolution'

#### Input / Payload

- Input field 'runScaffolding' of type 'Boolean' was added to input object type 'SolCreateSolutionInput'
- Input field 'runScaffolding' of type 'Boolean' was added to input object type 'SolUpdateSolutionInput'

### Renesas (preview)

#### ✏️ Mutation

- Field 'supSoftwareProjectCreateSoftwareProject' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectCreateSoftwareProjectInput!' added to 'Mutation.supSoftwareProjectCreateSoftwareProject'
- Field 'supSoftwareProjectDeleteSoftwareProject' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectDeleteSoftwareProjectInput!' added to 'Mutation.supSoftwareProjectDeleteSoftwareProject'
- Field 'supSoftwareProjectUpdateSoftwareProject' was added to object type 'Mutation'
- Argument 'input: SupSoftwareProjectUpdateSoftwareProjectInput!' added to 'Mutation.supSoftwareProjectUpdateSoftwareProject'

#### Types

- Type 'SupSoftwareProjectCreateSoftwareProjectPayload' was added
- Object type 'SupSoftwareProjectCreateSoftwareProjectPayload' has description 'Payload associated with creating a software project.'
- Type 'SupSoftwareProjectDeleteSoftwareProjectPayload' was added
- Object type 'SupSoftwareProjectDeleteSoftwareProjectPayload' has description 'Payload associated with deleting a software project.'
- Type 'SupSoftwareProjectNotFoundError' was added
- 'SupSoftwareProjectNotFoundError' object implements 'Error' interface
- Type 'SupSoftwareProjectUpdateSoftwareProjectPayload' was added
- Object type 'SupSoftwareProjectUpdateSoftwareProjectPayload' has description 'Payload associated with updating a software project.'
- Type 'SupSoftwareProjectDeleteSoftwareProjectError' was added
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectDeleteSoftwareProjectError'
- Type 'SupSoftwareProjectUpdateSoftwareProjectError' was added
- Member 'SupSoftwareProjectNotFoundError' was added to Union type 'SupSoftwareProjectUpdateSoftwareProjectError'
- Type 'SupSoftwareProjectErrorCode' was added
- Enum value 'SUP_SOFTWARE_PROJECT_NOT_FOUND' was added to enum 'SupSoftwareProjectErrorCode'
- Type 'SupSoftwareProjectCreateSoftwareProjectInput' was added
- Object type 'SupSoftwareProjectCreateSoftwareProjectInput' has description 'Input for software project creation.'
- Type 'SupSoftwareProjectDeleteSoftwareProjectInput' was added
- Object type 'SupSoftwareProjectDeleteSoftwareProjectInput' has description 'Input for software project delete.'
- Type 'SupSoftwareProjectEvalKitSourceInput' was added
- Type 'SupSoftwareProjectUpdateSoftwareProjectInput' was added
- Object type 'SupSoftwareProjectUpdateSoftwareProjectInput' has description 'Input for software project update.'

#### Fields

- Field 'id' was added to object type 'SupSoftwareProjectCreateSoftwareProjectPayload'
- Field 'errors' was added to object type 'SupSoftwareProjectDeleteSoftwareProjectPayload'
- Field 'errorCode' was added to object type 'SupSoftwareProjectNotFoundError'
- Field 'message' was added to object type 'SupSoftwareProjectNotFoundError'
- Field 'errors' was added to object type 'SupSoftwareProjectUpdateSoftwareProjectPayload'

#### Input / Payload

- Input field 'compatibleEvalKits' of type '[SupSoftwareProjectEvalKitSourceInput!]' was added to input object type 'SupSoftwareProjectCreateSoftwareProjectInput'
- Input field 'description' of type 'String' was added to input object type 'SupSoftwareProjectCreateSoftwareProjectInput'
- Input field 'title' of type 'String!' was added to input object type 'SupSoftwareProjectCreateSoftwareProjectInput'
- Input field 'type' of type 'SupSoftwareProjectType!' was added to input object type 'SupSoftwareProjectCreateSoftwareProjectInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupSoftwareProjectDeleteSoftwareProjectInput'
- Input field 'configUrl' of type 'String!' was added to input object type 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'configXmlUrl' of type 'String!' was added to input object type 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'evalKitId' of type 'ID!' was added to input object type 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'readmeUrl' of type 'String!' was added to input object type 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'sourceUrl' of type 'String!' was added to input object type 'SupSoftwareProjectEvalKitSourceInput'
- Input field 'description' of type 'String' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Input field 'newCompatibleEvalKits' of type '[SupSoftwareProjectEvalKitSourceInput!]!' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Input field 'title' of type 'String' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'
- Input field 'type' of type 'SupSoftwareProjectType' was added to input object type 'SupSoftwareProjectUpdateSoftwareProjectInput'

### Supply

#### ✏️ Mutation

- Field 'supEvalKitCreateEvalKit' was added to object type 'Mutation'
- Argument 'input: SupEvalKitCreateEvalKitInput!' added to 'Mutation.supEvalKitCreateEvalKit'
- Field 'supEvalKitDeleteEvalKit' was added to object type 'Mutation'
- Argument 'input: SupEvalKitDeleteEvalKitInput!' added to 'Mutation.supEvalKitDeleteEvalKit'
- Field 'supEvalKitUpdateEvalKit' was added to object type 'Mutation'
- Argument 'input: SupEvalKitUpdateEvalKitInput!' added to 'Mutation.supEvalKitUpdateEvalKit'

#### Types

- Type 'SupEvalKitCreateEvalKitPayload' was added
- Object type 'SupEvalKitCreateEvalKitPayload' has description 'Payload associated with creating a evaluation kit.'
- Type 'SupEvalKitDeleteEvalKitPayload' was added
- Object type 'SupEvalKitDeleteEvalKitPayload' has description 'Payload associated with deleting a evaluation kit.'
- Type 'SupEvalKitNotFoundError' was added
- 'SupEvalKitNotFoundError' object implements 'Error' interface
- Type 'SupEvalKitUpdateEvalKitPayload' was added
- Object type 'SupEvalKitUpdateEvalKitPayload' has description 'Payload associated with updating a evaluation kit.'
- Type 'SupEvalKitDeleteEvalKitError' was added
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitDeleteEvalKitError'
- Type 'SupEvalKitUpdateEvalKitError' was added
- Member 'SupEvalKitNotFoundError' was added to Union type 'SupEvalKitUpdateEvalKitError'
- Type 'SupEvalKitErrorCode' was added
- Enum value 'SUP_EVAL_KIT_NOT_FOUND' was added to enum 'SupEvalKitErrorCode'
- Type 'SupEvalKitCreateEvalKitInput' was added
- Object type 'SupEvalKitCreateEvalKitInput' has description 'Input for evaluation kit creation.'
- Type 'SupEvalKitDeleteEvalKitInput' was added
- Object type 'SupEvalKitDeleteEvalKitInput' has description 'Input for evaluation kit delete.'
- Type 'SupEvalKitFileInput' was added
- Type 'SupEvalKitUpdateEvalKitInput' was added
- Object type 'SupEvalKitUpdateEvalKitInput' has description 'Input for evaluation kit update.'

#### Fields

- Field 'id' was added to object type 'SupEvalKitCreateEvalKitPayload'
- Field 'errors' was added to object type 'SupEvalKitDeleteEvalKitPayload'
- Field 'errorCode' was added to object type 'SupEvalKitNotFoundError'
- Field 'message' was added to object type 'SupEvalKitNotFoundError'
- Field 'errors' was added to object type 'SupEvalKitUpdateEvalKitPayload'

#### Input / Payload

- Input field 'compatibleSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'description' of type 'String' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'partIds' of type '[String!]' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'previewImages' of type '[SupEvalKitFileInput!]!' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'refDesignIds' of type '[ID!]' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'sourceUrl' of type 'String' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'title' of type 'String!' was added to input object type 'SupEvalKitCreateEvalKitInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupEvalKitDeleteEvalKitInput'
- Input field 'fileId' of type 'String!' was added to input object type 'SupEvalKitFileInput'
- Input field 'fileName' of type 'String!' was added to input object type 'SupEvalKitFileInput'
- Input field 'fileType' of type 'String!' was added to input object type 'SupEvalKitFileInput'
- Input field 'addCompatibleSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'addPartIds' of type '[String!]' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'addRefDesignIds' of type '[ID!]' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'description' of type 'String' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'id' of type 'ID!' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'newPreviewImages' of type '[SupEvalKitFileInput!]' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'removeCompatibleSoftwareProjectIds' of type '[ID!]' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'removePartIds' of type '[String!]' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'removeRefDesignIds' of type '[ID!]' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'sourceUrl' of type 'String' was added to input object type 'SupEvalKitUpdateEvalKitInput'
- Input field 'title' of type 'String' was added to input object type 'SupEvalKitUpdateEvalKitInput'


