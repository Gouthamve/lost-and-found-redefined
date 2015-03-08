BaseController = RouteController.extend
  waitOn: ->
    Meteor.subscribe "FoundItems"
  layoutTemplate: "coreLayout"
  yieldTemplates:
    layoutHeader:
      to: "layoutHeader"
    layoutFooter:
      to: "layoutFooter"

Router.map ->
  @route "index",
    controller: BaseController
    path: "/"
    template: "foundItems"
