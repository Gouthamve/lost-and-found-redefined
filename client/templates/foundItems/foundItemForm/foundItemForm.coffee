Template.foundItemForm.events
  "submit form": (event) ->
    event.preventDefault()
    itemTitle = event.target.itemTitle.value
    itemFoundAt = event.target.itemFoundAt.value
    itemFoundOn = event.target.itemFoundOn.value
    itemDescription = event.target.itemDescription.value
    createdBy = Meteor.user().profile.name
    createdAt = new Date().toString()
    FoundItems.insert
      title: itemTitle
      foundAt: itemFoundAt
      foundOn: itemFoundOn
      description: itemDescription
      foundBy: createdBy
      createdAt: createdAt
    window.location.assign("http://localhost:3000")
