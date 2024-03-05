/*
  This Turbo C Code example is an example of a program that simply
  loads the SVGA256 device driver, goes into graphics mode, loads an
  image from disk (one with a palette), and displays it.

  Function Load256Image will load an image file and place it in the variable
  pointer image.  If you are a registered user feel free to use Load256Image
  in your programs.

  To run this demonstration, you will need to have Turbo C as well as the
  SVGA256.BGI device driver.  This driver is available as shareware,
  through Jordan Hargave (see ReadMe.Doc), but it is also distributed with
  MVP Paint.  You have to have a VGA monitor for this example to run,
  however, Super VGA is not at all required.
*/

#include <graphics.h>
#include <stdio.h>
#include <alloc.h>
#include <io.h>
#include <fcntl.h>
#include <dos.h>

#define VGA320X200 0

int huge DetectVGA256(void);
unsigned char *load256image(char *filename);

void main(void)
{
	int gd=DETECT, gm, i;
	unsigned char *image;

	installuserdriver("SVGA256",DetectVGA256);
	initgraph(&gd,&gm,"");

	image=load256image("moon.vga");

	putimage(0,0,image,COPY_PUT);

	getch();
	closegraph();
	free(image);
}

int huge DetectVGA256(void)
{
	return(0);
}

unsigned char *load256image(char *filename)
{
	int fp, color;
	unsigned int xsize, ysize, vgasize;
	long size;
	unsigned char *image;

	fp=open(filename, O_RDONLY | O_BINARY);
	size=filelength(fp);
	image=malloc(size);
	read(fp,image,size);
	close(fp);

	xsize=*(image+0)+*(image+1)*256;
	ysize=*(image+2)+*(image+3)*256;
	vgasize=imagesize(0,0,xsize,ysize);

	if (size > vgasize)
	{
		for (color=0; color < 256; color++)
		{
			outportb(0x3C8,color);
			outportb(0x3C9,*(image+vgasize+(color*3)+0));
			outportb(0x3C9,*(image+vgasize+(color*3)+1));
			outportb(0x3C9,*(image+vgasize+(color*3)+2));
		}
		image=realloc(image,vgasize);
	}
	return(image);
}
