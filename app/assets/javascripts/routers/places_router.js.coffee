class BackboneLeaflet.Routers.Places extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @places_collection = new BackboneLeaflet.Collections.Places
    @current_location = new BackboneLeaflet.Custom.Location
    @listenTo(@current_location, 'found', @setLocation)

  index: ->
    @places_view = new BackboneLeaflet.Views.PlacesIndex(collection: @places_collection)
    @places_map = new BackboneLeaflet.Views.PlacesMap(collection: @places_collection, map: @map)
    $('#list').html(@places_view.el)

  setLocation: (lat_lng)=>
    @places_collection.setLocation(lat_lng.latitude, lat_lng.longitude)