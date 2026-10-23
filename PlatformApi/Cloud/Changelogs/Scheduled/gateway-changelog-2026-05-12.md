# gateway-changelog-12-May-2026

## 🔴 Breaking Changes (5)

### Common

#### Directives

- Directive 'listSize' was removed

### Design

#### Fields

- Field 'newComponentId' was removed from object type 'DesAddComponentPartChoicesPayload'
- Field 'newComponentId' was removed from object type 'DesRemoveComponentPartChoicesPayload'

#### Input / Payload

- Input field 'withRevisionControl' was removed from input object type 'DesAddComponentPartChoicesInput'
- Input field 'withRevisionControl' was removed from input object type 'DesRemoveComponentPartChoicesInput'


---

## ✅ Non-Breaking Changes (31)

### Customization

#### Fields

- Field 'supportedAssignmentTypes' was added to object type 'GloCusExtensionPoint'

### Design

#### Types

- Type 'DesignDataDifferentialPair_Preview' was added
- Object type 'DesignDataDifferentialPair_Preview' has description '**Experimental** Represents a differential pair and its associated positive and negative nets.'
- Type 'DesignDataPinParameter_Preview' was added
- Object type 'DesignDataPinParameter_Preview' has description '**Experimental** Represents a parameter associated with a pin.'
- Type 'DesignDataRule_Preview' was added
- Object type 'DesignDataRule_Preview' has description '**Experimental** Represents a rule associated with a net.'
- Type 'DesignDataRuleAttribute_Preview' was added
- Object type 'DesignDataRuleAttribute_Preview' has description '**Experimental** Represents an attribute associated with a rule.'

#### Fields

- Field 'negativeNet' was added to object type 'DesignDataDifferentialPair_Preview'
- Field 'positiveNet' was added to object type 'DesignDataDifferentialPair_Preview'
- Field 'name' was added to object type 'DesignDataPinParameter_Preview'
- Field 'value' was added to object type 'DesignDataPinParameter_Preview'
- Field 'attributes' was added to object type 'DesignDataRule_Preview'
- Field 'name' was added to object type 'DesignDataRule_Preview'
- Field 'name' was added to object type 'DesignDataRuleAttribute_Preview'
- Field 'value' was added to object type 'DesignDataRuleAttribute_Preview'
- Field 'componentId' was added to object type 'DesAddComponentPartChoicesPayload'
- Field 'comment' was added to object type 'DesignDataComponent_Preview'
- Field 'description' was added to object type 'DesignDataComponent_Preview'
- Field 'tagTypes' was added to object type 'DesignDataComponent_Preview'
- Field 'diffPair' was added to object type 'DesignDataNet_Preview'
- Field 'netClasses' was added to object type 'DesignDataNet_Preview'
- Field 'rules' was added to object type 'DesignDataNet_Preview'
- Field 'description' was added to object type 'DesignDataPin_Preview'
- Field 'electricalType' was added to object type 'DesignDataPin_Preview'
- Field 'functions' was added to object type 'DesignDataPin_Preview'
- Field 'parameters' was added to object type 'DesignDataPin_Preview'
- Field 'propagationDelay' was added to object type 'DesignDataPin_Preview'
- Field 'componentId' was added to object type 'DesRemoveComponentPartChoicesPayload'

### Library Management

#### Input / Payload

- Input field 'partSourceId' of type 'String' was added to input object type 'DesPartChoiceInput'


