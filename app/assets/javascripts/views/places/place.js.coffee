class BackboneLeaflet.Views.Place extends Backbone.View

  template: JST['places/place']
  tagName: 'li'

  events:
    'click .showHide': 'toggleShow'

  initialize: ->

  render: ->
    $(@el).html(@template(place: @model))
    @

  toggleShow: ->
    @model.toggleShow()