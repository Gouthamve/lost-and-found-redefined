BaseController = RouteController.extend
  waitOn: ->
    Meteor.subscribe "Items"
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
    template: "items"
