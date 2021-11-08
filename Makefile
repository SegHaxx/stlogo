VASM=vasmm68k_mot

TARGETS=logohax.prg

.PHONY: all clean
all: $(TARGETS)
clean:
	rm -f *.o $(TARGETS)

logohax.prg: logohax.s
	$(VASM) -Ftos -no-opt -nosym $< -o $@ -L $@.lst
# original sha1: 7f4c70f320ba501b2f0e35a4a82e06b652cb8627
# FIXME: vasm pads cmp.b with 0x00 instead of 0xFF
# and thus outputs a slightly different binary. oh well
	@echo -n "\nChecksum "
	@echo "306a6e5196e3aa27f9c61040747fa33bbf5f25fc $@"|sha1sum -c -
	@echo

EXAMPLES=HANOI.LOG MANDEL.LOG SNOWFLAK.LOG SQUIRAL.LOG TEST.LOG TEST_TT.LOG TETRA.LOG WUFF.LOG

logohax.st: logohax.prg LOGO.RSC $(EXAMPLES)
	dd if=/dev/zero of=$@ bs=720K count=1 status=none
	mkdosfs -n LOGOHAX $@
	mcopy -v -m -i $@ AUTO/ DESKTOP.INF LOGO.PRG LOGO.RSC ::/
	mmd -i $@ LOGOHAX
	mcopy -v -m -i $@ $^ ::/LOGOHAX
