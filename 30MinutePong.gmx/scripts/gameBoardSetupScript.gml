//Create the player and enemy paddle. Create the ball. Place everything.

instance_create( room_width / 2, room_height / 2, ballObject );
instance_create( room_width * .1, room_height / 2, playerPaddleObject );
instance_create( room_width * .9, room_height / 2, enemyPaddleObject );


//Set the scores to 0.

globalvar playerScore;
playerScore = 0;
globalvar enemyScore;
enemyScore = 0;
