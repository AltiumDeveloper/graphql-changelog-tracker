# gateway-changelog-18-Aug-2026

## ✅ Non-Breaking Changes (17)

### Design

#### Types

- Type 'DesignDataCombinedErcCheckResult' was added
- Object type 'DesignDataCombinedErcCheckResult' has description '**Experimental** Represents the result of a single ERC check.'
- Type 'DesignDataCombinedErcExecution' was added
- Object type 'DesignDataCombinedErcExecution' has description '**Experimental** Represents the combined custom and default ERC results for a design revision.'

#### Arguments

- Argument 'designId: ID!' added to 'RuleCheckExecutionQueries.byDesignIdCombinedErc'
- Argument 'revisionId: String' added to 'RuleCheckExecutionQueries.byDesignIdCombinedErc'

#### Fields

- Field 'customRuleCheck' was added to object type 'DesignDataCombinedErcCheckResult'
- Field 'name' was added to object type 'DesignDataCombinedErcCheckResult'
- Field 'origin' was added to object type 'DesignDataCombinedErcCheckResult'
- Field 'outcome' was added to object type 'DesignDataCombinedErcCheckResult'
- Field 'ruleCheckType' was added to object type 'DesignDataCombinedErcCheckResult'
- Field 'violations' was added to object type 'DesignDataCombinedErcCheckResult'
- Field 'designId' was added to object type 'DesignDataCombinedErcExecution'
- Field 'results' was added to object type 'DesignDataCombinedErcExecution'
- Field 'revisionId' was added to object type 'DesignDataCombinedErcExecution'
- Field 'status' was added to object type 'DesignDataCombinedErcExecution'
- Field 'byDesignIdCombinedErc' was added to object type 'RuleCheckExecutionQueries'


