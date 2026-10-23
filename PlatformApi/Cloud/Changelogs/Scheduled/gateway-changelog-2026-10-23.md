# gateway-changelog-2026-10-23

## ✅ Non-Breaking Changes (30)

### Platform

#### 🔍 Query

- Field 'globalTrackedEvent' was added to object type 'Query'
- Field 'Query.globalTrackedEvent' is deprecated
- Directive 'deprecated' was added to 'Query.globalTrackedEvent'

#### ✏️ Mutation

- Field 'globalTrackedEventReport' was added to object type 'Mutation'
- Argument 'input: GlobalTrackedEventReportInput!' added to 'Mutation.globalTrackedEventReport'
- Directive 'authorize' was added to 'Mutation.globalTrackedEventReport'

#### Types

- Type 'GlobalTrackedEventContextObjectIdInvalidError' was added
- 'GlobalTrackedEventContextObjectIdInvalidError' object implements 'Error' interface
- Object type 'GlobalTrackedEventContextObjectIdInvalidError' has description 'Indicates that the supplied context object identifier is rejected.'
- Type 'GlobalTrackedEventNameInvalidError' was added
- 'GlobalTrackedEventNameInvalidError' object implements 'Error' interface
- Object type 'GlobalTrackedEventNameInvalidError' has description 'Indicates that the supplied event name is rejected.'
- Type 'GlobalTrackedEventReportPayload' was added
- Object type 'GlobalTrackedEventReportPayload' has description 'Result of reporting a business analytics event.'
- Type 'GlobalTrackedEventReportError' was added
- Member 'GlobalTrackedEventNameInvalidError' was added to Union type 'GlobalTrackedEventReportError'
- Member 'GlobalTrackedEventContextObjectIdInvalidError' was added to Union type 'GlobalTrackedEventReportError'
- Type 'GlobalTrackedEventReportInput' was added
- Object type 'GlobalTrackedEventReportInput' has description 'Business analytics event to record.'

#### Fields

- Field 'contextObjectId' was added to object type 'GlobalTrackedEventContextObjectIdInvalidError'
- Field 'message' was added to object type 'GlobalTrackedEventContextObjectIdInvalidError'
- Field 'eventName' was added to object type 'GlobalTrackedEventNameInvalidError'
- Field 'message' was added to object type 'GlobalTrackedEventNameInvalidError'
- Field 'errors' was added to object type 'GlobalTrackedEventReportPayload'

#### Input / Payload

- Input field 'contextObjectId' of type 'String' was added to input object type 'GlobalTrackedEventReportInput'
- Input field 'eventName' of type 'String!' was added to input object type 'GlobalTrackedEventReportInput'
- Input field 'sourceName' of type 'String' was added to input object type 'GlobalTrackedEventReportInput'
- Input field 'userId' of type 'String!' was added to input object type 'GlobalTrackedEventReportInput'
- Input field 'workspaceId' of type 'String!' was added to input object type 'GlobalTrackedEventReportInput'
- Input field 'itemIds' of type '[ID!]' was added to input object type 'SolCreateSolutionInput'


