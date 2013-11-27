class BackboneLeaflet.Views.PlacesIndex extends Backbone.View

  template: JST['places/index']

  events:
    'submit #new_location': 'changeLocation'
    'click #more': 'loadMore'
    'click #check_total': 'checkTotal'

  initialize: ->
    @listenTo(@collection, 'sync', @render)

  render: ->
    console.log('Rendering full list...')
    $(@el).html(@template())
    @collection.each(@appendPlace)
    @

  appendPlace: (place)->
    place = new BackboneLeaflet.Views.Place(model: place)
    @$('#PlaceList').append(place.render().el)

  changeLocation: (event)=>
    event.preventDefault()
    lat = $('#new_latitude').val()
    long = $('#new_longitude').val()
    @collection.setLocation(lat,long)

  loadMore: (event)=>
    event.preventDefault()
    @collection.fetchMore()

  checkTotal: (event)=>
    event.preventDefault()
    console.log("No items = #{@collection.length}")