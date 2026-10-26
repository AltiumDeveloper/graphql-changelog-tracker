# gateway-changelog-22-Apr-2026

## ✅ Non-Breaking Changes (29)

### Design

#### Types

- Type 'RuleCheckExecutionOrigin_Preview' was added
- Enum value 'ON_CHANGE_PROCESS' was added to enum 'RuleCheckExecutionOrigin_Preview'
- Enum value 'ON_CHANGE_SYSTEM' was added to enum 'RuleCheckExecutionOrigin_Preview'
- Enum value 'ON_DEMAND_PROCESS' was added to enum 'RuleCheckExecutionOrigin_Preview'
- Enum value 'ON_REGENERATION' was added to enum 'RuleCheckExecutionOrigin_Preview'
- Enum value 'ON_RELEASE' was added to enum 'RuleCheckExecutionOrigin_Preview'
- Enum value 'TEMPORARY' was added to enum 'RuleCheckExecutionOrigin_Preview'
- Object type 'RuleCheckExecutionOrigin_Preview' has description '**Experimental** Represents the source that initiated the execution.'
- Type 'DesUpdateFootprintFileInput' was added
- Object type 'DesUpdateFootprintFileInput' has description 'Input for updating a footprint file.'
- Type 'DesUpdateSymbolFileInput' was added
- Object type 'DesUpdateSymbolFileInput' has description 'Input for updating a symbol file.'

#### Arguments

- Argument 'designId: ID!' added to 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId'
- Argument 'origins: [RuleCheckExecutionOrigin_Preview!]!' added to 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId'
- Argument 'revisionId: String' added to 'DesignPreviewQueries.ruleCheckAggregateResultsByDesignId'

#### Fields

- Field 'ruleCheckAggregateResultsByDesignId' was added to object type 'DesignPreviewQueries'

#### Input / Payload

- Input field 'fileId' of type 'String!' was added to input object type 'DesUpdateFootprintFileInput'
- Input field 'relativePath' of type 'String!' was added to input object type 'DesUpdateFootprintFileInput'
- Input field 'fileId' of type 'String!' was added to input object type 'DesUpdateSymbolFileInput'
- Input field 'relativePath' of type 'String!' was added to input object type 'DesUpdateSymbolFileInput'
- Input field 'files' of type '[DesUpdateFootprintFileInput!]' was added to input object type 'DesUpdateFootprintInput'
- Input field 'files' of type '[DesUpdateSymbolFileInput!]' was added to input object type 'DesUpdateSymbolInput'

### Platform

#### Types

- Type 'SolBldScaffoldingStatusMessageParameterPayload' was added
- Type 'SolBldScaffoldingStatusMessagePayload' was added

#### Fields

- Field 'name' was added to object type 'SolBldScaffoldingStatusMessageParameterPayload'
- Field 'value' was added to object type 'SolBldScaffoldingStatusMessageParameterPayload'
- Field 'messageCode' was added to object type 'SolBldScaffoldingStatusMessagePayload'
- Field 'parameters' was added to object type 'SolBldScaffoldingStatusMessagePayload'
- Field 'messages' was added to object type 'SolBldScaffoldingStatusPayload'


