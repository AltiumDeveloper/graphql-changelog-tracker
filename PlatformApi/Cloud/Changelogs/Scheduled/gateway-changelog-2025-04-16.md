# gateway-changelog-16-Apr-2025

## ✅ Non-Breaking Changes (22)

### Platform

#### ✏️ Mutation

- Field 'gloNtfSendEmail' was added to object type 'Mutation'
- Argument 'input: GloNtfSendEmailInput!' added to 'Mutation.gloNtfSendEmail'

#### Types

- Type 'GloNtfPayloadError' was added
- 'GloNtfPayloadError' object implements 'GloNtfError' interface
- Object type 'GloNtfPayloadError' has description 'Represents the information about a payload error.'
- Type 'GloNtfSendEmailPayload' was added
- Type 'GloNtfError' was added
- Object type 'GloNtfError' has description 'Represents the information about an error.'
- Type 'GloNtfBodyEmailFormat' was added
- Enum value 'PLAIN' was added to enum 'GloNtfBodyEmailFormat'
- Enum value 'HTML' was added to enum 'GloNtfBodyEmailFormat'
- Type 'GloNtfSendEmailInput' was added

#### Fields

- Field 'message' was added to object type 'GloNtfPayloadError'
- Field 'errors' was added to object type 'GloNtfSendEmailPayload'
- Field 'message' was added to interface 'GloNtfError'

#### Input / Payload

- Input field 'to' of type '[String!]!' was added to input object type 'GloNtfSendEmailInput'
- Input field 'bcc' of type '[String!]!' was added to input object type 'GloNtfSendEmailInput'
- Input field 'cc' of type '[String!]!' was added to input object type 'GloNtfSendEmailInput'
- Input field 'subject' of type 'String!' was added to input object type 'GloNtfSendEmailInput'
- Input field 'body' of type 'String!' was added to input object type 'GloNtfSendEmailInput'
- Input field 'bodyFormat' of type 'GloNtfBodyEmailFormat!' was added to input object type 'GloNtfSendEmailInput'
- Input field 'from' of type 'String!' was added to input object type 'GloNtfSendEmailInput'


