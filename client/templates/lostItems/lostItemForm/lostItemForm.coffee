Template.lostItemForm.events
  "submit form": (event) ->
    event.preventDefault ->
    itemTitle = event.target.itemTitle.value
    itemLostAt = event.target.itemLostAt.value
    itemLostOn = event.target.itemLostOn.value
    itemDescription = event.target.itemDescription.value
    lostBy = Meteor.user().profile.name
    createdAt = new Date().toString()
    LostItems.insert
      title: itemTitle
      lostAt: itemLostAt
      lostOn: itemLostOn
      description: itemDescription
      lostBy: lostBy
      createdAt: createdAt
    window.location.assign("http://localhost:3000/lost")
