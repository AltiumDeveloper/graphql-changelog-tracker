# gateway-changelog-18-Dec-2025

## 🔴 Breaking Changes (12)

### Platform

#### Input / Payload

- Input field 'absoluteRefreshTokenLifetime' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'accessTokenLifetime' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'authorizationCodeLifetime' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'clientSecret' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'identityTokenLifetime' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'requireConsent' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'requirePkce' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'requireSecret' was removed from input object type 'GloOAuthClientSortInput'
- Input field 'slidingRefreshTokenLifetime' was removed from input object type 'GloOAuthClientSortInput'

### Renesas (preview)

#### Fields

- Field 'revisionIds' (deprecated) was removed from object type 'SftDevCfgDeviceConfiguration'
- Field 'softwareProjectId' was removed from object type 'SftDevCfgDeviceConfiguration'
- Field 'deviceConfigurationId' (deprecated) was removed from object type 'SftSoftwareProject'


---

## ✅ Non-Breaking Changes (2)

### Renesas (preview)

#### Fields

- Field 'latestRevision' was added to object type 'SftDevCfgDeviceConfiguration'
- Field 'SftDevCfgDeviceConfigurationRevision.deviceConfiguration' changed type from 'SftDevCfgDeviceConfiguration' to 'SftDevCfgDeviceConfiguration!'


