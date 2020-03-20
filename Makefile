objs := header.o main.o
out := boiler-plate.nes

all: $(out)

clean:
	rm -f $(objs) $(out)

.PHONY: all clean

%.o: %.s
	ca65  $< -o $@

main.o: main.asm defs.asm
header.o: header.asm

boiler-plate.nes: link.x $(objs)
	ld65 -C link.x $(objs) -o $@
	
