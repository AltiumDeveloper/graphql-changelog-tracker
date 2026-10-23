# gateway-changelog-31-Mar-2025

## 🔴 Breaking Changes (1)

### Design

#### Fields

- Field 'projectTemplates' was removed from object type 'DesLibrary'


---

## ✅ Non-Breaking Changes (10)

### Design

#### 🔍 Query

- Field 'desWorkspaceConfiguration' was added to object type 'Query'
- Argument 'workspaceUrl: String!' added to 'Query.desWorkspaceConfiguration'

#### Types

- Type 'DesWorkspaceConfiguration' was added
- Object type 'DesWorkspaceConfiguration' has description 'Information about workspace configuration.'

#### Arguments

- Argument 'first: Int' added to 'DesWorkspaceConfiguration.projectTemplates'
- Argument 'after: String' added to 'DesWorkspaceConfiguration.projectTemplates'
- Argument 'last: Int' added to 'DesWorkspaceConfiguration.projectTemplates'
- Argument 'before: String' added to 'DesWorkspaceConfiguration.projectTemplates'

#### Fields

- Field 'projectTemplates' was added to object type 'DesWorkspaceConfiguration'
- Field 'configuration' was added to object type 'DesWorkspace'


