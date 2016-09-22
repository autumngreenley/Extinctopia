if(argument0==12){
   room_goto(room1_Z2);  //goes to upper room
}

if(argument0==11){      //goes to left room
    room_goto(room1_Z1);
}

if(argument0==13){       //goes to right room
    room_goto(room1_Z3);
}

//show_message('done goofed');

obj_player.x=obj_player.xx;
obj_player.y=obj_player.yy;

obj_player.stopIllu=0;
obj_Master.stop=250;
obj_player.kidfight_message=false;
