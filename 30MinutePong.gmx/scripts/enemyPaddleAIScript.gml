//Move the paddle based on where the balls is.
//If the paddle's Y is within 6 pixels of the ball's, move slower to avoid jittering.

deltaBall = abs(ballObject.y - y);

if(ballObject.y > y && y <= ((room_height*.9) - (sprite_height / 2 ) ) )
{
    if(deltaBall > 6)
    {
        y += 6;
    }
    else
    {
        y += deltaBall;
    }
} else if (ballObject.y < y && y >= ((room_height*.1)  + (sprite_height / 2 ) ) )
{   
    if(deltaBall > 6)
    {
        y -= 6;
    }
    else
    {
        y -= deltaBall;
    }
}
