class BackboneLeaflet.Collections.Places extends Backbone.Collection

  model: BackboneLeaflet.Models.Place
  url: '/search'

  initialize: ->
    @latitude = 52.289698
    @longitude = -1.538837
    # @setLocation()

  setLocation: (latitude=@latitude, longitude=@longitude)->
    @latitude = latitude
    @longitude = longitude
    @fetch(
      success: @onFetched
      error: @onError
      reset: true
      data:
        latitude: @latitude
        longitude: @longitude
      )

  onFetched: (collection, response, options)=>
    console.log('data fetched..')
    @trigger('changeLocation', @latitude, @longitude)
    # console.log(response)

  onError: (collection, response, options)=>
    # console.log('data error')