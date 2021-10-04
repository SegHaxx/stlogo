VASM=vasmm68k_mot

all: logohax.prg

logohax.prg: logohax.s
	$(VASM) -Ftos -no-opt -nosym $< -o $@ -L $@.lst
# original sha1: 7f4c70f320ba501b2f0e35a4a82e06b652cb8627
# FIXME: vasm pads cmp.b with 0x00 instead of 0xFF
# and thus outputs a slightly different binary. oh well
	@echo -n "\nChecksum "
	@echo "306a6e5196e3aa27f9c61040747fa33bbf5f25fc $@"|sha1sum -c -
	@echo

.PHONY: clean

clean:
	rm -f logohax.prg
