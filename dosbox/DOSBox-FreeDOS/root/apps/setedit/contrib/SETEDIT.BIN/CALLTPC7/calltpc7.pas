{*****************************************************************************
* Program's Title: CallTPC7
* Author(s): Andreas Leidner (leidner@gmx.net)
* File Created: 28.09.1999
* File Last Modified: 28.09.1999 21:20
* Program's Version: 0.01
* Program's Description: CallTPC7 is a wrapper for the Borland Turbo Pascal
*           Compiler Version 7.x for MS-DOS. It calls the compiler tpc.exe to
*			compile the file given as the first parameter on the command-line.
*			Then it collects the compiler's output and writes the error
*			messages in the FSF error format to the standard output.
* Parameters: first parameter: /? - to get help and version information
*			  first parameter: <PascalFilename.pas> - file to be compiled
*			  second,... parameters: will be given to the compiler at
*                                    the commandline.
* Note: Feel free to improve this utility. Send an e-mail to me (see above)
*		if you've changed the source code.
*		This software is licensed under the GNU Public License (GPL),
*       at your choice version 2 of the license or above. You can obtain a
*	    copy of the license from the Free Software Foundation (FSF).
*****************************************************************************}
program calltpc7;

{$M $4000,0,0 } { -> 16K stack, no heap; this is necessary to execute
                     programs that use the "keep" procedure. }

uses
    Wrapper7; { Wrapper7 contains all the important functions of this program. }

begin { main }
      if (ParamStr(1) = '/?') or (ParamCount = 0) then
		 PrintHelpAndVersion
	  else begin
		   Initialize;
	       if CallCompiler then begin { only if compiler was called successfully. }
	          if GetCompilerErrors(tpcErrors) then begin { only if file could be accessed. }
	             ConvertToFSF(tpcErrors, FSFErrors);
	             OutputFSF(FSFErrors)
              end
			  else
				  Writeln('ERROR: Couldn''t access file ',tpcOutput_filename,'.');
		   end; { if }
	  end { else }
end. { main }