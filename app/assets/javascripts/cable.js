// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

// noinspection ThisExpressionReferencesGlobalObjectJS
(function() {
  this.App || (this.App = {});

  // noinspection ES6ModulesDependencies
    // noinspection ES6ModulesDependencies
    App.cable = ActionCable.createConsumer();

}).call(this);
