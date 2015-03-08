Meteor.publish 'FoundItems', ->
  return FoundItems.find()
