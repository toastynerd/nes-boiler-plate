;;;Main entry point

.include "defs.asm"

;;;Reset handler runs when the console is booted or reset
.proc reset

forever:
	;;;game loop
	jmp forever
.endproc

;;;NMI(vertical blank) handler
.proc nmi
	rti
.endproc

;;;IRQ handler
.proc irq
	rti
.endproc

;;;Vector table
.segment "VECTOR"
.addr nmi
.addr reset
.addr irq

;;;CHR data, empty for now
.segment "CHR0a"
.segment "CHR0b"
