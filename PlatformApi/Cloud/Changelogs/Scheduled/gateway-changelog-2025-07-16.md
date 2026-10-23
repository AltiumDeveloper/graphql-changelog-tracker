# gateway-changelog-16-Jul-2025

## ✅ Non-Breaking Changes (129)

### Platform

#### Fields

- Field 'SolSolution.esdDocumentIds' is deprecated
- Directive 'deprecated' was added to 'SolSolution.esdDocumentIds'
- Field 'SolSolution.hardwareProjectIds' is deprecated
- Directive 'deprecated' was added to 'SolSolution.hardwareProjectIds'
- Field 'SolSolution.softwareProjectIds' is deprecated
- Directive 'deprecated' was added to 'SolSolution.softwareProjectIds'

### Supply

#### 🔍 Query

- Field 'supRefDesignById' was added to object type 'Query'
- Argument 'id: ID!' added to 'Query.supRefDesignById'
- Field 'supRefDesignByName' was added to object type 'Query'
- Argument 'name: String!' added to 'Query.supRefDesignByName'
- Field 'supRefDesigns' was added to object type 'Query'
- Argument 'q: String!' added to 'Query.supRefDesigns'
- Argument 'filter: SupRefDesignFilterInput' added to 'Query.supRefDesigns'
- Argument 'start: Int!' (with default value) added to 'Query.supRefDesigns'
- Argument 'limit: Int!' (with default value) added to 'Query.supRefDesigns'
- Field 'supRefParts' was added to object type 'Query'
- Argument 'refDesignId: ID!' added to 'Query.supRefParts'
- Argument 'designators: [String!]' added to 'Query.supRefParts'

#### Types

- Type 'SupDocument' was added
- Type 'SupImage' was added
- Type 'SupRefApplicationBucket' was added
- Type 'SupRefDesign' was added
- Object type 'SupRefDesign' has description 'A reference design model aggregates the relevant documents, files and parts.'
- Type 'SupRefDesignFile' was added
- Object type 'SupRefDesignFile' has description 'Represents a design file belonging to a reference design.'
- Type 'SupRefDesignNote' was added
- Object type 'SupRefDesignNote' has description 'Represents a note attached to a reference design file.'
- Type 'SupRefDesignResultSet' was added
- Object type 'SupRefDesignResultSet' has description 'Reference designs with pagination, aggregation information.'
- Type 'SupRefFaq' was added
- Object type 'SupRefFaq' has description 'Represents a frequently asked question for a reference design.'
- Type 'SupRefKeyFeature' was added
- Object type 'SupRefKeyFeature' has description 'Represents a key feature of a reference design.'
- Type 'SupRefPart' was added
- Type 'SupRefPoint2D' was added
- Object type 'SupRefPoint2D' has description 'Represents a 2D point for a file note.'
- Type 'SupRefPublisherBucket' was added
- Type 'SupRefResource' was added
- Object type 'SupRefResource' has description 'Represents a resource related to a reference design.'
- Type 'SupRefTag' was added
- Object type 'SupRefTag' has description 'Represents a tag for categorizing a reference design.'
- Type 'SupRefTagBucket' was added
- Type 'SupRefPartType' was added
- Enum value 'PRIMARY' was added to enum 'SupRefPartType'
- Enum value 'KEY' was added to enum 'SupRefPartType'
- Enum value 'OTHER' was added to enum 'SupRefPartType'
- Type 'SupRefDesignFilterInput' was added

#### Arguments

- Argument 'designators: [String!]' added to 'SupRefDesign.parts'
- Argument 'type: SupRefPartType' added to 'SupRefDesign.parts'
- Argument 'size: Int' (with default value) added to 'SupRefDesignResultSet.applicationAgg'
- Argument 'size: Int' (with default value) added to 'SupRefDesignResultSet.publisherAgg'
- Argument 'size: Int' (with default value) added to 'SupRefDesignResultSet.tagAgg'

#### Fields

- Field 'createdAt' was added to object type 'SupDocument'
- Field 'creditString' was added to object type 'SupDocument'
- Field 'creditUrl' was added to object type 'SupDocument'
- Field 'mimeType' was added to object type 'SupDocument'
- Field 'name' was added to object type 'SupDocument'
- Field 'pageCount' was added to object type 'SupDocument'
- Field 'url' was added to object type 'SupDocument'
- Field 'creditString' was added to object type 'SupImage'
- Field 'creditUrl' was added to object type 'SupImage'
- Field 'url' was added to object type 'SupImage'
- Field 'applicationId' was added to object type 'SupRefApplicationBucket'
- Field 'count' was added to object type 'SupRefApplicationBucket'
- Field 'applicationIds' was added to object type 'SupRefDesign'
- Field 'bomId' was added to object type 'SupRefDesign'
- Field 'createdAt' was added to object type 'SupRefDesign'
- Field 'description' was added to object type 'SupRefDesign'
- Field 'designFiles' was added to object type 'SupRefDesign'
- Field 'documentations' was added to object type 'SupRefDesign'
- Field 'evaluationKitIds' was added to object type 'SupRefDesign'
- Field 'faqs' was added to object type 'SupRefDesign'
- Field 'hasEvalBoard' was added to object type 'SupRefDesign'
- Field 'id' was added to object type 'SupRefDesign'
- Field 'isVerified' was added to object type 'SupRefDesign'
- Field 'keyFeatures' was added to object type 'SupRefDesign'
- Field 'parts' was added to object type 'SupRefDesign'
- Field 'previewImages' was added to object type 'SupRefDesign'
- Field 'publisherId' was added to object type 'SupRefDesign'
- Field 'softwares' was added to object type 'SupRefDesign'
- Field 'sourceUrl' was added to object type 'SupRefDesign'
- Field 'stableName' was added to object type 'SupRefDesign'
- Field 'subtitle' was added to object type 'SupRefDesign'
- Field 'tags' was added to object type 'SupRefDesign'
- Field 'title' was added to object type 'SupRefDesign'
- Field 'updatedAt' was added to object type 'SupRefDesign'
- Field 'extension' was added to object type 'SupRefDesignFile'
- Field 'name' was added to object type 'SupRefDesignFile'
- Field 'notes' was added to object type 'SupRefDesignFile'
- Field 'type' was added to object type 'SupRefDesignFile'
- Field 'url' was added to object type 'SupRefDesignFile'
- Field 'attachment' was added to object type 'SupRefDesignNote'
- Field 'description' was added to object type 'SupRefDesignNote'
- Field 'objectId' was added to object type 'SupRefDesignNote'
- Field 'points' was added to object type 'SupRefDesignNote'
- Field 'title' was added to object type 'SupRefDesignNote'
- Field 'applicationAgg' was added to object type 'SupRefDesignResultSet'
- Field 'hits' was added to object type 'SupRefDesignResultSet'
- Field 'publisherAgg' was added to object type 'SupRefDesignResultSet'
- Field 'results' was added to object type 'SupRefDesignResultSet'
- Field 'tagAgg' was added to object type 'SupRefDesignResultSet'
- Field 'answer' was added to object type 'SupRefFaq'
- Field 'question' was added to object type 'SupRefFaq'
- Field 'description' was added to object type 'SupRefKeyFeature'
- Field 'name' was added to object type 'SupRefKeyFeature'
- Field 'designators' was added to object type 'SupRefPart'
- Field 'partId' was added to object type 'SupRefPart'
- Field 'type' was added to object type 'SupRefPart'
- Field 'type' was added to object type 'SupRefPoint2D'
- Field 'x' was added to object type 'SupRefPoint2D'
- Field 'y' was added to object type 'SupRefPoint2D'
- Field 'count' was added to object type 'SupRefPublisherBucket'
- Field 'publisherId' was added to object type 'SupRefPublisherBucket'
- Field 'description' was added to object type 'SupRefResource'
- Field 'downloadText' was added to object type 'SupRefResource'
- Field 'downloadUrl' was added to object type 'SupRefResource'
- Field 'note' was added to object type 'SupRefResource'
- Field 'otherResources' was added to object type 'SupRefResource'
- Field 'title' was added to object type 'SupRefResource'
- Field 'category' was added to object type 'SupRefTag'
- Field 'value' was added to object type 'SupRefTag'
- Field 'count' was added to object type 'SupRefTagBucket'
- Field 'name' was added to object type 'SupRefTagBucket'

#### Input / Payload

- Input field 'isVerified' of type 'Boolean' was added to input object type 'SupRefDesignFilterInput'
- Input field 'hasEvalBoard' of type 'Boolean' was added to input object type 'SupRefDesignFilterInput'
- Input field 'applicationIds' of type '[String!]' was added to input object type 'SupRefDesignFilterInput'
- Input field 'categoryIds' of type '[String!]' was added to input object type 'SupRefDesignFilterInput'
- Input field 'publisherIds' of type '[String!]' was added to input object type 'SupRefDesignFilterInput'
- Input field 'tags' of type '[String!]' was added to input object type 'SupRefDesignFilterInput'


