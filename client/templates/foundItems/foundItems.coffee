Template.foundItems.helpers
  items: ->
    return FoundItems.find()
  selectedItem: ->
    if this._id is Session.get("SelectedItem")
      return "selected"

Template.foundItems.events
  "click .foundItem": ->
    itemId = this._id
    Session.set("SelectedItem", itemId)



