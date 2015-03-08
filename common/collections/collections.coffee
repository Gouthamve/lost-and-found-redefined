@FoundItems = new Mongo.Collection 'FoundItems'
FoundItems.attachSchema = new SimpleSchema
  title:
    type: String
  foundAt:
    type: String
  foundOn:
    type: Date
  Description:
    type: String
  foundBy:
    type: String
    
@LostItems = new Mongo.Collection 'LostItems'
LostItems.attachSchema = new SimpleSchema
  title:
    type: String
  lostAt:
    type: String
  LostOn:
    type: Date
  Description:
    type: String
  lostBy:
    type: String