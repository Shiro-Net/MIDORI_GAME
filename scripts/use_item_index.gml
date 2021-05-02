///use_item_index(item_index)
var item_index = argument0;

if (instance_exists(o_player_stats)){
   with (o_player_stats) {
        // Find the item
        var item = ds_list_find_value(items, item_index);
        if (item != undefined){
           // Check for exit case
           if (item[? "battle"] && room != r_battle){
              // Show a message
              create_message_at_view_center("Noel:#This item can't be used in battle!");
              with(other.parent) instance_destroy();
              with(other) instance_destroy();
              exit;
           }
           // Remove the item count
           item_number[| item_index]--;
           if (item_number[| item_index] <= 0){
              ds_list_delete(item_number, item_index);
              ds_list_delete(items, item_index);
           }
           // Item used
           script_execute(asset_get_index(item[? "effect"]), item[? "arguments"])

      }
   }
}
