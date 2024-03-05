TETRIS Queen - Version 1.4.1
Copyright (C) 1999-2002 by David A. Capello
-------------------------------------------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA


1. INDEX
--------

   1. Index
   2. Introduction
   3. Requirements
   4. Configuration
   5. Controls
   6. Menus
   7. Playing
   8. Programming
   9. Faq
  10. Credits


2. INTRODUCTION
---------------

I am David A. Capello and I will introduce you to one of so many clones of
the original TETRIS Arcade game created by TEAM TETRIS in 1988. The game is
not an exact copy of the old TETRIS but shares the same concept created by
Alexey Pajitnov in it's good old days.

To add a little more emotion to the game, I added a new game mode which you
can fin only in TETRIS Queen: "destroyer". And of course, the "Queen" title
is given because the game is a whole tribute to the famous british music
band: Queen.

For more information and updates about the game, you can visit the official
TETRIS Queen website at:

    http://qtetris.sourceforge.net

Bye, and I await your feedback.


3. REQUIREMENTS
---------------

These are the minimum requirements you need to play TETRIS Queen:

  - 486 DX (you may get to run it on a 386);
  - 4 MB of RAM (8 MB would be better, 16 MB are really nice);
  - VGA card;
  - DOS (or UNIX);
  - Keyboard;

Here you have the recommended requirements:

  - Pentium 166 Mhz or better;
  - 32 MB of RAM;
  - VGA card;
  - Sound Blaster;
  - Windows 95/98 (or GNU/Linux);
  - Keyboard and two joysticks;


4. CONFIGURATION
----------------

All the game's configuration can be tuned by the `qtetris.cfg' file, you
shouldn't touch anything outside of the [tetris] section, where you can find
the specific configuration of the game and not the configuration of the
system.

On the other hand, for "quick" configurations, you can use the commandline,
where you can start the game with different options:

  qtetris [OPTIONS]

Available options are:

  -r, --resolution WIDTH HEIGHT   use a special resolution (in 8 bpp)
  -i, --nointro                   do not display the introduction
  -s, --nosound                   do not install sounds
  -j, --nojoy                     do not install joystick
  -m, --merge HOF_FILE            add the hall of fame and exit
  -h, --help                      display this help and exit
      --version                   output version information and exit

For example, if you want to play without sound (because you are already
hearing to your favourite MP3 files with another program), and you don't
want the introduction, you can start the game like this:

  qtetris -is


5. CONTROLS
-----------

The general keys of the game are:

  ESC       quits the game, returns to the menus, and does anything
            to cancel things;
  CTRL+Q    aborts the game and returns to the operative system;
  F11       pauses the game;
  F12       makes a BMP screenshot of the game;

Keys for some extra functions while you are playing:

  F1        lower the digital sound volume;
  F2        increase the digital sound volume;
  F3        lower the music sound volume;
  F4        increase the music sound volume;
  F5        jumps to the previous song;
  F6        jumps to the next song;
  F7        jumps to a random song;

The DEFAULT keys for each player are:

  PLAYER1:       PLAYER2:
  Left           A            move the block to the left;
  Right          D            move the block to the right;
  Down           S            drops the block quickly;
  Delete         1            rotate block to the left;
  End            2            rotate block to the right;

The default keys can be changed from the menu OPTIONS/CONTROLS/PLAYER X.
For example, if you want to use joystick's one first button to move
player's one block down:

  - go to "OPTIONS/CONTROLS/PLAYER 1";
  - select option "DOWN: ...", and press ENTER;
  - now, press joystick's 1 first button;
  - done, now, if you want to recover the old values for all keys, you only
    have to choose the "RESTORE" option found on the same menu;

IMPORTANT NOTE WHEN ENTERING A NEW RECORD: when you have to enter a new
record, you will see three letters, using the keys to move the block to
the sides you can go changing the first, second and third letter, using
the rotate buttons you can change the selected letter, and pressing down
you accept it. Take care whith this operation, as you might enter unwanted
initials.


6. MENUS
--------

  MAIN:
  |
  +- 1 PLAYER:       start the game for one player (you first will have to
  |                  select a game mode);
  |
  +- 2 PLAYERS:      start the game for two players;
  |
  +- HALL OF FAME:   shows the best scores;
  |
  +- OPTIONS:
  |  |
  |  +- SOUND:       modify the digital sound volume;
  |  |
  |  +- MUSIC:       modify the music sound volume;
  |  |
  |  +- SOUND TEST:
  |  |  |
  |  |  +- LEFT:     plays a sound through the left speaker;
  |  |  |
  |  |  +- CENTRE:   plays a sound through both speakers;
  |  |  |
  |  |  +- RIGHT:    plays a sound through the right speaker;
  |  |  |
  |  |  `- FLIP PAN: flips the sound orientation (if sounds play from
  |  |               through the wrong speakers, use this option and try
  |  |               again);
  |  |
  |  +- CONTROLS:
  |  |  |
  |  |  +- PLAYER 1: shows player's one button configuration;
  |  |  |
  |  |  +- PLAYER 2: shows player's two button configuration;
  |  |  |
  |  |  `- CALIBRATE
  |  |     JOYSTICK: shows a screen where you can calibrate both joysticks;
  |  |
  |  |
  |  `- RESET HIGH
  |     SCORES:      erases the scores, changing them for the default values
  |                  (you will first have to choose the mode's high scores
  |                  you want to delete);
  |
  +- CREDITS:        shows the game's credits;
  |
  `- EXIT:           exits the game and returns to the operative system;


7. PLAYING
----------

TETRIS Queen's different game modes are:

1 PLAYER:

  CLASSIC:

    The classic TETRIS mode. The main purpose of the game is to make
    complete lines with the falling blocks, and if you do two, three or
    four lines at the same time, you will get more points. Here you have
    the points table:

      SINGLE:  1 line    10 points
      DOUBLE:  2 lines   50 points
      TRIPLE:  3 lines   200 points
      TETRIS:  4 lines   500 points

  DESTROYER:

    Just like the classic, but this time some of the falling blocks will
    contain a bomb, none, or will be full of them. When you complete a
    line, all the bombs of that line will activate themselves, exploting
    and throwing away all the nearest blocks. If the expansive wave hits
    another bomb, this will also explode, creating thus "chain reactions".

    But this is not all, if you join 4 bombs, you will make a Mega-Bomb,
    which will have a bigger explosive wave.

    Exploting bombs will also give points, but only if the bomb was in the
    same line you completed, bombs hit by expansive waves don't count.

    The points are:

      BOMB:       10 points
      MEGA-BOMB:  50 points

    And last, to make the game more challenging, every 10 seconds you will
    be rewarded with a "bad" line, so you will have to be quick.

2 PLAYERS:

  CLASSIC:
  DESTROYER:

    Just like classic one player mode, but completed lines will be
    accumulated, and every 10 seconds, the other player will recieve a bad
    line for one accumulated line. Evenly, if the other player continues
    to complete lines, he can diminish the effect, to the point that if he
    completes more lines that you, you would be added "bad lines".


8. PROGRAMMING
--------------

To get the source code of TETRIS Queen and to begin to modify things,
you can make it download the package "qtetris*-src.zip" or directly from the
CVS repository (you look at the section FAQ for more information on this
topic), anyway, next to this you will need the package "qtetris*-dat.zip"
that contains the sources of the data (.BMP, .PCX, .WAV, .MID, etc.) to be
able to create the data file and their corresponding header file.

To compile successfully the game, you should have Allegro, and if you have
Allegro you are suposed to know how to compile it. Now, the process to build
TETRIS Queen is exactly the same (or practically the same). Go to the
directory `qtetris/src', and run one of the two files fix.bat or fix.sh
(depending on your operating system). Then run `make depend' and finally
`make' from the commandline. If everything goes well, you will have the game
ready to play, and if not, you will have to warn me, since I didn't test
some versions (ie: the Watcom port).

On the other hand, if it is the first time that you compile the game (or you
modify the data sources), you will reconstruct the data file executing
`makedata.bat' (in platforms based on DOS) or the file `makedata.sh'
(in platforms based on Unix).

Here you have an example of how it would be to compile the game in DOS
with DJGPP:

  >fix.bat djgpp
  >makedata.bat
  >make depend
  >make

You can also use options like `make DEBUGMODE=1' to generate code suitable
for debugging TETRIS Queen, or `make STATICLINK=1' to link against static
versions of Allegro (under Windows or Unix) and avoid using dynamic
libraries (like .DLLs or .so files).


9. FAQ
------

Q: What's new in this version?
A: A little bit more documentation and different internal improvements to
   allow building the game under other platforms (DOS, Windows, Unix,
   GNU/Linux, QNX). And the new '-r' option for execute the game in
   different resolutions (or window sizes), and also `-m' for mix
   your records with your friends.

Q: Did you take 3 years to write a simple TETRIS?
A: The truth is that it was one and without motivation :-) The main
   culprit was that I changed my mind every day (something which shouldn't
   be done if you make a good previous design :-), and I didn't want to
   program something without much future (nobody get's suprised by a
   simple tetris), but now I only write maintenance versions (if Allegro
   changes, TETRIS too) and that's why I keep adding years (ie: 2001).
   Anyway, I don't understand why are you so interested in my delay, when
   after all the game is done.

Q: The music has low quality. How can I improve them?
A: The only way, for the moment, is to download some WAVETABLES to
   substitute the "poor" MIDI sounds with "powerfull" high quality samples
   included in these wavetable files. You can find some links to them from
   the Allegro web page itself:

     http://alleg.sourceforge.net/digmid.html

Q: Where do I get the CVS tool?
A: The Windows CVS (Concurrent Versions Systems) version is at:

     ftp://ftp.cvshome.org/pub/cvs-1.11/windows/cvs1-11.zip

   For other versions of this program you can go to:

     http://www.cvshome.org

Q: How do I get the source code from the CVS repository?
A: Once you have the cvs tool, follow these steps:

   1) You have to login anonymously to the repository with:

      cvs -d :pserver:anonymous@cvs.qtetris.sourceforge.net:/cvsroot/qtetris login

   2) Now checkout the module, getting a "fresh" TETRIS Queen version:

      cvs -z3 -d :pserver:anonymous@cvs.qtetris.sourceforge.net:/cvsroot/qtetris checkout qtetris

   3) Once you have done this, every time you want to update your local
      copy, you only have to run from the `qtetris/' directory:

      cvs update

   IMPORTANT: when you get the CVS version, don't delete the CVS
   directories or their contents, they are used internally by the program.

Q: When I want to compile the game, something appears as this:
   make.exe: *** No rule to make target `data.h', needed by `obj/block.o'.  Stop.
   What I do?
A: This is due to that you have not still reconstructed the data file, to
   make it, execute makedata.bat or makedata.sh, wait a while and attempt
   it again.

Q: I've got problems and there's not much documentation :-(
   Where can I get more help?
A: You can send me an email to my own address:

     dacap@users.sourceforge.net

   If you find a bug, a documentation mistake or something weird or
   confusing, don't hesitate to ask me and warn me about it.


10. CREDITS
-----------

You look at `authors.txt' to see who participated directly in the project and
`thanks.txt' to see the gratefulness to people that it would be impossible
without its help the existence of TETRIS Queen today in day.
