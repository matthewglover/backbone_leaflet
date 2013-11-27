class BackboneLeaflet.Collections.Places extends Backbone.Collection

  model: BackboneLeaflet.Models.Place
  url: '/search'

  initialize: ->

  setLocation: (latitude, longitude)->
    @latitude = latitude
    @longitude = longitude
    @page = 1
    @trigger('setLocation', @latitude, @longitude)
    @_fetchData()

  fetchMore: ->
    console.log('fetching more...')
    @page += 1
    @_fetchData()

  _fetchData: ()->
    @fetch(
      remove: false
      success: @onFetched
      error: @onError
      data:
        latitude: @latitude
        longitude: @longitude
        page: @page
      )

  onFetched: (collection, response, options)=>
    console.log('data fetched..')

  onError: (collection, response, options)=>
    # console.log('data error')