Spine = require('spine')

class Store extends Spine.Model
  @configure 'Store', 'store_id', 'name', 'position_x', 'position_y'

  @extend @Local

  @filter: (query) ->
    return @all() unless query
    query = query.toLowerCase()
    @select (item) ->
      item.name?.toLowerCase().indexOf(query) isnt -1
  
module.exports = Store
