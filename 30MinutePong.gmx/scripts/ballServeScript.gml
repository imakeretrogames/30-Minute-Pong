//Make the ball stop blinking and set it in motion, between -30 and 30 degrees in a random
//direction.
//Stop the animation, so the ball is visible for the whole game.

image_speed = 0;
image_index = 0;
serveDirection = choose(0,1);

if(serveDirection == 0)
{
    direction = floor(random_range(-30,30));
}
else
{
    direction = floor(random_range(-30,30)) + 180;
}

speed = 6;
