Template.foundItemForm.events
  "submit form": (event) ->
    event.preventDefault ->
    itemTitle = event.target.itemTitle.value
    itemFoundAt = event.target.itemFoundAt.value
    itemFoundOn = event.target.itemFoundOn.value
    itemDescription = event.target.itemDescription.value
    FoundItems.insert
      title: itemTitle
      foundAt: itemFoundAt
      foundOn: itemFoundOn
      Description: itemDescription
    event.target.itemTitle.value = ""
    event.target.itemFoundAt.value = ""
    event.target.itemFoundOn.value = ""
    event.target.itemDescription.value = ""