@Items = new Mongo.Collection 'items'
Items.attachSchema = new SimpleSchema
  title:
    type: String
  foundAt:
    type: String
