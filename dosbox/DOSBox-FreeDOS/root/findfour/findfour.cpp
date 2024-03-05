




//findfour.cpp
/*
Author(s): Steven Miller
Date created: March 4 2024
Purpose: main code for findfour.exe
Notes: uses openwatcom
Log:
    $March 4 2024, Steven Miller
        initial creation

*/
//includes
#include <stdlib.h>
#include <cmath>
#include <string>
#include <fstream>
#include "drivers/Mouse.h"
#include "drivers/Vga.h"
//definitions

/*main code*/

//initializes game
int init()
{
    //verify mouse is present
    if(Mouse::getInstance() == nullptr)
    {
        return -1;
    }
    return 0;
} 
//ran every frame, updates game board and checks for winner
int update()
{
    
    return 0;
}


//shut everything down
void shutdown()
{

}

uint8_t* read_file(std::string file_name)
{
    uint8_t file_buffer[768];
    file_name = "/datafiles/" + file_name;
    std::fstream* file_pointer = new std::fstream(file_name,std::fstream::in);
    //open file
    file_pointer->open(file_name, std::ios_base::binary | std::ios_base::in);
    //read file one byte at a time
    file_pointer->read()
    //sanity check
}
int main()
{
    int x = init();
    while(update() == 0)
    {
        //just continue running
    }
    shutdown();
    return 0;
}

