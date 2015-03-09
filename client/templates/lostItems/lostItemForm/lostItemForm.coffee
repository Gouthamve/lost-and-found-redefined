Template.lostItemForm.events
  "submit form": (event) ->
    event.preventDefault ->
    itemTitle = event.target.itemTitle.value
    itemLostAt = event.target.itemLostAt.value
    itemLostOn = event.target.itemLostOn.value
    itemDescription = event.target.itemDescription.value
    LostItems.insert
      title: itemTitle
      lostAt: itemLostAt
      lostOn: itemLostOn
      description: itemDescription
    window.location.assign("http://localhost:3000/lost")
