window.BackboneLeaflet =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Custom: {}

  initialize: ->
    _.extend @, Backbone.Events
    @getCurrentLocation()
    @createMap()

  getCurrentLocation: ->
    @location = new BackboneLeaflet.Custom.Location
    @listenTo(@location, 'found', @onFindLocation)

  onFindLocation: (coords)=>
    console.log('Your current position is:')
    console.log('Latitude : ' + coords.latitude)
    console.log('Longitude: ' + coords.longitude)
    console.log('More or less ' + coords.accuracy + ' meters.')

  createMap: ->
    @map = new BackboneLeaflet.Custom.Map

$(document).ready ->
  BackboneLeaflet.initialize()