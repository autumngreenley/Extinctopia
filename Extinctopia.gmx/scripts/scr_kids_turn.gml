globalvar kids_chosen_attack;
kids_chosen_attack=argument0;   //Takes in the attack the user chose


if(attackpress==true){
    attackpress=false;
    attackinitiated=true;
    global.Tole=global.Tole-tp_usage1;  //Lowers the user's TP from their attack
    
    if(obj_happypoints.kid_disposition==0){     //If the kid is happy...
        if(argument0==1){                         //And if the player chose to juggle...
            happypoints=happypoints+tp_usage1*3;    //Critical hit!
        }
        else{
            happypoints=happypoints+tp_usage1;  //Otherwise, normal hit
        }
    }
    
    if(obj_happypoints.kid_disposition==1){     //If the kid is mad...
        if(argument0==4){                         //And if the user chose to dance
            happypoints=happypoints+tp_usage1*3;    //Critical hit!
        }
        else{
            happypoints=happypoints+tp_usage1;      //Otherwise, normal hit
        }
    }
    if(obj_happypoints.kid_disposition==2){ //If the kid is sad...
        if(argument0==2){                       //and if the user chose to hug them
            happypoints=happypoints+tp_usage1*3;    //Critical hit!
        }
        else{
            happypoints=happypoints+tp_usage1;  //Otherwise, normal hit
        }
    }
    
    //////
    // Maybe throw in a flavor text here about how he attacks?
    //////
    
    if(obj_happypoints.kid_disposition==0){     //If the kid is happy,
        global.Tole=global.Tole-1;              //Tolerance - 1
    }
    if(obj_happypoints.kid_disposition==1){     //If the kid is mad,
        global.Tole=global.Tole-3;              //Tolerance - 3
    }
    if(obj_happypoints.kid_disposition==2){     //If the kid is sad,
        global.Tole=global.Tole-2;              //Tolerance - 2
    }
    obj_happypoints.kidAttack=true;
    obj_introText.played_more_than_once=false;
}
