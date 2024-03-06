




//findfour.cpp
/*
Author(s): Steven Miller
Date created: March 4 2024
Purpose: main code for findfour.exe
Notes: uses openwatcom
Log:
    $March 4 2024, Steven Miller
        initial creation
    $March 5 2024, Steven Miller
        added file handling
        created find four class to make it easier to handle

*/
//includes
#include <stdlib.h>
#include <cmath>
#include <string>
#include <fstream>
#include <cstring>
#include "drivers/Mouse.h"
#include "drivers/Vga.h"
//definitions
#define marker_pixelsize 1024
#define VGA_graphical_mode 13
//variables
static uint8_t* VGA_color_palette;
static uint8_t* marker_blue;
static uint8_t* marker_red;
static uint8_t* marker_board;
static uint8_t* screen_backbuffer;
static uint8_t* VGA_address;
static Mouse* peripheral_mouse;
/*main code*/

//shut everything down
void shutdown()
{
    delete[] VGA_color_palette;
    delete[] marker_blue;
    delete[] marker_red;
    delete[] marker_board;
    delete[] screen_backbuffer;
}

//this is just for logging
void log(std::string file_name, std::string file_message)
{
    std::fstream* file_pointer = new std::fstream();
    file_pointer->open(file_name.c_str(),  std::ios::out);
    //write message to file
    file_pointer->write(file_message.c_str(),file_message.length());
    file_pointer->close();
    delete file_pointer;
}
//read specified file for number of bytes
//CANNOT GUARANTEE FUNCTIONALITY AT THIS TIME
uint8_t* read_file(std::string file_name, uint16_t file_numberofbytes)
{
    uint8_t* file_buffer = new uint8_t[file_numberofbytes];
    file_name = "datafiles/" + file_name;
    std::fstream* file_pointer = new std::fstream();
    //open file
    file_pointer->open(file_name.c_str(), std::ios::binary | std::ios::in);
    if(!file_pointer)
    {
        return NULL;
    }
    //read file
    file_pointer->read((char*)file_buffer,file_numberofbytes);
    file_pointer->close();
    delete file_pointer;
    return file_buffer;
}

//writes to screen
int drawtoscreen()
{
    //dont worry about dirty pixels for now, just draw to the screen as proof of concept.
    std::memcpy((void*)VGA_address,(void*)screen_backbuffer,64000);
    Vga::verticalSync();
    return 0;
}
//initializes game
int init()
{
    peripheral_mouse = Mouse::getInstance();
    //verify mouse is present
    if(peripheral_mouse == NULL)
    {
        log("errlog.txt","mouse does not exist");
        return -1;
    }
    //load palette
    VGA_color_palette = read_file("test.txt",31);
    if(VGA_color_palette == NULL)
    {
        log("errlog.txt","VGA palette does not exist");
        return -2;
    }


    //load blue marker
    marker_blue = read_file("blue.vga",2+marker_pixelsize);
    if(marker_blue  == NULL)
    {
        log("errlog.txt","blue marker does not exist");
        return -3;
    }

    //load red marker
    marker_red = read_file("red.vga",2+marker_pixelsize);
     if(marker_red  == NULL)
    {
       log("errlog.txt","red marker does not exist");
        return -4;
    }

    //load board markers
    marker_board = read_file("board.vga",2+marker_pixelsize);
     if(marker_board  == NULL)
    {
        log("errlog.txt","board marker does not exist");
        return -5;
    }

    //change to graphical mode
    Vga::setMode(13);
    //load palette into vga
    for(int i=0; i < 256; i+=3)
    {
        Vga::setPaletteEntry(i,VGA_color_palette[i],VGA_color_palette[i+1],VGA_color_palette[i+2]);
    }
    //create the back buffer and clear it
    screen_backbuffer = (uint8_t*)calloc(64000,sizeof(uint8_t));
    drawtoscreen();
    return 0;
} 
//ran every frame, updates game board and checks for winner
int update()
{
    if(peripheral_mouse->getRight())
    {
        shutdown();
        return 1;
    }
    for(int i =0; i < 64000; i++)
    {
        screen_backbuffer[i] = rand()%256;
    }
    drawtoscreen();
    return 0;
}

int main()
{
    if(init() != 0)
    {
         //shut it down
        shutdown();
        return 0;
    }
    while(1)
    {
        if(update() != 1 || update() != 0)
        {
            log("errlog.txt","something went wrong when updating the screen");
            shutdown();
            return 0;
        }
        else if(update() == 1)
        {
            log("errlog.txt","program exited gracefully");
            return 0;
        }
    }
    return 0;
}

