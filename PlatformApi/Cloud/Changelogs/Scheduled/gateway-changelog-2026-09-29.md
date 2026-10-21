# gateway-changelog-2026-09-29

## ✅ Non-Breaking Changes (38)


### Customization

#### 🔍 Query

- Field 'gloScrScriptSecrets' was added to object type 'Query'
- Argument 'scriptId: String!' added to 'Query.gloScrScriptSecrets'
- Argument 'scriptVersionId: String' added to 'Query.gloScrScriptSecrets'
- Field 'gloScrSecrets' was added to object type 'Query'

#### ✏️ Mutation

- Field 'gloScrCreateSecret' was added to object type 'Mutation'
- Argument 'input: GloScrCreateSecretInput!' added to 'Mutation.gloScrCreateSecret'
- Field 'gloScrDeleteSecret' was added to object type 'Mutation'
- Argument 'input: GloScrDeleteSecretInput!' added to 'Mutation.gloScrDeleteSecret'
- Field 'gloScrRenameScript' was added to object type 'Mutation'
- Argument 'input: GloScrRenameScriptInput!' added to 'Mutation.gloScrRenameScript'
- Field 'gloScrSetScriptSecrets' was added to object type 'Mutation'
- Argument 'input: GloScrSetScriptSecretsInput!' added to 'Mutation.gloScrSetScriptSecrets'

#### Types

- Type 'GloScrCreateSecretPayload' was added
- Type 'GloScrDeleteSecretPayload' was added
- Type 'GloScrRenameScriptPayload' was added
- Type 'GloScrScriptSecret' was added
- Type 'GloScrSecret' was added
- Type 'GloScrSetScriptSecretsPayload' was added
- Type 'GloScrCreateSecretInput' was added
- Type 'GloScrDeleteSecretInput' was added
- Type 'GloScrRenameScriptInput' was added
- Type 'GloScrSetScriptSecretsInput' was added

#### Fields

- Field 'gloScrSecret' was added to object type 'GloScrCreateSecretPayload'
- Field 'boolean' was added to object type 'GloScrDeleteSecretPayload'
- Field 'gloScrScript' was added to object type 'GloScrRenameScriptPayload'
- Field 'isMissing' was added to object type 'GloScrScriptSecret'
- Field 'name' was added to object type 'GloScrScriptSecret'
- Field 'name' was added to object type 'GloScrSecret'
- Field 'gloScrScriptSecret' was added to object type 'GloScrSetScriptSecretsPayload'

#### Input / Payload

- Input field 'name' of type 'String!' was added to input object type 'GloScrCreateSecretInput'
- Input field 'value' of type 'String!' was added to input object type 'GloScrCreateSecretInput'
- Input field 'name' of type 'String!' was added to input object type 'GloScrDeleteSecretInput'
- Input field 'name' of type 'String!' was added to input object type 'GloScrRenameScriptInput'
- Input field 'onlyIfProvisional' of type 'Boolean' was added to input object type 'GloScrRenameScriptInput'
- Input field 'scriptId' of type 'String!' was added to input object type 'GloScrRenameScriptInput'
- Input field 'scriptId' of type 'String!' was added to input object type 'GloScrSetScriptSecretsInput'
- Input field 'scriptVersionId' of type 'String!' was added to input object type 'GloScrSetScriptSecretsInput'
- Input field 'secretNames' of type '[String!]!' was added to input object type 'GloScrSetScriptSecretsInput'

