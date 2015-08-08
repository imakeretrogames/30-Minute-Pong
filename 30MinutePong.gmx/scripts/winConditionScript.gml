//Determine if someone's score is better than 10.
//Choose an endgame message.
//Go to the end room.

globalvar endGameMessage;
if(global.playerScore >= 10)
{    
    endGameMessage = "Player Wins.";
    room_goto(endRoom);
}
else if(global.enemyScore >= 10)
{
    endGameMessage = "Computer Wins.";
    room_goto(endRoom);
}
