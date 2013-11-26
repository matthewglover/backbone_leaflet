class BackboneLeaflet.Routers.Places extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @places_collection = new BackboneLeaflet.Collections.Places
    @location = new BackboneLeaflet.Custom.Location
    @listenTo(@location, 'found', @onFindLocation)

  index: ->
    @places_view = new BackboneLeaflet.Views.PlacesIndex(collection: @places_collection)
    $('#list').html(@places_view.el)

  onFindLocation: (lat_lng)=>
    @map_controller = new BackboneLeaflet.Custom.MapController(coords: lat_lng, collection: @places_collection)
    @places_collection.setLocation(lat_lng.latitude, lat_lng.longitude)