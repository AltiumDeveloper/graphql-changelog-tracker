# gateway-changelog-05-Feb-2026

## ✅ Non-Breaking Changes (48)

### Design

#### Types

- Type 'DesSymbolUsedBy' was added
- Object type 'DesSymbolUsedBy' has description 'Represents reverse relationships for a symbol (where the symbol is used).'

#### Arguments

- Argument 'after: String' added to 'DesSymbolUsedBy.components'
- Argument 'before: String' added to 'DesSymbolUsedBy.components'
- Argument 'first: Int' added to 'DesSymbolUsedBy.components'
- Argument 'last: Int' added to 'DesSymbolUsedBy.components'

#### Fields

- Field 'components' was added to object type 'DesSymbolUsedBy'
- Field 'usedBy' was added to object type 'DesSymbol'

### System Design

#### Types

- Type 'SysEsdCompiledMetadata' was added
- Type 'SysEsdConnection' was added
- Type 'SysEsdFunctionalBlock' was added
- Type 'SysEsdKeyComponent' was added
- Type 'SysEsdParameter' was added
- Type 'SysEsdPort' was added
- Type 'SysEsdPortAssociation' was added
- Type 'SysEsdSoftwareComponent' was added

#### Fields

- Field 'connections' was added to object type 'SysEsdCompiledMetadata'
- Field 'functionalBlocks' was added to object type 'SysEsdCompiledMetadata'
- Field 'parameters' was added to object type 'SysEsdCompiledMetadata'
- Field 'id' was added to object type 'SysEsdConnection'
- Field 'id' was added to object type 'SysEsdFunctionalBlock'
- Field 'keyComponents' was added to object type 'SysEsdFunctionalBlock'
- Field 'name' was added to object type 'SysEsdFunctionalBlock'
- Field 'parameters' was added to object type 'SysEsdFunctionalBlock'
- Field 'ports' was added to object type 'SysEsdFunctionalBlock'
- Field 'portsAssociations' was added to object type 'SysEsdFunctionalBlock'
- Field 'softwareComponents' was added to object type 'SysEsdFunctionalBlock'
- Field 'childSoftwareComponentsIds' was added to object type 'SysEsdKeyComponent'
- Field 'id' was added to object type 'SysEsdKeyComponent'
- Field 'name' was added to object type 'SysEsdKeyComponent'
- Field 'parameters' was added to object type 'SysEsdKeyComponent'
- Field 'id' was added to object type 'SysEsdParameter'
- Field 'name' was added to object type 'SysEsdParameter'
- Field 'value' was added to object type 'SysEsdParameter'
- Field 'associationId' was added to object type 'SysEsdPort'
- Field 'id' was added to object type 'SysEsdPort'
- Field 'name' was added to object type 'SysEsdPort'
- Field 'parameters' was added to object type 'SysEsdPort'
- Field 'id' was added to object type 'SysEsdPortAssociation'
- Field 'portId' was added to object type 'SysEsdPortAssociation'
- Field 'portLibraryName' was added to object type 'SysEsdPortAssociation'
- Field 'softwareComponentId' was added to object type 'SysEsdPortAssociation'
- Field 'id' was added to object type 'SysEsdSoftwareComponent'
- Field 'name' was added to object type 'SysEsdSoftwareComponent'
- Field 'parameters' was added to object type 'SysEsdSoftwareComponent'
- Field 'parentKeyComponentId' was added to object type 'SysEsdSoftwareComponent'
- Field 'portsAssociationsIds' was added to object type 'SysEsdSoftwareComponent'
- Field 'model' was added to object type 'SysEsdDocument'


