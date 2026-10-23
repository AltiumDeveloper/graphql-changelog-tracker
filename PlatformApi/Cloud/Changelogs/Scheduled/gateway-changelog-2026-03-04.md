# gateway-changelog-04-Mar-2026

## 🔴 Breaking Changes (1)

### Platform

#### Input / Payload

- Input field 'sdmReferenceDesignator' of type 'String!' was added to input object type 'SolBldScaffoldingBySdmInput'


---

## ✅ Non-Breaking Changes (218)

### Common

#### ✏️ Mutation

- Field 'registerDesignUpload' was added to object type 'Mutation'
- Argument 'input: DesignDataDesignUploadRegistrationInput_Preview!' added to 'Mutation.registerDesignUpload'

### Design

#### 🔍 Query

- Field 'design' was added to object type 'Query'

#### Types

- Type 'DesignData_Preview' was added
- Object type 'DesignData_Preview' has description '**Experimental** Represents the design data extracted from a design project.'
- Type 'DesignDataComponent_Preview' was added
- Object type 'DesignDataComponent_Preview' has description '**Experimental** Represents a component in the design.'
- Type 'DesignDataComponentParameter_Preview' was added
- Object type 'DesignDataComponentParameter_Preview' has description '**Experimental** Represents a parameter associated with a component.'
- Type 'DesignDataConfiguration_Preview' was added
- Object type 'DesignDataConfiguration_Preview' has description '**Experimental** Represents the configuration settings for a design.'
- Type 'DesignDataCustomCheckConfigurationItem_Preview' was added
- Object type 'DesignDataCustomCheckConfigurationItem_Preview' has description '**Experimental** Represents a custom check configuration item in the design.'
- Type 'DesignDataDocument_Preview' was added
- Object type 'DesignDataDocument_Preview' has description '**Experimental** Represents a document within the design project.'
- Type 'DesignDataGeneration_Preview' was added
- Object type 'DesignDataGeneration_Preview' has description '**Experimental** Represents a design data generation process and its result.'
- Type 'DesignDataLine_Preview' was added
- Object type 'DesignDataLine_Preview' has description '**Experimental** Represents a line segment in the design.'
- Type 'DesignDataLocation_Preview' was added
- Object type 'DesignDataLocation_Preview' has description '**Experimental** Represents a 2D coordinate location.'
- Type 'DesignDataNet_Preview' was added
- Object type 'DesignDataNet_Preview' has description '**Experimental** Represents a net (electrical connection) in the design.'
- Type 'DesignDataNetItem_Preview' was added
- Object type 'DesignDataNetItem_Preview' has description '**Experimental** Represents an item belonging to a net.'
- Type 'DesignDataNetParameter_Preview' was added
- Object type 'DesignDataNetParameter_Preview' has description '**Experimental** Represents a parameter associated with a net.'
- Type 'DesignDataPart_Preview' was added
- Object type 'DesignDataPart_Preview' has description '**Experimental** Represents a part within a component.'
- Type 'DesignDataPartParameter_Preview' was added
- Object type 'DesignDataPartParameter_Preview' has description '**Experimental** Represents a parameter associated with a part.'
- Type 'DesignDataPin_Preview' was added
- Object type 'DesignDataPin_Preview' has description '**Experimental** Represents a pin on a component or part.'
- Type 'DesignDataRectangle_Preview' was added
- Object type 'DesignDataRectangle_Preview' has description '**Experimental** Represents an axis-aligned rectangle.'
- Type 'DesignDataVariant_Preview' was added
- Object type 'DesignDataVariant_Preview' has description '**Experimental** Represents a project variant in the design.'
- Type 'DesignDataVariation_Preview' was added
- Object type 'DesignDataVariation_Preview' has description '**Experimental** Represents a variation applied to a component within a project variant.'
- Type 'DesignPreviewQueries' was added
- Object type 'DesignPreviewQueries' has description '**Experimental** Entry point for the experimental design preview queries, which may change or be removed without deprecation.'
- Type 'DesignQueries' was added
- Object type 'DesignQueries' has description '**Experimental** Design related queries entry point.'
- Type 'RuleCheck_Preview' was added
- Object type 'RuleCheck_Preview' has description '**Experimental** Represents a rule check definition.'
- Type 'RuleCheckExecution_Preview' was added
- Object type 'RuleCheckExecution_Preview' has description '**Experimental** Represents the execution of rule checks against a design.'
- Type 'RuleViolation_Preview' was added
- Object type 'RuleViolation_Preview' has description '**Experimental** Represents a violation detected during a rule check execution.'
- Type 'RuleViolationRelatedObject_Preview' was added
- Object type 'RuleViolationRelatedObject_Preview' has description '**Experimental** Represents a design object related to a rule violation.'
- Type 'DesignDataErrorReportLevel_Preview' was added
- Enum value 'ERROR' was added to enum 'DesignDataErrorReportLevel_Preview'
- Enum value 'FATAL' was added to enum 'DesignDataErrorReportLevel_Preview'
- Enum value 'NO_REPORT' was added to enum 'DesignDataErrorReportLevel_Preview'
- Enum value 'WARNING' was added to enum 'DesignDataErrorReportLevel_Preview'
- Object type 'DesignDataErrorReportLevel_Preview' has description '**Experimental** Represents the error level used for reporting rule check violations.'
- Type 'DesignDataGenerationStatus_Preview' was added
- Enum value 'COMPLETED' was added to enum 'DesignDataGenerationStatus_Preview'
- Enum value 'FAILED' was added to enum 'DesignDataGenerationStatus_Preview'
- Enum value 'IN_PROGRESS' was added to enum 'DesignDataGenerationStatus_Preview'
- Enum value 'PENDING' was added to enum 'DesignDataGenerationStatus_Preview'
- Object type 'DesignDataGenerationStatus_Preview' has description '**Experimental** Represents the status of the design data generation.'
- Type 'DesignDataObjectType_Preview' was added
- Enum value 'COMPONENT' was added to enum 'DesignDataObjectType_Preview'
- Enum value 'DOCUMENT' was added to enum 'DesignDataObjectType_Preview'
- Enum value 'LINE' was added to enum 'DesignDataObjectType_Preview'
- Enum value 'NET' was added to enum 'DesignDataObjectType_Preview'
- Enum value 'NET_ITEM' was added to enum 'DesignDataObjectType_Preview'
- Enum value 'PART' was added to enum 'DesignDataObjectType_Preview'
- Enum value 'PIN' was added to enum 'DesignDataObjectType_Preview'
- Enum value 'VARIANT' was added to enum 'DesignDataObjectType_Preview'
- Object type 'DesignDataObjectType_Preview' has description '**Experimental** Represents the type of a design object.'
- Type 'DesignDataVariationKind_Preview' was added
- Enum value 'ALTERNATE' was added to enum 'DesignDataVariationKind_Preview'
- Enum value 'NONE' was added to enum 'DesignDataVariationKind_Preview'
- Enum value 'NOT_FITTED' was added to enum 'DesignDataVariationKind_Preview'
- Object type 'DesignDataVariationKind_Preview' has description '**Experimental** Represents the kind of variation applied to a component.'
- Type 'RuleCheckExecutionStatus_Preview' was added
- Enum value 'COMPLETED' was added to enum 'RuleCheckExecutionStatus_Preview'
- Enum value 'FAILED' was added to enum 'RuleCheckExecutionStatus_Preview'
- Enum value 'PENDING' was added to enum 'RuleCheckExecutionStatus_Preview'
- Enum value 'RUNNING' was added to enum 'RuleCheckExecutionStatus_Preview'
- Object type 'RuleCheckExecutionStatus_Preview' has description '**Experimental** Represents the status of a rule check execution.'
- Type 'RuleCheckType_Preview' was added
- Enum value 'DRC' was added to enum 'RuleCheckType_Preview'
- Enum value 'ERC' was added to enum 'RuleCheckType_Preview'
- Object type 'RuleCheckType_Preview' has description '**Experimental** Represents the type of a rule check.'
- Type 'RuleFailureCode_Preview' was added
- Enum value 'INTERNAL_SERVER_ERROR' was added to enum 'RuleFailureCode_Preview'
- Enum value 'INVALID_RETURN_VALUE_FROM_USER_SCRIPT' was added to enum 'RuleFailureCode_Preview'
- Enum value 'UNHANDLED_EXCEPTION_FROM_USER_SCRIPT' was added to enum 'RuleFailureCode_Preview'
- Object type 'RuleFailureCode_Preview' has description '**Experimental** Represents the reason a rule check execution failed.'
- Type 'RuleViolationErrorReportLevel_Preview' was added
- Enum value 'ERROR' was added to enum 'RuleViolationErrorReportLevel_Preview'
- Enum value 'FATAL' was added to enum 'RuleViolationErrorReportLevel_Preview'
- Enum value 'SKIPPED' was added to enum 'RuleViolationErrorReportLevel_Preview'
- Enum value 'WARNING' was added to enum 'RuleViolationErrorReportLevel_Preview'
- Object type 'RuleViolationErrorReportLevel_Preview' has description '**Experimental** Represents the severity level of a rule violation.'
- Type 'DesignDataDesignUploadRegistrationInput_Preview' was added
- Object type 'DesignDataDesignUploadRegistrationInput_Preview' has description '**Experimental** Represents input value for generate design data mutation.'

#### Arguments

- Argument 'designGrid: ID!' added to 'DesignPreviewQueries.latestGeneration'
- Argument 'designGrid: ID!' added to 'DesignPreviewQueries.latestGenerationByFileId'
- Argument 'fileId: String!' added to 'DesignPreviewQueries.latestGenerationByFileId'
- Argument 'id: ID!' added to 'DesignPreviewQueries.ruleCheckById'
- Argument 'designId: ID!' added to 'DesignPreviewQueries.ruleCheckLatestExecution'
- Argument 'ids: [ID!]!' added to 'DesignPreviewQueries.ruleChecksByIds'

#### Fields

- Field 'configuration' was added to object type 'DesignData_Preview'
- Field 'documents' was added to object type 'DesignData_Preview'
- Field 'variants' was added to object type 'DesignData_Preview'
- Field 'boundingRectangle' was added to object type 'DesignDataComponent_Preview'
- Field 'location' was added to object type 'DesignDataComponent_Preview'
- Field 'logicalDesignator' was added to object type 'DesignDataComponent_Preview'
- Field 'parameters' was added to object type 'DesignDataComponent_Preview'
- Field 'parts' was added to object type 'DesignDataComponent_Preview'
- Field 'physicalDesignator' was added to object type 'DesignDataComponent_Preview'
- Field 'uniqueId' was added to object type 'DesignDataComponent_Preview'
- Field 'name' was added to object type 'DesignDataComponentParameter_Preview'
- Field 'value' was added to object type 'DesignDataComponentParameter_Preview'
- Field 'customChecks' was added to object type 'DesignDataConfiguration_Preview'
- Field 'customCheckId' was added to object type 'DesignDataCustomCheckConfigurationItem_Preview'
- Field 'errorReportLevel' was added to object type 'DesignDataCustomCheckConfigurationItem_Preview'
- Field 'name' was added to object type 'DesignDataCustomCheckConfigurationItem_Preview'
- Field 'boundingRectangle' was added to object type 'DesignDataDocument_Preview'
- Field 'components' was added to object type 'DesignDataDocument_Preview'
- Field 'documentId' was added to object type 'DesignDataDocument_Preview'
- Field 'location' was added to object type 'DesignDataDocument_Preview'
- Field 'nets' was added to object type 'DesignDataDocument_Preview'
- Field 'designData' was added to object type 'DesignDataGeneration_Preview'
- Field 'designId' was added to object type 'DesignDataGeneration_Preview'
- Field 'message' was added to object type 'DesignDataGeneration_Preview'
- Field 'status' was added to object type 'DesignDataGeneration_Preview'
- Field 'boundingRectangle' was added to object type 'DesignDataLine_Preview'
- Field 'location' was added to object type 'DesignDataLine_Preview'
- Field 'uniqueId' was added to object type 'DesignDataLine_Preview'
- Field 'x' was added to object type 'DesignDataLocation_Preview'
- Field 'y' was added to object type 'DesignDataLocation_Preview'
- Field 'boundingRectangle' was added to object type 'DesignDataNet_Preview'
- Field 'calculatedNetName' was added to object type 'DesignDataNet_Preview'
- Field 'color' was added to object type 'DesignDataNet_Preview'
- Field 'lines' was added to object type 'DesignDataNet_Preview'
- Field 'location' was added to object type 'DesignDataNet_Preview'
- Field 'name' was added to object type 'DesignDataNet_Preview'
- Field 'netItems' was added to object type 'DesignDataNet_Preview'
- Field 'parameters' was added to object type 'DesignDataNet_Preview'
- Field 'pins' was added to object type 'DesignDataNet_Preview'
- Field 'uniqueId' was added to object type 'DesignDataNet_Preview'
- Field 'boundingRectangle' was added to object type 'DesignDataNetItem_Preview'
- Field 'kind' was added to object type 'DesignDataNetItem_Preview'
- Field 'location' was added to object type 'DesignDataNetItem_Preview'
- Field 'portName' was added to object type 'DesignDataNetItem_Preview'
- Field 'uniqueId' was added to object type 'DesignDataNetItem_Preview'
- Field 'name' was added to object type 'DesignDataNetParameter_Preview'
- Field 'value' was added to object type 'DesignDataNetParameter_Preview'
- Field 'boundingRectangle' was added to object type 'DesignDataPart_Preview'
- Field 'itemGuid' was added to object type 'DesignDataPart_Preview'
- Field 'location' was added to object type 'DesignDataPart_Preview'
- Field 'logicalDesignator' was added to object type 'DesignDataPart_Preview'
- Field 'parameters' was added to object type 'DesignDataPart_Preview'
- Field 'physicalDesignator' was added to object type 'DesignDataPart_Preview'
- Field 'pins' was added to object type 'DesignDataPart_Preview'
- Field 'revisionGuid' was added to object type 'DesignDataPart_Preview'
- Field 'uniqueId' was added to object type 'DesignDataPart_Preview'
- Field 'variantId' was added to object type 'DesignDataPart_Preview'
- Field 'variationKind' was added to object type 'DesignDataPart_Preview'
- Field 'vaultGuid' was added to object type 'DesignDataPart_Preview'
- Field 'name' was added to object type 'DesignDataPartParameter_Preview'
- Field 'value' was added to object type 'DesignDataPartParameter_Preview'
- Field 'boundingRectangle' was added to object type 'DesignDataPin_Preview'
- Field 'location' was added to object type 'DesignDataPin_Preview'
- Field 'name' was added to object type 'DesignDataPin_Preview'
- Field 'number' was added to object type 'DesignDataPin_Preview'
- Field 'uniqueId' was added to object type 'DesignDataPin_Preview'
- Field 'bottom' was added to object type 'DesignDataRectangle_Preview'
- Field 'left' was added to object type 'DesignDataRectangle_Preview'
- Field 'right' was added to object type 'DesignDataRectangle_Preview'
- Field 'top' was added to object type 'DesignDataRectangle_Preview'
- Field 'name' was added to object type 'DesignDataVariant_Preview'
- Field 'variantGuid' was added to object type 'DesignDataVariant_Preview'
- Field 'variations' was added to object type 'DesignDataVariant_Preview'
- Field 'alternatePart' was added to object type 'DesignDataVariation_Preview'
- Field 'componentDesignator' was added to object type 'DesignDataVariation_Preview'
- Field 'componentUniqueId' was added to object type 'DesignDataVariation_Preview'
- Field 'kind' was added to object type 'DesignDataVariation_Preview'
- Field 'latestGeneration' was added to object type 'DesignPreviewQueries'
- Field 'latestGenerationByFileId' was added to object type 'DesignPreviewQueries'
- Field 'ruleCheckById' was added to object type 'DesignPreviewQueries'
- Field 'ruleCheckLatestExecution' was added to object type 'DesignPreviewQueries'
- Field 'ruleChecksByAuth' was added to object type 'DesignPreviewQueries'
- Field 'ruleChecksByIds' was added to object type 'DesignPreviewQueries'
- Field 'preview' was added to object type 'DesignQueries'
- Field 'defaultErrorReportLevel' was added to object type 'RuleCheck_Preview'
- Field 'description' was added to object type 'RuleCheck_Preview'
- Field 'id' was added to object type 'RuleCheck_Preview'
- Field 'name' was added to object type 'RuleCheck_Preview'
- Field 'type' was added to object type 'RuleCheck_Preview'
- Field 'designId' was added to object type 'RuleCheckExecution_Preview'
- Field 'status' was added to object type 'RuleCheckExecution_Preview'
- Field 'violations' was added to object type 'RuleCheckExecution_Preview'
- Field 'boundingRectangle' was added to object type 'RuleViolation_Preview'
- Field 'documentId' was added to object type 'RuleViolation_Preview'
- Field 'errorReportLevel' was added to object type 'RuleViolation_Preview'
- Field 'errorText' was added to object type 'RuleViolation_Preview'
- Field 'location' was added to object type 'RuleViolation_Preview'
- Field 'relatedObjects' was added to object type 'RuleViolation_Preview'
- Field 'ruleDescription' was added to object type 'RuleViolation_Preview'
- Field 'ruleFailureCode' was added to object type 'RuleViolation_Preview'
- Field 'ruleName' was added to object type 'RuleViolation_Preview'
- Field 'ruleType' was added to object type 'RuleViolation_Preview'
- Field 'boundingRectangle' was added to object type 'RuleViolationRelatedObject_Preview'
- Field 'designator' was added to object type 'RuleViolationRelatedObject_Preview'
- Field 'documentId' was added to object type 'RuleViolationRelatedObject_Preview'
- Field 'location' was added to object type 'RuleViolationRelatedObject_Preview'
- Field 'name' was added to object type 'RuleViolationRelatedObject_Preview'
- Field 'type' was added to object type 'RuleViolationRelatedObject_Preview'
- Field 'uniqueId' was added to object type 'RuleViolationRelatedObject_Preview'

#### Input / Payload

- Input field 'designId' of type 'ID!' was added to input object type 'DesignDataDesignUploadRegistrationInput_Preview'
- Input field 'fileId' of type 'String!' was added to input object type 'DesignDataDesignUploadRegistrationInput_Preview'


