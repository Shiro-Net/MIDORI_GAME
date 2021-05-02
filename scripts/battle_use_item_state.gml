///battle_use_item_state()
// Enemies cant use items
if (object_index != o_player_battle_unit) {
   state = battle_wait_state;
   exit;
}

// Change sprite
change_sprites(s_battle_noel_use_item, 0, .15);

// Use the item
if (animation_hit_frame(1)){
   use_item_index(item_index);
}

// Return to idle
// THE INSTANCE BELOW DESTROYS THE MENU FOR ITEM LIST (IF PROBLEM PERSIST ITS PROBABLY BECAUSE OF THIS LOL)
instance_destroy(o_item_list_ui);
if (animation_end()){
   with(o_battle_unit){
       state = battle_wait_state;
   }
}
