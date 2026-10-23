# gateway-changelog-19-Mar-2026

## 🔴 Breaking Changes (3)

### Design

#### Types

- Type 'DesignDataDocument_Preview' was removed

#### Fields

- Field 'documents' was removed from object type 'DesignData_Preview'
- Field 'uniqueId' was removed from object type 'DesignDataNet_Preview'


---

## ✅ Non-Breaking Changes (8)

### Design

#### Fields

- Field 'components' was added to object type 'DesignData_Preview'
- Field 'nets' was added to object type 'DesignData_Preview'
- Field 'documentId' was added to object type 'DesignDataComponent_Preview'
- Field 'documentId' was added to object type 'DesignDataLine_Preview'
- Field 'documentId' was added to object type 'DesignDataNetItem_Preview'
- Field 'documentId' was added to object type 'DesignDataPart_Preview'
- Field 'documentId' was added to object type 'DesignDataPin_Preview'

### System Design

#### Input / Payload

- Input field 'sourceFlow' of type 'String' was added to input object type 'SysEsdCreateDocumentInput'


