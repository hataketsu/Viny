OUTPUT_FORMAT("binary")
SECTIONS
	{
		. =0x1000;
		.text : { main.o(.text) *(.text)}
		.data : { *(.data)}
		.bss : { *(.bss)}
		.comment : { *(.comment)}
		.rodata : { *(.rodata)}
	}