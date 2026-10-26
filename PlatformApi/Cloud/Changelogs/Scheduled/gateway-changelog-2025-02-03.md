# gateway-changelog-03-Feb-2025

## ✅ Non-Breaking Changes (83)

### Procurement

#### ✏️ Mutation

- Field 'bomChangeBomReleaseLifecycleState' was added to object type 'Mutation'
- Argument 'input: BomChangeBomReleaseLifecycleStateInput!' added to 'Mutation.bomChangeBomReleaseLifecycleState'

#### Types

- Type 'BomChangeBomReleaseLifecycleStatePayload' was added
- Type 'BomDesignRevisionSource' was added
- 'BomDesignRevisionSource' object implements 'BomSource' interface
- Object type 'BomDesignRevisionSource' has description 'Describes the source design revision used to create the current BOM.'
- Type 'BomHealthCheck' was added
- Object type 'BomHealthCheck' has description 'Health check description.'
- Type 'BomHealthCheckCategory' was added
- Object type 'BomHealthCheckCategory' has description 'Information about the health check category (e.g., *Supply Chain*, *Manufacturer Lifecycles*).'
- Type 'BomHealthCheckProvider' was added
- Object type 'BomHealthCheckProvider' has description 'Information about the health check provider.'
- Type 'BomIssue' was added
- Object type 'BomIssue' has description 'Issue details.'
- Type 'BomLifecycleStateTransitionNotApplicableError' was added
- 'BomLifecycleStateTransitionNotApplicableError' object implements 'BomError' interface
- Type 'BomSnapshotSource' was added
- 'BomSnapshotSource' object implements 'BomSource' interface
- Object type 'BomSnapshotSource' has description 'Describes the source BOM snapshot used to create the current BOM.'
- Type 'BomError' was added
- Type 'BomChangeBomReleaseLifecycleStateError' was added
- Member 'BomLifecycleStateTransitionNotApplicableError' was added to Union type 'BomChangeBomReleaseLifecycleStateError'
- Type 'BomHealthCheckSeverity' was added
- Enum value 'FATAL' was added to enum 'BomHealthCheckSeverity'
- Enum value 'ERROR' was added to enum 'BomHealthCheckSeverity'
- Enum value 'WARNING' was added to enum 'BomHealthCheckSeverity'
- Enum value 'INFORMATION' was added to enum 'BomHealthCheckSeverity'
- Enum value 'SILENT' was added to enum 'BomHealthCheckSeverity'
- Type 'BomIssueSeverity' was added
- Enum value 'FATAL' was added to enum 'BomIssueSeverity'
- Enum value 'ERROR' was added to enum 'BomIssueSeverity'
- Enum value 'WARNING' was added to enum 'BomIssueSeverity'
- Enum value 'INFORMATION' was added to enum 'BomIssueSeverity'
- Type 'BomChangeBomReleaseLifecycleStateInput' was added

#### Fields

- Field 'bomRelease' was added to object type 'BomChangeBomReleaseLifecycleStatePayload'
- Field 'errors' was added to object type 'BomChangeBomReleaseLifecycleStatePayload'
- Field 'designId' was added to object type 'BomDesignRevisionSource'
- Field 'quantity' was added to object type 'BomDesignRevisionSource'
- Field 'sourceRevisionId' was added to object type 'BomDesignRevisionSource'
- Field 'variantName' was added to object type 'BomDesignRevisionSource'
- Field 'category' was added to object type 'BomHealthCheck'
- Field 'description' was added to object type 'BomHealthCheck'
- Field 'group' was added to object type 'BomHealthCheck'
- Field 'healthCheckId' was added to object type 'BomHealthCheck'
- Field 'howToFix' was added to object type 'BomHealthCheck'
- Field 'label' was added to object type 'BomHealthCheck'
- Field 'provider' was added to object type 'BomHealthCheck'
- Field 'severity' was added to object type 'BomHealthCheck'
- Field 'categoryId' was added to object type 'BomHealthCheckCategory'
- Field 'name' was added to object type 'BomHealthCheckCategory'
- Field 'name' was added to object type 'BomHealthCheckProvider'
- Field 'providerId' was added to object type 'BomHealthCheckProvider'
- Field 'description' was added to object type 'BomIssue'
- Field 'healthCheck' was added to object type 'BomIssue'
- Field 'healthcheckDefinitionId' was added to object type 'BomIssue'
- Field 'BomIssue.healthcheckDefinitionId' is deprecated
- Directive 'deprecated' was added to 'BomIssue.healthcheckDefinitionId'
- Field 'howToFix' was added to object type 'BomIssue'
- Field 'severity' was added to object type 'BomIssue'
- Field 'waived' was added to object type 'BomIssue'
- Field 'message' was added to object type 'BomLifecycleStateTransitionNotApplicableError'
- Field 'bomId' was added to object type 'BomSnapshotSource'
- Field 'quantity' was added to object type 'BomSnapshotSource'
- Field 'snapshotId' was added to object type 'BomSnapshotSource'
- Field 'message' was added to interface 'BomError'
- Field 'issues' was added to object type 'BomItem'
- Field 'issues' was added to object type 'BomItemAlternate'
- Field 'issues' was added to object type 'BomItemSubstitute'
- Field 'healthChecks' was added to object type 'BomRelease'
- Field 'incompleteHealthChecks' was added to object type 'BomRelease'
- Field 'issues' was added to object type 'BomRelease'
- Field 'lifeCycleDefinitionId' was added to object type 'BomRelease'
- Field 'lifeCycleStateId' was added to object type 'BomRelease'
- Field 'healthChecks' was added to object type 'BomWip'
- Field 'incompleteHealthChecks' was added to object type 'BomWip'
- Field 'issues' was added to object type 'BomWip'
- Field 'issues' was added to interface 'Bom'
- Field 'healthChecks' was added to interface 'Bom'
- Field 'incompleteHealthChecks' was added to interface 'Bom'
- Field 'issues' was added to interface 'BomItemElement'

#### Input / Payload

- Input field 'bomId' of type 'String!' was added to input object type 'BomChangeBomReleaseLifecycleStateInput'
- Input field 'releaseId' of type 'String!' was added to input object type 'BomChangeBomReleaseLifecycleStateInput'
- Input field 'transitionId' of type 'String!' was added to input object type 'BomChangeBomReleaseLifecycleStateInput'


