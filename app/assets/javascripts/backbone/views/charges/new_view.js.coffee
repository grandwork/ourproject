RailsChallenge.Views.Charges ||= {}

class RailsChallenge.Views.Charges.NewView extends Backbone.View
  template: JST["backbone/templates/charges/new"]

  events:
    "submit #new-charge": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (charge) =>
        @model = charge
        window.location.hash = "/#{@model.id}"

      error: (charge, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
