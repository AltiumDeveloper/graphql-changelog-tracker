# gateway-changelog-18-Aug-2025

## 🔴 Breaking Changes (10)

### Common

#### 🔍 Query

- Field 'nodes' was removed from object type 'Query'

#### Types

- Type 'MultiplierPath' was removed

#### Directives

- Directive 'delegate' was removed
- Directive 'skipWhenNull' was removed
- Directive 'source' was removed

### Platform

#### Fields

- Field 'esdDocuments' was removed from object type 'SolSolution'
- Field 'softwareProjects' was removed from object type 'SolSolution'
- Field 'SolSolution.hardwareProjects' changed type from '[DesProject!]!' to '[DesProject]!'

### Renesas (preview)

#### Fields

- Field 'softwareProject' was removed from object type 'SftDevCfgDeviceConfiguration'
- Field 'deviceConfiguration' was removed from object type 'SftSoftwareProject'


---

## ⚠️ Dangerous Changes (1)

### Design

#### Arguments

- Argument 'isDirectLink: Boolean!' (with default value) added to 'DesProject.previewUrl'


---

## ✅ Non-Breaking Changes (27)

### Common

#### Types

- Type 'Any' was added
- Type 'Map' was added
- Type 'Time' was added

### Design

#### ✏️ Mutation

- Field 'desUpdateComponentSymbol' was added to object type 'Mutation'
- Argument 'input: DesUpdateComponentSymbolInput!' added to 'Mutation.desUpdateComponentSymbol'

#### Types

- Type 'DesComponentType' was added
- 'DesComponentType' object implements 'Node' interface
- Object type 'DesComponentType' has description 'Represents a component type classification in the component library.'
- Type 'DesUpdateComponentSymbolPayload' was added
- Object type 'DesUpdateComponentSymbolPayload' has description 'Payload associated with updating the symbol of a component.'
- Type 'DesUpdateComponentSymbolInput' was added
- Object type 'DesUpdateComponentSymbolInput' has description 'Input for updating the symbol of a component.'

#### Fields

- Field 'createdAt' was added to object type 'DesComponentType'
- Field 'createdBy' was added to object type 'DesComponentType'
- Field 'id' was added to object type 'DesComponentType'
- Field 'name' was added to object type 'DesComponentType'
- Field 'parent' was added to object type 'DesComponentType'
- Field 'updatedAt' was added to object type 'DesComponentType'
- Field 'updatedBy' was added to object type 'DesComponentType'
- Field 'errors' was added to object type 'DesUpdateComponentSymbolPayload'
- Field 'componentType' was added to object type 'DesComponent'

#### Input / Payload

- Input field 'componentId' of type 'ID!' was added to input object type 'DesUpdateComponentSymbolInput'
- Input field 'symbolId' of type 'ID' was added to input object type 'DesUpdateComponentSymbolInput'

### Platform

#### 🔍 Query

- Field 'gloNtfHealth' was added to object type 'Query'
- Field 'Query.gloNtfHealth' is deprecated
- Directive 'deprecated' was added to 'Query.gloNtfHealth'

#### Types

- Object type 'ApplyPolicy' has description 'Defines when a policy shall be executed.'


