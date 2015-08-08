//If the ball hits a horizontal wall, bounce off of it.

if(y <= 0 || y >= room_height)
{
    y = yprevious;
    vspeed = -vspeed;
    audio_play_sound(beep, 10, false);
} 


//If the ball hits a vertical wall, figure out which wall and give that player a point

if(x <= 0)
{
    global.enemyScore++;
    instance_create( room_width / 2, room_height / 2, ballObject );
    instance_destroy();
}
else if(x >= room_width)
{
    global.playerScore++;
    instance_create( room_width / 2, room_height / 2, ballObject );
    instance_destroy();
}


//if the ball hits a paddle, have it bounce off. 
//Determine the angle by where the ball hit the paddle.

if(place_meeting(x,y,playerPaddleObject))
{   
    direction = radtodeg(arctan2(playerPaddleObject.y - playerPaddleObject.y, playerPaddleObject.x - (playerPaddleObject.x - 50)) - arctan2(y - playerPaddleObject.y, x - (playerPaddleObject.x - 50)));    
    speed++;
    audio_play_sound(beep, 10, false);
    
} else if(place_meeting(x,y,enemyPaddleObject))
{
    direction = radtodeg(arctan2(enemyPaddleObject.y - enemyPaddleObject.y, enemyPaddleObject.x - (enemyPaddleObject.x + 50)) - arctan2(y - enemyPaddleObject.y, x - (enemyPaddleObject.x + 50))) + 180;    
    speed++;
    audio_play_sound(beep, 10, false);
}


//If the speed is getting too high, lower it.

if(speed > 10)
{
    speed = 10;
} 
