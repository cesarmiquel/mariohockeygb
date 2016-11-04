#
# Build examples
#

all: demo01.gb

demo01.gb: main.obj
	rgblink -o roms/demo01.gb main.obj
	rm $<

%.obj: %.z80
	rgbasm -i inc/ -o $@  $<

clean:
	rm -f roms/*.gb
	rm -f *.obj
