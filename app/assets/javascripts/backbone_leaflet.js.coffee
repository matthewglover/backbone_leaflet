window.BackboneLeaflet =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Custom: {}

  initialize: ->
    _.extend @, Backbone.Events
    @getCurrentLocation()

  getCurrentLocation: ->
    @location = new BackboneLeaflet.Custom.Location
    @listenTo(@location, 'found', @onFindLocation)

  onFindLocation: (coords)=>
    @map_controller = new BackboneLeaflet.Custom.MapController(coords)

$(document).ready ->
  BackboneLeaflet.initialize()