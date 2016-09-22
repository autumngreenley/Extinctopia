movespeed=10
var should_movement;
hspeed=movespeed*(keyboard_check(ord("D"))-keyboard_check(ord("A")))
vspeed=movespeed*(keyboard_check(ord("S"))-keyboard_check(ord("W")))

if(keyboard_check(ord("W"))){
//    if(
    sprite_index=spr_donny_walk_up;
}
if(keyboard_check(ord("A"))){
    sprite_index=spr_donny_walk_left;
}

if(keyboard_check(ord("S"))){
    sprite_index=spr_donny_walk_down;
}

if(keyboard_check(ord("D"))){
    sprite_index=spr_donny_walk_right;
}

image_speed=.3;

if(vk_nokey==true){
    image_speed=0;
}



if(hspeed!=0){
    if(!place_free(x+hspeed,y)){
        if hspeed>0 move_contact_solid(0,hspeed)
        if hspeed<0 move_contact_solid(180,-hspeed)
        hspeed=0;
    }
}

if(vspeed!=0){
    if(!place_free(x,y+vspeed)){
        if vspeed>0 move_contact_solid(90,vspeed)
        if vspeed<0 move_contact_solid(270,-vspeed)
        vspeed=0;
    }
}
