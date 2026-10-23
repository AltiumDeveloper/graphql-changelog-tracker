# gateway-changelog-10-Mar-2025

## ✅ Non-Breaking Changes (53)

### Platform

#### 🔍 Query

- Field 'gloEvtSubscriptionById' was added to object type 'Query'
- Argument 'subscriptionId: String!' added to 'Query.gloEvtSubscriptionById'

#### ✏️ Mutation

- Field 'gloEvtCreateWebhookSubscription' was added to object type 'Mutation'
- Argument 'input: GloEvtCreateWebhookSubscriptionInput!' added to 'Mutation.gloEvtCreateWebhookSubscription'
- Field 'gloEvtDeleteSubscription' was added to object type 'Mutation'
- Argument 'input: GloEvtDeleteSubscriptionInput!' added to 'Mutation.gloEvtDeleteSubscription'
- Field 'gloEvtPublishEvent' was added to object type 'Mutation'
- Argument 'input: GloEvtPublishEventInput!' added to 'Mutation.gloEvtPublishEvent'

#### Types

- Type 'GloEvtCreateSubscriptionPayload' was added
- Object type 'GloEvtCreateSubscriptionPayload' has description 'Represents the result of subscription creation operation.'
- Type 'GloEvtDeleteSubscriptionPayload' was added
- Object type 'GloEvtDeleteSubscriptionPayload' has description 'Represents the result of subscription deletion operation.'
- Type 'GloEvtError' was added
- Object type 'GloEvtError' has description 'Represents the information about an error.'
- Type 'GloEvtPublishEventPayload' was added
- Object type 'GloEvtPublishEventPayload' has description 'Represents the result of event publishing operation.'
- Type 'GloEvtWebhookSubscription' was added
- 'GloEvtWebhookSubscription' object implements 'GloEvtSubscription' interface
- Object type 'GloEvtWebhookSubscription' has description 'Represents the webhook-based subscription.'
- Type 'GloEvtSubscription' was added
- Object type 'GloEvtSubscription' has description 'Represents the application subscription to some events.'
- Type 'GloEvtSubscriptionState' was added
- Enum value 'INACTIVE' was added to enum 'GloEvtSubscriptionState'
- Enum value 'ACTIVE' was added to enum 'GloEvtSubscriptionState'
- Object type 'GloEvtSubscriptionState' has description 'Represents the state of the subscription.'
- Type 'GloEvtCreateWebhookSubscriptionInput' was added
- Object type 'GloEvtCreateWebhookSubscriptionInput' has description 'Represents the information required to create a webhook-based subscription.'
- Type 'GloEvtDeleteSubscriptionInput' was added
- Object type 'GloEvtDeleteSubscriptionInput' has description 'Information required to delete a subscription.'
- Type 'GloEvtPublishEventInput' was added
- Object type 'GloEvtPublishEventInput' has description 'Represents the information about an event to be dispatched to consumers.'

#### Fields

- Field 'errors' was added to object type 'GloEvtCreateSubscriptionPayload'
- Field 'subscription' was added to object type 'GloEvtCreateSubscriptionPayload'
- Field 'errors' was added to object type 'GloEvtDeleteSubscriptionPayload'
- Field 'message' was added to object type 'GloEvtError'
- Field 'errors' was added to object type 'GloEvtPublishEventPayload'
- Field 'eventTypes' was added to object type 'GloEvtWebhookSubscription'
- Field 'state' was added to object type 'GloEvtWebhookSubscription'
- Field 'subscriptionId' was added to object type 'GloEvtWebhookSubscription'
- Field 'webHookUrl' was added to object type 'GloEvtWebhookSubscription'
- Field 'subscriptionId' was added to interface 'GloEvtSubscription'
- Field 'eventTypes' was added to interface 'GloEvtSubscription'
- Field 'state' was added to interface 'GloEvtSubscription'

#### Input / Payload

- Input field 'eventTypes' of type '[String!]!' was added to input object type 'GloEvtCreateWebhookSubscriptionInput'
- Input field 'webhookUrl' of type 'String!' was added to input object type 'GloEvtCreateWebhookSubscriptionInput'
- Input field 'filter' of type 'String!' was added to input object type 'GloEvtCreateWebhookSubscriptionInput'
- Input field 'secretKey' of type 'String!' was added to input object type 'GloEvtCreateWebhookSubscriptionInput'
- Input field 'subscriptionId' of type 'String!' was added to input object type 'GloEvtDeleteSubscriptionInput'
- Input field 'eventId' of type 'String!' was added to input object type 'GloEvtPublishEventInput'
- Input field 'eventType' of type 'String!' was added to input object type 'GloEvtPublishEventInput'
- Input field 'source' of type 'String!' was added to input object type 'GloEvtPublishEventInput'
- Input field 'subject' of type 'String!' was added to input object type 'GloEvtPublishEventInput'
- Input field 'data' of type 'String!' was added to input object type 'GloEvtPublishEventInput'


