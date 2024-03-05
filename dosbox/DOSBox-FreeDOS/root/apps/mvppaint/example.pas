Program Example;
uses crt,graph;

{
  This Turbo Pascal Code example is an example of a program that simply
  loads the SVGA256 device driver, goes into graphics mode, loads an
  image from disk (one with a palette), and displays it.

  Procedure Load256Image will load an image file and place it in the variable
  pointer image.  If you are a registered user feel free to use Load256Image
  in your programs.

  To run this demonstration, you will need to have Turbo Pascal as well as
  the SVGA256.BGI device driver.  This driver is available as shareware,
  through Jordan Hargave (see ReadMe.Doc), but it is also distributed with
  MVP Paint.  You have to have a VGA monitor for this example to run, however,
  Super VGA is not at all required.
}


Type
    ColorRec = record
        r,g,b: byte;
    end;
    PalType = array[0..255] of ColorRec;
    PalFileType = file of PalType;



procedure Load256Image(var p:pointer; FName: string);
var
   VGAImageSize,ErrCode: word;
   LoadFile: file;
   i: word;
   r: pointer;
begin
    {$I-}
    Assign(LoadFile,FName);
    Reset(LoadFile,1);
    {$I+}
    if IOResult=0 then begin
        GetMem(r,FileSize(LoadFile));
        {$I-}
        BlockRead(LoadFile,r^,FileSize(LoadFile),ErrCode);
        {$I+}
        VGAImageSize := ImageSize(0,0,MemW[Seg(r^):Ofs(r^)],MemW[Seg(r^):Ofs(r^)+2]);
        If (VGAImageSize < FileSize(LoadFile)) then
            GetMem(p,FileSize(LoadFile)-768)
        else
            GetMem(p,FileSize(LoadFile));
        for i := 1 to (VGAImageSize) do
            Mem[Seg(p^):Ofs(p^)+i-1] := Mem[Seg(r^):Ofs(r^)+i-1];
        If (VGAImageSize < FileSize(LoadFile)) then begin
            for i := 0 to 255 do begin
               Port[$3C8] := i;
               Port[$3C9] := Mem[Seg(r^):Ofs(r^)+(i*3)+VGAImageSize];
               Port[$3C9] := Mem[Seg(r^):Ofs(r^)+(i*3)+VGAImageSize+1];
               Port[$3C9] := Mem[Seg(r^):Ofs(r^)+(i*3)+VGAImageSize+2];
            end;
        end;
        FreeMem(r,FileSize(LoadFile));
        if IOResult <> 0 then begin
            textmode(c80);
            writeln('Error: ',ErrCode);
            halt(1);
        end;
        Close(LoadFile);
    end else
        Halt(0);
end;

procedure Load256Palette(PalName: string);
Var
    PalFile: PalFileType;
    Pal: ^PalType;
    i: integer;
begin
    New(Pal);
    Assign(PalFile,PalName);
    Reset(PalFile);
    Read(PalFile,Pal^);
    Close(PalFile);
    for i := 0 to 255 do begin
        Port[$3C8] := i;
        Port[$3C9] := Pal^[i].r;
        Port[$3C9] := Pal^[i].g;
        Port[$3C9] := Pal^[i].b;
    end;
    Dispose(Pal);
end;


function DetectVGA256 : integer;
{ Detects VGA or MCGA video cards }
var
   DetectedDriver : integer;
   SuggestedMode  : integer;

begin
     DetectGraph(DetectedDriver, SuggestedMode);
     If (DetectedDriver < 9) then begin
         TextMode(c80);
         TextColor(LightGray);
         writeln('This program requires a VGA System.');
         halt;
     end;
     if (DetectedDriver = VGA) or (DetectedDriver = MCGA) then
         DetectVGA256 := 0        { Default video mode = 0 }
     else
         DetectVGA256 := grError; { Couldn't detect hardware }
end; { DetectVGA256 }



Var
   gdrive,gmode: integer;
   image: pointer;
   ch: char;

begin
     GDrive := DetectVGA256;
     GDrive := InstallUserDriver('SVGA256', @DetectVGA256);
     GDrive := Detect;
     Gdrive := InstallUserDriver('SVGA256',Nil);

     gmode:=0;
     InitGraph(Gdrive,Gmode,'');
     SetGraphMode(Gmode);

     Load256Image(image,'Moon.VGA');
     PutImage(0,0,image^,copyput);
     FreeMem(image,imagesize(0,0,MemW[Seg(image^):Ofs(image^)],MemW[Seg(image^):Ofs(image^)+2]));
     ch := readkey;
     TextMode(c80);
end.