Template.items.helpers
  items: ->
    return Items.find()
Template.items.events
  "submit form": (event) ->
    event.preventDefault ->
    itemTitle = event.target.itemTitle.value
    itemFoundAt = event.target.itemFoundAt.value
    Items.insert
      title: itemTitle
      foundAt: itemFoundAt

