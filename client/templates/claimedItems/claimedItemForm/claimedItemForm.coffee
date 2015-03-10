Template.claimedItemForm.events
  "submit form": (event) ->
    event.preventDefault()
    claimDescription = event.target.description.value
    claimedBy = Meteor.user().profile.name
    claimedAt = new Date().toString()
    FoundItems.update
      _id: this._id,
        $set:
          claimedBy: claimedBy
          claimedAt: claimedAt
          claimDescription: claimDescription


