class BackboneLeaflet.Routers.Places extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    @getCurrentLocation()

  getCurrentLocation: ->
    @location = new BackboneLeaflet.Custom.Location
    @listenTo(@location, 'found', @onFindLocation)

  onFindLocation: (coords)=>
    @map_controller = new BackboneLeaflet.Custom.MapController(coords)