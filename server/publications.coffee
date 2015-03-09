Meteor.publish 'FoundItems', ->
  return FoundItems.find()
Meteor.publish 'LostItems', ->
  return LostItems.find()
