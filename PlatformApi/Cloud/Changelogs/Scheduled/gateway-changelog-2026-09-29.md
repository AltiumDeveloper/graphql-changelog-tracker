# gateway-changelog-2026-09-29

## ✅ Non-Breaking Changes (38)

- Type 'GloScrCreateSecretPayload' was added
- Field 'gloScrSecret' was added to object type 'GloScrCreateSecretPayload'
- Type 'GloScrDeleteSecretPayload' was added
- Field 'boolean' was added to object type 'GloScrDeleteSecretPayload'
- Type 'GloScrRenameScriptPayload' was added
- Field 'gloScrScript' was added to object type 'GloScrRenameScriptPayload'
- Type 'GloScrScriptSecret' was added
- Field 'isMissing' was added to object type 'GloScrScriptSecret'
- Field 'name' was added to object type 'GloScrScriptSecret'
- Type 'GloScrSecret' was added
- Field 'name' was added to object type 'GloScrSecret'
- Type 'GloScrSetScriptSecretsPayload' was added
- Field 'gloScrScriptSecret' was added to object type 'GloScrSetScriptSecretsPayload'
- Type 'GloScrCreateSecretInput' was added
- Input field 'name' of type 'String!' was added to input object type 'GloScrCreateSecretInput'
- Input field 'value' of type 'String!' was added to input object type 'GloScrCreateSecretInput'
- Type 'GloScrDeleteSecretInput' was added
- Input field 'name' of type 'String!' was added to input object type 'GloScrDeleteSecretInput'
- Type 'GloScrRenameScriptInput' was added
- Input field 'name' of type 'String!' was added to input object type 'GloScrRenameScriptInput'
- Input field 'onlyIfProvisional' of type 'Boolean' was added to input object type 'GloScrRenameScriptInput'
- Input field 'scriptId' of type 'String!' was added to input object type 'GloScrRenameScriptInput'
- Type 'GloScrSetScriptSecretsInput' was added
- Input field 'scriptId' of type 'String!' was added to input object type 'GloScrSetScriptSecretsInput'
- Input field 'scriptVersionId' of type 'String!' was added to input object type 'GloScrSetScriptSecretsInput'
- Input field 'secretNames' of type '[String!]!' was added to input object type 'GloScrSetScriptSecretsInput'
- Field 'gloScrCreateSecret' was added to object type 'Mutation'
- Argument 'input: GloScrCreateSecretInput!' added to field 'Mutation.gloScrCreateSecret'
- Field 'gloScrDeleteSecret' was added to object type 'Mutation'
- Argument 'input: GloScrDeleteSecretInput!' added to field 'Mutation.gloScrDeleteSecret'
- Field 'gloScrRenameScript' was added to object type 'Mutation'
- Argument 'input: GloScrRenameScriptInput!' added to field 'Mutation.gloScrRenameScript'
- Field 'gloScrSetScriptSecrets' was added to object type 'Mutation'
- Argument 'input: GloScrSetScriptSecretsInput!' added to field 'Mutation.gloScrSetScriptSecrets'
- Field 'gloScrScriptSecrets' was added to object type 'Query'
- Argument 'scriptId: String!' added to field 'Query.gloScrScriptSecrets'
- Argument 'scriptVersionId: String' added to field 'Query.gloScrScriptSecrets'
- Field 'gloScrSecrets' was added to object type 'Query'

