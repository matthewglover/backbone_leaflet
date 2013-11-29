window.BackboneLeaflet =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Custom: {}

  Events: _.extend({}, Backbone.Events)

  initialize: ->
    new BackboneLeaflet.Routers.Places
    Backbone.history.start()

$(document).ready ->
  BackboneLeaflet.initialize()