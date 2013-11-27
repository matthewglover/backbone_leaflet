class BackboneLeaflet.Views.Place extends Backbone.View

  template: JST['places/place']
  tagName: 'li'

  events:
    'click .showHide': 'toggleShow'

  initialize: ->

  render: ->
    console.log(@model.get('show'))
    @$el.html(@template(place: @model))
    @$el.removeClass("show")
    @$el.addClass("show") if @model.get('show')
    @

  toggleShow: ->
    console.log('toggling - ' + @model.get('show'))
    @model.toggleShow()
    @render()