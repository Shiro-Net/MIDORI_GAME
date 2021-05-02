///activate_interactable_object(xdir, ydir);
var xdir = argument0;
var ydir = argument1;

// Is there an object
var interactable = instance_place(x+xdir, y+ydir, o_interactable_parent);

// Check for input and object
if (o_input.action && interactable != noone){
    with(interactable){
        event_user(ACTIVATE);
    }
}
