class RailsChallenge.Routers.ChargesRouter extends Backbone.Router
  initialize: (options) ->
    @charges = new RailsChallenge.Collections.ChargesCollection()
    @charges.reset options.charges

  routes:
    "new"      : "newCharge"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCharge: ->
    @view = new RailsChallenge.Views.Charges.NewView(collection: @charges)
    $("#charges").html(@view.render().el)

  index: ->
    @view = new RailsChallenge.Views.Charges.IndexView(charges: @charges)
    $("#charges").html(@view.render().el)

  show: (id) ->
    charge = @charges.get(id)

    @view = new RailsChallenge.Views.Charges.ShowView(model: charge)
    $("#charges").html(@view.render().el)

  edit: (id) ->
    charge = @charges.get(id)

    @view = new RailsChallenge.Views.Charges.EditView(model: charge)
    $("#charges").html(@view.render().el)
