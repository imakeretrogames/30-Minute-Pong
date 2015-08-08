//Move down if the player presses a key, and has not hit a boundary.

if(keyboard_check(vk_down) && y <= ((room_height*.9) - (sprite_height / 2 ) ) )
{
    y += 6;   
}
else if(keyboard_check(vk_up) && y >= ((room_height*.1)  + (sprite_height / 2 ) ) )
{
    y -= 6;
}
