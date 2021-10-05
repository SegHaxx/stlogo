VASM=vasmm68k_mot
VASMFLAGS=-Ftos

TARGETS=logohax.prg

.PHONY: all clean
all: $(TARGETS)
clean:
	rm -f *.o $(TARGETS)

logohax.prg: logohax.s
	$(VASM) $(VASMFLAGS) -nowarn=2061 $< -o $@ -L $@.lst

EXAMPLES=HANOI.LOG MANDEL.LOG SNOWFLAK.LOG SQUIRAL.LOG TEST.LOG TEST_TT.LOG TETRA.LOG WUFF.LOG

logohax.st: logohax.prg LOGO.RSC $(EXAMPLES)
	dd if=/dev/zero of=$@ bs=720K count=1 status=none
	mkdosfs -n LOGOHAX $@
	mcopy -v -m -i $@ AUTO/ DESKTOP.INF LOGO.PRG LOGO.RSC ::/
	mmd -i $@ LOGOHAX
	mcopy -v -m -i $@ $^ ::/LOGOHAX
