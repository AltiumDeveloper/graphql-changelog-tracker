# gateway-changelog-29-Jan-2026

## 🔴 Breaking Changes (7)

### Design

#### 🔍 Query

- Field 'desManufacturePackageById' (deprecated) was removed from object type 'Query'
- Field 'desWipVariantById' (deprecated) was removed from object type 'Query'

#### Types

- 'DesManufacturePackage' object type no longer implements 'Node' interface
- 'DesWipVariant' object type no longer implements 'Node' interface

#### Fields

- Field 'id' (deprecated) was removed from object type 'DesManufacturePackage'
- Field 'id' (deprecated) was removed from object type 'DesWipVariant'
- Field 'DesWipVariant.projectId' changed type from 'String!' to 'ID!'


---

## ✅ Non-Breaking Changes (35)

### Design

#### 🔍 Query

- Field 'Query.desManufacturePackages' is deprecated
- Directive 'deprecated' was added to 'Query.desManufacturePackages'

#### Fields

- Field 'manufacturePackageId' was added to object type 'DesManufacturePackage'
- Field 'DesRelease.manufacturePackages' is deprecated
- Directive 'deprecated' was added to 'DesRelease.manufacturePackages'

### Library Management

#### 🔍 Query

- Field 'desPermissionsById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.desPermissionsById'

### Platform

#### Input / Payload

- Input field 'solutionFolderName' of type 'String' was added to input object type 'SolCreateSolutionInput'
- Directive 'deprecated' was added to input field 'createSolutionFolder' in input object 'SolCreateSolutionInput'

### Supply

#### 🔍 Query

- Field 'supSolutionTemplateApplicationsSearch' was added to object type 'Query'
- Argument 'after: String' added to 'Query.supSolutionTemplateApplicationsSearch'
- Argument 'before: String' added to 'Query.supSolutionTemplateApplicationsSearch'
- Argument 'first: Int' added to 'Query.supSolutionTemplateApplicationsSearch'
- Argument 'last: Int' added to 'Query.supSolutionTemplateApplicationsSearch'
- Argument 'order: [SupSolutionTemplateApplicationSortInput!]' added to 'Query.supSolutionTemplateApplicationsSearch'
- Argument 'where: SupSolutionTemplateApplicationSearchFilterInput' added to 'Query.supSolutionTemplateApplicationsSearch'

#### Types

- Type 'SupSolutionTemplateApplicationConnection' was added
- Object type 'SupSolutionTemplateApplicationConnection' has description 'A connection to a list of items.'
- Type 'SupSolutionTemplateApplicationEdge' was added
- Object type 'SupSolutionTemplateApplicationEdge' has description 'An edge in a connection.'
- Type 'SupSolutionTemplateApplicationSearchFilterInput' was added
- Object type 'SupSolutionTemplateApplicationSearchFilterInput' has description 'Represents the filter for searching solution template applications.'
- Type 'SupSolutionTemplateApplicationSortInput' was added
- Object type 'SupSolutionTemplateApplicationSortInput' has description 'Input type for solution template application sorting.'

#### Fields

- Field 'edges' was added to object type 'SupSolutionTemplateApplicationConnection'
- Field 'nodes' was added to object type 'SupSolutionTemplateApplicationConnection'
- Field 'pageInfo' was added to object type 'SupSolutionTemplateApplicationConnection'
- Field 'totalCount' was added to object type 'SupSolutionTemplateApplicationConnection'
- Field 'cursor' was added to object type 'SupSolutionTemplateApplicationEdge'
- Field 'node' was added to object type 'SupSolutionTemplateApplicationEdge'
- Field 'createdAt' was added to object type 'SupSolutionTemplateApplication'
- Field 'updatedAt' was added to object type 'SupSolutionTemplateApplication'

#### Input / Payload

- Input field 'q' of type 'String' was added to input object type 'SupSolutionTemplateApplicationSearchFilterInput'
- Input field 'createdAt' of type 'SortEnumType' was added to input object type 'SupSolutionTemplateApplicationSortInput'
- Input field 'updatedAt' of type 'SortEnumType' was added to input object type 'SupSolutionTemplateApplicationSortInput'


