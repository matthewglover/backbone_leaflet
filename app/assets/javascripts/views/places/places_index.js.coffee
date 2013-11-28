class BackboneLeaflet.Views.PlacesIndex extends Backbone.View

  template: JST['places/index']

  events:
    'submit #new_location': 'changeLocation'
    'click #more': 'loadMore'
    'click #check_total': 'checkTotal'

  initialize: ->
    @listenTo(@collection, 'sync', @_addViews)
    @listenTo(@collection, 'setLocation', @_killViews)

  render: ->
    @$el.html(@template()) unless @rendered?
    @rendered = true
    @

  _addViews: =>
    @render()
    @collection.each(@_addView)

  _addView: (model)=>
    unless _.findWhere(@_views(), model: model)
      view = new BackboneLeaflet.Views.Place(model: model)
      @_views().push(view)
      @$('#PlaceList').append(view.render().el)

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
    console.log("No ims = #{@collection.length}")

  _killViews: ->
    @_killView _.first(@_views()) while @_views().length > 0

  _killView: (view)->
    if view?
      view.remove()
      @_views(_.without @_views(), view)

  _views: (ary=false)->
    if ary then @__view_array = ary else @__view_array ?= []
