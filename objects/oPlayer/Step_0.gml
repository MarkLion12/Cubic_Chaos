// get inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left); 
jumpKeyPressed = keyboard_check(vk_up); 



// getting xspd and yspd
   //xsped based on button presses
   xspd = (rightKey - leftKey) * moveSpd;
   //apply graviti to the yspd
   yspd += grav;
   
   
   //jump
   if jumpKeyPressed && place_meeting(x, y+1, oWall)
   {
	   yspd = jumpSpd;
   }
   
   
  //collisions
    //x collisinns
	if place_meeting(x + xspd, y, oWall)
	{
		
		var _pixelCheck = sign(xspd);
		while !place_meeting(x + _pixelCheck, y, oWall)
		{
			x += _pixelCheck
		}
		
		//set speed to zero
		xspd = 0;
	}
	
	//y colysion
	if place_meeting(x + xspd, y + yspd, oWall)
	{
		var _pixelCheck = sign(yspd);
		while !place_meeting(x + xspd, y + _pixelCheck, oWall )
		{
			y += _pixelCheck
		}
		//set speed to zero
		yspd = 0;
	}
	
//moove the player
x +=xspd
y +=yspd
	