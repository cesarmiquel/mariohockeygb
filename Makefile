#
# Build examples
#

all: mariohokey.gb

mariohokey.gb: main.obj
	rgblink -n roms/mariohokey.sym -m roms/mariohokey.map -o roms/mariohokey.gb main.obj
	rgbfix -v -t "Mario Hockey" -p 0 roms/mariohokey.gb
	rm $<

%.obj: %.z80
	rgbasm -i inc/ -o $@  $<

clean:
	rm -f roms/*.gb
	rm -f *.obj
