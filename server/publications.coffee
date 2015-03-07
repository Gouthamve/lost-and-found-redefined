Meteor.publish 'Items', ->
  return Items.find()
