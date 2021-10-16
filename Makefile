VASM=vasmm68k_mot
MINT_PREFIX=m68k-atari-mint
MINT_CFLAGS=-Wall -Os -mshort

TARGETS=logohax.prg

.PHONY: all clean
all: $(TARGETS)
clean:
	rm -f *.o $(TARGETS)

logohax.prg: logohax.o nodes.o dialog.o
	$(MINT_PREFIX)-ld -nostartfiles -nostdlib $^ -o $@
	$(MINT_PREFIX)-size $@

logohax.o: logohax.s
	$(VASM) -Faout -nowarn=2061 $< -o $@ -L $@.lst

nodes.o: nodes.c
	$(MINT_PREFIX)-gcc $(MINT_CFLAGS) -c $< -o $@

dialog.o: dialog.c aes.h
	$(MINT_PREFIX)-gcc $(MINT_CFLAGS) -c $< -o $@

EXAMPLES=HANOI.LOG MANDEL.LOG SNOWFLAK.LOG SQUIRAL.LOG TEST.LOG TEST_TT.LOG TETRA.LOG WUFF.LOG

logohax.st: logohax.prg logohax.rsc $(EXAMPLES)
	dd if=/dev/zero of=$@ bs=720K count=1 status=none
	mkdosfs -n LOGOHAX $@
	mcopy -v -m -i $@ AUTO/ DESKTOP.INF orig/LOGO.PRG orig/LOGO.RSC ::/
	mmd -i $@ LOGOHAX
	$(MINT_PREFIX)-strip -s logohax.prg
	mcopy -v -m -i $@ $^ ::/LOGOHAX
