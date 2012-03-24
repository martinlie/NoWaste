require('lib/setup')

Spine   = require('spine')
{Stage} = require('spine.mobile')
Stores  = require('controllers/stores')


class App extends Stage.Global
  constructor: ->
    super

    # Instantiate our WordGame controller
    new Stores

    # Setup some Route stuff
    Spine.Route.setup(shim: true)
    @navigate '/stores'


module.exports = App
