# gateway-changelog-02-Dec-2025

## 🔴 Breaking Changes (2)

### Platform

#### Types

- Type 'DesProjectGuestPermission' was removed

#### Fields

- Field 'id' was removed from object type 'DesProjectGuest'


---

## ✅ Non-Breaking Changes (15)

### Design

#### Types

- Type 'DesExternalUserPermission' was added
- 'DesExternalUserPermission' object implements 'DesPermission' interface

#### Fields

- Field 'availableActions' was added to object type 'DesExternalUserPermission'
- Field 'trusteeId' was added to object type 'DesExternalUserPermission'
- Field 'trusteePermissions' was added to object type 'DesExternalUserPermission'
- Field 'user' was added to object type 'DesExternalUserPermission'

### Platform

#### 🔍 Query

- Field 'gloUserById' was added to object type 'Query'
- Argument 'userId: ID!' added to 'Query.gloUserById'
- Field 'gloUsersByIds' was added to object type 'Query'
- Argument 'userIds: [ID!]!' added to 'Query.gloUsersByIds'

### Renesas (preview)

#### Fields

- Field 'pinName' was added to object type 'DmModePinConfig'
- Field 'pinValue' was added to object type 'DmModePinConfig'
- Field 'channel' was added to object type 'DmPeripheralInstance'
- Field 'softwareDriverId' was added to object type 'DmPeripheralInstance'
- Field 'softwareDriverIds' was added to object type 'DmPeripheralInstance'


