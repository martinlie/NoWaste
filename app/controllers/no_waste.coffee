Spine = require('spine')

class Stores extends Panel
  title: 'Memorize'

  constructor: ->
    super
    Dictionary.bind('refresh change', @render)

  events: 
    'click .from_words button': 'from_clicked'
    'click .to_words button':   'to_clicked'
          
 
  render: =>
    @stores = Store.all()

    @html require('views/stores')(stores: @stores)

   


class NoWaste extends Spine.Controller
  constructor: ->
    super

    @stores = new Stores
 
    @routes
      '/stores':                  -> @stores.active(trans: 'right')
 
    Dictionary.fetch()

module.exports = Stores
