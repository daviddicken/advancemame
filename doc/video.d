Name
	video - Video control for DOS

Synopsis
	:video [/s MODE] [/e] [/d] [/r] [/l PCXIMAGE]

Description
	The `video' utility can be used to control the video
	output of the PC in DOS.

Options
	/l IMAGE
		Load a PCX image. The image must be a PCX image
		in the 320x200 8bit format. The image is displayed using
		the standard VGA 320x200 256 color video mode number 13h.

	/s MODE
		Set an arbitrary video mode. The MODE is expressed as
		an hexadecimal BIOS number.

	The most common modes are:
		1 - Text mode 40x25 16 color.
		3 - Text mode 80x25 16 color.
		13 - Graphics mode 320x200 256 color.

	/d
		Disable the hardware video signal.

	/e
		Enable the hardware video signal.

	/r
		Reset the video board using the BIOS startup
		function.

Examples
	A good configuration for Arcade monitors/TVs may be:

	In CONFIG.SYS:
		:device=c:\cab\video.exe /l c:\cab\video.pcx
		:device=c:\cab\vga.exe /l /d /c c:\cab\vga.rc
		:...other commands...

	In AUTOEXEC.BAT:
		:...other commands...
		:c:\cab\vga /e
		:...final application...

Copyright
	This file is Copyright (C) 2002 Andrea Mazzoleni.

