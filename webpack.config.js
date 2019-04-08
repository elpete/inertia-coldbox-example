const elixir = require("coldbox-elixir");
const path = require("path");

module.exports = elixir(mix => {
    mix.vue("app.js");
});
