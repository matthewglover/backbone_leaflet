window.BackboneLeaflet =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Custom: {}

  initialize: ->
    new BackboneLeaflet.Routers.Places
    Backbone.history.start()

$(document).ready ->
  BackboneLeaflet.initialize()