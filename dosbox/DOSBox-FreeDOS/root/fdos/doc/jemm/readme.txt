
 Contents

  1.   About Jemm
  2.   Jemm's Features
  3.   Commandline Options
  4.   EMS Implementation Notes
  5.   Emulation of privileged Opcodes
  6.   Other Tools
  6.1  UMBM
  6.2  JEMFBHLP
  6.3  CPUSTAT
  6.4  EMSSTAT
  6.5  XMSSTAT
  6.6  MEMSTAT
  6.7  MOVEXBDA
  7.   Troubleshooting, Hints
  8.   License


 1. About Jemm

 Jemm is an "Expanded Memory Manager", based on the source of FreeDOS
 Emm386. It should work with MS-DOS and compatible DOSes, including FreeDOS.
 Like other EMMs it installs the following services:

 - uses extended memory to simulate expanded memory (EMS) according to 
   EMS v3.2 and EMS v4.0.
 - upper memory blocks (UMB) where drivers and resident programs may
   be loaded, thus increasing available free DOS memory.
 - mapping RAM to the video address segments A000-AFFF and B000-B7FF.
 - VCPI services to allow DOS applications running in V86-mode to
   switch to protected mode. VCPI also implements a simple memory management.
 - VDS API to give drivers/applications some control over DMA and physical
   addresses in V86-mode.

 There exist 2 versions of Jemm:

 - Jemm386: standard version which needs an external XMM (HimemX.exe for
            example) to be loaded.
 - JemmEx:  extended version which has an XMM already included.

 JemmEx most likely is the better choice because it will need less DOS
 memory than an external XMM + Jemm386.


 2. Jemm's Features

 The main purpose of making Jemm was to make it use less resources than
 other EMMs, without making compromises regarding speed or compatibility.
 The results currently are:

 - Jemm386 needs just 128 bytes DOS upper memory. JemmEx uses more, mostly
   because it includes the XMS handle array which is located in DOS memory.
   With 32 XMS handles JemmEx needs 496 bytes DOS memory.
 - Jemm's extended memory usage is:
   + 44 kB for Jemm itself
   + 64 kB for the DMA buffer (default size)
   + xx kB for UMBs mapped in the first MB
   +  4 kB fixed amount for EMS handle management.
   + xx kB variable amount for EMS/VCPI memory management. For each 1.5 MB
        VCPI memory 64 bytes are needed, for each EMS page 5 bytes are needed.
        For the default values (120 MB VCPI, 2048 EMS pages) this is 16 kB.
 - VCPI shared address space in extended memory is just 4 kB.

 Other features are:

 - Jemm can be loaded and unloaded from the command line. Disadvantage:
   DOS won't care about UMBs supplied this way.
 - CPUs which provide the Virtual-8086 Mode Extensions (Pentium+) are
   actively supported, which increases the emulation speed.
 - the FASTBOOT option shortens reboot time.
 - the SPLIT option can gain additional DOS high memory.
 - Exceptions in protected-mode are detected and displayed.
 - a (rudimentary) API is supplied which allows to extend Jemm. [ JLoad
   uses this API to add support for 32bit protected-mode extensions (JLMs). ]


 3. Commandline Options

 For a list of available options enter:

 JEMM386/JEMMEX -?

 Option     Comment
 ----------------------------------------------------------
 A20/NOA20  will set the A20 enable/disable emulation accordingly.
 ALTBOOT    this option is meant to select an alternate reboot handler,
            if the standard handler doesn't work. Currently it does nothing.
 B=xxxx     specify lowest segment address for EMS banking (default=4000,
            min=1000).
 D=nnn      this option will set the size of the DMA buffer to <nnn> kB.
            The default size is 64 kB, max size is 128 kB. Will always be
            rounded up to next 4 kB.
 EMX        option to prevent EMX DOS extender from quickly terminating with
            message "out of memory (RM)" on machines with large amounts
            of RAM (> 256 MB). This is optionally because it makes Jemm
            behave not fully VCPI compliant, but shouldn't hurt usually.
 FASTBOOT   option might allow a fast reboot. There is no guarantee that it
            will work, though, see hints in "Troubleshooting".
 FRAME=nnn  instructs Jemm to use a certain page frame. Accepted are frame
            values from 8000 to E000 or NONE. The page frame should start
            at the beginning of a physical EMS page, that is, the frame 
            address should be divisible by 0x400 without remainder. FRAME=NONE
            disables the page frame, but there are quite some programs which
            won't run with this setting. A page frame below A000 should 
            be set only on computers with 512 kB of conventional memory.
            Usually it's better to let Jemm find a page frame on its own, 
            because choosing an address which is not free might cause troubles.
 I=mmmm-nnnn force Jemm to use a memory range for UMBs (or page frame).
            <mmmm> must be >= A000. Specifying a range which is not really
            free may give "unexpected" results.
 I=TEST     scan ROMs for unused address space. This option will regard any
            4 kB page containing identical byte values as "unused".
 LOAD       installs Jemm from the command line. Be aware that UMBs
            cannot be provided this way, since DOS will ignore them.
 [MAX=]nnn  limit the maximum amount of memory to be allocated for VCPI (and
            EMS, if <nnn> is below 32 MB). The MAX= prefix is optional (a
            number found as option will be handled as if it has a MAX=
            prefix).
 MIN=nnn    preallocates <nnn> kB of XMS memory thus making sure this
            memory is truly available for EMS/VCPI. If MIN is higher than
            MAX, MAX will be adjusted accordingly. Default for <nnn> is 0.
 NOCHECK    disallows access via Int 15h, AH=87h to address regions which
            aren't backuped by RAM.
 NODYN      disables XMS dynamic memory allocation.
 NOEMS      disables EMS support.
 NOHI       this option will prevent Jemm from moving its resident part
            into upper memory. If no UMBs are installed by Jemm, NOHI
            has no effect.
 NOINVLPG   disables usage of INVLPG opcode on 80486+ cpus. Might be useful
            if Jemm runs in a virtual environment (see "Troubleshooting").
 NOVCPI     disables VCPI. Option can be set from the command line.
 PGE/NOPGE  options will enable/disable the Page Global Enable feature
            on Pentium Pro+ cpus. This allows to mark all PTEs for the
            real-mode address space 0-110000h as "global", which gives
            a slight speed benefit for VCPI applications. Option is off by
            default because some DOS extenders will not work with PGE
            enabled. Also setting both PGE + NOINVLPG will not work.
 RAM/NORAM  will instruct Jemm to supply UMBs or not. RAM is the default.
            NORAM is intended to be used when loading Jemm from the
            cmdline, in which case adding UMBs might be less useful.
 S=mmmm-nnnn add a memory region (which must be in range C800-EFFF) as UMB.
            The memory region has to be filled with Shadow-RAM activated by
            UMBPCI, which must have been loaded *before* Himem/JemmEx.
            NOTE: for Jemm386, instead of using "S=" one might as well use
            UMBM.EXE, which additionally allows to load the XMS host "high".
 SPLIT      if ROMs are found which don't end exactly at a 4 kB boundary
            then setting this option will increase available UMB space. ROM
            sizes are defined in 0.5 kB units, so there might be up to 3.5 kB
            wasted in the ROM's last 4 kB page. There is a small catch: the
            full 4k page will be made writeable, including the ROM part.
 UNLOAD     uninstalls Jemm from the command line. Uninstalling the EMM
            might confuse resident programs which rely on EMS or VCPI but
            didn't ensure this configuration to keep unchanged (by allocating
            an EMS page) while they are running.
 V86EXC0D   makes Jemm route General Protection Faults (GPF) which occur in
            V86-mode to Int 0Dh. Without this option they are routed to
            Int 06h. Usually there's no need to set this option.
 VCPI       (re)enables VCPI. Option can be set from the command line.
 VERBOSE    talk a bit more during the load process (abbreviation: /V).
 VME/NOVME  options will enable/disable using the V86 Mode Extensions
            on Pentium+ CPUs. These options can be set from the command line.
            NOVME is the default.
 X=mmmm-nnnn exclude a memory range to be used as UMBs or page frame.
            <mmmm> must be >= A000.
 X=TEST     will exclude all upper memory regions which contain byte values
            other than 00 or FF.

 JemmEx additionally understands:

 A20METHOD:x   select A20 switch method.
               Possible values for <x>:
               ALWAYSON    Assume that A20 line is permanently ON
               BIOS        Use BIOS to toggle the A20 line
               FAST        Use port 92h, bypass INT 15h test
               PS2         Use port 92h, bypass PS/2 test
               KBC         Use the keyboard controller
               PORT92      Use port 92h always
 HMAMIN=k      set minimum amount in kB to get the HMA (default=0, max=63).
 MAXEXT=l      limit extended memory controlled by XMM to <l> kB.
 NOE801        don't use int 15h, ax=E801h to get amount of extended memory.
 NOE820        don't use int 15h, ax=E820h to get amount of extended memory.
 X2MAX=m       limit for free extended memory in kB reported by XMS V2 
               (default 65535). It is reported that some old applications
               need a value of <m>=32767.
 XMSHANDLES=n  set number of XMS handles (default=32, min=8, max=128).


 4. EMS Implementation Notes

 - The number of EMS pages is limited to 2048 (= 32 MB). It can be increased
   up to 32768 pages (= 512 MB) by setting MIN=<nnn> to a value higher than
   32 MB. However, this memory will then be preallocated, and not be available
   as XMS memory. Some applications will not work if EMS > 32 MB.

 - There is one memory pool, which is shared by EMS and VCPI.

 - The following EMS 4.0 functions aren't implemented. Calling these
   functions will return error code 84h in register AH:

   + Int 67h, AH=5Ch, prepare expanded memory manager hardware for warm boot
   + Int 67h, AH=5Dh, enable/disable OS/E


 5. Emulation of privileged Opcodes

 To provide Expanded Memory an EMM Emulator like Jemm runs the cpu in
 so-called v86-mode. This mode does not allow to run privileged opcodes.
 Some of these opcodes which might be useful for application programs
 are emulated by Jemm, however. These are:

 - mov <special_reg>, <reg>   ;special_reg = CRn, DRn, TRn
 - mov <reg>, <special_reg>   ;reg = eax, ebx, ecx, edx, esi, edi, ebp
 - WBINVD
 - INVD
 - WRMSR
 - RDMSR
 - RDTSC


 6. Other Tools

 6.1. UMBM

 UMBM is a small tool only useful if Jemm386 is used in conjunction with
 Uwe Sieber's UMBPCI. The purpose is to be able to load the XMM into
 upper memory. This driver must be loaded before Jemm386 and therefore
 cannot use UMBs provided by Jemm386.

 For JemmEx, UMBM is not needed, since it can be fully replaced by the
 S=XXXX option.

 How does UMBM work? It expects to find a "shadow" RAM region activated by
 UMBPCI. Then it installs inself as a temporary XMS host which just provides
 support for allocating UMBs. This is enough for most DOSes to grab the
 memory. After the UMBs have been allocated, UMBM will be removed from
 memory automatically.

 UMBs based on "shadow" RAM, as it is supplied by UMBPCI+UMBM, may have
 limitations depending on the motherboard's chipset. Very often the memory
 is inaccessible for DMA. Read the documentation coming with UMBPCI for more
 details.

 Enter "UMBM" on the command line and read the example how to add UMBM
 to CONFIG.SYS. UMBM has been tested to run with MS-DOS 6/7 and FreeDOS.


 6.2. JEMFBHLP

 JEMFBHLP is a tiny device driver only needed if both FreeDOS and Jemm's
 FASTBOOT option are used. FreeDOS v1.0 does not provide the information
 that Jemm needs for FASTBOOT to work, so this driver tries to cure FreeDOS'
 incapability. It saves the values for interrupt vectors 15h and 19h at
 0070h:0100h, which is the MS-DOS compatible way to do it.

 I was told that in FreeDOS v1.1 this problem has been fixed.


 6.3. CPUSTAT

 CPUSTAT can be used to display the current status of the CPU.


 6.4. EMSSTAT

 EMSSTAT can be used to display the current status of the installed EMM.
 It works with any EMM, not just Jemm.


 6.5. XMSSTAT

 XMSSTAT can be used to display the current status of the installed XMM.
 It allows to control current values of JemmEx options X2MAX, MAXEXT and
 XMSHANDLES.


 6.6. MEMSTAT

 MEMSTAT may be used to display the machine's memory layout, as it is
 returned by the BIOS. The most interesting infos are:

 - address region reserved for the ROM-BIOS
 - total amount of free memory


 6.7. MOVEXBDA

 MOVEXBDA is a device driver supposed to move the Extended BIOS Data
 Area ( XBDA or EBDA ) to low DOS memory. If an XBDA exists, it is usually
 located just below the A000 video segment, with a size of 1, 2 up to 8 kB.
 Moving the XBDA to low memory allows Jemm to increase DOS low memory up to
 736 kB with commandline parameter I=A000-B7FF ( one should be aware of a
 few limitations of this setting - see below for more details ).

 Some DOS versions will move the XBDA on their own - at least if its size
 doesn't exceed 1 kB; then MOVEXBDA is not needed and will do nothing if 
 launched.

 MOVEXBDA should work with other EMMs as well. Brief tests with MS Emm386
 didn't reveal any problems. However, it looks like MOVEXBDA won't work
 reliably with FreeDOS!


 7. Troubleshooting, Hints

 � If Jemm halts or reboots the machine, the following combinations
   of parameters may help to find the reason. Generally, Jemm386 should be
   loaded immediately after the XMM (HIMEMX.EXE, HIMEM.SYS), and the XMM
   itself should be the first device driver to be loaded. For testing, it
   might also help to prevent DOS from loading in the HMA and/or not to
   use UMBs at all.

   - X=A000-FFFF NOHI NOINVLPG

     This is the safest combination. If this doesn't work, Jemm most
     likely isn't compatible with the current DOS/BIOS.

   - X=TEST NOHI NOINVLPG

     This is slightly less safe, since Jemm will scan the upper memory
     region to find "unused" address ranges usable for UMBs. If this
     doesn't work, one has to manually set X=xxxx-yyyy to finally
     find the region which causes the troubles. Tool MEMSTAT may be used
     to find the address region which is reserved for the ROM-BIOS.

 � Jemm can be loaded from the command line with option LOAD. This may be
   helpful if there are so many displays during the boot process that one
   cannot read them carefully. Also, option /V should be added to make
   jemmm talkative. To load Jemm386 from the command line, ensure that a
   XMM has been loaded previously. For JemmEx, no XMM must be loaded, since
   it is included.

 � Jemm has been verified to run on the following virtual environments:

    Qemu, VMware, VirtualPC, Bochs, VirtualBox

   However, it might be necessary to set options NOINVLPG and/or NOVME.

 � Some DOS programs will not work if EMS is enabled without a page frame.

 � The JEMM ;-) DOS Extender (used for "Strike Commander" and "Privateer")
   requires the NOVME option to be set. This requirement is a strong sign
   that this extender switches to V86 mode on its own, which is a bad idea
   for a VCPI client.

 � The FASTBOOT option can work with many versions of DOS. However,
   additional settings might be needed:

   - FreeDOS may require to set STACKS=0,0 in CONFIG.SYS.
     Also the XBDA most likely must not be moved.

   - FreeDOS additionally needs JEMFBHLP.EXE to be installed prior to the
     XMM (Himem). Possibly this might also be needed for MS-DOS versions < 5.

 � If Jemm is installed from the commandline, loading the CTMOUSE driver
   v1.9x and v2.0x might cause an exception. Adding option NOHI or NORAM
   when installing Jemm should avoid that. In CTMOUSE v2.1 the bug has
   been fixed.

 � FreeDOS regrettably accepts just one UMB provider. This makes it impossible
   for example to use UMBM.EXE to supply UMB D000-DFFF and then tell Jemm to
   additionally supply B000-B7FF as UMB. MS-DOS has no such problems.

 � Although including the region B000-B7FF might work in most cases, one
   should be aware that this region is not really free, it's used by the
   VGA "monochrome" video modes.

 � To make Jemm behave (almost) like MS Emm386 regarding UMBs one should
   set both options X=TEST and I=TEST. For better MS Emm386 compatibility
   one might also consider to restrict VCPI memory to 32 MB by adding
   option MAX=32M. If NODYN is used, one should also set at least MIN=256K.

 � The NOVCPI option may be used to setup an environment similiar to Windows
   DOS boxes:
   - install Jemm with VCPI enabled
   - install a DPMI host residently (HDPMI, DPMIONE, ...)
   - disable VCPI with the NOVCPI option
   This forces any DOS extended application to either use DPMI or abort.

 � If Jemm displays warning

     System memory found at XXXX-XXXX, region might be in use

   then that region is not used by Jemm. If you are sure that the region
   is ok to be used, include it with 'I=XXXX-XXXX'.

 � The I=XXXX commandline option may be used to include the VGA "graphics"
   segment A000h. It might be possible to increase DOS conventional memory
   up to 736 kB by option I=A000-B7FF. However, there are quite a few
   hurdles that may cause unexpected results:
   - conventional memory is increased only if the region to include is
     adjacent to current memory. On newer machines, there's very often a
     "hole", caused by the Extended BIOS Data Area (XBDA or EBDA); thus
     the included region just becomes an UMB and won't increase lower memory.
     Use tool MOVEXBDA to fix this issue!
   - Once address space A000h is remapped, any attempts to run programs that
     use VGA graphics most likely will cause a crash.
   - Depending on the VGA-BIOS it may happen that some non-graphics functions
     won't work anymore and may also cause a crash. Not unusual is that the 
     current text font becomes corrupted ( text font bitmaps must be copied 
     from ROM to VGA memory when a video text mode is set ).


 8. License

 - JEMM386/JEMMEX: partly Artistic License (see ARTISTIC.TXT for details)
 - UMBM:     Public Domain
 - JEMFBHLP: Public Domain
 - CPUSTAT:  Public Domain
 - EMSSTAT:  Public Domain
 - XMSSTAT:  Public Domain
 - MEMSTAT:  Public Domain
 - MOVEXBDA: Public Domain

 Binaries and source are distributed in separate packages. The binaries'
 package has a 'B' suffix in its name, the package containing the source
 has a 'S'.

 Japheth

