# gateway-changelog-13-Mar-2026

## 🔴 Breaking Changes (2)

### Common

#### ✏️ Mutation

- Field 'registerDesignUpload' was removed from object type 'Mutation'

### System Design

#### Fields

- Field 'SysSdmSoftwareSpecification.category' changed type from 'SysSdmSoftwareComponentCategory!' to 'SysSdmSoftwareComponentCategory'


---

## ⚠️ Dangerous Changes (3)

### Design

#### Types

- Enum value 'SKIPPED' was added to enum 'DesignDataGenerationStatus_Preview'

#### Arguments

- Argument 'revisionId: String' added to 'DesignPreviewQueries.latestGeneration'
- Argument 'revisionId: String' added to 'DesignPreviewQueries.ruleCheckLatestExecution'


---

## ✅ Non-Breaking Changes (11)

### Design

#### ✏️ Mutation

- Field 'design' was added to object type 'Mutation'

#### Types

- Type 'DesignMutations' was added
- Object type 'DesignMutations' has description '**Experimental** Design related mutations entry point.'
- Type 'DesignPreviewMutations' was added
- Object type 'DesignPreviewMutations' has description '**Experimental** Entry point for the experimental design preview mutations, which may change or be removed without deprecation.'

#### Arguments

- Argument 'input: DesignDataDesignUploadRegistrationInput_Preview!' added to 'DesignPreviewMutations.registerDesignUpload'

#### Fields

- Field 'preview' was added to object type 'DesignMutations'
- Field 'registerDesignUpload' was added to object type 'DesignPreviewMutations'
- Field 'revisionId' was added to object type 'DesignDataGeneration_Preview'
- Field 'revisionId' was added to object type 'RuleCheckExecution_Preview'

### Platform

#### Input / Payload

- Input field 'postLogoutRedirectUris' of type '[String!]' was added to input object type 'GloCreateAppOAuthClientInput'


