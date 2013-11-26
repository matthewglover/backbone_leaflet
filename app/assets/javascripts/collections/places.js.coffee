class BackboneLeaflet.Collections.Places extends Backbone.Collection

  model: BackboneLeaflet.Models.Place
  url: '/search'

  initialize: ->
    @fetch(success: @onFetched, error: @onError, reset: true)

  onFetched: (collection, response, options)->
    # console.log('data fetched..')
    # console.log(response)

  onError: (collection, response, options)->
    # console.log('data error')