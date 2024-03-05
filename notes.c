//load palette file into 768 byte array
//in indices of 3, load palette colors into vga controller
//to draw to the screen:
//1. get pointer to vga address
//2. write a specified color number into the vgas memory like so
uint8_t* videomemory = 0xA0000;
uint16_t screenwidth = 16000;
uint16_t screenheight = 16000;
uint8_t blockwidth = 32;
uint8_t blockheight = 32;
//draw across screen
//for every block we want to draw
for(int i = 0; i <screenwidth/32; i++)
{
    //draw each block
    for(j =0; j < blockwidth; j++)
    {
        //i*blockwidth = pixel offset with respect to entire row of blocks
        //(i*blockwidth) + blockwidth = pixel offset with respect to one block
        //I.E: "videomemoryaddress+(i*blockwidth)" adds which current block were drawing
        draw_vga(videomemoryaddress+(i*blockwidth)+blockwidth,)
    }
}
//as stated in specifications, we need a "back buffer"
//a back buffer is a seperate region of memory that we perform operations on
//say we wanted to update the screen
/*
we can do it two ways:
1.everytime we wanna update, we just draw pixels to the screen: inefficient but easier
2.allocate 64 kilobytes of memory using malloc, treat said memory as our "scratch pad"(because were drawing)
    then, raise a flag if our scratch pad has changed. if it has, rewrite it to video memory. if not, move on.
*/
//double buffering allows us to work on our actual video memory without having to unnecessarily
//copy the array to the screen. this saves resources.

//now, how do we determine when to write to the screen?
//well, as we said, only when our scratchpad has changed
//well how do we know its changed?

//dirty rectangles!
//for our specific game, we can check cursor position
//we find cursor position in our array (cursor.positionx() * cursor.positiony())
//then, we travel 16 pixels to the left, check for clipping, and replace pixels with values of our cursor
//then, we travel 16 pixels to the right, check for clipping, and replace pixels with values of our cursor
//then, we travel 16 pixels up, check for clipping, replace pixels with values of our cursor
//then, we travel 16 pixels down, check for clipping, replace pixels with values of our cursor.
//after were done actually scratchpadding our pixels, we can draw to the screen.

//this way, any pixels that have nothing to do with our cursor arent affected
//this is alot more efficient than just redrawing the entire screen every update

//we also need to do clipping
//say we wanted to make it so that every pixel in the cursor
//can leave the screen EXCEPT the middle pixel
//we can achieve clipping by doing the following:
/*
1.get the current pixel position x and y based on current cursor
  position
2.check to see if all 4 parts of the cursor exceed the bounds of the 
  2d array
*/
//get current cursor position
int16_t xpos = cursor.getpositionx();
int16_t ypos = cursor.getpositiony();
//check if cursor is out of bounds
for(int i=0; i < 16; i++)
{
    //check if to left of cursor is out of bounds
    if((xpos + i) <= screen.width())
    {
        screen_array[(xpos+i)*ypos] = cursor.middlex()+i;
    }
    //check if to right of cursor is out of bounds
    if((xpos - i) >= screen.width())
    {
        screen_array[(xpos-i)*ypos] = cursor.middlex()-i;
    }
    //check if upper part of cursor is out of bounds
     if((ypos - i) >= screen.height())
    {
        screen_array[(ypos-i)*xpos] = cursor.middley()-i;
    }
    //check if lower part of cursor is out of bounds
     if((ypos + i) <= screen.height())
    {
        screen_array[(ypos+i)*xpos] = cursor.middley()+i;
    }
}
//note: to save on resources, you dont need to perform a redraw
//if the mouse position hasnt changed since the last update

//everytime you actually redraw the screen, save the current
//mouse position x and y

//next time its time to redraw the screen, compare the current 
//mouse position x and y with the saved one

//if they are the same, theres nothing to redraw and you can simply
//skip this one
