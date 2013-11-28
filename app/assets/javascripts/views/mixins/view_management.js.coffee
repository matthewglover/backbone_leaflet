# BackboneLeaflet.Views.ViewManagementMixin =

#   _addViews: ->
#     @collection.each(@_addView)

#   _addView: (model)->
#     unless _.findWhere(@_views(), model: model)
#       view = new BackboneLeaflet.Views.MapPlace(model: model, map: @map)
#       @_views().push(view)

#   _killViews: ->
#     @_killView _.first(@_views()) while @_views().length > 0

#   _killView: (view)->
#     if view?
#       view.remove()
#       @_views(_.without @_views(), view)

#   _views: (ary=false)->
#     if ary then @__view_array = ary else @__view_array ?= []