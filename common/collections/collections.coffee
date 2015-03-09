@FoundItems = new Mongo.Collection 'FoundItems'
FoundItems.attachSchema = new SimpleSchema
  title:
    type: String
  foundAt:
    type: String
  foundOn:
    type: Date
  description:
    type: String
  foundBy:
    type: String
  createdAt:
    type: String
    
@LostItems = new Mongo.Collection 'LostItems'
LostItems.attachSchema = new SimpleSchema
  title:
    type: String
  lostAt:
    type: String
  lostOn:
    type: Date
  description:
    type: String
  lostBy:
    type: String
  createdAt:
    type: Date
