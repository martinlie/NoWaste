Spine = require('spine')

class Item extends Spine.Model
  @configure 'Item', 'item_id', 'store_id', 'name', 'price', 'discount', 'store_count', 'expdate', 'profile_ids' 

  # Default values
  expdate: Date.today().toString DATE_FORMAT
  profile_ids: []

  # Persist with Local Storage
  @extend @Local

  @filter: (storeid, profileid) ->
    return @all() unless storeid
    @select (item) ->
      item.store_id?.indexOf(storeid) isnt -1 and
        profileid in profile_ids 

module.exports = Item
