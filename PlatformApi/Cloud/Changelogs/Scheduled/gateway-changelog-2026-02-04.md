# gateway-changelog-04-Feb-2026

## ⚠️ Dangerous Changes (1)

### Supply

#### Types

- Enum value 'EXAMPLE' was added to enum 'SupRefDesignType'


---

## ✅ Non-Breaking Changes (18)

### Design

#### ✏️ Mutation

- Field 'desAddDatasheetToComponent' was added to object type 'Mutation'
- Argument 'input: DesAddDatasheetToComponentInput!' added to 'Mutation.desAddDatasheetToComponent'
- Field 'desRemoveDatasheetFromComponent' was added to object type 'Mutation'
- Argument 'input: DesRemoveDatasheetFromComponentInput!' added to 'Mutation.desRemoveDatasheetFromComponent'

#### Types

- Type 'DesAddDatasheetToComponentPayload' was added
- Object type 'DesAddDatasheetToComponentPayload' has description 'Payload associated with adding a datasheet to a component.'
- Type 'DesRemoveDatasheetFromComponentPayload' was added
- Object type 'DesRemoveDatasheetFromComponentPayload' has description 'Payload associated with removing a datasheet from a component.'
- Type 'DesAddDatasheetToComponentInput' was added
- Object type 'DesAddDatasheetToComponentInput' has description 'Input for adding a datasheet to a component.'
- Type 'DesRemoveDatasheetFromComponentInput' was added
- Object type 'DesRemoveDatasheetFromComponentInput' has description 'Input for removing a datasheet from a component.'

#### Fields

- Field 'errors' was added to object type 'DesAddDatasheetToComponentPayload'
- Field 'errors' was added to object type 'DesRemoveDatasheetFromComponentPayload'

#### Input / Payload

- Input field 'componentId' of type 'ID!' was added to input object type 'DesAddDatasheetToComponentInput'
- Input field 'datasheetId' of type 'ID!' was added to input object type 'DesAddDatasheetToComponentInput'
- Input field 'componentId' of type 'ID!' was added to input object type 'DesRemoveDatasheetFromComponentInput'
- Input field 'datasheetId' of type 'ID!' was added to input object type 'DesRemoveDatasheetFromComponentInput'


