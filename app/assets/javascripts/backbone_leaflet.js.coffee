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
  window.geocoder = new BackboneLeaflet.Custom.Geocoder()
  window.geocoder.geocode('18 Ainsley Street, London')