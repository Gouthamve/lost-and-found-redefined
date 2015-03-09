BaseController = RouteController.extend
  waitOn: ->
    Meteor.subscribe "FoundItems", "LostItems"
  layoutTemplate: "coreLayout"
  yieldTemplates:
    layoutHeader:
      to: "layoutHeader"
    layoutFooter:
      to: "layoutFooter"

Router.map ->
  @route "found",
    controller: BaseController
    path: "/"
    template: "foundItems"
  @route "fileFound",
    controller: BaseController
    path: "/fileFound"
    template: "foundItemForm"
  @route "lost",
    controller: BaseController
    path: "/lost"
    template: "lostItems"
  @route "fileLost",
    controller: BaseController
    path: "/fileLost"
    template: "lostItemForm"
