# gateway-changelog-17-Sep-2025

## ✅ Non-Breaking Changes (239)

### Common

#### Types

- Type 'JSON' was added

### Design

#### 🔍 Query

- Field 'desReuseBlocksByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.desReuseBlocksByIds'

#### ✏️ Mutation

- Field 'desUpgradeComponentsToLatestSymbol' was added to object type 'Mutation'
- Argument 'input: DesUpgradeComponentsToLatestSymbolInput!' added to 'Mutation.desUpgradeComponentsToLatestSymbol'

#### Types

- Type 'DesFootprintConnection' was added
- Object type 'DesFootprintConnection' has description 'A connection to a list of items.'
- Type 'DesFootprintEdge' was added
- Object type 'DesFootprintEdge' has description 'An edge in a connection.'
- Type 'DesSymbolConnection' was added
- Object type 'DesSymbolConnection' has description 'A connection to a list of items.'
- Type 'DesSymbolEdge' was added
- Object type 'DesSymbolEdge' has description 'An edge in a connection.'
- Type 'DesUpgradeComponentsToLatestSymbolPayload' was added
- Object type 'DesUpgradeComponentsToLatestSymbolPayload' has description 'Payload for upgrading components to use the latest symbol revision.'
- Type 'DesComponentUpgradeFilterInput' was added
- Type 'DesFootprintFilterInput' was added
- Object type 'DesFootprintFilterInput' has description 'Provides filter options for a list of footprints.'
- Type 'DesLifecycleStateUpgradeOperationFilterInput' was added
- Type 'DesStringUpgradeOperationFilterInput' was added
- Type 'DesSymbolFilterInput' was added
- Object type 'DesSymbolFilterInput' has description 'A component symbol. These represent the body and the pins on the physical component.'
- Type 'DesUpgradeComponentsToLatestSymbolInput' was added
- Object type 'DesUpgradeComponentsToLatestSymbolInput' has description 'Input for upgrading components to use the latest symbol revision.'

#### Arguments

- Argument 'after: String' added to 'DesLibrary.footprints'
- Argument 'before: String' added to 'DesLibrary.footprints'
- Argument 'first: Int' added to 'DesLibrary.footprints'
- Argument 'last: Int' added to 'DesLibrary.footprints'
- Argument 'where: DesFootprintFilterInput' added to 'DesLibrary.footprints'
- Argument 'after: String' added to 'DesLibrary.symbols'
- Argument 'before: String' added to 'DesLibrary.symbols'
- Argument 'first: Int' added to 'DesLibrary.symbols'
- Argument 'last: Int' added to 'DesLibrary.symbols'
- Argument 'where: DesSymbolFilterInput' added to 'DesLibrary.symbols'

#### Fields

- Field 'edges' was added to object type 'DesFootprintConnection'
- Field 'nodes' was added to object type 'DesFootprintConnection'
- Field 'pageInfo' was added to object type 'DesFootprintConnection'
- Field 'totalCount' was added to object type 'DesFootprintConnection'
- Field 'cursor' was added to object type 'DesFootprintEdge'
- Field 'node' was added to object type 'DesFootprintEdge'
- Field 'edges' was added to object type 'DesSymbolConnection'
- Field 'nodes' was added to object type 'DesSymbolConnection'
- Field 'pageInfo' was added to object type 'DesSymbolConnection'
- Field 'totalCount' was added to object type 'DesSymbolConnection'
- Field 'cursor' was added to object type 'DesSymbolEdge'
- Field 'node' was added to object type 'DesSymbolEdge'
- Field 'errors' was added to object type 'DesUpgradeComponentsToLatestSymbolPayload'
- Field 'failedComponentIds' was added to object type 'DesUpgradeComponentsToLatestSymbolPayload'
- Field 'failedCount' was added to object type 'DesUpgradeComponentsToLatestSymbolPayload'
- Field 'totalProcessed' was added to object type 'DesUpgradeComponentsToLatestSymbolPayload'
- Field 'upgradedComponentIds' was added to object type 'DesUpgradeComponentsToLatestSymbolPayload'
- Field 'upgradedCount' was added to object type 'DesUpgradeComponentsToLatestSymbolPayload'
- Field 'createdBy' was added to object type 'DesComponent'
- Field 'footprints' was added to object type 'DesLibrary'
- Field 'symbols' was added to object type 'DesLibrary'

#### Input / Payload

- Input field 'comment' of type 'DesStringUpgradeOperationFilterInput' was added to input object type 'DesComponentUpgradeFilterInput'
- Input field 'description' of type 'DesStringUpgradeOperationFilterInput' was added to input object type 'DesComponentUpgradeFilterInput'
- Input field 'lifeCycleStateName' of type 'DesLifecycleStateUpgradeOperationFilterInput' was added to input object type 'DesComponentUpgradeFilterInput'
- Input field 'name' of type 'DesStringUpgradeOperationFilterInput' was added to input object type 'DesComponentUpgradeFilterInput'
- Input field 'and' of type '[DesFootprintFilterInput!]' was added to input object type 'DesFootprintFilterInput'
- Input field 'comment' of type 'StringOperationFilterInput' was added to input object type 'DesFootprintFilterInput'
- Input field 'description' of type 'StringOperationFilterInput' was added to input object type 'DesFootprintFilterInput'
- Input field 'name' of type 'StringOperationFilterInput' was added to input object type 'DesFootprintFilterInput'
- Input field 'or' of type '[DesFootprintFilterInput!]' was added to input object type 'DesFootprintFilterInput'
- Input field 'eq' of type 'String' was added to input object type 'DesLifecycleStateUpgradeOperationFilterInput'
- Input field 'in' of type '[String!]' was added to input object type 'DesLifecycleStateUpgradeOperationFilterInput'
- Input field 'neq' of type 'String' was added to input object type 'DesLifecycleStateUpgradeOperationFilterInput'
- Input field 'notIn' of type '[String!]' was added to input object type 'DesLifecycleStateUpgradeOperationFilterInput'
- Input field 'contains' of type 'String' was added to input object type 'DesStringUpgradeOperationFilterInput'
- Input field 'endsWith' of type 'String' was added to input object type 'DesStringUpgradeOperationFilterInput'
- Input field 'eq' of type 'String' was added to input object type 'DesStringUpgradeOperationFilterInput'
- Input field 'in' of type '[String!]' was added to input object type 'DesStringUpgradeOperationFilterInput'
- Input field 'neq' of type 'String' was added to input object type 'DesStringUpgradeOperationFilterInput'
- Input field 'notIn' of type '[String!]' was added to input object type 'DesStringUpgradeOperationFilterInput'
- Input field 'startsWith' of type 'String' was added to input object type 'DesStringUpgradeOperationFilterInput'
- Input field 'and' of type '[DesSymbolFilterInput!]' was added to input object type 'DesSymbolFilterInput'
- Input field 'comment' of type 'StringOperationFilterInput' was added to input object type 'DesSymbolFilterInput'
- Input field 'description' of type 'StringOperationFilterInput' was added to input object type 'DesSymbolFilterInput'
- Input field 'name' of type 'StringOperationFilterInput' was added to input object type 'DesSymbolFilterInput'
- Input field 'or' of type '[DesSymbolFilterInput!]' was added to input object type 'DesSymbolFilterInput'
- Input field 'componentFilter' of type 'DesComponentUpgradeFilterInput' was added to input object type 'DesUpgradeComponentsToLatestSymbolInput'
- Input field 'symbolId' of type 'ID!' was added to input object type 'DesUpgradeComponentsToLatestSymbolInput'

### Insights

#### 🔍 Query

- Field 'desWorkspaceInsInsightById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.desWorkspaceInsInsightById'
- Field 'desWorkspaceInsInsightByName' was added to object type 'Query'
- Argument 'name: String!' added to 'Query.desWorkspaceInsInsightByName'
- Field 'desWorkspaceInsInsights' was added to object type 'Query'
- Argument 'after: String' added to 'Query.desWorkspaceInsInsights'
- Argument 'before: String' added to 'Query.desWorkspaceInsInsights'
- Argument 'filter: DesWorkspaceInsInsightFilterInput' added to 'Query.desWorkspaceInsInsights'
- Argument 'first: Int' added to 'Query.desWorkspaceInsInsights'
- Argument 'last: Int' added to 'Query.desWorkspaceInsInsights'
- Argument 'sorting: DesWorkspaceInsOrderingInput' added to 'Query.desWorkspaceInsInsights'
- Field 'desWorkspaceInsInsightSeverities' was added to object type 'Query'
- Field 'desWorkspaceInsInsightSortingFields' was added to object type 'Query'
- Field 'desWorkspaceInsInsightStatuses' was added to object type 'Query'
- Field 'desWorkspaceInsInsightTypes' was added to object type 'Query'

#### ✏️ Mutation

- Field 'desWorkspaceInsInitializeInsightsIfRequired' was added to object type 'Mutation'
- Field 'desWorkspaceInsUpdateInsightById' was added to object type 'Mutation'
- Argument 'input: DesWorkspaceInsUpdateInsightByIdInput!' added to 'Mutation.desWorkspaceInsUpdateInsightById'
- Field 'desWorkspaceInsUpsertInsightByKey' was added to object type 'Mutation'
- Argument 'input: DesWorkspaceInsUpsertInsightByKeyInput!' added to 'Mutation.desWorkspaceInsUpsertInsightByKey'

#### Types

- Type 'DesWorkspaceInsInitializeInsightsIfRequiredPayload' was added
- Type 'DesWorkspaceInsInsight' was added
- Type 'DesWorkspaceInsInsightAssemblyVariantLink' was added
- Type 'DesWorkspaceInsInsightBomLink' was added
- Type 'DesWorkspaceInsInsightBomReleaseLink' was added
- Type 'DesWorkspaceInsInsightComponentLink' was added
- Type 'DesWorkspaceInsInsightComponentRevisionLink' was added
- Type 'DesWorkspaceInsInsightConsolidatedBomLink' was added
- Type 'DesWorkspaceInsInsightConsolidatedBomReleaseLink' was added
- Type 'DesWorkspaceInsInsightDataChangedAction' was added
- Type 'DesWorkspaceInsInsightEntityLinksChangedAction' was added
- Type 'DesWorkspaceInsInsightErrorPayload' was added
- Type 'DesWorkspaceInsInsightHistoryTransaction' was added
- Type 'DesWorkspaceInsInsightPartLink' was added
- Type 'DesWorkspaceInsInsightPartRequestLinkGql' was added
- Type 'DesWorkspaceInsInsightProjectLink' was added
- Type 'DesWorkspaceInsInsightsConnection' was added
- Object type 'DesWorkspaceInsInsightsConnection' has description 'A connection to a list of items.'
- Type 'DesWorkspaceInsInsightsEdge' was added
- Object type 'DesWorkspaceInsInsightsEdge' has description 'An edge in a connection.'
- Type 'DesWorkspaceInsInsightSeverityChangedAction' was added
- Type 'DesWorkspaceInsInsightStatusChangedAction' was added
- Type 'DesWorkspaceInsInsightTaskLinkGql' was added
- Type 'DesWorkspaceInsInsightTaskLinksChangedAction' was added
- Type 'DesWorkspaceInsRelatedEntities' was added
- Type 'DesWorkspaceInsRelatedTasks' was added
- Type 'DesWorkspaceInsUpdateInsightByIdPayload' was added
- Type 'DesWorkspaceInsUpsertInsightByKeyPayload' was added
- Type 'DesWorkspaceInsUserActionTimestamp' was added
- Type 'DesWorkspaceInsInsightHistoryAction' was added
- Member 'DesWorkspaceInsInsightSeverityChangedAction' was added to Union type 'DesWorkspaceInsInsightHistoryAction'
- Member 'DesWorkspaceInsInsightEntityLinksChangedAction' was added to Union type 'DesWorkspaceInsInsightHistoryAction'
- Member 'DesWorkspaceInsInsightStatusChangedAction' was added to Union type 'DesWorkspaceInsInsightHistoryAction'
- Member 'DesWorkspaceInsInsightTaskLinksChangedAction' was added to Union type 'DesWorkspaceInsInsightHistoryAction'
- Member 'DesWorkspaceInsInsightDataChangedAction' was added to Union type 'DesWorkspaceInsInsightHistoryAction'
- Type 'DesWorkspaceInsInsightFilterInput' was added
- Type 'DesWorkspaceInsInsightUserActionInput' was added
- Type 'DesWorkspaceInsOrderingInput' was added
- Type 'DesWorkspaceInsUpdateInsightByIdInput' was added
- Type 'DesWorkspaceInsUpsertInsightByKeyInput' was added
- Type 'DesWorkspaceInsUpsertInsightInput' was added

#### Fields

- Field 'errors' was added to object type 'DesWorkspaceInsInitializeInsightsIfRequiredPayload'
- Field 'isSuccess' was added to object type 'DesWorkspaceInsInitializeInsightsIfRequiredPayload'
- Field 'created' was added to object type 'DesWorkspaceInsInsight'
- Field 'data' was added to object type 'DesWorkspaceInsInsight'
- Field 'history' was added to object type 'DesWorkspaceInsInsight'
- Field 'id' was added to object type 'DesWorkspaceInsInsight'
- Field 'isAck' was added to object type 'DesWorkspaceInsInsight'
- Field 'name' was added to object type 'DesWorkspaceInsInsight'
- Field 'relatedEntities' was added to object type 'DesWorkspaceInsInsight'
- Field 'relatedTasks' was added to object type 'DesWorkspaceInsInsight'
- Field 'severity' was added to object type 'DesWorkspaceInsInsight'
- Field 'shortData' was added to object type 'DesWorkspaceInsInsight'
- Field 'status' was added to object type 'DesWorkspaceInsInsight'
- Field 'type' was added to object type 'DesWorkspaceInsInsight'
- Field 'updated' was added to object type 'DesWorkspaceInsInsight'
- Field 'created' was added to object type 'DesWorkspaceInsInsightAssemblyVariantLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightAssemblyVariantLink'
- Field 'created' was added to object type 'DesWorkspaceInsInsightBomLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightBomLink'
- Field 'created' was added to object type 'DesWorkspaceInsInsightBomReleaseLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightBomReleaseLink'
- Field 'created' was added to object type 'DesWorkspaceInsInsightComponentLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightComponentLink'
- Field 'created' was added to object type 'DesWorkspaceInsInsightComponentRevisionLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightComponentRevisionLink'
- Field 'created' was added to object type 'DesWorkspaceInsInsightConsolidatedBomLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightConsolidatedBomLink'
- Field 'created' was added to object type 'DesWorkspaceInsInsightConsolidatedBomReleaseLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightConsolidatedBomReleaseLink'
- Field 'newData' was added to object type 'DesWorkspaceInsInsightDataChangedAction'
- Field 'newShortData' was added to object type 'DesWorkspaceInsInsightDataChangedAction'
- Field 'oldData' was added to object type 'DesWorkspaceInsInsightDataChangedAction'
- Field 'oldShortData' was added to object type 'DesWorkspaceInsInsightDataChangedAction'
- Field 'newEntities' was added to object type 'DesWorkspaceInsInsightEntityLinksChangedAction'
- Field 'removedEntities' was added to object type 'DesWorkspaceInsInsightEntityLinksChangedAction'
- Field 'message' was added to object type 'DesWorkspaceInsInsightErrorPayload'
- Field 'actions' was added to object type 'DesWorkspaceInsInsightHistoryTransaction'
- Field 'created' was added to object type 'DesWorkspaceInsInsightHistoryTransaction'
- Field 'created' was added to object type 'DesWorkspaceInsInsightPartLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightPartLink'
- Field 'created' was added to object type 'DesWorkspaceInsInsightPartRequestLinkGql'
- Field 'id' was added to object type 'DesWorkspaceInsInsightPartRequestLinkGql'
- Field 'created' was added to object type 'DesWorkspaceInsInsightProjectLink'
- Field 'id' was added to object type 'DesWorkspaceInsInsightProjectLink'
- Field 'edges' was added to object type 'DesWorkspaceInsInsightsConnection'
- Field 'nodes' was added to object type 'DesWorkspaceInsInsightsConnection'
- Field 'pageInfo' was added to object type 'DesWorkspaceInsInsightsConnection'
- Field 'totalCount' was added to object type 'DesWorkspaceInsInsightsConnection'
- Field 'cursor' was added to object type 'DesWorkspaceInsInsightsEdge'
- Field 'node' was added to object type 'DesWorkspaceInsInsightsEdge'
- Field 'newSeverity' was added to object type 'DesWorkspaceInsInsightSeverityChangedAction'
- Field 'oldSeverity' was added to object type 'DesWorkspaceInsInsightSeverityChangedAction'
- Field 'newStatus' was added to object type 'DesWorkspaceInsInsightStatusChangedAction'
- Field 'oldStatus' was added to object type 'DesWorkspaceInsInsightStatusChangedAction'
- Field 'created' was added to object type 'DesWorkspaceInsInsightTaskLinkGql'
- Field 'id' was added to object type 'DesWorkspaceInsInsightTaskLinkGql'
- Field 'newTasks' was added to object type 'DesWorkspaceInsInsightTaskLinksChangedAction'
- Field 'assemblyVariants' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'bomReleases' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'boms' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'componentRevisions' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'components' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'consolidatedBomReleases' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'consolidatedBoms' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'parts' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'projects' was added to object type 'DesWorkspaceInsRelatedEntities'
- Field 'partRequests' was added to object type 'DesWorkspaceInsRelatedTasks'
- Field 'tasks' was added to object type 'DesWorkspaceInsRelatedTasks'
- Field 'errors' was added to object type 'DesWorkspaceInsUpdateInsightByIdPayload'
- Field 'insight' was added to object type 'DesWorkspaceInsUpdateInsightByIdPayload'
- Field 'errors' was added to object type 'DesWorkspaceInsUpsertInsightByKeyPayload'
- Field 'insight' was added to object type 'DesWorkspaceInsUpsertInsightByKeyPayload'
- Field 'timestamp' was added to object type 'DesWorkspaceInsUserActionTimestamp'
- Field 'userId' was added to object type 'DesWorkspaceInsUserActionTimestamp'

#### Input / Payload

- Input field 'linkedEntities' of type '[ID!]' was added to input object type 'DesWorkspaceInsInsightFilterInput'
- Input field 'name' of type '[String!]' was added to input object type 'DesWorkspaceInsInsightFilterInput'
- Input field 'severity' of type '[String!]' was added to input object type 'DesWorkspaceInsInsightFilterInput'
- Input field 'status' of type '[String!]' was added to input object type 'DesWorkspaceInsInsightFilterInput'
- Input field 'type' of type '[String!]' was added to input object type 'DesWorkspaceInsInsightFilterInput'
- Input field 'isAck' of type 'Boolean' was added to input object type 'DesWorkspaceInsInsightUserActionInput'
- Input field 'newTaskIds' of type '[ID!]' was added to input object type 'DesWorkspaceInsInsightUserActionInput'
- Input field 'status' of type 'String' was added to input object type 'DesWorkspaceInsInsightUserActionInput'
- Input field 'field' of type 'String' was added to input object type 'DesWorkspaceInsOrderingInput'
- Input field 'isDesc' of type 'Boolean' was added to input object type 'DesWorkspaceInsOrderingInput'
- Input field 'id' of type 'ID!' was added to input object type 'DesWorkspaceInsUpdateInsightByIdInput'
- Input field 'userAction' of type 'DesWorkspaceInsInsightUserActionInput!' was added to input object type 'DesWorkspaceInsUpdateInsightByIdInput'
- Input field 'insight' of type 'DesWorkspaceInsUpsertInsightInput!' was added to input object type 'DesWorkspaceInsUpsertInsightByKeyInput'
- Input field 'insightDedupKey' of type 'String!' was added to input object type 'DesWorkspaceInsUpsertInsightByKeyInput'
- Input field 'data' of type 'JSON!' was added to input object type 'DesWorkspaceInsUpsertInsightInput'
- Input field 'relatedEntityIds' of type '[ID!]!' was added to input object type 'DesWorkspaceInsUpsertInsightInput'
- Input field 'severity' of type 'String!' was added to input object type 'DesWorkspaceInsUpsertInsightInput'
- Input field 'shortData' of type 'JSON!' was added to input object type 'DesWorkspaceInsUpsertInsightInput'
- Input field 'status' of type 'String' was added to input object type 'DesWorkspaceInsUpsertInsightInput'
- Input field 'type' of type 'String!' was added to input object type 'DesWorkspaceInsUpsertInsightInput'

### Supply

#### 🔍 Query

- Field 'supRefDesignByIds' was added to object type 'Query'
- Argument 'ids: [ID!]!' added to 'Query.supRefDesignByIds'


