; vi:ft=asm68k

ev_adrerr	equ	$c
iv_M1_kb_midi	equ	$118

	COMMENT HEAD=111 ; fastload

	movea.l	4(sp),a0	; BASEPAGE

	move.l	a0,d0
	addi.l	#128,d0
	move.l	d0,U91922

	move.l	4(a0),d0	; p_hitpa
	andi.b	#$FE,d0
	movea.l	d0,sp

	move.l	8(a0),p_tbase
	move.l	12(a0),d0	; p_tlen
	add.l	20(a0),d0	; p_dlen
	add.l	28(a0),d0	; p_blen
	add.l	#256,d0
	move.l	d0,-(sp)
	move.l	a0,-(sp)
	clr.w	-(sp)
	move.w	#74,-(sp)	; Mshrink
	trap	#1		; Gemdos
	jmp	L37058

L204:
	movea.l	4(sp),a0
	move.l	sp,(a0)+
	move.l	fp,(a0)+
	move.l	(sp),(a0)+
	clr.l	d0
	rts

L218:
	movea.l	4(sp),a0
	move.w	8(sp),d0
	ext.l	d0
	movea.l	(a0)+,sp
	movea.l	(a0)+,fp
	move.l	(a0)+,(sp)
	rts

L236:
	move.l	iv_M1_kb_midi,U91928
	move.l	#L276,iv_M1_kb_midi
	move.w	#1,-(sp)
	move.w	#14,-(sp)	; Iorec
	trap	#14		; Xbios
	addq.w	#4,sp
	move.l	d0,U91932
	rts

L276:
	addq.w	#1,U91926
	move.l	U91928,-(sp)
	rts

L290:
	clr.l	-(sp)
	move.w	#32,-(sp)	; Super
	trap	#1		; Gemdos
	addq.w	#6,sp
	move.l	d0,U91942
	move.l	U91928,iv_M1_kb_midi
	move.l	U91942,-(sp)
	move.w	#32,-(sp)	; Super
	trap	#1		; Gemdos
	addq.w	#6,sp
	rts

******* AES bindings

	public _crys_if
_crys_if:
	move.w	4(sp),d0
	move.w	d0,control

	sub.w	#10,d0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	move.l	#ctrl_cnts,a0
	add.w	d0,a0

	clr.w	d0
	move.l	#control+2,a1
	move.b	(a0)+,d0
	move.w	d0,(a1)+
	move.b	(a0)+,d0
	move.w	d0,(a1)+
	move.b	(a0),d0
	move.w	d0,(a1)

	move.l	aespb,d1
	move.w	#200,d0
	trap	#2	; AES

	move.w	_int_out,d0
	rts

appl_init:
	link	fp,#-6
	move.l	#control,U98686
	move.l	#U100590,U98690
	move.l	#int_in,U98694
	move.l	#_int_out,U98698
	move.l	#_addr_in,U98702
	move.l	#U101464,U98706
	move.l	#U98686,aespb
	move.w	#10,(sp)
	bsr  	_crys_if
	move.w	_int_out,U101048
	moveq	#1,d0
	unlk	fp
	rts

appl_exit:
	link	fp,#-4
	move.w	#19,(sp)
	bsr  	_crys_if
	moveq	#1,d0
	unlk	fp
	rts

evnt_multi:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	12(fp),int_in+4
	move.w	14(fp),int_in+6
	move.w	16(fp),int_in+8
	move.w	18(fp),int_in+10
	move.w	20(fp),int_in+12
	move.w	22(fp),int_in+14
	move.w	24(fp),int_in+16
	move.w	26(fp),int_in+18
	move.w	28(fp),int_in+20
	move.w	30(fp),int_in+22
	move.w	32(fp),int_in+24
	move.w	34(fp),int_in+26
	move.l	36(fp),_addr_in
	move.w	40(fp),int_in+28
	move.w	42(fp),int_in+30
	move.w	#25,(sp)
	bsr  	_crys_if
	movea.l	60(fp),a0
	move.w	_int_out+10,(a0)
	movea.l	64(fp),a0
	move.w	_int_out+12,(a0)
	clr.w	d0
	move.w	_int_out,d0
	unlk	fp
	rts

menu_bar:
	link	fp,#-4
	move.l	8(fp),_addr_in
	move.w	12(fp),int_in
	move.w	#30,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

menu_icheck:
	link	fp,#-4
	move.l	8(fp),_addr_in
	move.w	12(fp),int_in
	move.w	14(fp),int_in+2
	move.w	#31,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

menu_ienable:
	link	fp,#-4
	move.l	8(fp),_addr_in
	move.w	12(fp),int_in
	move.w	14(fp),int_in+2
	move.w	#32,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

menu_tnormal:
	link	fp,#-4
	move.l	8(fp),_addr_in
	move.w	12(fp),int_in
	move.w	14(fp),int_in+2
	move.w	#33,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

	xdef _objc_draw
_objc_draw:
	link	fp,#-4
	move.l	8(fp),_addr_in
	move.w	12(fp),int_in
	move.w	14(fp),int_in+2
	move.w	16(fp),int_in+4
	move.w	18(fp),int_in+6
	move.w	20(fp),int_in+8
	move.w	22(fp),int_in+10
	move.w	#42,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

	xdef _form_do
_form_do:
	link	fp,#-4
	move.l	8(fp),_addr_in
	move.w	12(fp),int_in
	move.w	#50,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

	xdef _form_dial
_form_dial:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	12(fp),int_in+4
	move.w	14(fp),int_in+6
	move.w	16(fp),int_in+8
	move.w	18(fp),int_in+10
	move.w	20(fp),int_in+12
	move.w	22(fp),int_in+14
	move.w	24(fp),int_in+16
	move.w	#51,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

form_alert:
	link	fp,#-4
	move.w	8(fp),int_in
	move.l	10(fp),_addr_in
	move.w	#52,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

graf_handle:
	link	fp,#-4
	move.w	#77,(sp)
	bsr  	_crys_if
	movea.l	8(fp),a0
	move.w	_int_out+2,(a0)
	movea.l	12(fp),a0
	move.w	_int_out+4,(a0)
	movea.l	16(fp),a0
	move.w	_int_out+6,(a0)
	movea.l	20(fp),a0
	move.w	_int_out+8,(a0)
	clr.w	d0
	move.w	_int_out,d0
	unlk	fp
	rts

graf_mouse:
	link	fp,#-4
	move.w	8(fp),int_in
	move.l	10(fp),_addr_in
	move.w	#78,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

graf_mkstate:
	link	fp,#-4
	move.w	#79,(sp)
	bsr  	_crys_if
	movea.l	8(fp),a0
	move.w	_int_out+2,(a0)
	movea.l	12(fp),a0
	move.w	_int_out+4,(a0)
	movea.l	16(fp),a0
	move.w	_int_out+6,(a0)
	movea.l	20(fp),a0
	move.w	_int_out+8,(a0)
	unlk	fp
	rts

fsel_input:
	move.l	4(sp),_addr_in
	move.l	8(sp),_addr_in+4
	move.w	#90,-(sp)
	bsr  	_crys_if
	addq	#2,sp
	movea.l	12(sp),a0
	move.w	_int_out,d0
	move.w	_int_out+2,(a0)
	rts

wind_create:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	12(fp),int_in+4
	move.w	14(fp),int_in+6
	move.w	16(fp),int_in+8
	move.w	#100,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

wind_open:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	12(fp),int_in+4
	move.w	14(fp),int_in+6
	move.w	16(fp),int_in+8
	move.w	#101,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

wind_close:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	#102,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

wind_get:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	#104,(sp)
	bsr  	_crys_if
	movea.l	12(fp),a0
	move.w	_int_out+2,(a0)
	movea.l	16(fp),a0
	move.w	_int_out+4,(a0)
	movea.l	20(fp),a0
	move.w	_int_out+6,(a0)
	movea.l	24(fp),a0
	move.w	_int_out+8,(a0)
	move.w	_int_out,d0
	unlk	fp
	rts

wind_set:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	12(fp),int_in+4
	move.w	14(fp),int_in+6
	move.w	16(fp),int_in+8
	move.w	18(fp),int_in+10
	move.w	#105,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

wind_update:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	#107,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

wind_calc:
	link	fp,#0
	movem.l	d7/a4-a5,-(sp)
	movea.l	12(fp),a5
	movea.l	16(fp),a4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	(a5)+,int_in+4
	move.w	(a5)+,int_in+6
	move.w	(a5)+,int_in+8
	move.w	(a5),int_in+10
	move.w	#108,(sp)
	bsr  	_crys_if
	move.w	_int_out+2,(a4)+
	move.w	_int_out+4,(a4)+
	move.w	_int_out+6,(a4)+
	move.w	_int_out+8,(a4)
	tst.l	(sp)+
	movem.l	(sp)+,a4-a5
	unlk	fp
	rts

rsrc_load:
	link	fp,#-4
	move.l	8(fp),_addr_in
	move.w	#110,(sp)
	bsr  	_crys_if
	unlk	fp
	rts

	public _rsrc_gaddr
_rsrc_gaddr:
	link	fp,#-4
	move.w	8(fp),int_in
	move.w	10(fp),int_in+2
	move.w	#112,(sp)
	bsr  	_crys_if
	movea.l	12(fp),a0
	move.l	U101464,(a0)
	clr.w	d0
	move.w	_int_out,d0
	unlk	fp
	rts

******* AES end

******* Nodes stuff?

L332_2d:
	clr.l	d2
	movea.l	U101194,a0
	move.w	d0,d2
	lsl.l	#2,d2
	or.w	d1,d2
	clr.w	d0
	move.b	0(a0,d2.l),d0
	rts

L358_1d:
	clr.l	d1
	movea.l	U101194,a0
	move.w	d0,d1
	lsl.l	#2,d1
	move.w	0(a0,d1.l),d0
	rts

L378_1d:
	clr.l	d1
	movea.l	U101194,a0
	move.w	d0,d1
	lsl.l	#2,d1
	move.w	2(a0,d1.l),d0
	rts

L66356_1d:
	bsr.s	L378_1d
	bra.s	L378_1d

L398:
	clr.l	d0
	movea.l	U101194,a0
	move.w	4(sp),d0
	lsl.l	#2,d0
	move.l	0(a0,d0.l),d0
	rts

L418:
	clr.l	d0
	movea.l	U101194,a0
	move.w	4(sp),d0
	lsl.l	#2,d0
	or.w	6(sp),d0
	move.b	9(sp),0(a0,d0.l)
	rts

L488:
	clr.l	d0
	movea.l	U101194,a0
	move.w	4(sp),d0
	lsl.l	#2,d0
	move.l	6(sp),0(a0,d0.l)
	rts

L510:
	clr.l	d0
	movea.l	U101194,a0
	move.w	4(sp),d0
	lsl.l	#2,d0
	clr.l	d1
	move.w	2(a0,d0.l),d1
	add.l	p_tbase,d1
	movea.l	d1,a0
	jmp	(a0)

U101194: dc.l 0

******* Nodes end

L2120:
	link	fp,#-4
	jsr	L61904
	tst.w	d0
	bne.s	L2222
	clr.w	d0
	move.w	U99864,d0
	move.w	d0,U100626
	jsr	L358_1d
	move.w	d0,U100636
	jsr	L60580
	move.w	U101156,U101460
	jsr	L61904
	tst.w	d0
	bne.s	L2222
	jsr	L61850
	tst.w	d0
	beq.s	L2206
	jsr	L59950
	bra.s	L2222

L2206:
	move.w	U100636,U101046
	jsr	L67028
L2222:
	unlk	fp
	rts

L2226:
	link	fp,#-4
	jsr	L62430
	move.l	T87062,(sp)
	jsr	L76994
	jsr	L66768
	move.w	#6,(sp)
	jsr	L64300
	move.w	#22,(sp)
	jsr	L64090
	bra.s	L2290

L2276:
	jsr	L64888
L2282:
	jsr	L37176
	bra.s	L2282

L2290:
	move.l	#U101014,(sp)
	jsr	L204
	tst.w	d0
	beq.s	L2276
	move.w	#22,(sp)
	jsr	L68540
	move.w	#7,(sp)
	jsr	L64326
	jsr	L66800
	unlk	fp
	rts

L2336:
	link	fp,#-6
	bsr  	L2920
	jsr	L62226
	move.w	d0,-2(fp)
	bge.s	L2362
	jsr	L67118
L2362:
	jsr	L61312
	bra.s	L2376

L2370:
	jsr	L59768
L2376:
	move.w	-2(fp),d0
	subq.w	#1,-2(fp)
	tst.w	d0
	bne.s	L2370
	jsr	L61834
	unlk	fp
	rts

L2398:
	link	fp,#-4
	jsr	L61206
	bsr.s	L2414
	unlk	fp
	rts

L2414:
	link	fp,#-4
	move.w	#18,(sp)
	jsr	L62262
	unlk	fp
	rts

L2432:
	link	fp,#-4
	jsr	L61312
	jsr	L59848
	unlk	fp
	rts

L2452:
	link	fp,#-4
	jsr	L61608
	clr.w	d0
	move.w	U101046,d0
	cmp.w	U101186,d0
	beq.s	L2482
	clr.w	(sp)
	bra.s	L2486

L2482:
	move.w	#1,(sp)
L2486:
	jsr	L60886
	unlk	fp
	rts

L2496:
	link	fp,#-4
	move.w	U100984,(sp)
	bsr.s	L2528
	unlk	fp
	rts

L2512:
	link	fp,#-4
	move.w	U101186,(sp)
	bsr.s	L2528
	unlk	fp
	rts

L2528:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L64090
	move.w	#2,(sp)
	jsr	L61132
	move.w	d0,d6
	bra.s	L2588

L2562:
	jsr	L61608
	cmp.w	U101046,d7
	beq.s	L2588
	move.w	U101046,(sp)
	jsr	L64276
L2588:
	move.w	d6,(sp)
	jsr	L61098
	subq.w	#1,d6
	tst.w	d0
	beq.s	L2562
	jsr	L64764
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L2618:
	link	fp,#-4
	jsr	L61904
	tst.w	d0
	bne.s	L2638
	jsr	L61206
L2638:
	move.w	#22,(sp)
	jsr	L62262
	unlk	fp
	rts

L2652:
	link	fp,#-4
	jsr	L61608
	move.w	U100984,(sp)
	move.w	U101046,-(sp)
	bsr.s	L2730
	addq.l	#2,sp
	unlk	fp
	rts

L2682:
	link	fp,#-4
	jsr	L61904
	tst.w	d0
	bne.s	L2724
	move.w	U99864,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	bne.s	L2724
	clr.w	d0
	bra.s	L2726

L2724:
	moveq	#1,d0
L2726:
	unlk	fp
	rts

L2730:
	link	fp,#-4
	bsr.s	L2682
	tst.w	d0
	beq.s	L2746
	jsr	L67666
L2746:
	jsr	L61312
	clr.w	d0
	move.w	8(fp),d0
	cmp.w	10(fp),d0
	bne.s	L2784
	jsr	L59848
	bsr.s	L2682
	tst.w	d0
	bne.s	L2808
	jsr	L59950
	bra.s	L2808

L2784:
	jsr	L61834
	bsr.s	L2682
	tst.w	d0
	bne.s	L2808
	jsr	L61312
	jsr	L59848
L2808:
	unlk	fp
	rts

L2812:
	link	fp,#-4
	move.l	#$E52EE246,-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	L79448
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L2860:
	link	fp,#-4
	jsr	L61476
	move.l	d0,(sp)
	jsr	L37032
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L2890:
	link	fp,#-4
	jsr	L61476
	move.l	d0,(sp)
	jsr	L37006
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L2920:
	link	fp,#-4
	jsr	L61476
	move.l	d0,(sp)
	bsr  	L3592
	unlk	fp
	rts

L2940:
	link	fp,#-4
	jsr	L61374
	jsr	L61340
	movea.l	8(fp),a0
	jsr	(a0)
	unlk	fp
	rts

L2966:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	#2,(sp)
	jsr	L61132
	move.w	d0,d7
	jsr	L61374
	bra.s	L3012

L2994:
	jsr	L61340
	movea.l	8(fp),a0
	jsr	(a0)
	jsr	L64746
L3012:
	subq.w	#1,d7
	move.w	d7,(sp)
	jsr	L61098
	tst.w	d0
	beq.s	L2994
	jsr	L64764
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L3042:
	link	fp,#-4
	move.l	#L4274,(sp)
	bsr.s	L2966
	unlk	fp
	rts

L3058:
	link	fp,#-4
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L3096
	move.l	8(fp),-(sp)
	jsr	L82000
	addq.l	#4,sp
	bra.s	L3100

L3096:
	move.l	8(fp),d0
L3100:
	unlk	fp
	rts

L3104:
	link	fp,#-4
	movem.l	d6-d7/a5,-(sp)
	movea.l	8(fp),a5
	moveq	#1,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	move.l	(a5),-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d7
	move.l	(a5),-(sp)
	move.w	d7,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-4(fp)
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,-(sp)
	bsr.s	L3058
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L3198
	move.l	-4(fp),d0
	bra.s	L3204

L3198:
	jsr	L66880
L3204:
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L3214:
	link	fp,#-8
	jsr	L61476
	move.l	d0,-4(fp)
	move.l	fp,(sp)
	subq.l	#4,(sp)
	bsr  	L3104
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,(sp)
	bsr  	L4614
	move.w	d0,(sp)
	jsr	L61926
	unlk	fp
	rts

L3264:
	link	fp,#0
	movem.l	d7/a4-a5,-(sp)
	movea.l	8(fp),a5
	movea.l	12(fp),a4
	clr.l	-(sp)
	move.l	a4,-(sp)
	bsr  	L3104
	addq.l	#4,sp
	move.l	d0,(a4)
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L3314
	jsr	L67382
L3314:
	move.l	a5,(sp)
	bsr  	L3104
	move.l	d0,(a5)
	move.l	(a4),-(sp)
	move.l	(a5),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	tst.l	(sp)+
	movem.l	(sp)+,a4-a5
	unlk	fp
	rts

L3354:
	link	fp,#-12
	jsr	L61476
	move.l	d0,-4(fp)
	jsr	L61476
	move.l	d0,-8(fp)
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	bsr.s	L3264
	addq.l	#4,sp
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L3414:
	link	fp,#-12
	jsr	L61476
	move.l	d0,-4(fp)
	jsr	L61476
	move.l	d0,-8(fp)
	move.l	-8(fp),-(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	bsr  	L3264
	addq.l	#8,sp
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	-4(fp),-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L3504:
	link	fp,#-4
	move.w	#899,U100646
	unlk	fp
	rts

L3520:
	link	fp,#-4
	jsr	L61340
	clr.l	-(sp)
	jsr	L62206
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L3562
	move.l	#-2147483456,-(sp)
	bra.s	L3568

L3562:
	move.l	#-2147483584,-(sp)
L3568:
	jsr	L62206
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,(sp)
	bsr.s	L3592
	unlk	fp
	rts

L3592:
	link	fp,#-4
	move.l	fp,(sp)
	addq.l	#8,(sp)
	bsr  	L3104
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L3616:
	link	fp,#-4
	move.l	#L3702,(sp)
	bsr  	L2966
	unlk	fp
	rts

L3634:
	link	fp,#-4
	move.l	#L3752,(sp)
	bsr  	L2940
	unlk	fp
	rts

L3652:
	link	fp,#-4
	jsr	L60670
	move.w	U100888,(sp)
	jsr	L60784
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L82000
	addq.l	#4,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L3702:
	link	fp,#-4
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L3752:
	link	fp,#-4
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L3802:
	link	fp,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L3860
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L3854
	clr.w	(sp)
	bra.s	L3858

L3854:
	move.w	#1,(sp)
L3858:
	bra.s	L3876

L3860:
	bsr  	L4508
	tst.w	d0
	ble.s	L3872
	clr.w	(sp)
	bra.s	L3876

L3872:
	move.w	#1,(sp)
L3876:
	jsr	L60886
	unlk	fp
	rts

L3886:
	link	fp,#-4
	move.w	U101046,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L6590
	addq.l	#2,sp
	tst.w	d0
	beq.s	L3920
	clr.w	(sp)
	bra.s	L3924

L3920:
	move.w	#1,(sp)
L3924:
	jsr	L60886
	unlk	fp
	rts

L3934:
	link	fp,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L3992
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L3986
	clr.w	(sp)
	bra.s	L3990

L3986:
	move.w	#1,(sp)
L3990:
	bra.s	L4008

L3992:
	bsr  	L4508
	tst.w	d0
	bge.s	L4004
	clr.w	(sp)
	bra.s	L4008

L4004:
	move.w	#1,(sp)
L4008:
	jsr	L60886
	unlk	fp
	rts

L4018:
	link	fp,#-4
	bsr.s	L4036
	move.w	d0,(sp)
	jsr	L60886
	unlk	fp
	rts

L4036:
	link	fp,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L4092
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L4088
	clr.w	d0
	bra.s	L4090

L4088:
	moveq	#1,d0
L4090:
	bra.s	L4106

L4092:
	bsr  	L4508
	tst.w	d0
	blt.s	L4104
	clr.w	d0
	bra.s	L4106

L4104:
	moveq	#1,d0
L4106:
	unlk	fp
	rts

L4110:
	link	fp,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L4168
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L4162
	clr.w	(sp)
	bra.s	L4166

L4162:
	move.w	#1,(sp)
L4166:
	bra.s	L4184

L4168:
	bsr  	L4508
	tst.w	d0
	bgt.s	L4180
	clr.w	(sp)
	bra.s	L4184

L4180:
	move.w	#1,(sp)
L4184:
	jsr	L60886
	unlk	fp
	rts

L4194:
	link	fp,#-4
	clr.l	-(sp)
	jsr	L62206
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L4228
	jsr	L67382
L4228:
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L4274:
	link	fp,#-4
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L4324:
	link	fp,#-4
	move.l	#L4194,(sp)
	bsr  	L2940
	unlk	fp
	rts

L4342:
	bsr.s	L4422
	bsr  	L3802
	rts

L4356:
	jsr	L61572
	jsr	L61190
	bsr  	L3886
	rts

L4380:
	bsr.s	L4422
	bsr  	L3934
	rts

L4394:
	bsr.s	L4422
	bsr  	L4018
	rts

L4408:
	bsr.s	L4422
	bsr  	L4110
	rts

L4422:
	jsr	L61572
	jsr	L62398
	jsr	L61572
	jsr	L62398
	jsr	L64764
	rts

L4460:
	link	fp,#-4
	jsr	L64160
	move.w	d0,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	L4498
	move.w	U101046,(sp)
	jsr	L65356
	tst.w	d0
	bne.s	L4502
L4498:
	clr.w	d0
	bra.s	L4504

L4502:
	moveq	#1,d0
L4504:
	unlk	fp
	rts

L4508:
	link	fp,#-4
	move.w	U101046,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	bsr.s	L4534
	addq.l	#2,sp
	unlk	fp
	rts

L4534:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	jsr	L9350
	move.w	8(fp),(sp)
	jsr	L55092
	clr.w	(sp)
	jsr	L74948
	movea.l	U101030,a5
	move.w	10(fp),(sp)
	jsr	L55092
	jsr	L9388
	move.l	a5,(sp)
	move.l	#U100754,-(sp)
	jsr	L83748
	addq.l	#4,sp
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L4614:
	link	fp,#-4
	move.l	#-65456,-(sp)
	move.w	U100646,d0
	muls	#899,d0
	and.w	#32767,d0
	move.w	d0,U100646
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	moveq	#2,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	move.w	8(fp),d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	unlk	fp
	rts

word_shuffle:
	link	fp,#-4
	jsr	L61312
	move.w	U101046,(sp)
	bsr.s	do_shuffle
	jsr	L64764
	unlk	fp
	rts

do_shuffle:
	link	fp,#0
	movem.l	d4-d7,-(sp)
	move.w	8(fp),d7
	tst.w	d7
	bne.s	.L4790
	jsr	L64732
	moveq	#1,d0
	bra  	.L4914
.L4790:
	jsr	L74764
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,(sp)
	bsr.s	do_shuffle
	move.w	d0,d4
	move.w	d4,(sp)
	bsr  	L4614
	move.w	d0,d5
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d7
	jsr	L64160
	move.w	d0,d6
	tst.w	d5
	bne.s	.L4862
	move.w	d6,(sp)
	move.w	d7,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64276
	bra.s	.L4910
.L4862:
	bra.s	.L4874
.L4864:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
.L4874:
	subq.w	#1,d5
	bne.s	.L4864
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,(sp)
	move.w	d7,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,d1
	move.w	d6,d0
	jsr	L65226_2d
.L4910:
	move.w	d4,d0
	addq.w	#1,d0
.L4914:
	movem.l	(sp)+,d4-d7
	unlk	fp
	rts

word_sort:
	movem.l	d6-d7,-(sp)
	subq	#2,sp
	jsr	L61312
	tst.w	U101046
	beq  	.L5262
	jsr	L64746
	jsr	L64732
	move.w	U101046,d6
	bra  	.L5244
.L4970:
	jsr	L75596
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,U101046
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	bne.s	.L5008
	jsr	L67118
.L5008:
	jsr	L64160
	tst.w	d0
	bne.s	.L5042
	move.w	U101046,(sp)
	jsr	L65694
	move.w	d0,(sp)
	jsr	L64276
	bra  	.L5234
.L5042:
	jsr	L64160
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L64090
	bsr  	L4036
	tst.w	d0
	bne.s	.L5106
	jsr	L64160
	move.w	d0,(sp)
	move.w	U101046,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64276
	bra  	.L5234
.L5106:
	jsr	L64160
	move.w	d0,d7
.L5114:
	move.w	d7,d0
	jsr	L378_1d
	tst.w	d0
	bne.s	.L5152
	move.w	U101046,(sp)
	jsr	L65694
	move.w	d0,d1
	move.w	d7,d0
	jsr	L65226_2d
	bra.s	.L5234
.L5152:
	move.w	d7,d0
	jsr	L378_1d
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L64090
	bsr  	L4036
	tst.w	d0
	bne.s	.L5222
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,(sp)
	move.w	U101046,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,d1
	move.w	d7,d0
	jsr	L65226_2d
	bra.s	.L5234
.L5222:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
	bra.s	.L5114
.L5234:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
.L5244:
	tst.w	d6
	bne  	.L4970
	jsr	L64764
	jsr	L64180
.L5262:
	addq	#2,sp
	movem.l	(sp)+,d6-d7
	rts

L5272:
	link	fp,#-4
	jsr	L61608
	move.w	U101046,U99816
	jsr	L61834
	unlk	fp
	rts

L5302:
	link	fp,#-4
	move.w	U101186,(sp)
	move.w	U99816,-(sp)
	bsr  	L2730
	addq.l	#2,sp
	unlk	fp
	rts

L5328:
	link	fp,#-4
	move.w	U100984,(sp)
	move.w	U99816,-(sp)
	bsr  	L2730
	addq.l	#2,sp
	unlk	fp
	rts

L5354:
	link	fp,#-4
	jsr	L61476
	move.l	d0,(sp)
	bsr  	L3058
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5382:
	link	fp,#-4
	move.l	#$E52EE246,-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5420:
	link	fp,#-4
	move.l	#$E52EE246,-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5458:
	link	fp,#-4
	move.l	#$E52EE246,-(sp)
	move.w	#180,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5506:
	link	fp,#-8
	clr.l	-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	L37032
	addq.l	#4,sp
	move.l	d0,-4(fp)
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L5554
	jsr	L67118
L5554:
	move.l	-4(fp),-(sp)
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L37006
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5596:
	link	fp,#-4
	clr.l	-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L5630
	jsr	L67118
L5630:
	jsr	L62206
	move.l	d0,(sp)
	jsr	L81604
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5656:
	link	fp,#-4
	jsr	L61476
	move.l	d0,(sp)
	jsr	fp_exp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5686:
	link	fp,#-4
	clr.l	-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L5720
	jsr	L67118
L5720:
	jsr	L62206
	move.l	d0,(sp)
	jsr	fp_log
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5746:
	link	fp,#-4
	clr.l	-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L5780
	jsr	L67118
L5780:
	move.l	#-1610612668,(sp)
	jsr	fp_log
	move.l	d0,-(sp)
	jsr	L62206
	move.l	d0,-(sp)
	jsr	fp_log
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5832:
	link	fp,#-4
	move.l	#L5850,(sp)
	bsr  	L2940
	unlk	fp
	rts

L5850:
	link	fp,#-4
	clr.l	-(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L5920
	jsr	L64224
	move.w	d0,(sp)
	move.l	#T85014,-(sp)
	jsr	L62012
	addq.l	#4,sp
	move.w	d0,-(sp)
	jsr	L67066
	addq.l	#2,sp
L5920:
	jsr	L62206
	move.l	d0,-(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_log
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	fp_exp
	move.l	d0,(sp)
	jsr	L61950
	unlk	fp
	rts

L5984:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	10(fp),d6
	move.w	d6,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L6018
	jsr	L67118
L6018:
	bra.s	L6040

L6020:
	tst.w	d6
	bne.s	L6030
	jsr	L67474
L6030:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
L6040:
	cmp.w	#1,d7
	move	sr,d0
	subq.w	#1,d7
	move	d0,ccr
	bgt.s	L6020
	clr.w	d0
	move.w	d6,d0
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L6066:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	clr.w	d6
	bra.s	L6094

L6082:
	addq.w	#1,d6
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L6094:
	tst.w	d7
	bne.s	L6082
	move.w	d6,d0
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L6110:
	movem.l	d4-d7,-(sp)
	move.w	20(sp),d7
	move.w	22(sp),d6
	tst.w	d7
	bne.s	.L6132
	moveq	#-1,d7
.L6132:
	move.w	d6,-(sp)
	jsr	L64090
	clr.w	d0
	move.w	d0,U101046
	move.w	d0,d5
	bra.s	.L6224
.L6152:
	tst.w	d5
	bne.s	.L6182
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,d5
	move.w	d5,U101046
	bra.s	.L6214
.L6182:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,d4
	move.w	d4,d1
	move.w	d5,d0
	jsr	L65226_2d
	move.w	d4,d5
.L6214:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
.L6224:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	beq.s	.L6236
	tst.w	d6
	bne.s	.L6152
.L6236:
	jsr	L64180
	clr.w	d0
	move.w	d5,d0
	addq	#2,sp
	movem.l	(sp)+,d4-d7
	rts

L6256:
	movem.l	d4-d7,-(sp)
	move.w	20(sp),d7
	move.w	22(sp),d6
	move.w	24(sp),d5
	tst.w	d7
	bne.s	.L6282
	subq	#1,d7
.L6282:
	move.w	d6,-(sp)
	jsr	L64090
	bra.s	.L6334
.L6292:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,d4
	move.w	d4,d1
	move.w	d5,d0
	jsr	L65226_2d
	move.w	d4,d5
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
.L6334:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	beq.s	.L6346
	tst.w	d6
	bne.s	.L6292
.L6346:
	jsr	L64180
	move.w	d5,d0
	addq	#2,sp
	movem.l	(sp)+,d4-d7
	rts

word_ascii:
	link	fp,#-4
	jsr	L61500
	bsr  	L9296
	move.b	U100754,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L61926
	unlk	fp
	rts

word_butfirst:
	link	fp,#-4
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	.L6432
	move.w	#1,(sp)
	bsr  	L9114
	bra.s	.L6450
.L6432:
	move.w	U101046,d0
	jsr	L378_1d
	move.w	d0,U101046
.L6450:
	unlk	fp
	rts

L6454:
	link	fp,#-4
	jsr	L62246
	movea.l	#U100754,a0
	move.l	a0,U101030
	move.l	a0,-(sp)
	jsr	L62206
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	ext.w	d0
	movea.l	(sp)+,a0
	move.b	d0,(a0)
	jsr	L61974
	unlk	fp
	rts

L6510:
	link	fp,#-4
	jsr	L61294
	move.w	d0,(sp)
	bsr.s	L6536
	move.w	d0,(sp)
	jsr	L61926
	unlk	fp
	rts

L6536:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L6574
	bsr  	L9186
	clr.w	d0
	move.w	U99178,d0
	bra.s	L6580

L6574:
	move.w	d7,(sp)
	bsr  	L6066
L6580:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L6590:
	link	fp,#0
	movem.l	d4-d7,-(sp)
	move.w	8(fp),d7
	move.w	10(fp),d6
	move.w	d7,d5
	move.w	d5,(sp)
	jsr	L65266
	tst.w	d0
	beq  	L6766
	move.w	d6,(sp)
	jsr	L65266
	tst.w	d0
	beq  	L6762
	move.w	d5,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	L6702
	move.w	d6,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	L6702
	move.w	d6,(sp)
	jsr	L65532
	move.l	d0,-(sp)
	move.w	d5,-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	beq.s	L6696
	clr.w	d0
	bra.s	L6698

L6696:
	moveq	#1,d0
L6698:
	bra  	L6848

L6702:
	move.w	d5,(sp)
	jsr	L65356
	tst.w	d0
	bne.s	L6726
	move.w	d6,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	L6750
L6726:
	move.w	d6,(sp)
	move.w	d5,-(sp)
	jsr	L4534
	addq.l	#2,sp
	tst.w	d0
	beq.s	L6746
	clr.w	d0
	bra.s	L6748

L6746:
	moveq	#1,d0
L6748:
	bra.s	L6848

L6750:
	cmp.w	d6,d5
	beq.s	L6758
	clr.w	d0
	bra.s	L6760

L6758:
	moveq	#1,d0
L6760:
	bra.s	L6848

L6762:
	clr.w	d0
	bra.s	L6848

L6766:
	jsr	L74764
	move.w	d6,(sp)
	jsr	L65266
	tst.w	d0
	bne.s	L6846
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,(sp)
	move.w	d5,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	bsr  	L6590
	addq.l	#2,sp
	tst.w	d0
	beq.s	L6846
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,(sp)
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,-(sp)
	bsr  	L6590
	addq.l	#2,sp
	bra.s	L6848

L6846:
	clr.w	d0
L6848:
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7
	unlk	fp
	rts

L6858:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	.L6886
	clr.w	d0
	bra.s	.return
.L6886:
	move.w	d7,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	.L6926
	move.w	U101046,(sp)
	bsr  	L9214
	movea.l	U101030,a0
	tst.b	(a0)
	beq.s	.L6922
	clr.w	d0
	bra.s	.L6924
.L6922:
	moveq	#1,d0
.L6924:
	bra.s	.return
.L6926:
	tst.w	d7
	beq.s	.L6934
	clr.w	d0
	bra.s	.return
.L6934:
	moveq	#1,d0
.return:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

word_emptyp:
	jsr	L61294
	move.w	d0,-(sp)
	bsr.s	L6858
	move.w	d0,(sp)
	jsr	L60886
	addq	#2,sp
	rts

word_butlast:
	link	fp,#-4
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	.L7002
	clr.w	(sp)
	bsr  	L9114
	bra.s	.L7054
.L7002:
	move.w	U101046,d0
	jsr	L378_1d
	tst.w	d0
	bne.s	.L7026
	clr.w	U101046
	bra.s	.L7054
.L7026:
	move.w	U101046,(sp)
	move.w	U101046,-(sp)
	bsr  	L6066
	addq.l	#2,sp
	move.w	d0,-(sp)
	subq.w	#1,(sp)
	bsr  	L6110
	addq.l	#2,sp
.L7054:
	unlk	fp
	rts

L7058:
	link	fp,#-4
	jsr	L61572
	jsr	L61190
	jsr	L60852
	unlk	fp
	rts

word_first:
	link	fp,#-4
	jsr	L61550
	move.w	U101046,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L7122
	bsr  	L9296
	jsr	L61974
	bra.s	L7140

L7122:
	move.w	U101046,d0
	jsr	L358_1d
	move.w	d0,U101046
L7140:
	unlk	fp
	rts

L7144:
	link	fp,#-4
	jsr	L61572
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L7220
	jsr	L62398
	bsr  	L9350
	jsr	L64224
	move.w	d0,(sp)
	jsr	L55092
	move.w	U101046,(sp)
	jsr	L55092
	bsr  	L9388
	jsr	L61992
	bra.s	L7248

L7220:
	move.w	U101046,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,U101046
L7248:
	unlk	fp
	rts

L7252:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	bsr  	L8924
	move.w	d0,d7
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L7322
	bsr  	L9162
	cmp.w	U99178,d7
	bls.s	L7302
	jsr	L67474
L7302:
	move.w	d7,d0
	subq.w	#1,d0
	ext.l	d0
	add.l	d0,U101030
	jsr	L61974
	bra.s	L7364

L7322:
	move.w	U101046,(sp)
	bsr  	L6536
	cmp.w	d7,d0
	bge.s	L7342
	jsr	L67474
L7342:
	move.w	U101046,(sp)
	move.w	d7,-(sp)
	jsr	L65756
	addq.l	#2,sp
	move.w	d0,U101046
L7364:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L7374:
	link	fp,#-4
	jsr	L61550
	move.w	U101046,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L7434
	bsr  	L9162
	clr.w	d0
	move.w	U99178,d0
	subq.w	#1,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	d0,U101030
	jsr	L61974
	bra.s	L7468

L7434:
	move.w	U101046,(sp)
	move.w	U101046,-(sp)
	bsr  	L6066
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L65756
	addq.l	#2,sp
	move.w	d0,U101046
L7468:
	unlk	fp
	rts

word_list:
	move.w	#2,-(sp)
	jsr	L61064
	move.w	d0,(sp)
	bsr  	L8638
	addq	#2,sp
	jmp	L64764

L7502:
	link	fp,#-4
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L7528
	clr.w	(sp)
	bra.s	L7532

L7528:
	move.w	#1,(sp)
L7532:
	jsr	L60886
	unlk	fp
	rts

word_lput:
	move.l	d7,-(sp)
	jsr	L61572
	jsr	L61294
	move.w	d0,-(sp)
	jsr	L65322
	tst.w	d0
	beq.s	.L7622
	jsr	L62398
	bsr  	L9350
	move.w	U101046,(sp)
	jsr	L55092
	jsr	L64224
	move.w	d0,(sp)
	jsr	L55092
	bsr  	L9388
	jsr	L61992
	bra.s	.return
.L7622:
	tst.w	U101046
	beq.s	.L7676
	move.w	U101046,(sp)
	clr.w	-(sp)
	bsr  	L6110
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L65694
	addq.l	#2,sp
	move.w	d0,-(sp)
	move.w	#1,-(sp)
	bsr  	L6256
	addq.l	#4,sp
	bra.s	.return
.L7676:
	jsr	L64224
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,U101046
.return:
	addq	#2,sp
	move.l	(sp)+,d7
	rts

word_replace:
	movem.l	d6-d7,-(sp)
	bsr  	L8924
	move.w	d0,d7
	jsr	L61294
	move.w	d0,-(sp)
	move.w	d7,-(sp)
	bsr  	L5984
	addq.l	#2,sp
	move.w	d0,d6
	jsr	L61294
	move.w	d0,d1
	move.w	d6,d0
	jsr	L65186_2d
	jsr	L61834
	addq	#2,sp
	movem.l	(sp)+,d6-d7
	rts

word_reptail:
	movem.l	d5-d7,-(sp)
	bsr  	L8924
	move.w	d0,d5
	jsr	L61294
	move.w	d0,-(sp)
	move.w	d5,-(sp)
	bsr  	L5984
	addq.l	#2,sp
	move.w	d0,d7
	jsr	L61294
	move.w	d0,d6
	move.w	d6,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	.L7834
	move.w	d6,(sp)
	jsr	L65694
	move.w	d0,d6
.L7834:
	move.w	d6,d1
	move.w	d7,d0
	jsr	L65226_2d
	jsr	L61834
	addq	#2,sp
	movem.l	(sp)+,d5-d7
	rts

L7862:
	link	fp,#-4
	jsr	L61572
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L7896
	bsr.s	L7912
	move.w	d0,(sp)
	bra.s	L7902

L7896:
	bsr  	L8088
	move.w	d0,(sp)
L7902:
	jsr	L60886
	unlk	fp
	rts

L7912:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)
	jsr	L62398
	bsr  	L9350
	jsr	L64224
	move.w	d0,(sp)
	jsr	L55092
	move.w	U99178,d7
	bne.s	L7962
	bsr  	L9388
	clr.w	d0
	bra  	L8078

L7962:
	movea.l	U101030,a5
	move.w	U101046,(sp)
	jsr	L55092
	bsr  	L9388
	clr.w	d0
	move.w	U99178,d0
	sub.w	d7,d0
	move.w	d0,U91950
	move.w	#1,U101106
	bra.s	L8062

L8010:
	cmp.w	U91950,d7
	move	sr,d0
	subq.w	#1,U91950
	move	d0,ccr
	bgt.s	L8070
	move.w	d7,(sp)
	move.l	a5,-(sp)
	move.l	U101030,-(sp)
	jsr	L83814
	addq.l	#8,sp
	addq.l	#1,a5
	tst.w	d0
	bne.s	L8056
	moveq	#1,d0
	bra.s	L8078

L8056:
	addq.w	#1,U101106
L8062:
	tst.w	U91950
	bne.s	L8010
L8070:
	clr.w	U101106
	clr.w	d0
L8078:
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L8088:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L64224
	move.w	d0,d7
	move.w	#1,U101106
	bra.s	L8168

L8114:
	move.w	U101046,d0
	jsr	L358_1d
	move.w	d0,(sp)
	move.w	d7,-(sp)
	bsr  	L6590
	addq.l	#2,sp
	tst.w	d0
	beq.s	L8144
	moveq	#1,d0
	bra.s	L8184

L8144:
	move.w	U101046,d0
	jsr	L378_1d
	move.w	d0,U101046
	addq.w	#1,U101106
L8168:
	tst.w	U101046
	bne.s	L8114
	clr.w	U101106
	clr.w	d0
L8184:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L8194:
	link	fp,#-4
	jsr	L61190
	move.w	U101046,(sp)
	jsr	L65356
	tst.w	d0
	bne.s	L8240
	move.w	U101046,(sp)
	jsr	L61390
	tst.w	d0
	bne.s	L8240
	clr.w	(sp)
	bra.s	L8244

L8240:
	move.w	#1,(sp)
L8244:
	jsr	L60886
	unlk	fp
	rts

word_sentence:
	link	fp,#-2
	movem.l	d6-d7,-(sp)
	move.w	#2,(sp)
	jsr	L61064
	move.w	d0,-2(fp)
	clr.w	(sp)
	jsr	L64090
	bra  	.L8446
.L8288:
	jsr	L61190
	jsr	L64160
	tst.w	d0
	bne.s	.L8382
	tst.w	U101046
	beq.s	.L8380
	move.w	U101046,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	.L8352
	move.w	U101046,(sp)
	jsr	L65694
	move.w	d0,d7
	move.w	d7,(sp)
	jsr	L64276
	bra.s	.L8380
.L8352:
	move.w	U101046,(sp)
	clr.w	-(sp)
	bsr  	L6110
	addq.l	#2,sp
	move.w	d0,d7
	move.w	U101046,(sp)
	jsr	L64276
.L8380:
	bra.s	.L8446
.L8382:
	move.w	U101046,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	.L8428
	move.w	U101046,(sp)
	jsr	L65694
	move.w	d0,d6
	move.w	d6,d1
	move.w	d7,d0
	jsr	L65226_2d
	move.w	d6,d7
	bra.s	.L8446
.L8428:
	move.w	d7,(sp)
	move.w	U101046,-(sp)
	clr.w	-(sp)
	bsr  	L6256
	addq.l	#4,sp
	move.w	d0,d7
.L8446:
	move.w	-2(fp),(sp)
	jsr	L61098
	subq.w	#1,-2(fp)
	tst.w	d0
	beq  	.L8288
	jsr	L64764
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L8482:
	link	fp,#-4
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65322
	move.w	d0,(sp)
	jsr	L60886
	unlk	fp
	rts

L8512:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	#2,(sp)
	jsr	L61064
	move.w	d0,(sp)
	bsr.s	L8638
	bsr  	L9350
	jsr	L64224
	move.w	d0,d7
	bra.s	L8614

L8548:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d6
	move.w	d6,(sp)
	jsr	L65322
	tst.w	d0
	bne.s	L8596
	move.w	d6,(sp)
	move.w	U101460,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	jsr	L67066
	addq.l	#2,sp
L8596:
	move.w	d6,(sp)
	jsr	L55092
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L8614:
	tst.w	d7
	bne.s	L8548
	bsr  	L9388
	jsr	L61992
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L8638:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),(sp)
	jsr	L61098
	tst.w	d0
	beq.s	.L8668
	jsr	L64732
	bra.s	.L8742
.L8668:
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,d7
	move.w	d7,(sp)
	jsr	L64090
	bra.s	.L8724
.L8694:
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,d6
	move.w	d6,d1
	move.w	d7,d0
	jsr	L65226_2d
	move.w	d6,d7
.L8724:
	subq.w	#1,8(fp)
	move.w	8(fp),(sp)
	jsr	L61098
	tst.w	d0
	beq.s	.L8694
.L8742:
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L8752:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	bsr  	L8924
	move.w	d0,d7
	jsr	L61476
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d6
	move.w	d6,d0
	cmp.w	d7,d0
	bge.s	L8796
	jsr	L67118
L8796:
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L8864
	bsr  	L9162
	cmp.w	U99178,d6
	bls.s	L8832
	jsr	L67474
L8832:
	move.w	d7,d0
	subq.w	#1,d0
	ext.l	d0
	add.l	d0,U101030
	move.w	d6,d0
	sub.w	d7,d0
	addq.w	#1,d0
	move.w	d0,U99178
	jsr	L61992
	bra.s	L8914

L8864:
	move.w	U101046,(sp)
	bsr  	L6066
	cmp.w	d6,d0
	bge.s	L8884
	jsr	L67474
L8884:
	move.w	U101046,(sp)
	move.w	d7,-(sp)
	bsr  	L5984
	addq.l	#2,sp
	move.w	d0,(sp)
	move.w	d6,-(sp)
	move.w	d7,d0
	sub.w	d0,(sp)
	addq.w	#1,(sp)
	bsr  	L6110
	addq.l	#2,sp
L8914:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L8924:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d7
	ble.s	L8956
	move.w	d7,d0
	bra.s	L8962

L8956:
	jsr	L67118
L8962:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L8972:
	link	fp,#-4
	move.w	U101106,(sp)
	jsr	L61926
	unlk	fp
	rts

L8992:
	link	fp,#-4
	move.l	#L36478,(sp)
	bsr.s	L9036
	jsr	L61992
	unlk	fp
	rts

L9014:
	link	fp,#-4
	move.l	#L36522,(sp)
	bsr.s	L9036
	jsr	L61992
	unlk	fp
	rts

L9036:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	jsr	L61500
	bsr  	L9186
	movea.l	U101030,a5
	bra.s	L9080

L9062:
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,-(sp)
	movea.l	8(fp),a0
	jsr	(a0)
	addq.l	#2,sp
	move.b	d0,(a5)
	addq.l	#1,a5
L9080:
	move.l	U101030,d0
	clr.l	d1
	move.w	U99178,d1
	add.l	d1,d0
	cmpa.l	d0,a5
	bcs.s	L9062
	bsr  	L9388
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L9114:
	link	fp,#-4
	tst.w	U101046
	bne.s	L9132
	jsr	L67118
L9132:
	bsr.s	L9162
	subq.w	#1,U99178
	move.w	8(fp),d0
	ext.l	d0
	add.l	d0,U101030
	jsr	L61992
	unlk	fp
	rts

L9162:
	link	fp,#-4
	bsr.s	L9186
	tst.w	U99178
	bne.s	L9182
	jsr	L67118
L9182:
	unlk	fp
	rts

L9186:
	link	fp,#-4
	bsr  	L9350
	move.w	U101046,(sp)
	jsr	L55092
	bsr  	L9388
	unlk	fp
	rts

L9214:
	link	fp,#0
	move.l	d7,-(sp)
	move.w	8(fp),d7
	movea.l	#U100754,a0
	move.l	a0,U101030
	move.l	a0,-(sp)
	move.w	d7,d0
	jsr	L378_1d
	jsr	L358_1d
	jsr	L358_1d
	clr.w	d1
	jsr	L332_2d
	movea.l	(sp)+,a0
	move.b	d0,(a0)
	move.l	(sp)+,d7
	unlk	fp
	rts

L9296:
	link	fp,#-4
	move.w	U101046,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	.L9322
	bsr  	L9162
	bra.s	.return
.L9322:
	move.w	U101046,(sp)
	bsr.s	L9214
	movea.l	U101030,a0
	tst.b	(a0)
	bne.s	.return
	jsr	L67118
.return:
	unlk	fp
	rts

L9350:
	link	fp,#-4
	clr.w	d0
	move.w	d0,U99178
	movea.l	#U100754,a1
	move.l	a1,U101030
	move.b	d0,(a1)
	move.w	#1,U98714
	unlk	fp
	rts

L9388:
	link	fp,#-4
	move.l	#U100754,U101030
	clr.w	U98714
	unlk	fp
	rts

L9412:
	link	fp,#-4
	addq.l	#1,U101030
	unlk	fp
	rts

L9426:
	link	fp,#-4
	bra.s	L9442

L9432:
	move.w	#6,U100982
	bsr.s	L9412
L9442:
	movea.l	U101030,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L51120
	tst.w	d0
	bne.s	L9432
	unlk	fp
	rts

L9468:
	link	fp,#-4
	bsr.s	L9350
	move.w	8(fp),(sp)
	jsr	L55092
	bsr.s	L9388
	clr.w	U100982
	tst.w	U99178
	bne.s	L9506
	clr.w	d0
	bra  	L9652

L9506:
	movea.l	U101030,a0
	cmpi.b	#45,(a0)
	bne.s	L9520
	bsr.s	L9412
L9520:
	bsr.s	L9426
	movea.l	U101030,a0
	cmpi.b	#46,(a0)
	bne.s	L9538
	bsr.s	L9412
	bsr.s	L9426
L9538:
	tst.w	U100982
	bne.s	L9550
	clr.w	d0
	bra.s	L9652

L9550:
	movea.l	U101030,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L36478
	cmp.w	#69,d0
	bne.s	L9610
	bsr  	L9412
	movea.l	U101030,a0
	cmpi.b	#43,(a0)
	beq.s	L9602
	movea.l	U101030,a0
	cmpi.b	#45,(a0)
	bne.s	L9606
L9602:
	bsr  	L9412
L9606:
	bsr  	L9426
L9610:
	tst.w	U100982
	beq.s	L9628
	movea.l	U101030,a0
	tst.b	(a0)
	beq.s	L9632
L9628:
	clr.w	d0
	bra.s	L9652

L9632:
	move.l	#U100754,(sp)
	jsr	L80660
	move.l	d0,U99602
	moveq	#1,d0
L9652:
	unlk	fp
	rts

L9656:
	link	fp,#-4
	jsr	L61592
	move.l	#L9834,(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L62078
	addq.l	#2,sp
	tst.w	d0
	beq.s	L9702
	move.w	#24,(sp)
	jsr	L64276
L9702:
	jsr	L61312
	bsr.s	L9760
	bsr.s	L9724
	jsr	L61834
	bsr.s	L9794
	unlk	fp
	rts

L9724:
	link	fp,#-4
	move.l	#U101014,(sp)
	jsr	L204
	tst.w	d0
	bne.s	L9756
	jsr	L64888
	jsr	L59768
L9756:
	unlk	fp
	rts

L9760:
	link	fp,#-4
	jsr	L66768
	move.w	#6,(sp)
	jsr	L64300
	move.w	#20,(sp)
	jsr	L64090
	unlk	fp
	rts

L9794:
	link	fp,#-4
	move.w	#20,(sp)
	jsr	L68540
	move.w	#7,(sp)
	jsr	L64326
	jsr	L66800
	jsr	L64180
	unlk	fp
	rts

L9834:
	link	fp,#-4
	move.w	U100890,U101046
	unlk	fp
	rts

L9852:
	link	fp,#-4
	jsr	L61500
L9862:
	move.w	U101046,(sp)
	jsr	L68570
	tst.w	d0
	beq.s	L9922
	clr.w	d0
	move.w	d0,U99864
	move.w	d0,U99818
	jsr	L61834
	jsr	L64942
	move.w	#1,(sp)
	move.l	#U101014,-(sp)
	jsr	L218
	addq.l	#4,sp
L9922:
	jsr	L64006
	tst.w	d0
	bne.s	L9940
	jsr	L64028
	bra.s	L9862

L9940:
	clr.w	d0
	move.w	U101046,d0
	cmp.w	U101012,d0
	bne.s	L9974
	move.w	#1,(sp)
	move.l	#U101158,-(sp)
	jsr	L218
	addq.l	#4,sp
L9974:
	jsr	L67768
	unlk	fp
	rts

L9984:
	link	fp,#-4
	jsr	L60580
	jsr	L61834
	unlk	fp
	rts

L10004:
	link	fp,#-4
	jsr	L61500
	bsr  	L10182
	jsr	L64006
	tst.w	d0
	bne  	L10172
	move.w	U98716,(sp)
	move.w	#9,-(sp)
	jsr	L64352
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,U99818
	beq.s	L10172
	bra.s	L10152

L10068:
	move.w	U99818,d0
	jsr	L358_1d
	move.w	d0,U99864
	bra.s	L10142

L10088:
	clr.w	U100894
	bsr  	L10220
	clr.w	d0
	move.w	U100894,d0
	cmp.w	U101046,d0
	bne.s	L10142
	jsr	L61834
	jsr	L64942
	clr.w	(sp)
	move.l	#U101014,-(sp)
	jsr	L218
	addq.l	#4,sp
L10142:
	jsr	L61904
	tst.w	d0
	beq.s	L10088
L10152:
	move.w	U99818,d0
	jsr	L378_1d
	move.w	d0,U99818
	bne.s	L10068
L10172:
	jsr	L67802
	unlk	fp
	rts

L10182:
	link	fp,#-4
	bra.s	L10206

L10188:
	jsr	L64160
	cmp.w	#18,d0
	beq.s	L10216
	jsr	L64028
L10206:
	jsr	L64006
	tst.w	d0
	beq.s	L10188
L10216:
	unlk	fp
	rts

L10220:
	link	fp,#-4
	move.l	#L9984,(sp)
	move.w	U99864,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	jsr	L62078
	addq.l	#2,sp
	tst.w	d0
	beq  	L10378
	jsr	L59950
	jsr	L61904
	tst.w	d0
	bne  	L10442
	move.w	U99864,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65726
	tst.w	d0
	beq.s	L10376
	jsr	L9350
	move.w	U99864,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L55092
	jsr	L9388
	tst.w	U99178
	beq.s	L10376
	jsr	L50570
	cmpi.b	#34,U100754
	bne.s	L10376
	jsr	L53396
	jsr	L64224
	move.w	d0,U100894
L10376:
	bra.s	L10436

L10378:
	move.w	U99864,d0
	jsr	L358_1d
	cmp.w	U100624,d0
	bne.s	L10436
	jsr	L59950
	jsr	L61904
	tst.w	d0
	bne.s	L10442
	bsr  	L10220
	bra.s	L10426

L10420:
	jsr	L59950
L10426:
	jsr	L61884
	tst.w	d0
	beq.s	L10420
L10436:
	jsr	L59950
L10442:
	unlk	fp
	rts

word_nodes:
	clr.l	d0
	move.w	nodes_free,d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	move.l	d0,(sp)
	jsr	L52972
	jsr	L64764
	addq.l	#4,sp
	rts

L10492:
	link	fp,#-4
	jsr	L64732
	jsr	L57504
	bra.s	L10522

L10510:
	move.w	U100668,(sp)
	jsr	L12242
L10522:
	jsr	L57542
	tst.w	d0
	bne.s	L10510
	jsr	L64764
	unlk	fp
	rts

L10542:
	link	fp,#-4
	move.w	#1,U101198
	move.w	#2,(sp)
	jsr	L48084
	unlk	fp
	rts

L10568:
	link	fp,#-4
	clr.w	U101198
	move.w	#2,(sp)
	jsr	L48156
	unlk	fp
	rts

L10592:
	link	fp,#-4
	move.w	U101046,(sp)
	move.w	U98398,-(sp)
	jsr	L66654
	addq.l	#2,sp
	move.w	d0,U98398
	unlk	fp
	rts

L10626:
	link	fp,#-4
	move.w	U98398,(sp)
	move.w	U101046,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,U98398
	unlk	fp
	rts

L10660:
	link	fp,#-4
	jsr	L61884
	tst.w	d0
	beq.s	L10688
	move.w	U100736,(sp)
	jsr	L64090
	bra.s	L10694

L10688:
	jsr	L15622
L10694:
	move.l	#L10592,(sp)
	bsr  	L10816
	move.l	#L10626,(sp)
	bsr.s	L10816
	jsr	L64180
	tst.w	U98398
	beq.s	L10736
	move.w	#1,(sp)
	jsr	L48084
L10736:
	jsr	L61834
	unlk	fp
	rts

L10746:
	link	fp,#-4
	jsr	L61884
	tst.w	d0
	beq.s	L10768
	clr.w	U98398
	bra.s	L10788

L10768:
	jsr	L15622
	move.l	#L10592,(sp)
	bsr.s	L10816
	jsr	L64180
L10788:
	tst.w	U98398
	bne.s	L10806
	move.w	#1,(sp)
	jsr	L48156
L10806:
	jsr	L61834
	unlk	fp
	rts

L10816:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L64160
	move.w	d0,d7
	bra.s	L10864

L10834:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,U101046
	movea.l	8(fp),a0
	jsr	(a0)
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L10864:
	tst.w	d7
	bne.s	L10834
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L10878:
	link	fp,#-4
	jsr	L61592
	jsr	L61206
	jsr	L64160
	move.w	d0,(sp)
	move.w	U101046,-(sp)
	bsr  	L11134
	addq.l	#2,sp
	jsr	L64224
	move.w	d0,(sp)
	jsr	L55654
	unlk	fp
	rts

L10932:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	#1,(sp)
	jsr	L61064
	move.w	d0,d7
	bra.s	L10974

L10954:
	jsr	L61500
	clr.w	(sp)
	move.w	U101046,-(sp)
	bsr  	L11782
	addq.l	#2,sp
L10974:
	move.w	d7,(sp)
	jsr	L61098
	subq.w	#1,d7
	tst.w	d0
	beq.s	L10954
	jsr	L61834
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L11004:
	link	fp,#-4
	jsr	L61500
	move.w	U101046,(sp)
	bsr  	L11848
	tst.w	d0
	bne.s	L11056
	move.w	U98718,(sp)
	move.w	U101046,-(sp)
	jsr	L65948
	addq.l	#2,sp
	tst.w	d0
	bne.s	L11056
	clr.w	(sp)
	bra.s	L11060

L11056:
	move.w	#1,(sp)
L11060:
	jsr	L60886
	unlk	fp
	rts

L11070:
	link	fp,#-4
	jsr	L61500
	move.w	U101046,(sp)
	jsr	L60254
	unlk	fp
	rts

L11096:
	link	fp,#-4
	jsr	L61572
	jsr	L61500
	move.w	U101046,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	bsr.s	L11134
	addq.l	#2,sp
	unlk	fp
	rts

L11134:
	movem.l	d6-d7,-(sp)
	move.w	12(sp),d7
	move.w	14(sp),d6
	move.w	d6,-(sp)
	bsr  	L11848
	move.w	d0,U91952
	bne.s	.L11212
	move.w	d7,(sp)
	jsr	L64090
	move.w	d6,(sp)
	jsr	L64090
	move.w	d7,(sp)
	move.w	U98718,-(sp)
	move.w	d6,-(sp)
	jsr	L66062
	addq.l	#4,sp
	jsr	L64180
	jsr	L64180
	bra.s	.L11228
.L11212:
	move.w	d7,d1
	move.w	U91952,d0
	jsr	L65226_2d
.L11228:
	tst.w	U101198
	beq.s	.L11296
	jsr	L60968
	move.w	d7,(sp)
	move.l	#L55354,-(sp)
	clr.l	d0
	move.w	d6,d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L54682,-(sp)
	move.l	T87282,-(sp)
	jsr	L54390
	adda.l	#16,sp
	jsr	L74840
	jsr	L47940
.L11296:
	jsr	L61834
	addq	#2,sp
	movem.l	(sp)+,d6-d7
	rts

L11312:
	link	fp,#-4
	jsr	L61592
	jsr	L61500
	move.w	U101046,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,U101046
	unlk	fp
	rts

L11360:
	jsr	L61500
	move.w	U101046,d0
	jsr	L66356_1d
	move.w	d0,U101046
	rts

L11392:
	link	fp,#-4
	jsr	L61592
	jsr	L61592
	jsr	L61294
	move.w	d0,(sp)
	jsr	L64160
	move.w	d0,-(sp)
	move.w	#1,-(sp)
	jsr	L64352
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
	jsr	L64180
	jsr	L64180
	jsr	L61834
	unlk	fp
	rts

L11468:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L15576
	jsr	L64732
	move.w	#1,(sp)
	jsr	L57456
	jsr	L64160
	move.w	d0,d7
	bra  	.L11650
.L11510:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L57838
	bra.s	.L11622
.L11528:
	jsr	L57986
	tst.w	d0
	bne.s	.L11622
	jsr	L74840
	move.w	U101182,(sp)
	move.l	#L55354,-(sp)
	clr.l	d0
	move.w	U101490,d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L55354,-(sp)
	move.w	d7,d0
	jsr	L358_1d
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L55092,-(sp)
	move.l	T87310,-(sp)
	jsr	L54390
	adda.l	#24,sp
.L11622:
	jsr	L57902
	tst.w	d0
	bne.s	.L11528
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
	move.w	d7,(sp)
	jsr	L64276
.L11650:
	tst.w	d7
	bne  	.L11510
	jsr	L61834
	jsr	L64180
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L11678:
	link	fp,#-4
	jsr	L61592
	jsr	L61500
	move.w	U101046,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L66244
	addq.l	#2,sp
	jsr	L61834
	unlk	fp
	rts

L11726:
	link	fp,#-4
	jsr	L61592
	jsr	L15576
	jsr	L64732
	move.w	#2,(sp)
	jsr	L64352
	move.w	d0,(sp)
	jsr	L57456
	jsr	L64764
	jsr	L64180
	unlk	fp
	rts

L11782:
	link	fp,#-4
	move.w	10(fp),(sp)
	move.w	8(fp),-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64090
	move.w	U101474,(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,U101474
	jsr	L64180
	unlk	fp
	rts

L11848:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	U101474,d7
	bra.s	.L11906
.L11864:
	move.w	d7,d0
	jsr	L358_1d
	jsr	L358_1d
	cmp.w	8(fp),d0
	bne.s	.L11896
	move.w	d7,d0
	jsr	L358_1d
	bra.s	.return
.L11896:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L11906:
	tst.w	d7
	bne.s	.L11864
	clr.w	d0
.return:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L11922:
	link	fp,#-4
	move.w	#2,(sp)
	jsr	L64300
	move.w	U100738,(sp)
	jsr	L57456
	move.w	U100738,(sp)
	jsr	L56100
	unlk	fp
	rts

L11964:
	link	fp,#-4
	jsr	L61534
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L11998
	jsr	L67118
L11998:
	move.w	U101046,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr.s	L12082
	move.w	U101046,d0
	jsr	L378_1d
	move.w	d0,(sp)
	bsr  	L12154
	jsr	L61804
	move.w	U101046,(sp)
	move.w	U98716,-(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
	jsr	L64180
	jsr	L61834
	unlk	fp
	rts

L12082:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L12112
	jsr	L67118
L12112:
	bra.s	L12140

L12114:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L62492
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L12140:
	tst.w	d7
	bne.s	L12114
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L12154:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	bra.s	L12204

L12168:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L12194
	jsr	L67118
L12194:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L12204:
	tst.w	d7
	bne.s	L12168
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L12218:
	link	fp,#-4
	jsr	L61500
	bsr  	L13392
	move.w	d0,U101046
	unlk	fp
	rts

L12242:
	link	fp,#-4
	jsr	L64160
	move.w	d0,(sp)
	move.w	8(fp),-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64276
	unlk	fp
	rts

L12278:
	link	fp,#-4
	jsr	L61500
	jsr	L64732
	clr.w	(sp)
	move.w	U101046,-(sp)
	bsr.s	L12322
	addq.l	#2,sp
	jsr	L64180
	jsr	L61834
	unlk	fp
	rts

L12322:
	link	fp,#-2
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	U98716,(sp)
	move.w	d7,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,d6
	beq  	L12480
	move.w	#1,(sp)
	move.w	d7,-(sp)
	bsr  	L12576
	addq.l	#2,sp
	tst.w	d0
	bne.s	L12480
	jsr	L74840
	move.w	10(fp),d0
	asl.w	#1,d0
	move.w	d0,(sp)
	jsr	L76954
	move.w	d6,(sp)
	move.w	d7,-(sp)
	jsr	L55502
	addq.l	#2,sp
	clr.w	U101034
	move.w	10(fp),(sp)
	addq.w	#1,(sp)
	move.w	d7,-(sp)
	bsr  	L12576
	addq.l	#2,sp
	move.w	d0,-2(fp)
	move.w	d7,(sp)
	bsr  	L12242
	tst.w	-2(fp)
	bne.s	L12480
	jsr	L74764
	jsr	L64732
	move.w	10(fp),(sp)
	addq.w	#1,(sp)
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,-(sp)
	bsr.s	L12490
	addq.l	#2,sp
	jsr	L64180
L12480:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L12490:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L12528
	move.w	10(fp),(sp)
	move.w	d7,-(sp)
	bsr  	L12322
	addq.l	#2,sp
	bra.s	L12566

L12528:
	move.w	d7,d6
	bra.s	L12562

L12532:
	move.w	10(fp),(sp)
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	bsr.s	L12490
	addq.l	#2,sp
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
L12562:
	tst.w	d6
	bne.s	L12532
L12566:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L12576:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	10(fp),d7
	bra.s	L12634

L12590:
	move.w	d7,(sp)
	jsr	L64352
	move.w	d0,d6
	bra.s	L12630

L12602:
	move.w	d6,d0
	jsr	L358_1d
	cmp.w	8(fp),d0
	bne.s	L12620
	moveq	#1,d0
	bra.s	L12644

L12620:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
L12630:
	tst.w	d6
	bne.s	L12602
L12634:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bne.s	L12590
	clr.w	d0
L12644:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

word_potl:
	move.l	d7,-(sp)
	subq	#2,sp
	clr.w	U100674
	move.w	U100736,d7
	bra.s	.L12718
.L12676:
	move.w	U100674,(sp)
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,U100674
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L12718:
	tst.w	d7
	bne.s	.L12676
	jsr	L64732
	move.w	U100736,d7
	bra.s	.L12798
.L12736:
	move.w	U98716,(sp)
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	jsr	L378_1d
	move.w	d0,(sp)
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	bsr.s	L12840
	addq.l	#2,sp
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L12798:
	tst.w	d7
	bne.s	.L12736
	jsr	L64180
	clr.w	(sp)
	move.w	U100674,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L61834
	addq	#2,sp
	move.l	(sp)+,d7
	rts

L12840:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	10(fp),d7
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	beq.s	.L12956
	move.w	U98716,(sp)
	move.w	d7,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,d6
	beq.s	.L12956
	cmp.w	8(fp),d7
	beq.s	.L12912
	move.w	d7,(sp)
	move.w	U100674,-(sp)
	jsr	L66654
	addq.l	#2,sp
	move.w	d0,U100674
.L12912:
	move.w	#1,(sp)
	move.w	d7,-(sp)
	bsr  	L12576
	addq.l	#2,sp
	tst.w	d0
	bne.s	.L13010
	move.w	d7,(sp)
	bsr  	L12242
	jsr	L74764
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,(sp)
	move.w	d7,-(sp)
	bsr.s	L12840
	addq.l	#2,sp
.L12956:
	move.w	d7,(sp)
	jsr	L65266
	tst.w	d0
	bne.s	.L13010
	bra.s	.L13006
.L12970:
	jsr	L74764
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	move.w	8(fp),-(sp)
	bsr  	L12840
	addq.l	#2,sp
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L13006:
	tst.w	d7
	bne.s	.L12970
.L13010:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L13020:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.w	U100674
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L13070
	move.w	U101046,(sp)
	jsr	L65694
	move.w	d0,U101046
L13070:
	jsr	L64732
	bra  	L13230

L13080:
	move.w	U100736,d7
	bra  	L13208

L13090:
	move.w	U98716,(sp)
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	jsr	L378_1d
	move.w	d0,(sp)
	bsr  	L13278
	tst.w	d0
	beq.s	L13198
	move.w	U100674,(sp)
	jsr	L64090
	move.w	#1,(sp)
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	bsr  	L12576
	addq.l	#2,sp
	tst.w	d0
	bne.s	L13186
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L12242
L13186:
	jsr	L64224
	move.w	d0,U100674
L13198:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L13208:
	tst.w	d7
	bne.s	L13090
	move.w	U101046,d0
	jsr	L378_1d
	move.w	d0,U101046
L13230:
	tst.w	U101046
	bne  	L13080
	jsr	L64180
	clr.w	(sp)
	move.w	U100674,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L61834
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L13278:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	beq.s	L13326
	move.w	U101046,d0
	jsr	L358_1d
	cmp.w	d7,d0
	beq.s	L13322
	clr.w	d0
	bra.s	L13324

L13322:
	moveq	#1,d0
L13324:
	bra.s	L13382

L13326:
	move.w	d7,(sp)
	jsr	L65266
	tst.w	d0
	bne.s	L13380
	bra.s	L13376

L13340:
	jsr	L74764
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr.s	L13278
	tst.w	d0
	beq.s	L13366
	moveq	#1,d0
	bra.s	L13382

L13366:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L13376:
	tst.w	d7
	bne.s	L13340
L13380:
	clr.w	d0
L13382:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L13392:
	link	fp,#-4
	move.w	U98716,(sp)
	move.w	U101046,-(sp)
	jsr	L66008
	addq.l	#2,sp
	unlk	fp
	rts

L13420:
	link	fp,#-4
	jsr	L61500
	bsr.s	L13392
	move.w	d0,(sp)
	jsr	L60886
	unlk	fp
	rts

L13444:
	link	fp,#-4
	move.w	U100736,U101046
	unlk	fp
	rts

L13462:
	link	fp,#-4
	jsr	L61500
	move.w	U101046,(sp)
	jsr	L65878
	move.w	d0,(sp)
	jsr	L60886
	unlk	fp
	rts

L13496:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L61534
	jsr	L61518
	move.w	U101046,(sp)
	jsr	L65878
	tst.w	d0
	beq.s	L13540
	move.w	U100742,d7
	bra.s	L13562

L13540:
	bsr  	L13392
	tst.w	d0
	beq.s	L13556
	move.w	U98716,d7
	bra.s	L13562

L13556:
	jsr	L67118
L13562:
	jsr	L61804
	move.w	U100738,(sp)
	move.w	U101046,-(sp)
	jsr	L66008
	addq.l	#2,sp
	tst.w	d0
	beq.s	L13636
	move.w	U100738,(sp)
	move.w	U101046,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,(sp)
	move.w	U100738,-(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
L13636:
	move.w	d7,(sp)
	move.w	U101046,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,(sp)
	move.w	d7,-(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
	jsr	L64180
	jsr	L61834
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L13694:
	link	fp,#-4
	bsr.s	L13764
	bra.s	.L13744
.L13702:
	jsr	L64746
	bsr.s	L13764
	move.w	U101046,(sp)
	jsr	L66626
	jsr	L64224
	move.w	d0,(sp)
	move.w	U101046,-(sp)
	jsr	L66394
	addq.l	#2,sp
.L13744:
	jsr	L61884
	tst.w	d0
	beq.s	.L13702
	jsr	L61834
	unlk	fp
	rts

L13764:
	link	fp,#-4
	jsr	L61190
	move.w	U101046,(sp)
	jsr	L66524
	tst.w	d0
	bne.s	L13796
	jsr	L67118
L13796:
	unlk	fp
	rts

L13800:
	link	fp,#-4
	bsr  	L15576
	jsr	L64714
	jsr	L56498
	jsr	L56230
	move.w	#1,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L56362
	move.w	#2,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L56572
	jsr	L56386
	unlk	fp
	rts

L13888:
	link	fp,#-4
	bsr  	L15576
	jsr	L56362
	move.w	#2,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56650
	addq.l	#2,sp
	jsr	L56386
	unlk	fp
	rts

L13932:
	link	fp,#-4
	bsr  	L15576
	jsr	L56230
	move.w	#1,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56650
	addq.l	#2,sp
	jsr	L56386
	unlk	fp
	rts

L13976:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L61884
	tst.w	d0
	beq.s	L14068
	tst.w	U100748
	beq.s	L14038
	move.w	#1,(sp)
	move.w	U100748,-(sp)
	jsr	L65694
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L56650
	addq.l	#2,sp
	clr.w	U100748
	bra.s	L14064

L14038:
	tst.w	U98712
	beq.s	L14058
	move.l	U101102,U99196
	bra.s	L14064

L14058:
	jsr	L69744
L14064:
	bra  	L14200

L14068:
	bsr  	L15526
	jsr	L64160
	move.w	d0,d7
	bra.s	L14144

L14082:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,U101046
	move.w	d0,(sp)
	jsr	L62492
	move.w	U98718,(sp)
	move.w	U101046,-(sp)
	jsr	L65948
	addq.l	#2,sp
	tst.w	d0
	bne.s	L14134
	jsr	L61710
L14134:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L14144:
	tst.w	d7
	bne.s	L14082
	jsr	L56498
	move.w	#1,(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	move.w	#2,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L56572
L14200:
	jsr	L56386
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L14216:
	link	fp,#-4
	bsr  	L15604
	bra.s	L14252

L14226:
	move.w	U100984,(sp)
	move.w	U100994,-(sp)
	move.w	U101046,-(sp)
	jsr	L66062
	addq.l	#4,sp
L14252:
	bsr  	L15814
	tst.w	d0
	bne.s	L14226
	unlk	fp
	rts

L14264:
	link	fp,#-4
	bsr  	L15604
	bra.s	L14294

L14274:
	move.w	U100994,(sp)
	move.w	U101046,-(sp)
	jsr	L66244
	addq.l	#2,sp
L14294:
	bsr  	L15814
	tst.w	d0
	bne.s	L14274
	unlk	fp
	rts

L14306:
	link	fp,#-4
	jsr	L74840
	jsr	L76978
	jsr	L76978
	unlk	fp
	rts

L14332:
	link	fp,#-4
	bsr.s	L14306
	move.w	#34,(sp)
	jsr	L74948
	move.w	U100668,(sp)
	jsr	L54682
	move.l	8(fp),(sp)
	jsr	L74902
	unlk	fp
	rts

L14374:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	jsr	L61884
	tst.w	d0
	beq.s	L14454
	jsr	L64732
	jsr	L57504
	bra.s	L14442

L14406:
	move.w	U100648,(sp)
	move.w	U100668,-(sp)
	jsr	L66008
	addq.l	#2,sp
	tst.w	d0
	beq.s	L14442
	move.w	U100668,(sp)
	jsr	L12242
L14442:
	jsr	L57542
	tst.w	d0
	bne.s	L14406
	bra.s	L14458

L14454:
	bsr  	L15604
L14458:
	bra  	L14744

L14462:
	jsr	L74840
	move.w	U100994,(sp)
	jsr	L64160
	jsr	L358_1d
	move.w	d0,d7
	move.w	d7,-(sp)
	jsr	L65948
	addq.l	#2,sp
	tst.w	d0
	beq.s	L14530
	move.w	d7,(sp)
	move.l	#L54682,-(sp)
	move.l	T87198,-(sp)
	jsr	L54390
	addq.l	#8,sp
	bra.s	L14538

L14530:
	move.w	d7,(sp)
	jsr	L54682
L14538:
	jsr	L57504
	bra  	L14710

L14548:
	move.w	U98400,(sp)
	move.w	U100668,-(sp)
	jsr	L66008
	addq.l	#2,sp
	cmp.w	d7,d0
	bne  	L14710
	move.w	U98716,(sp)
	move.w	U100668,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,d6
	beq.s	L14630
	bsr  	L14306
	jsr	L57364
	move.w	d6,(sp)
	move.w	U100668,-(sp)
	jsr	L55502
	addq.l	#2,sp
	clr.w	U101034
L14630:
	move.w	U98718,(sp)
	move.w	U100668,-(sp)
	jsr	L66008
	addq.l	#2,sp
	tst.w	d0
	beq.s	L14664
	move.l	T87190,(sp)
	bsr  	L14332
L14664:
	move.w	U100668,(sp)
	jsr	L57838
	bra.s	L14700

L14678:
	jsr	L57986
	tst.w	d0
	bne.s	L14700
	move.l	T87194,(sp)
	bsr  	L14332
	bra.s	L14710

L14700:
	jsr	L57902
	tst.w	d0
	bne.s	L14678
L14710:
	jsr	L57542
	tst.w	d0
	bne  	L14548
	jsr	L64160
	jsr	L378_1d
	move.w	d0,(sp)
	jsr	L64276
L14744:
	jsr	L64160
	tst.w	d0
	bne  	L14462
	jsr	L64180
	jsr	L61834
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L14778:
	link	fp,#-4
	bsr  	L15526
	clr.w	(sp)
	move.w	U98718,-(sp)
	move.w	U98716,-(sp)
	bsr  	L15672
	addq.l	#4,sp
	move.w	#1,(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	move.w	#2,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L61834
	unlk	fp
	rts

L14856:
	link	fp,#-4
	bsr  	L15576
	jsr	L64714
	bsr  	L15002
	bsr.s	L14948
	jsr	L61834
	unlk	fp
	rts

L14886:
	link	fp,#-4
	bsr  	L15576
	jsr	L56230
	clr.w	(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L61834
	unlk	fp
	rts

L14928:
	link	fp,#-4
	bsr  	L15576
	bsr.s	L14948
	jsr	L61834
	unlk	fp
	rts

L14948:
	link	fp,#-4
	jsr	L56362
	move.w	#2,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	unlk	fp
	rts

L14982:
	link	fp,#-4
	bsr  	L15576
	bsr.s	L15002
	jsr	L61834
	unlk	fp
	rts

L15002:
	link	fp,#-4
	jsr	L56230
	move.w	#1,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	unlk	fp
	rts

L15036:
	link	fp,#-4
	bsr  	L15576
	jsr	L64714
	jsr	L64714
	bsr  	L15248
	bsr  	L15268
	jsr	L64160
	tst.w	d0
	bne.s	L15092
	jsr	L64732
	move.w	U100648,(sp)
	jsr	L57456
L15092:
	jsr	L64714
	move.w	U100648,(sp)
	jsr	L56100
	jsr	L64732
	move.w	U98400,(sp)
	jsr	L57456
	move.w	U98400,(sp)
	jsr	L56100
	jsr	L61834
	unlk	fp
	rts

L15150:
	link	fp,#-4
	bsr  	L15622
	jsr	L56070
	jsr	L61834
	unlk	fp
	rts

L15174:
	link	fp,#-4
	bsr  	L15526
	move.w	U98718,(sp)
	bsr  	L15640
	jsr	L56054
	jsr	L61834
	unlk	fp
	rts

L15208:
	link	fp,#-4
	bsr  	L15576
	bsr.s	L15248
	jsr	L61834
	unlk	fp
	rts

L15228:
	link	fp,#-4
	bsr  	L15576
	bsr.s	L15268
	jsr	L61834
	unlk	fp
	rts

L15248:
	link	fp,#-4
	jsr	L56362
	jsr	L56054
	unlk	fp
	rts

L15268:
	link	fp,#-4
	jsr	L56230
	jsr	L56070
	unlk	fp
	rts

L15288:
	link	fp,#-4
	jsr	L61592
	bsr  	L15526
	move.w	#1,(sp)
	move.w	U98718,-(sp)
	move.w	U98716,-(sp)
	bsr  	L15672
	addq.l	#4,sp
	tst.w	U101108
	bne.s	L15338
	clr.w	(sp)
	bsr.s	L15406
	bra.s	L15350

L15338:
	jsr	L64180
	jsr	L64180
L15350:
	jsr	L61834
	unlk	fp
	rts

L15360:
	link	fp,#-4
	jsr	L61592
	move.w	#2,(sp)
	jsr	L64300
	jsr	L56246
	move.w	#1,(sp)
	jsr	L57456
	move.w	#1,(sp)
	bsr.s	L15406
	unlk	fp
	rts

L15406:
	link	fp,#-4
	move.w	U100984,(sp)
	move.w	U100648,-(sp)
	move.w	#1,-(sp)
	jsr	L64352
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
	bra.s	L15508

L15446:
	tst.w	8(fp)
	beq.s	L15476
	move.w	U98400,(sp)
	move.w	U101046,-(sp)
	jsr	L65948
	addq.l	#2,sp
	tst.w	d0
	bne.s	L15508
L15476:
	move.w	#1,(sp)
	jsr	L64352
	move.w	d0,(sp)
	move.w	U98400,-(sp)
	move.w	U101046,-(sp)
	jsr	L66062
	addq.l	#4,sp
L15508:
	bsr  	L15814
	tst.w	d0
	bne.s	L15446
	jsr	L64180
	unlk	fp
	rts

L15526:
	link	fp,#-4
	jsr	L61294
	move.w	d0,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L15566
	move.w	U101046,(sp)
	jsr	L65694
	move.w	d0,U101046
L15566:
	jsr	L64746
	unlk	fp
	rts

L15576:
	link	fp,#-4
	jsr	L61884
	tst.w	d0
	beq.s	L15598
	jsr	L64732
	bra.s	L15600

L15598:
	bsr.s	L15604
L15600:
	unlk	fp
	rts

L15604:
	link	fp,#-4
	bsr.s	L15526
	move.w	U100648,(sp)
	bsr.s	L15640
	unlk	fp
	rts

L15622:
	link	fp,#-4
	bsr.s	L15526
	move.w	U98716,(sp)
	bsr.s	L15640
	unlk	fp
	rts

L15640:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	clr.w	(sp)
	move.w	d7,-(sp)
	move.w	d7,-(sp)
	bsr.s	L15672
	addq.l	#4,sp
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L15672:
	link	fp,#0
	movem.l	d4-d7,-(sp)
	move.w	8(fp),d7
	move.w	10(fp),d6
	jsr	L64160
	move.w	d0,d5
	bra.s	L15800

L15698:
	move.w	d5,d0
	jsr	L358_1d
	move.w	d0,U101046
	move.w	d0,(sp)
	jsr	L62492
	jsr	L64746
	tst.w	12(fp)
	beq.s	L15754
	move.w	U101046,(sp)
	jsr	L57838
	jsr	L57808
	tst.w	d0
	beq.s	L15784
L15754:
	move.w	d7,(sp)
	jsr	L57428
	tst.w	d0
	bne.s	L15784
	move.w	d6,(sp)
	jsr	L57428
	tst.w	d0
	bne.s	L15784
	jsr	L67118
L15784:
	jsr	L64180
	move.w	d5,d0
	jsr	L378_1d
	move.w	d0,d5
L15800:
	tst.w	d5
	bne.s	L15698
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7
	unlk	fp
	rts

L15814:
	link	fp,#-4
	jsr	L64160
	tst.w	d0
	bne.s	L15844
	jsr	L64180
	jsr	L61834
	clr.w	d0
	bra.s	L15906

L15844:
	jsr	L64160
	jsr	L358_1d
	move.w	d0,U101046
	move.w	d0,(sp)
	jsr	L65726
	tst.w	d0
	bne.s	L15882
	jsr	L67118
L15882:
	jsr	L64160
	jsr	L378_1d
	move.w	d0,(sp)
	jsr	L64276
	moveq	#1,d0
L15906:
	unlk	fp
	rts

L15910:
	link	fp,#-8
	jsr	L61476
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.l	d0,-4(fp)
	move.l	-4(fp),d0
	unlk	fp
	rts

	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	10(fp),d7
	cmp.w	8(fp),d7
	bgt.s	L15964
	move.w	d7,d0
	bra.s	L15970

L15964:
	move.w	8(fp),d0
	addq.w	#1,d0
L15970:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L15980:
	move.w	max_colors,-(sp)
	jsr	L61658
	addq	#2,sp
	rts

L16000:
	link	fp,#-8
	move.l	#-130993,-(sp)
	jsr	L61476
	move.l	d0,-4(fp)
	move.l	d0,-(sp)
	jsr	L3058
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L16060
	jsr	L48234
	jsr	L61834
	move.l	-4(fp),d0
	bra.s	L16066

L16060:
	jsr	L67118
L16066:
	unlk	fp
	rts

	link	fp,#-4
	jsr	L61340
	jsr	L62226
	unlk	fp
	rts

L16090:
	link	fp,#-4
	jsr	L61312
	move.w	U101046,U100896
	unlk	fp
	rts

L16114:
	link	fp,#-4
	tst.w	U100896
	bne.s	L16132
	jsr	L67474
L16132:
	move.w	U100896,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L64090
	move.w	U100896,d0
	jsr	L378_1d
	move.w	d0,U100896
	unlk	fp
	rts

L16174:
	link	fp,#-4
	bsr.s	L16114
	jsr	L64160
	move.w	d0,(sp)
	jsr	L65356
	tst.w	d0
	bne.s	L16236
	jsr	L64160
	move.w	d0,(sp)
	jsr	L61390
	tst.w	d0
	beq.s	L16230
	jsr	L64180
	jsr	L52990
	bra.s	L16236

L16230:
	jsr	L67118
L16236:
	unlk	fp
	rts

L16240:
	link	fp,#-4
	bsr  	L16090
	bsr.s	L16174
	bsr.s	L16174
	unlk	fp
	rts

L16256:
	link	fp,#-4
	jsr	L64224
	move.w	d0,(sp)
	jsr	L65532
	unlk	fp
	rts

L16278:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	bsr.s	L16174
	bsr.s	L16256
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d7
	cmp.w	8(fp),d7
	bgt.s	L16312
	tst.w	d7
	bge.s	L16318
L16312:
	jsr	L67118
L16318:
	move.w	d7,d0
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L16330:
	link	fp,#-4
	clr.l	(sp)
	clr.l	-(sp)
	jsr	L35228
	addq.l	#4,sp
	clr.l	(sp)
	jsr	L33502
	unlk	fp
	rts

word_setzoom:
	move.w	#16,-(sp)
	move.l	#L33736,-(sp)
	bsr  	L17846
	addq.l	#6,sp
	rts

word_setpan:
	link	fp,#-12
	bsr  	L16240
	move.l	#$FA00004E,-(sp)
	bsr  	L16256
	move.l	d0,-4(fp)
	move.l	d0,-(sp)
	jsr	L3058
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L16516
	move.l	#$FA00004E,-(sp)
	bsr  	L16256
	move.l	d0,-8(fp)
	move.l	d0,-(sp)
	jsr	L3058
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L16516
	jsr	L48234
	jsr	turtle_draw
	move.l	-4(fp),(sp)
	move.l	-8(fp),-(sp)
	jsr	L33794
	addq.l	#4,sp
	jsr	turtle_draw
	bsr  	L18502
	bra.s	L16522

L16516:
	jsr	L67118
L16522:
	unlk	fp
	rts

L16526:
	link	fp,#-8
	jsr	L61476
	move.l	d0,-(sp)
	jsr	L82000
	addq.l	#4,sp
	move.l	d0,-4(fp)
	jsr	L48234
	move.l	-4(fp),(sp)
	jsr	L33366
	bsr  	L18502
	unlk	fp
	rts

L16574:
	link	fp,#-4
	jsr	L48234
	jsr	L33580
	jsr	L47940
	unlk	fp
	rts

L16600:
	link	fp,#-4
	jsr	L48234
	jsr	L33580
	jsr	L33238
	bsr  	L16330
	jsr	L33212
	jsr	L47940
	unlk	fp
	rts

word_forward:
	jsr	L61476
	move.l	d0,-(sp)
	jsr	L48234
	jsr	L33366
	bsr  	L18502
	addq	#4,sp
	rts

word_turtlefacts:
	link	fp,#-4
	move.l	U99808,(sp)
	jsr	L52972
	move.l	U99812,(sp)
	jsr	L52972
	move.l	U92078,(sp)
	jsr	L52972
	jsr	L33300
	movea.w	d0,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T87322,a1
	move.l	0(a0,a1.l),(sp)
	jsr	L62056
	move.w	U92094,(sp)
	jsr	L53070
	move.w	turtle_show_flag,(sp)
	jsr	L60886
	jsr	L64746
	move.w	#6,(sp)
	jsr	L62166
	unlk	fp
	rts

word_screenfacts:
	link	fp,#-4
	jsr	L33160
	move.w	d0,(sp)
	jsr	L53070
	move.w	window_mode,d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	#window_mode_table,a1
	move.l	0(a1,d0.w),(sp)
	jsr	L62056
	jsr	L34692
	move.l	d0,(sp)
	jsr	L52972
	jsr	L33780
	move.l	d0,(sp)
	jsr	L52972
	move.l	U92124,(sp)
	jsr	L52972
	move.l	U92128,(sp)
	jsr	L52972
	move.w	#6,(sp)
	jsr	L62166
	unlk	fp
	rts

word_hideturtle:
	jsr	L48234
	jsr	turtle_hide
	jsr	L47940
	rts

word_home:
	jsr	L48234
	bsr  	L16330
	jsr	L47940
	rts

word_left:
	bsr  	L16000
	move.l	d0,-(sp)
	jsr	L82000
	move.l	d0,(sp)
	jsr	L33472
	jsr	L47940
	addq	#4,sp
	rts

word_right:
	bsr  	L16000
	move.l	d0,-(sp)
	jsr	L33472
	jsr	L47940
	addq	#4,sp
	rts

L17030:
	link	fp,#-6
	move.w	max_colors,(sp)
	jsr	L61658
	move.w	d0,-2(fp)
	jsr	L48234
	move.w	-2(fp),(sp)
	jsr	L33174
	bsr  	L18502
	unlk	fp
	rts

word_setheading:
	link	fp,#-4
	bsr  	L16000
	move.l	d0,(sp)
	jsr	L33502
	jsr	L47940
	unlk	fp
	rts

L17100:
	link	fp,#-6
	bsr  	L15980
	move.w	d0,-2(fp)
	jsr	L48234
	move.w	-2(fp),(sp)
	jsr	L33316
	bsr  	L18502
	unlk	fp
	rts

L17136:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	bsr  	L16090
	bsr  	L16114
	move.w	max_colors,(sp)
	bsr  	L16278
	move.w	d0,d7
	jsr	L9350
	jsr	L64224
	move.w	d0,(sp)
	jsr	L55092
	jsr	L9388
	jsr	L48234
	move.l	T87322,(sp)
	move.l	#U100754,-(sp)
	jsr	L83748
	addq.l	#4,sp
	tst.w	d0
	bne.s	L17228
	jsr	L33238
	bra.s	L17330

L17228:
	move.l	T87326,(sp)
	move.l	#U100754,-(sp)
	jsr	L83748
	addq.l	#4,sp
	tst.w	d0
	bne.s	L17260
	jsr	L33212
	bra.s	L17330

L17260:
	move.l	T87330,(sp)
	move.l	#U100754,-(sp)
	jsr	L83748
	addq.l	#4,sp
	tst.w	d0
	bne.s	L17292
	jsr	L33276
	bra.s	L17330

L17292:
	move.l	T87334,(sp)
	move.l	#U100754,-(sp)
	jsr	L83748
	addq.l	#4,sp
	tst.w	d0
	bne.s	L17324
	jsr	L33252
	bra.s	L17330

L17324:
	jsr	L67118
L17330:
	move.w	d7,(sp)
	jsr	L33316
	bsr  	L18502
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L17352:
	link	fp,#-8
	bsr  	L16240
	jsr	L48234
	bsr  	L16256
	move.l	d0,-4(fp)
	move.l	-4(fp),(sp)
	bsr  	L16256
	move.l	d0,-(sp)
	jsr	L35228
	addq.l	#4,sp
	bsr  	L18502
	unlk	fp
	rts

L17400:
	link	fp,#-8
	jsr	L61476
	move.l	d0,-4(fp)
	jsr	L48234
	move.l	U99812,(sp)
	move.l	-4(fp),-(sp)
	jsr	L35228
	addq.l	#4,sp
	bsr  	L18502
	unlk	fp
	rts

L17448:
	link	fp,#-8
	jsr	L61476
	move.l	d0,-4(fp)
	jsr	L48234
	move.l	-4(fp),(sp)
	move.l	U99808,-(sp)
	jsr	L35228
	addq.l	#4,sp
	bsr  	L18502
	unlk	fp
	rts

L17496:
	link	fp,#-4
	jsr	L48234
	jsr	turtle_show
	jsr	L47940
	unlk	fp
	rts

L17522:
	link	fp,#-12
	bsr  	L16240
	move.l	U99812,-(sp)
	bsr  	L16256
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,-8(fp)
	clr.l	-(sp)
	move.l	U99808,-(sp)
	bsr  	L16256
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,-4(fp)
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L17642
	clr.l	-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L17628
	move.l	#-1275068344,(sp)
	bra.s	L17634

L17628:
	clr.l	(sp)
L17634:
	jsr	L61950
	bra.s	L17756

L17642:
	move.l	#$E52EE246,-(sp)
	move.l	-4(fp),-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	L79448
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	#-1275068345,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,-8(fp)
	clr.l	-(sp)
	move.l	-4(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L17746
	move.l	#-1275068344,-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,(sp)
	bra.s	L17750

L17746:
	move.l	-8(fp),(sp)
L17750:
	jsr	L61950
L17756:
	unlk	fp
	rts

L17760:
	link	fp,#-4
	jsr	L46108
	move.w	d0,(sp)
	jsr	L60886
	unlk	fp
	rts

L17782:
	link	fp,#-4
	jsr	L48234
	jsr	L34554
	jsr	L47940
	unlk	fp
	rts

L17808:
	link	fp,#-4
	jsr	L77166
	unlk	fp
	rts

word_setscrunch:
	move.w	#10,-(sp)
	move.l	#L34648,-(sp)
	bsr.s	L17846
	addq.l	#6,sp
	rts

L17846:
	link	fp,#-4
	move.w	12(fp),d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	L61476
	move.l	d0,-(sp)
	move.l	#-2147483583,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L18002
	move.w	12(fp),d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	L62206
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L18002
	clr.l	-(sp)
	jsr	L62206
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L18002
	jsr	L48234
	jsr	turtle_draw
	jsr	L62206
	move.l	d0,-(sp)
	movea.l	8(fp),a0
	jsr	(a0)
	addq.l	#4,sp
	jsr	turtle_draw
	bsr  	L18502
	bra.s	L18008

L18002:
	jsr	L67118
L18008:
	unlk	fp
	rts

L18012:
	link	fp,#-4
	move.l	U99808,(sp)
	jsr	L61950
	unlk	fp
	rts

L18034:
	link	fp,#-4
	move.l	U99812,(sp)
	jsr	L61950
	unlk	fp
	rts

L18056:
	link	fp,#-4
	move.l	U99808,(sp)
	jsr	L52972
	move.l	U99812,(sp)
	jsr	L52972
	move.w	#2,(sp)
	jsr	L62166
	unlk	fp
	rts

L18102:
	link	fp,#-4
	move.l	U92078,(sp)
	jsr	L61950
	unlk	fp
	rts

L18124:
	link	fp,#-10
	bsr  	L15910
	move.l	d0,-4(fp)
	clr.l	(sp)
	move.w	#32,-(sp)	; Super
	jsr	gemdos
	addq.l	#2,sp
	move.l	d0,U91942
	movea.l	-4(fp),a0
	move.b	(a0),-6(fp)
	move.l	U91942,(sp)
	move.w	#32,-(sp)	; Super
	jsr	gemdos
	addq.l	#2,sp
	move.b	-6(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	andi.w	#255,(sp)
	jsr	L61926
	unlk	fp
	rts

L18204:
	link	fp,#-2
	movem.l	d7/a5,-(sp)
	bsr  	L15910
	movea.l	d0,a5
	jsr	L62246
	move.b	d0,-2(fp)
	clr.l	(sp)
	move.w	#32,-(sp)	; Super
	jsr	gemdos
	addq.l	#2,sp
	move.l	d0,U91942
	move.b	-2(fp),(a5)
	move.l	U91942,(sp)
	move.w	#32,-(sp)
	jsr	gemdos		; Super
	addq.l	#2,sp
	jsr	L61834
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L18286:
	link	fp,#-10
	bsr  	L15910
	move.l	d0,-4(fp)
	btst	#0,-1(fp)
	beq.s	L18312
	jsr	L67118
L18312:
	clr.l	(sp)
	move.w	#32,-(sp)
	jsr	gemdos		; Super
	addq.l	#2,sp
	move.l	d0,U91942
	movea.l	-4(fp),a0
	move.w	(a0),-6(fp)
	move.l	U91942,(sp)
	move.w	#32,-(sp)
	jsr	gemdos		; Super
	addq.l	#2,sp
	move.w	-6(fp),(sp)
	jsr	L61926
	unlk	fp
	rts

L18372:
	link	fp,#-10
	bsr  	L15910
	move.l	d0,-4(fp)
	btst	#0,-1(fp)
	beq.s	L18398
	jsr	L67118
L18398:
	jsr	L61476
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,-6(fp)
	clr.l	(sp)
	move.w	#32,-(sp)
	jsr	gemdos		; Super
	addq.l	#2,sp
	move.l	d0,U91942
	movea.l	-4(fp),a0
	move.w	-6(fp),(a0)
	move.l	U91942,(sp)
	move.w	#32,-(sp)
	jsr	gemdos		; Super
	addq.l	#2,sp
	jsr	L61834
	unlk	fp
	rts

L18474:
	link	fp,#-8
	bsr  	L15910
	move.l	d0,-4(fp)
	movea.l	-4(fp),a0
	jsr	(a0)
	jsr	L61834
	unlk	fp
	rts

L18502:
	jsr	L47940
	jsr	L61834
	rts

L18522:
	link	fp,#-4
	bsr.s	L18538
	jsr	L74860
	unlk	fp
	rts

L18538:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	#1,(sp)
	jsr	L61064
	move.w	d0,d7
	move.w	d7,(sp)
	jsr	L61098
	tst.w	d0
	bne.s	L18606
L18570:
	jsr	L61206
	bsr.s	L18616
	subq.w	#1,d7
	move.w	d7,(sp)
	jsr	L61098
	tst.w	d0
	bne.s	L18600
	jsr	L76978
	bra.s	L18570

L18600:
	jsr	L61834
L18606:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L18616:
	link	fp,#-4
	tst.w	U101046
	beq.s	L18670
	move.w	U101046,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L18658
	move.w	U101046,(sp)
	jsr	L55092
	bra.s	L18670

L18658:
	move.w	U101046,(sp)
	jsr	L55144
L18670:
	unlk	fp
	rts

L18674:
	link	fp,#-4
	jsr	L61206
	bsr.s	L18690
	unlk	fp
	rts

L18690:
	link	fp,#-4
	move.w	U101046,(sp)
	jsr	L55354
	jsr	L74860
	jsr	L61834
	unlk	fp
	rts

L18722:
	link	fp,#-4
	jsr	L62430
	move.l	#U100656,(sp)
	jsr	L204
	tst.w	d0
	beq.s	L18756
	jsr	L2226
	bra.s	L18796

L18756:
	clr.w	(sp)
	jsr	L50590
	move.l	#U100162,d0
	move.l	d0,U101030
	move.l	d0,(sp)
	jsr	L83914
	move.w	d0,U99178
	jsr	L61992
L18796:
	unlk	fp
	rts

L18800:
	link	fp,#-4
	move.l	#U100656,(sp)
	jsr	L204
	tst.w	d0
	beq.s	L18828
	jsr	L2226
	bra.s	L18866

L18828:
	jsr	L75856
	move.b	U101150,U91954
	jsr	L75582
	move.l	#U91954,U101030
	jsr	L61974
L18866:
	unlk	fp
	rts

L18870:
	link	fp,#-4
	jsr	L62430
	move.l	#U100656,(sp)
	jsr	L204
	tst.w	d0
	beq.s	L18904
	jsr	L2226
	bra.s	L18924

L18904:
	clr.w	(sp)
	jsr	L50590
	jsr	L53628
	jsr	L64764
L18924:
	unlk	fp
	rts

L18928:
	link	fp,#-6
	bsr.s	L19010
	bra.s	L18988

L18936:
	jsr	_mouse_show
	move.l	T87058,(sp)
	move.w	#2,-(sp)
	jsr	form_alert
	addq.l	#2,sp
	cmp.w	#2,d0
	beq.s	L18970
	clr.w	d0
	bra.s	L18972

L18970:
	moveq	#1,d0
L18972:
	move.w	d0,-2(fp)
	jsr	_mouse_hide
	tst.w	-2(fp)
	bne.s	L19006
L18988:
	jsr	L49708
	tst.w	d0
	beq.s	L18936
	move.w	#1,U101146
L19006:
	unlk	fp
	rts

L19010:
	link	fp,#-4
	clr.w	U101146
	unlk	fp
	rts

L19024:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	movea.l	8(fp),a5
	bra.s	L19046

L19038:
	move.b	(a5)+,d0
	ext.w	d0
	move.w	d0,(sp)
	bsr.s	L19078
L19046:
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	tst.w	d0
	beq.s	L19038
	move.w	#10,(sp)
	bsr.s	L19078
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L19078:
	link	fp,#-4
	bra.s	L19090

L19084:
	jsr	L75596
L19090:
	jsr	L49708
	tst.w	d0
	beq.s	L19084
	cmpi.b	#10,9(fp)
	bne.s	L19118
	move.w	#13,(sp)
	jsr	L49730
L19118:
	move.b	9(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L49730
	unlk	fp
	rts

L19136:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	move.l	#L36478,(sp)
	jsr	L9036
	move.l	#U100754,(sp)
	move.w	#46,-(sp)
	jsr	L50940
	addq.l	#2,sp
	tst.w	d0
	bne.s	L19196
	move.l	8(fp),(sp)
	move.l	#U100754,-(sp)
	jsr	L83706
	addq.l	#4,sp
L19196:
	move.l	#U100754,(sp)
	jsr	L83914
	ext.l	d0
	movea.l	d0,a5
	adda.l	#U100754,a5
	bra.s	L19248

L19220:
	move.l	#T85020,(sp)
	move.b	-1(a5),d0
	ext.w	d0
	move.w	d0,-(sp)
	jsr	L50940
	addq.l	#2,sp
	tst.w	d0
	bne.s	L19256
	subq.l	#1,a5
L19248:
	cmpa.l	#U100754,a5
	bhi.s	L19220
L19256:
	move.l	a5,(sp)
	jsr	L83914
	cmp.w	#12,d0
	ble.s	L19276
	jsr	L67118
L19276:
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L19286:
	link	fp,#-4
	clr.w	(sp)
	move.l	U101030,-(sp)
	jsr	Fopen
	addq.l	#4,sp
	move.w	d0,U101054
	cmp.w	#-1,d0
	bgt.s	L19324
	jsr	L67642
L19324:
	unlk	fp
	rts

L19328:
	link	fp,#-4
	clr.w	(sp)
	move.l	U101030,-(sp)
	jsr	Fcreate
	addq.l	#4,sp
	move.w	d0,U101054
	cmp.w	#-1,d0
	bgt.s	L19366
	jsr	L67118
L19366:
	unlk	fp
	rts

L19370:
	link	fp,#-4
	move.w	U101054,(sp)
	jsr	Fclose
	cmp.w	#-1,d0
	bgt.s	.return
	jsr	do_err_disk
.return:
	unlk	fp
	rts

L19402:
	link	fp,#-4
	move.w	U101054,(sp)
	move.w	#1,-(sp)
	move.l	fp,-(sp)
	addi.l	#9,(sp)
	jsr	Fwrite
	addq.l	#6,sp
	cmp.w	#1,d0
	beq.s	L19444
	jsr	L67570
L19444:
	unlk	fp
	rts

L19448:
	link	fp,#-6
	move.w	U101054,(sp)
	move.w	#1,-(sp)
	move.l	fp,-(sp)
	subq.l	#2,(sp)
	jsr	Fread
	addq.l	#6,sp
	tst.w	d0
	beq.s	L19482
	clr.w	d0
	bra.s	L19484

L19482:
	moveq	#1,d0
L19484:
	move.w	d0,U100998
	beq.s	L19498
	clr.b	-2(fp)
	bra.s	L19514

L19498:
	cmpi.b	#13,-2(fp)
	bne.s	L19514
	bsr.s	L19448
	move.b	#10,-2(fp)
L19514:
	move.b	-2(fp),d0
	ext.w	d0
	unlk	fp
	rts

L19524:
	link	fp,#-4
	movea.l	#U100162,a0
	movea.w	U100898,a1
	adda.l	a1,a0
	move.l	a0,-(sp)
	bsr.s	L19448
	movea.l	(sp)+,a0
	move.b	d0,(a0)
	addq.w	#1,U100898
	move.w	U100898,d0
	cmp.w	#400,d0
	blt.s	L19574
	jsr	L67450
L19574:
	movea.l	#U100162,a0
	movea.w	U100898,a1
	adda.l	a1,a0
	clr.b	(a0)
	unlk	fp
	rts

L19594:
	link	fp,#-4
	move.w	#2,U100986
	clr.w	U100898
	clr.w	U100998
	bsr.s	L19524
	bsr.s	L19524
	bsr.s	L19524
	unlk	fp
	rts

L19628:
	link	fp,#-4
	move.l	T87150,(sp)
	bsr  	L19136
	move.l	U101030,(sp)
	jsr	Fdelete
	cmp.w	#-1,d0
	bgt.s	L19666
	jsr	L67642
L19666:
	jsr	L61834
	unlk	fp
	rts

L19676:
	link	fp,#-6
	move.l	fp,d0
	add.l	#9,d0
	sub.l	U100744,d0
	add.l	#-1536,d0
	move.w	d0,-2(fp)
	cmp.w	#128,d0
	bge.s	L19716
	jsr	L67594
L19716:
	move.w	-2(fp),d0
	unlk	fp
	rts

L19724:
	link	fp,#-8
	jsr	L62468
	jsr	L62430
	move.l	T87150,(sp)
	bsr  	L19136
	clr.w	(sp)
	move.l	U101030,-(sp)
	jsr	Fopen
	addq.l	#4,sp
	move.w	d0,U101054
	cmp.w	#-1,d0
	bgt.s	L19782
	bsr  	L19328
L19782:
	move.l	U100744,U101102
	bsr.s	L19676
	move.w	d0,-2(fp)
	clr.w	U100998
	clr.w	U101200
	bra.s	L19856

L19812:
	addq.l	#1,U101102
	move.l	U101102,-(sp)
	bsr  	L19448
	movea.l	(sp)+,a0
	move.b	d0,(a0)
	move.w	U101200,d0
	cmp.w	-2(fp),d0
	ble.s	L19850
	jsr	L67594
L19850:
	addq.w	#1,U101200
L19856:
	tst.w	U100998
	beq.s	L19812
	bsr  	L19370
	jsr	L56464
	jsr	L56572
	jsr	L69648
	jsr	L70038
	bsr  	L19328
	move.l	U100744,U101102
	bra.s	L19930

L19908:
	movea.l	U101102,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L19402
	addq.l	#1,U101102
L19930:
	movea.l	U101102,a0
	tst.b	(a0)
	bne.s	L19908
	bsr  	L19370
	unlk	fp
	rts

L19948:
	link	fp,#-138
	jsr	L48408
	jsr	L62430
	jsr	L62468
	move.l	T87150,(sp)
	bsr  	L19136
	bsr  	L19286
	move.l	#U100754,(sp)
	move.l	#U100678,-(sp)
	jsr	L83880
	addq.l	#4,sp
	jsr	L61884
	tst.w	d0
	bne.s	L20056
	jsr	L61500
	move.w	U100984,(sp)
	move.w	U100648,-(sp)
	clr.w	d0
	move.w	U101046,d0
	move.w	d0,U101108
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
L20056:
	bsr  	L19594
	jsr	L66768
	move.w	#1,U101476
	bra.s	L20082

L20076:
	jsr	L37176
L20082:
	tst.w	U101476
	bne.s	L20076
	jsr	L66800
	jsr	L58082
	jsr	L48444
	jsr	L61834
	unlk	fp
	rts

L20118:
	link	fp,#-6
	jsr	L48408
	jsr	L62430
	jsr	L62468
	move.w	U101044,-2(fp)
	move.l	T87150,(sp)
	bsr  	L19136
	bsr  	L20414
	tst.w	d0
	beq.s	L20172
	jsr	L67618
L20172:
	bsr  	L19328
	move.l	#U100754,(sp)
	move.l	#U100678,-(sp)
	jsr	L83880
	addq.l	#4,sp
	jsr	L15576
	move.w	#2,U100996
	jsr	L64714
	jsr	L64714
	jsr	L64714
	jsr	L64714
	jsr	L56230
	move.w	#1,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L56362
	move.w	#2,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L64732
	move.w	#1,(sp)
	jsr	L57456
	move.w	#3,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	jsr	L64732
	move.w	U98400,(sp)
	jsr	L57456
	move.w	#4,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	move.w	#5,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L56676
	addq.l	#2,sp
	bsr  	L19370
	jsr	L58068
	jsr	L48444
	move.w	-2(fp),U101044
	jsr	L61834
	unlk	fp
	rts

L20414:
	link	fp,#-6
	clr.w	(sp)
	move.l	U101030,-(sp)
	jsr	Fopen
	addq.l	#4,sp
	move.w	d0,U101054
	cmp.w	#-1,d0
	bgt.s	L20450
	clr.w	d0
	bra.s	L20452

L20450:
	moveq	#1,d0
L20452:
	move.w	d0,-2(fp)
	beq.s	L20462
	bsr  	L19370
L20462:
	move.w	-2(fp),d0
	unlk	fp
	rts

L20470:
	link	fp,#-44
	move.l	T87150,(sp)
	bsr  	L19136
	bsr.s	L20414
	tst.w	d0
	beq.s	L20496
	jsr	L67118
L20496:
	move.l	U101030,(sp)
	move.l	fp,-(sp)
	addi.l	#-40,(sp)
	jsr	L83880
	addq.l	#4,sp
	move.l	T87150,(sp)
	bsr  	L19136
	bsr.s	L20414
	tst.w	d0
	bne.s	L20540
	jsr	L67118
L20540:
	move.l	fp,(sp)
	addi.l	#-40,(sp)
	move.l	U101030,-(sp)
	jsr	Frename
	addq.l	#4,sp
	cmp.w	#-1,d0
	bgt.s	L20574
	jsr	L67118
L20574:
	jsr	L61834
	unlk	fp
	rts

L20584:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	move.l	#L36478,(sp)
	jsr	L9036
	movea.l	#U100754,a5
	tst.b	(a5)
	beq.s	L20652
	cmpi.b	#58,1(a5)
	bne.s	L20652
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,(sp)
	addi.w	#-65,(sp)
	jsr	Dsetdrv
	cmp.w	#-1,d0
	bgt.s	L20650
	jsr	L67118
L20650:
	addq.l	#2,a5
L20652:
	tst.b	(a5)
	bne.s	L20664
	move.b	#92,(a5)
	clr.b	1(a5)
L20664:
	move.l	a5,(sp)
	jsr	Dsetpath
	cmp.w	#-1,d0
	bgt.s	L20684
	jsr	L67118
L20684:
	jsr	L61834
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L20700:
	link	fp,#-68
	jsr	Dgetdrv
	add.w	#65,d0
	move.b	d0,-64(fp)
	move.b	#58,-63(fp)
	jsr	Dgetdrv
	move.w	d0,(sp)
	addq.w	#1,(sp)
	move.l	fp,-(sp)
	addi.l	#-62,(sp)
	jsr	Dgetpath
	addq.l	#4,sp
	move.l	fp,(sp)
	addi.l	#-64,(sp)
	jsr	L62012
	move.w	d0,U101046
	unlk	fp
	rts

L20774:
	link	fp,#-54
	move.l	fp,(sp)
	addi.l	#-50,(sp)
	jsr	Fsetdta
	jsr	L64732
	clr.w	(sp)
	move.l	U101030,-(sp)
	jsr	Fsfirst
	addq.l	#4,sp
	cmp.w	#-1,d0
	ble.s	L20876
L20820:
	jsr	L64160
	move.w	d0,(sp)
	move.l	fp,-(sp)
	addi.l	#-20,(sp)
	jsr	L62012
	addq.l	#4,sp
	move.w	d0,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64276
	jsr	Fsnext
	cmp.w	#-1,d0
	ble.s	L20876
	bra.s	L20820

L20876:
	unlk	fp
	rts

L20880:
	link	fp,#-6
	jsr	L61884
	tst.w	d0
	beq.s	L20908
	jsr	L9350
	jsr	L9388
	bra.s	L20920

L20908:
	move.l	#L36478,(sp)
	jsr	L9036
L20920:
	movea.l	U101030,a0
	tst.b	(a0)
	beq.s	L20956
	movea.l	U101030,a0
	cmpi.b	#58,1(a0)
	bne.s	L20992
	movea.l	U101030,a0
	tst.b	2(a0)
	bne.s	L20992
L20956:
	move.l	T87150,(sp)
	move.l	#T85023,-(sp)
	move.l	U101030,-(sp)
	jsr	L83706
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	L83706
	addq.l	#4,sp
L20992:
	bsr  	L20774
	jsr	L64764
	unlk	fp
	rts

L21006:
	link	fp,#-4
	moveq	#1,d0
	unlk	fp
	rts

L21016:
	link	fp,#-4
	movem.l	d7/a5,-(sp)
	jsr	L16174
	jsr	L16256
	move.l	d0,-4(fp)
	jsr	L16174
	jsr	L16256
	move.l	d0,(sp)
	move.l	-4(fp),-(sp)
	jsr	L33606
	addq.l	#4,sp
	movea.l	d0,a5
	move.w	(a5),d0
	add.w	U100970_x,d0
	movea.l	8(fp),a1
	move.w	d0,(a1)
	addq.l	#2,8(fp)
	addq.l	#2,a5
	move.w	(a5),d0
	add.w	U100972_y,d0
	movea.l	8(fp),a1
	move.w	d0,(a1)
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L21112:
	link	fp,#-4
	jsr	L16174
	move.l	#-1275068345,-(sp)
	jsr	L16256
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,(sp)
	jsr	L36300
	move.l	d0,-(sp)
	move.l	#-1275068343,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,-(sp)
	moveq	#10,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	unlk	fp
	rts

L21208:
	link	fp,#-8
	jsr	L16174
	clr.l	-(sp)
	jsr	L16256
	move.l	d0,-4(fp)
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L21252
	jsr	L67118
L21252:
	move.l	-4(fp),-(sp)
	movea.l	8(fp),a0
	jsr	(a0)
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	unlk	fp
	rts

L21278:
	link	fp,#-4
	move.l	#L33910,(sp)
	bsr.s	L21208
	unlk	fp
	rts

L21294:
	link	fp,#-4
	move.l	#L33964,(sp)
	bsr.s	L21208
	unlk	fp
	rts

L21310:
	link	fp,#-4
	move.w	U98718,(sp)
	move.l	T87350,-(sp)
	jsr	L62012
	addq.l	#4,sp
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	cmp.w	U100984,d0
	beq.s	L21356
	clr.w	d0
	bra.s	L21358

L21356:
	moveq	#1,d0
L21358:
	unlk	fp
	rts

L21362:
	link	fp,#-4
	clr.w	d0
	move.w	d0,ptsin+14
	move.w	d0,ptsin+10
	move.w	d0,ptsin+8
	move.w	d0,ptsin+6
	move.w	d0,ptsin+4
	move.w	#11,contrl	
	bsr.s	L21310
	tst.w	d0
	beq.s	.L21416
	moveq	#3,d0
	bra.s	.L21418
.L21416:
	moveq	#2,d0
.L21418:
	move.w	d0,contrl+10
	move.w	#4,contrl+2
	move.w	#2,contrl+6
	bsr  	L22312
	unlk	fp
	rts

L21448:
	link	fp,#-6
	cmpi.w	#-1,12(fp)
	beq.s	.L21478
	move.w	12(fp),(sp)
	jsr	L33316
	move.w	12(fp),(sp)
	bsr  	L27190
.L21478:
	move.w	#16,contrl	; vsl_width
	move.w	#1,contrl+2
	clr.w	contrl+6
	move.w	10(fp),ptsin
	clr.w	ptsin+2
	jsr	vdi
	move.w	ptsout,U91964
	move.w	#15,contrl	; vsl_type
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	8(fp),intin
	jsr	vdi
	move.w	intout,d0
	move.w	d0,U91962
	cmp.w	U101134,d0
	bne.s	.return
	move.l	T87362,(sp)
	jsr	L62012
	move.w	d0,(sp)
	move.l	T87354,-(sp)
	jsr	L62012
	addq.l	#4,sp
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,-2(fp)
	beq.s	.return
	move.w	-2(fp),(sp)
	jsr	L65356
	tst.w	d0
	beq.s	.return
	move.w	#113,contrl	; vsl_udsty
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	-2(fp),(sp)
	jsr	L65532
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,intin
	jsr	vdi
.return:
	unlk	fp
	rts

vswr_mode:
	link	fp,#-6
	move.w	U92050,-2(fp)
	move.w	8(fp),d0
	move.w	d0,U92050
	move.w	d0,intin
	move.w	#32,contrl
	clr.w	contrl+2
	move.w	#1,contrl+6
	jsr	vdi
	move.w	-2(fp),d0
	unlk	fp
	rts

vsf_color:
	link	fp,#-6
	move.w	#25,contrl
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	8(fp),intin
	jsr	vdi
	move.w	prev_color,-2(fp)
	move.w	intout,prev_color
	move.w	-2(fp),d0
	unlk	fp
	rts

vsf_interior:
	link	fp,#-6
	move.w	#23,contrl
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	8(fp),intin
	jsr	vdi
	move.w	U92054,-2(fp)
	move.w	intout,U92054
	move.w	-2(fp),d0
	unlk	fp
	rts

vsf_style:
	link	fp,#-6
	move.w	#24,contrl
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	8(fp),intin
	jsr	vdi
	move.w	U92056,-2(fp)
	move.w	intout,U92056
	move.w	-2(fp),d0
	unlk	fp
	rts

L21964:
	link	fp,#-4
	movem.l	d6-d7,-(sp)
	move.w	12(fp),d0
	move.w	d0,U91960
	move.w	d0,(sp)
	bsr  	vsf_color
	move.w	8(fp),d0
	move.w	d0,U91956
	move.w	d0,(sp)
	bsr  	vsf_interior
	move.w	10(fp),d0
	move.w	d0,U91958
	move.w	d0,(sp)
	bsr.s	vsf_style
	cmpi.w	#4,U91956
	bne  	L22282
	move.l	T87358,(sp)
	jsr	L62012
	move.w	d0,(sp)
	move.l	T87354,-(sp)
	jsr	L62012
	addq.l	#4,sp
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,-2(fp)
	beq  	L22282
	move.w	-2(fp),(sp)
	jsr	L65322
	tst.w	d0
	bne  	L22282
	move.w	-2(fp),(sp)
	jsr	L6536
	cmp.w	#16,d0
	bne  	L22282
	clr.w	d7
	bra  	L22246

L22116:
	move.w	-2(fp),(sp)
	move.w	d7,-(sp)
	addq.w	#1,(sp)
	jsr	L65756
	addq.l	#2,sp
	move.w	d0,-4(fp)
	move.w	d0,(sp)
	jsr	L65356
	tst.w	d0
	beq  	L22282
	move.l	#0,-(sp)
	move.w	-4(fp),-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L22282
	move.l	#-65456,-(sp)
	move.w	-4(fp),-(sp)
	jsr	L65532
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L22282
	move.w	-4(fp),(sp)
	jsr	L65532
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,-(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#intin,a0
	move.w	(sp)+,(a0)
	addq.w	#1,d7
L22246:
	cmp.w	#16,d7
	blt  	L22116
	move.w	#112,contrl	; vsf_udpat
	clr.w	contrl+2
	move.w	#16,contrl+6
	jsr	vdi
L22282:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

lock_and_vdi:
	link	fp,#-4
	jsr	_mouse_hide
	jsr	vdi
	unlk	fp
	rts

L22312:
	link	fp,#-4
	bsr.s	lock_and_vdi
	jsr	L33100
	move.w	#1,U92038
	jsr	L47940
	jsr	L61834
	unlk	fp
	rts

L22348:
	link	fp,#-4
	jsr	L48234
	jsr	L33144
	unlk	fp
	rts

L22368:
	link	fp,#-4
	move.w	#1,(sp)
	bsr  	vsf_interior
	move.w	#1,(sp)
	bsr  	vswr_mode
	unlk	fp
	rts

L22392:
	link	fp,#-4
	movea.l	8(fp),a0
	move.w	(a0),U100970_x
	movea.l	8(fp),a0
	move.w	2(a0),U100972_y
	movea.l	8(fp),a0
	move.w	4(a0),d0
	cmp.w	U100974,d0
	bne.s	L22450
	movea.l	8(fp),a0
	move.w	6(a0),d0
	cmp.w	U100976,d0
	beq.s	L22482
L22450:
	movea.l	8(fp),a0
	move.w	6(a0),(sp)
	movea.l	8(fp),a0
	move.w	4(a0),-(sp)
	jsr	L32390
	addq.l	#2,sp
	move.w	#1,U92032
L22482:
	movea.l	8(fp),a0
	move.w	4(a0),U100974
	movea.l	8(fp),a0
	move.w	6(a0),U100976
	move.w	U91960,(sp)
	move.w	U91958,-(sp)
	move.w	U91956,-(sp)
	bsr  	L21964
	addq.l	#4,sp
	move.w	U92094,(sp)
	move.w	U91964,-(sp)
	move.w	U91962,-(sp)
	bsr  	L21448
	addq.l	#4,sp
	unlk	fp
	rts

L22560:
	link	fp,#-4
	tst.w	U92032
	beq.s	L22584
	clr.w	U92032
	jsr	L32596
L22584:
	unlk	fp
	rts

L22588:
	link	fp,#-4
	move.w	10(fp),U101154
	move.w	8(fp),U101044
	move.w	14(fp),U100672
	move.w	12(fp),U101498
	unlk	fp
	rts

L22670:
	link	fp,#-8
	move.l	10(fp),-4(fp)
	cmpi.w	#1,8(fp)
	bne.s	L22712
	move.l	#U92058,(sp)
	move.l	10(fp),-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	bra.s	L22726

L22712:
	tst.w	8(fp)
	bne.s	L22726
	move.l	#U92058,-4(fp)
L22726:
	move.w	#129,contrl	; vs_clip
	move.w	#2,contrl+2
	move.w	#1,contrl+6
	move.w	#1,intin
	movea.l	-4(fp),a0
	move.w	(a0),ptsin
	movea.l	-4(fp),a0
	move.w	2(a0),ptsin+2
	movea.l	-4(fp),a0
	move.w	(a0),d0
	movea.l	-4(fp),a1
	move.w	4(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,ptsin+4
	movea.l	-4(fp),a0
	move.w	2(a0),d0
	movea.l	-4(fp),a1
	move.w	6(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,ptsin+6
	jsr	vdi
	unlk	fp
	rts

L22840:
	link	fp,#-4
	move.l	8(fp),(sp)
	move.w	#1,-(sp)
	bsr  	L22670
	addq.l	#2,sp
	unlk	fp
	rts

set_mfdb: ; (*mfdb, *fd_addr, i16 fd_w, i16 fd_h)
	link	fp,#-4
	movea.l	8(fp),a0
	move.l	12(fp),(a0)	; fd_addr
	move.w	16(fp),d0
	move.w	d0,4(a0)	; fd_w
	add.w	#15,d0
	ext.l	d0
	divs	#16,d0
	move.w	18(fp),6(a0)	; fd_h
	move.w	d0,8(a0)	; fd_wdwidth
	clr.w	10(a0)		; fd_stand
	move.w	nplanes,12(a0)	; fd_nplanes
	unlk	fp
	rts

init_vdi:
	link	fp,#-6
	move.l	#contrl,p_contrl
	move.l	#intin,p_intin
	move.l	#intout,p_intout
	move.l	#ptsin,p_ptsin
	move.l	#ptsout,p_ptsout
	move.w	#1,intin
	move.w	#1,intin+2
	move.w	#1,intin+4
	move.w	#1,intin+6
	move.w	#1,intin+8
	move.w	#1,intin+10
	move.w	#1,intin+12
	move.w	#1,intin+14
	move.w	#1,intin+16
	move.w	#1,intin+18
	move.w	#2,intin+20
	move.w	#100,contrl	; v_opnvwk
	clr.w	contrl+2
	move.w	#11,contrl+6
	move.w	8(fp),contrl+12
	jsr	vdi

	move.w	intout,d0
	addq.w	#1,d0
	move.w	d0,screen_w

	move.w	intout+2,d0
	addq.w	#1,d0
	move.w	d0,_screen_h

	move.w	intout+26,d0	; number of colors
	subq.w	#1,d0
	move.w	d0,max_colors

	move.w	#4,U101130
	move.w	intout+22,U101132
	move.w	intout+24,U101142
	move.w	#7,U101134
	move.w	intout+14,U101136
	bne.s	.L23226
	move.w	#39,U101136
.L23226:
	move.w	intout+6,U101138
	move.w	intout+8,U101140
	move.w	U101140,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	move.w	U101138,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,U100900

	clr.w	d0
	clr.w	nplanes
	move.w	intout+26,d0	; number of colors
	bra.s	.do

.loop:	addq.w	#1,nplanes
	asr.w	d0
.do:	cmpi.w	#1,d0
	bgt.s	.loop

	move.w	#38,contrl	; vqt_attributes
	clr.w	contrl+2
	clr.w	contrl+6
	jsr	vdi

	move.l	#_cell_h,(sp)
	move.l	#_cell_w,-(sp)
	move.l	#char_h,-(sp)
	move.l	#char_w,-(sp)
	move.w	ptsout+2,-(sp)
	bsr  	vst_height
	adda.l	#14,sp

	clr.w	U92032
	clr.w	U92034

	; set turtle size
	moveq	#3,d0	; lowres turtle
	cmp	#640,screen_w
	blt	.done
	clr.l	d0	; highres turtle
	cmp	#400,_screen_h
	bge	.done
	moveq	#1,d0	; mediumres turtle
.done:
	muls	#96,d0
	ext.l	d0
	movea.l	d0,a0
	adda.l	#turtle_table,a0
	subq.l	#1,a0
	move.l	a0,turtle_p

	unlk	fp
	rts

L23516:
	link	fp,#-4
	cmpi.w	#2,8(fp)
	bne.s	L23536
	move.w	U101132,d0
	bra.s	L23554

L23536:
	cmpi.w	#3,8(fp)
	bne.s	L23552
	move.w	U101142,d0
	bra.s	L23554

L23552:
	moveq	#1,d0
L23554:
	unlk	fp
	rts

v_clsvwk:
	link	fp,#-4
	move.w	#101,contrl
	clr.w	contrl+2
	clr.w	contrl+6
	jsr	vdi
	unlk	fp
	rts

vst_height:
	link	fp,#-4
	move.w	#12,contrl
	move.w	#1,contrl+2
	clr.w	contrl+6
	clr.w	ptsin
	move.w	8(fp),ptsin+2
	jsr	vdi
	movea.l	10(fp),a0
	move.w	ptsout,(a0)
	movea.l	14(fp),a0
	move.w	ptsout+2,(a0)
	movea.l	18(fp),a0
	move.w	ptsout+4,(a0)
	movea.l	22(fp),a0
	move.w	ptsout+6,(a0)
	unlk	fp
	rts

L23682:
	link	fp,#-10
	move.w	8(fp),(sp)
	bsr  	vswr_mode
	move.w	d0,-6(fp)
	move.w	10(fp),(sp)
	bsr  	vsf_interior
	move.w	d0,-4(fp)
	tst.w	12(fp)
	beq.s	L23728
	move.w	12(fp),(sp)
	bsr  	vsf_style
	move.w	d0,-2(fp)
L23728:
	move.w	14(fp),ptsin
	move.w	16(fp),ptsin+2
	move.w	14(fp),d0
	add.w	18(fp),d0
	subq.w	#1,d0
	move.w	d0,ptsin+4
	move.w	16(fp),d0
	add.w	20(fp),d0
	subq.w	#1,d0
	move.w	d0,ptsin+6
	move.w	#114,contrl
	move.w	#2,contrl+2
	clr.w	contrl+6
	bsr  	lock_and_vdi
	move.w	-6(fp),(sp)
	bsr  	vswr_mode
	move.w	-4(fp),(sp)
	bsr  	vsf_interior
	tst.w	12(fp)
	beq.s	L23832
	move.w	-2(fp),(sp)
	bsr  	vsf_style
L23832:
	unlk	fp
	rts

L23836:
	link	fp,#-4

	move.w	_screen_h,(sp)
	move.w	screen_w,-(sp)
	clr.l	-(sp)
	move.l	#psrcMFDB,-(sp)
	bsr  	set_mfdb
	adda.l	#10,sp

	move.w	_screen_h,(sp)
	move.w	screen_w,-(sp)
	clr.l	-(sp)
	move.l	#pdesMFDB,-(sp)
	bsr  	set_mfdb
	adda.l	#10,sp

	move.w	10(fp),ptsin
	move.w	12(fp),ptsin+2
	move.w	10(fp),d0
	add.w	18(fp),d0
	subq.w	#1,d0
	move.w	d0,ptsin+4
	move.w	12(fp),d0
	add.w	20(fp),d0
	subq.w	#1,d0
	move.w	d0,ptsin+6
	move.w	14(fp),ptsin+8
	move.w	16(fp),ptsin+10
	move.w	14(fp),d0
	add.w	18(fp),d0
	subq.w	#1,d0
	move.w	d0,ptsin+12
	move.w	16(fp),d0
	add.w	20(fp),d0
	subq.w	#1,d0
	move.w	d0,ptsin+14
	move.w	8(fp),intin
	bsr  	vro_cpyfm
	unlk	fp
	rts

L24012:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)
	movea.l	8(fp),a5
	jsr	_mouse_hide
	move.w	#8,contrl
	move.w	#1,contrl+2
	move.w	16(fp),contrl+6
	move.w	18(fp),ptsin
	bra.s	.L24128

.L24064:
	move.w	14(fp),d0
	add.w	d0,20(fp)
	move.w	20(fp),ptsin+2
	clr.w	d7
	bra.s	.L24108

.L24084:
	move.b	0(a5,d7.w),d0
	ext.w	d0
	and.w	#255,d0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#intin,a1
	move.w	d0,(a1)
	addq.w	#1,d7
.L24108:
	cmp.w	16(fp),d7
	blt.s	.L24084
	jsr	vdi
	move.w	12(fp),d0
	ext.l	d0
	adda.l	d0,a5
.L24128:
	move.w	20(fp),d0
	cmp.w	22(fp),d0
	blt.s	.L24064
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

vdi_putchar:
	link	fp,#-4
	jsr	_mouse_hide
	move.w	10(fp),ptsin
	move.w	char_h,d0
	add.w	12(fp),d0
	move.w	d0,ptsin+2
	move.b	9(fp),d0
	ext.w	d0
	and.w	#255,d0
	move.w	d0,intin
	move.w	#8,contrl	; v_gtext
	move.w	#1,contrl+2
	move.w	#1,contrl+6
	jsr	vdi
	unlk	fp
	rts

vro_cpyfm:
	link	fp,#-4
	move.w	#109,contrl
	move.w	#4,contrl+2
	move.w	#1,contrl+6
	move.l	#psrcMFDB,contrl+14
	move.l	#pdesMFDB,contrl+18
	bsr  	lock_and_vdi
	unlk	fp
	rts

L24290:
	link	fp,#-4
	move.l	10(fp),U92042
	move.w	8(fp),U92036
	move.w	#1,U92038
	clr.w	U92040
	unlk	fp
	rts

L24328:
	link	fp,#-12
	tst.w	U92036
	beq  	L24500
	tst.w	U92038
	beq  	L24500
	clr.w	U92038
	clr.w	d0
	move.w	d0,-6(fp)
	move.w	d0,-8(fp)
	move.w	screen_w,-4(fp)
	move.w	_screen_h,-2(fp)
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	8(fp),-(sp)
	jsr	L49946
	addq.l	#4,sp
	tst.w	d0
	beq.s	L24500
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	#2,-(sp)
	bsr  	L22670
	addq.l	#2,sp
	jsr	L33144
	cmpi.w	#2,U92036
	bne.s	L24452
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	temp_pic,-(sp)
	bsr  	L25344
	addq.l	#4,sp
	bra.s	L24472

L24452:
	move.l	U92042,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.w	#1,-(sp)
	bsr  	L24620
	addq.l	#6,sp
L24472:
	move.w	-4(fp),U92046
	move.w	-2(fp),U92048
	jsr	L33100
	clr.w	(sp)
	bsr  	L22670
L24500:
	unlk	fp
	rts

L24504:
	link	fp,#-12
	tst.w	U92040
	bne.s	.return
	jsr	L33130
	tst.w	U92036
	beq.s	.L24610
	tst.w	U99190
	bne.s	.L24610
	move.w	8(fp),-8(fp)
	move.w	10(fp),-6(fp)
	cmpi.w	#2,U92036
	bne.s	.L24578
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	temp_pic,-(sp)
	bsr  	L24872
	addq.l	#4,sp
	bra.s	.L24610
.L24578:
	move.w	U92046,-4(fp)
	move.w	U92048,-2(fp)
	move.l	U92042,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	clr.w	-(sp)
	bsr.s	L24620
	addq.l	#6,sp
.L24610:
	jsr	L33100
.return
	unlk	fp
	rts

L24620:
	link	fp,#0
	movem.l	d7/a4-a5,-(sp)

	movea.l	10(fp),a0
	move.w	6(a0),(sp)
	move.w	4(a0),-(sp)
	clr.l	-(sp)
	moveq	#1,d0
	sub.w	8(fp),d0
	muls	#20,d0
	add.l	#psrcMFDB,d0
	move.l	d0,-(sp)
	bsr  	set_mfdb
	adda.l	#10,sp

	movea.l	10(fp),a0
	move.w	6(a0),(sp)
	move.w	4(a0),-(sp)
	move.l	14(fp),-(sp)
	move.w	8(fp),d0
	muls	#20,d0
	add.l	#psrcMFDB,d0
	move.l	d0,-(sp)
	bsr  	set_mfdb
	adda.l	#10,sp

	move.w	8(fp),d0
	asl.w	#3,d0
	ext.l	d0
	movea.l	d0,a4
	adda.l	#ptsin,a4
	moveq	#1,d0
	sub.w	8(fp),d0
	asl.w	#3,d0
	ext.l	d0
	movea.l	d0,a5
	adda.l	#ptsin,a5
	movea.l	10(fp),a0
	move.w	(a0),(a5)
	move.w	2(a0),2(a5)
	move.w	(a0),d0
	movea.l	10(fp),a1
	move.w	4(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,4(a5)
	move.w	2(a0),d0
	movea.l	10(fp),a1
	move.w	6(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,6(a5)
	clr.w	(a4)
	clr.w	2(a4)
	move.w	4(a0),d0
	subq.w	#1,d0
	move.w	d0,4(a4)
	move.w	6(a0),d0
	subq.w	#1,d0
	move.w	d0,6(a4)
	move.w	#3,intin
	bsr  	vro_cpyfm
	tst.l	(sp)+
	movem.l	(sp)+,a4-a5
	unlk	fp
	rts

L24872:
	link	fp,#-190
	clr.w	(sp)
	move.l	8(fp),-(sp)
	jsr	Fopen
	addq.l	#4,sp
	move.w	d0,-184(fp)
	cmp.w	#-1,d0
	bgt.s	.L24906
	jsr	L69438
.L24906:
	move.w	-184(fp),(sp)
	move.w	#10,-(sp)
	move.l	fp,-(sp)
	addi.l	#-180,(sp)
	jsr	Fread
	addq.l	#6,sp
	cmp.w	#-1,d0
	bgt.s	.L24942
	jsr	L69504
.L24942:
	move.w	-180(fp),d0
	cmp.w	nplanes,d0
	beq.s	.L24960
	jsr	L69624
.L24960:
	move.l	temp_pic,d0
	cmp.l	8(fp),d0
	beq.s	.L25050
	move.l	12(fp),(sp)
	move.l	fp,-(sp)
	addi.l	#-178,(sp)
	jsr	L49856
	addq.l	#4,sp
	tst.w	d0
	bne.s	.L25050
	move.w	#1,U92040
	move.l	fp,(sp)
	addi.l	#-178,(sp)
	jsr	L45542
	clr.w	U92040
	move.l	12(fp),(sp)
	move.l	fp,-(sp)
	addi.l	#-178,(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	bra.s	.L25076
.L25050:
	move.l	12(fp),(sp)
	addq.l	#4,(sp)
	move.l	fp,-(sp)
	addi.l	#-174,(sp)
	move.w	#4,-(sp)
	jsr	memmove
	addq.l	#6,sp
.L25076:
	movea.l	12(fp),a0
	tst.w	6(a0)
	beq  	.L25242
	movea.l	12(fp),a0
	tst.w	4(a0)
	beq  	.L25242
	movea.l	12(fp),a0
	move.w	2(a0),d0
	movea.l	12(fp),a1
	move.w	6(a1),d1
	add.w	d1,d0
	move.w	d0,-182(fp)
	movea.l	12(fp),a0
	move.w	#1,6(a0)
	movea.l	12(fp),a0
	move.w	4(a0),d0
	add.w	#15,d0
	ext.l	d0
	divs	#16,d0
	muls	nplanes,d0
	asl.w	#1,d0
	move.w	d0,-186(fp)
	bra.s	.L25228
.L25164:
	move.w	-184(fp),(sp)
	move.w	-186(fp),-(sp)
	move.l	fp,-(sp)
	addi.l	#-180,(sp)
	jsr	Fread
	addq.l	#6,sp
	cmp.w	#-1,d0
	bgt.s	.L25200
	jsr	L69504
.L25200:
	move.l	fp,(sp)
	addi.l	#-180,(sp)
	move.l	12(fp),-(sp)
	clr.w	-(sp)
	bsr  	L24620
	addq.l	#6,sp
	movea.l	12(fp),a0
	addq.w	#1,2(a0)
.L25228:
	movea.l	12(fp),a0
	move.w	2(a0),d0
	cmp.w	-182(fp),d0
	blt.s	.L25164
.L25242:
	move.w	-184(fp),(sp)
	jsr	Fclose
	unlk	fp
	rts

L25256:
	link	fp,#-6
	move.w	14(fp),(sp)
	move.w	12(fp),-(sp)
	move.l	8(fp),-(sp)
	jsr	Fwrite
	addq.l	#6,sp
	move.w	d0,-2(fp)
	cmp.w	#-1,d0
	bgt.s	L25296
	jsr	L69504
L25296:
	move.w	-2(fp),d0
	cmp.w	12(fp),d0
	bge.s	L25340
	cmpi.w	#2,U92036
	bne.s	L25334
	clr.w	(sp)
	jsr	L49422
	clr.l	(sp)
	clr.w	-(sp)
	bsr  	L24290
	addq.l	#2,sp
L25334:
	jsr	L67570
L25340:
	unlk	fp
	rts

L25344:
	link	fp,#-190
	clr.w	(sp)
	move.l	8(fp),-(sp)
	jsr	Fcreate
	addq.l	#4,sp
	move.w	d0,-184(fp)
	cmp.w	#-1,d0
	bgt.s	L25378
	jsr	L69438
L25378:
	move.w	nplanes,-180(fp)
	move.l	fp,(sp)
	addi.l	#-178,(sp)
	move.l	12(fp),-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	-184(fp),(sp)
	move.w	#10,-(sp)
	move.l	fp,-(sp)
	addi.l	#-180,(sp)
	bsr  	L25256
	addq.l	#6,sp
	movea.l	12(fp),a0
	move.w	6(a0),d0
	movea.l	12(fp),a1
	move.w	2(a1),d1
	add.w	d1,d0
	move.w	d0,-182(fp)
	movea.l	12(fp),a0
	move.w	#1,6(a0)
	movea.l	12(fp),a0
	move.w	4(a0),d0
	add.w	#15,d0
	ext.l	d0
	divs	#16,d0
	muls	nplanes,d0
	asl.w	#1,d0
	move.w	d0,-186(fp)
	bra.s	L25548

L25496:
	move.l	fp,(sp)
	addi.l	#-180,(sp)
	move.l	12(fp),-(sp)
	move.w	#1,-(sp)
	bsr  	L24620
	addq.l	#6,sp
	move.w	-184(fp),(sp)
	move.w	-186(fp),-(sp)
	move.l	fp,-(sp)
	addi.l	#-180,(sp)
	bsr  	L25256
	addq.l	#6,sp
	movea.l	12(fp),a0
	addq.w	#1,2(a0)
L25548:
	movea.l	12(fp),a0
	move.w	2(a0),d0
	cmp.w	-182(fp),d0
	blt.s	L25496
	move.w	-184(fp),(sp)
	jsr	Fclose
	cmp.w	#-1,d0
	bgt.s	L25584
	jsr	L69570
L25584:
	unlk	fp
	rts

L25588:
	link	fp,#-4
	move.l	#L24872,(sp)
	bsr.s	L25628
	move.w	#1,U92038
	unlk	fp
	rts

L25612:
	link	fp,#-4
	move.l	#L25344,(sp)
	bsr.s	L25628
	unlk	fp
	rts

L25628:
	link	fp,#-12
	move.l	T87314,(sp)
	jsr	L19136
	jsr	L48234
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	#U100970_x,-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	jsr	L33144
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.l	#U100754,-(sp)
	movea.l	8(fp),a0
	jsr	(a0)
	addq.l	#8,sp
	jsr	L33100
	jsr	L47940
	jsr	L61834
	unlk	fp
	rts

L25718:
	link	fp,#-4
	move.w	U91962,d0
	unlk	fp
	rts

L25732:
	link	fp,#-4
	move.w	U91964,d0
	unlk	fp
	rts

L25746:
	link	fp,#-4
	move.w	U91956,d0
	unlk	fp
	rts

L25760:
	link	fp,#-4
	move.w	U91958,d0
	unlk	fp
	rts

L25774:
	link	fp,#-4
	move.w	U91960,d0
	unlk	fp
	rts

vdi_line:
	link	fp,#-6
	move.w	#1,(sp)
	bsr  	vswr_mode
	move.w	d0,-2(fp)
	move.w	U92094,(sp)
	bsr  	L27190
	move.w	#6,contrl	; v_pline
	move.w	#2,contrl+2
	clr.w	contrl+6
	move.w	8(fp),ptsin
	move.w	10(fp),ptsin+2
	move.w	12(fp),ptsin+4
	move.w	14(fp),ptsin+6
	bsr  	lock_and_vdi
	move.w	-2(fp),(sp)
	bsr  	vswr_mode
	unlk	fp
	rts

L25886:
	link	fp,#-6
L25890:
	move.w	#-1,(sp)
	move.w	#32,-(sp)	; Dosound
	trap	#14		; Xbios
	addq.l	#2,sp
	tst.w	d0
	bne.s	L25890
	jsr	L16090
	clr.w	-2(fp)
	bra.s	L25964

L25922:
	movea.w	-2(fp),a0
	adda.l	#U99606,a0
	move.l	a0,-(sp)
	move.w	#255,-(sp)
	jsr	L16278
	addq.l	#2,sp
	ext.w	d0
	movea.l	(sp)+,a0
	move.b	d0,(a0)
	addq.w	#1,-2(fp)
	tst.w	U100896
	beq.s	L25972
L25964:
	cmpi.w	#200,-2(fp)
	blt.s	L25922
L25972:
	move.l	#U99606,(sp)
	move.w	#32,-(sp)	; Dosound
	trap	#14		; Xbios
	addq.l	#2,sp
	jsr	L61834
	unlk	fp
	rts

L26000:
	link	fp,#-4
	jsr	L16090
	bsr  	L22348
	move.l	#ptsin,(sp)
	bsr  	L21016
	bsr  	L21278	
	add.w	ptsin,d0
	subq.w	#1,d0
	move.w	d0,ptsin+4
	bsr  	L21294
	move.w	d0,-(sp)
	move.w	ptsin+2,d0
	sub.w	(sp)+,d0
	addq.w	#1,d0
	move.w	d0,ptsin+6
	bsr  	L21310
	tst.w	d0
	beq.s	.L26098
	move.w	#11,contrl	; v_bar
	move.w	#2,contrl+2
	move.w	#1,contrl+10
	bra.s	.L26178

.L26098:
	move.w	ptsin+4,d0
	move.w	d0,ptsin+12
	move.w	d0,ptsin+8

	move.w	ptsin,d0
	move.w	d0,ptsin+16
	move.w	d0,ptsin+4

	move.w	ptsin+2,d0
	move.w	d0,ptsin+18
	move.w	d0,ptsin+14
	move.w	ptsin+6,ptsin+10
	move.w	#6,contrl	; v_pline
	move.w	#5,contrl+2

.L26178:
	clr.w	contrl+6
	bsr  	L22312
	unlk	fp
	rts

L26192:
	link	fp,#-4
	jsr	L16090
	bsr  	L22348
	move.l	#ptsin,(sp)
	bsr  	L21016
	bsr  	L21278
	move.w	d0,ptsin+12
	bsr  	L21112
	move.w	d0,intin+2
	bsr  	L21112
	move.w	d0,intin
	bsr  	L21362
	unlk	fp
	rts

L26254:
	link	fp,#-4
	jsr	L16090
	bsr  	L22348
	move.l	#ptsin,(sp)
	bsr  	L21016
	bsr  	L21278
	move.w	d0,ptsin+8
	move.w	d0,ptsin+12
	bsr  	L21310
	tst.w	d0
	beq.s	L26358
	clr.w	d0
	move.w	d0,ptsin+10
	move.w	d0,ptsin+6
	move.w	d0,ptsin+4
	move.w	#11,contrl
	move.w	#3,contrl+2
	clr.w	contrl+6
	move.w	#4,contrl+10
	bsr  	L22312
	bra.s	L26376

L26358:
	clr.w	intin
	move.w	#3600,intin+2
	bsr  	L21362
L26376:
	unlk	fp
	rts

L26380:
	link	fp,#-8
	jsr	L16090
	move.w	U101130,(sp)
	jsr	L16278
	move.w	d0,-2(fp)
	move.w	-2(fp),(sp)
	bsr  	L23516
	move.w	d0,(sp)
	jsr	L16278
	move.w	d0,-4(fp)
	move.w	max_colors,(sp)
	jsr	L16278
	move.w	d0,(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	bsr  	L21964
	addq.l	#4,sp
	jsr	L61834
	unlk	fp
	rts

L26464:
	link	fp,#-4
	move.w	U91956,(sp)
	jsr	L53070
	move.w	U91958,(sp)
	jsr	L53070
	move.w	U91960,(sp)
	jsr	L53070
	move.w	#3,(sp)
	jsr	L62166
	unlk	fp
	rts

L26518:
	link	fp,#-2
	movem.l	d6-d7,-(sp)
	jsr	L16090
	bsr  	L22348
	move.w	#73,-2(fp)
	clr.w	d7
	bra.s	L26576

L26546:
	tst.w	U100896
	beq.s	L26582
	move.w	d7,d0
	asl.w	#1,d0
	asl.w	#1,d0
	ext.l	d0
	add.l	#ptsin,d0
	move.l	d0,(sp)
	bsr  	L21016
	addq.w	#1,d7
L26576:
	cmp.w	-2(fp),d7
	blt.s	L26546
L26582:
	bsr  	L21310
	tst.w	d0
	beq.s	L26594
	moveq	#9,d0
	bra.s	L26596

L26594:
	moveq	#6,d0
L26596:
	move.w	d0,contrl
	move.w	d7,contrl+2
	clr.w	contrl+6
	bsr  	L22312
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L26628:
	link	fp,#-4
	jsr	L16090
	bsr  	L22348
	move.l	#ptsin,(sp)
	bsr  	L21016
	bsr  	L21278
	move.w	d0,ptsin+4
	bsr  	L21294
	move.w	d0,ptsin+6
	bsr  	L21310
	tst.w	d0
	beq.s	L26696
	clr.w	contrl+6
	move.w	#5,contrl+10
	bra.s	L26726

L26696:
	move.w	#2,contrl+6
	move.w	#6,contrl+10
	clr.w	intin
	move.w	#3600,intin+2
L26726:
	move.w	#11,contrl
	move.w	#2,contrl+2
	bsr  	L22312
	unlk	fp
	rts

L26750:
	link	fp,#-8
	jsr	L16090
	move.w	U101134,(sp)
	jsr	L16278
	move.w	d0,-2(fp)
	move.w	U101136,(sp)
	jsr	L16278
	move.w	d0,-4(fp)
	move.w	max_colors,(sp)
	jsr	L16278
	move.w	d0,(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	bsr  	L21448
	addq.l	#4,sp
	jsr	L61834
	unlk	fp
	rts

L26830:
	link	fp,#-4
	move.w	U91962,(sp)
	jsr	L53070
	move.w	U91964,(sp)
	jsr	L53070
	move.w	U92094,(sp)
	jsr	L53070
	move.w	#3,(sp)
	jsr	L62166
	unlk	fp
	rts

L26886:
	link	fp,#-4
	move.w	#106,contrl	; vst_effects
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	#63,(sp)
	jsr	L61658
	move.w	d0,intin
	jsr	vdi
	move.w	intout,U92034
	jsr	L61834
	unlk	fp
	rts

L26954:
	link	fp,#-4
	move.w	U92034,(sp)
	jsr	L61926
	unlk	fp
	rts

word_sysfacts:
	link	fp,#-16
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#2,(sp)
	jsr	L37552
	adda.l	#12,sp
	move.w	-2(fp),(sp)
	jsr	L53070
	move.w	-4(fp),(sp)
	jsr	L53070
	move.w	-6(fp),(sp)
	jsr	L53070
	move.w	-8(fp),(sp)
	jsr	L53070
	move.w	max_colors,(sp)
	jsr	L53070
	move.l	grph_buffer,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-12(fp)
	move.l	-12(fp),(sp)
	jsr	L52972
	move.l	U100900,(sp)
	jsr	L52972
	move.w	#7,(sp)
	jsr	L62166
	unlk	fp
	rts

L27114:
	link	fp,#-4
	move.w	8(fp),(sp)
	bsr  	init_vdi
	move.w	#1,(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	bsr  	L21964
	addq.l	#4,sp
	move.w	#-1,(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	bsr  	L21448
	addq.l	#4,sp
	tst.w	contrl+12
	bne.s	.L27176
	clr.w	d0
	bra.s	.L27178

.L27176:
	moveq	#1,d0
.L27178:
	unlk	fp
	rts

L27190:
	link	fp,#-4
	move.w	#17,contrl
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	8(fp),intin
	jsr	vdi
	unlk	fp
	rts

L27234:
	link	fp,#-10
	move.w	16(fp),(sp)
	andi.w	#$FF,(sp)
	bsr.s	L27190
	move.w	16(fp),d0
	asr.w	#8,d0
	cmp.w	#2,d0
	bne.s	.L27266
	move.w	#3,(sp)
	bra.s	.L27270

.L27266:
	move.w	#1,(sp)
.L27270:
	bsr  	vswr_mode
	move.w	d0,-2(fp)

	move.w	#6,contrl	; v_pline
	move.w	#2,contrl+2
	clr.w	contrl+6

	move.w	U100970_x,d0
	move.w	d0,d1
	add.w	8(fp),d0
	add.w	12(fp),d1
	move.w	d0,ptsin
	move.w	d1,ptsin+4

	move.w	U100972_y,d0
	move.w	d0,d1
	add.w	10(fp),d0
	add.w	14(fp),d1
	move.w	d0,ptsin+2
	move.w	d1,ptsin+6

	bsr  	lock_and_vdi
	move.w	#1,U92038
	move.w	-2(fp),(sp)
	bsr  	vswr_mode
	unlk	fp
	rts

L27388:
	link	fp,#-4
	bsr  	L21310
	tst.w	d0
	beq.s	.return
	bsr  	L22348
	move.w	#103,contrl	; v_contourfill
	move.w	#1,contrl+2
	move.w	#1,contrl+6
	move.w	#-1,intin
	move.w	U100970_x,d0
	add.w	U99860_x,d0
	move.w	d0,ptsin
	move.w	U100972_y,d0
	add.w	U100564_y,d0
	move.w	d0,ptsin+2
	bsr  	L22312
.return:
	unlk	fp
	rts

vs_color:
	link	fp,#-4
	move.w	#14,contrl
	clr.w	contrl+2
	move.w	#4,contrl+6
	move.w	8(fp),intin
	move.w	10(fp),intin+2
	move.w	12(fp),intin+4
	move.w	14(fp),intin+6
	jsr	vdi
	unlk	fp
	rts

vq_color:
	link	fp,#-4
	move.w	#26,contrl
	clr.w	contrl+2
	move.w	#2,contrl+6
	move.w	8(fp),intin
	move.w	#1,intin+2
	jsr	vdi
	move.l	#intout+2,d0
	unlk	fp
	rts

L27606:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	btst	#7,d7
	beq.s	.L27628
	or.w	#-256,d7
.L27628:
	btst	#1,11(fp)
	beq.s	.L27642
	move.w	d7,d0
	neg.w	d0
	bra.s	.L27644

.L27642:
	move.w	d7,d0
.L27644:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

turtle_draw:
	link	fp,#-6
	move.l	d7,-(sp)

	tst.w	turtle_show_flag
	beq  	.return
	move.w	U91962,-6(fp)
	move.w	U91964,-4(fp)
	move.w	#-1,(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	bsr  	L21448
	addq.l	#4,sp
	move.w	#3,(sp)
	bsr  	vswr_mode
	move.w	d0,-2(fp)
	move.w	U92082,d1
	addq.w	#3,d1
	ext.l	d1
	divs	#6,d1
	ext.l	d1
	divs	#15,d1
	swap	d1
	move.w	U92082,d2
	addq.w	#3,d2
	move.w	d2,d0
	ext.l	d0
	divs	#90,d0
	move.w	d0,d2
	and.w	#1,d0
	beq.s	.L27774
	eori.w	#15,d1
.L27774:
	muls	#6,d1
	ext.l	d1
	move.l	d1,a1
	add.l	turtle_p,a1
	move.w	U100970_x,d0
	add.w	U99860_x,d0
	move.w	d0,ptsin
	move.w	d0,ptsin+16
	move.w	U100972_y,d0
	add.w	U100564_y,d0
	move.w	d0,ptsin+2
	move.w	d0,ptsin+18
	moveq	#2,d7
	bra.s	.L27958

.L27860:
	move.w	d2,(sp)
	addq.l	#1,a1
	move.b	(a1),d0
	ext.w	d0
	move.w	d0,-(sp)
	bsr  	L27606
	addq.l	#2,sp
	move.w	d0,-(sp)
	move.w	U100970_x,d0
	add.w	d0,(sp)
	move.w	U99860_x,d0
	add.w	d0,(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#ptsin,a0
	move.w	(sp)+,(a0)
	addq.w	#1,d7
	move.w	d2,(sp)
	addq.w	#1,(sp)
	addq.l	#1,a1
	move.b	(a1),d0
	ext.w	d0
	move.w	d0,-(sp)
	bsr  	L27606
	addq.l	#2,sp
	move.w	d0,-(sp)
	move.w	U100972_y,d0
	add.w	d0,(sp)
	move.w	U100564_y,d0
	add.w	d0,(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#ptsin,a0
	move.w	(sp)+,(a0)
	addq.w	#1,d7
.L27958:
	cmp.w	#8,d7
	blt.s	.L27860
	move.w	#6,contrl	; v_pline
	move.w	#5,contrl+2
	clr.w	contrl+6
	bsr  	lock_and_vdi
	move.w	#-1,(sp)
	move.w	-4(fp),-(sp)
	move.w	-6(fp),-(sp)
	bsr  	L21448
	addq.l	#4,sp
	move.w	-2(fp),(sp)
	bsr  	vswr_mode
.return:
	move.l	(sp)+,d7
	unlk	fp
	rts

L28042:
	link	fp,#-4
	move.l	#U100970_x,(sp)
	bsr.s	L28066
	move.w	#1,U92038
	unlk	fp
	rts

L28066:
	link	fp,#-2
	movem.l	d7/a5,-(sp)
	movea.l	8(fp),a5
	jsr	L33160
	move.w	d0,(sp)
	bsr  	vsf_color
	move.w	d0,-2(fp)
	move.w	6(a5),(sp)
	move.w	4(a5),-(sp)
	move.w	2(a5),-(sp)
	move.w	(a5),-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	bsr  	L23682
	adda.l	#12,sp
	move.w	-2(fp),(sp)
	bsr  	vsf_color
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L28146:
	link	fp,#-4
	move.b	T84580,d0
	ext.w	d0
	unlk	fp
	rts

L28162:
	link	fp,#-4
	move.b	T84582,d0
	ext.w	d0
	unlk	fp
	rts

L28178:
	link	fp,#-4
	move.b	T84584,d0
	ext.w	d0
	unlk	fp
	rts

L28194:
	link	fp,#-4
	move.b	T84591,d0
	ext.w	d0
	unlk	fp
	rts

	link	fp,#-4
	move.b	T84592,d0
	ext.w	d0
	unlk	fp
	rts

L28226:
	link	fp,#-4
	move.b	T84597,d0
	ext.w	d0
	unlk	fp
	rts

L28242:
	link	fp,#-4
	move.b	T84598,d0
	ext.w	d0
	unlk	fp
	rts

L28258:
	link	fp,#-4
	move.b	T84599,d0
	ext.w	d0
	unlk	fp
	rts

L28274:
	link	fp,#-4
	move.b	T84600,d0
	ext.w	d0
	unlk	fp
	rts

L28290:
	link	fp,#-4
	move.b	T84601,d0
	ext.w	d0
	unlk	fp
	rts

L28306:
	link	fp,#-4
	move.b	T84602,d0
	ext.w	d0
	unlk	fp
	rts

L28322:
	link	fp,#-4
	move.b	T84603,d0
	ext.w	d0
	unlk	fp
	rts

L28338:
	link	fp,#-4
	move.b	T84604,d0
	ext.w	d0
	unlk	fp
	rts

L28354:
	link	fp,#-4
	move.b	T84605,d0
	ext.w	d0
	unlk	fp
	rts

L28370:
	link	fp,#-4
	move.b	T84607,d0
	ext.w	d0
	unlk	fp
	rts

L28386:
	link	fp,#-4
	move.b	T84586,d0
	ext.w	d0
	unlk	fp
	rts

L28402:
	link	fp,#-4
	move.w	#192,d0
	ext.l	d0
	divs	nplanes,d0
	unlk	fp
	rts

L28422:
	link	fp,#-4
	bsr.s	L28402
	ext.l	d0
	divs	#2,d0
	unlk	fp
	rts

L28438:
	link	fp,#-2
	movem.l	d6-d7/a5,-(sp)
	movea.l	8(fp),a5
	jsr	_L45356
	clr.w	(sp)
	move.l	a5,-(sp)
	jsr	Dgetpath
	addq.l	#4,sp
	cmpi.w	#1,12(fp)
	bne.s	L28484
	move.l	T87150,(sp)
	bra.s	L28490

L28484:
	move.l	T87314,(sp)
L28490:
	move.l	#T85026,-(sp)
	move.l	a5,-(sp)
	jsr	L83706
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	L83706
	addq.l	#4,sp
	clr.b	40(a5)
	jsr	_mouse_show

	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	a5,-(sp)
	addi.l	#40,(sp)
	move.l	a5,-(sp)
	jsr	fsel_input
	addq.l	#8,sp

	move.l	a5,(sp)
	jsr	L83914
	move.w	d0,d7
	bra.s	L28570

L28560:
	movea.l	a5,a0
	movea.w	d7,a1
	adda.l	a1,a0
	clr.b	(a0)
	subq.w	#1,d7
L28570:
	tst.w	d7
	beq.s	L28600
	move.l	#T85029,(sp)
	move.b	0(a5,d7.w),d0
	ext.w	d0
	move.w	d0,-(sp)
	jsr	L50940
	addq.l	#2,sp
	tst.w	d0
	beq.s	L28560
L28600:
	move.l	a5,(sp)
	addi.l	#40,(sp)
	move.l	a5,-(sp)
	jsr	L83706
	addq.l	#4,sp
	move.w	-2(fp),d0
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

word_setpal:
	movem.l	d3-d5,-(sp)
	jsr	L15980
	move.w	d0,d3
	jsr	L16090
	move.w	#1000,-(sp)
	jsr	L16278
	move.w	d0,d4
	jsr	L16278
	move.w	d0,d5
	jsr	L16278
	move.w	d0,(sp)
	move.w	d5,-(sp)
	move.w	d4,-(sp)
	move.w	d3,-(sp)
	jsr	vs_color
	jsr	L61834
	addq	#8,sp
	movem.l	(sp)+,d3-d5
	rts

word_pal:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	jsr	L15980
	move.w	d0,(sp)
	jsr	vq_color
	movea.l	d0,a5
	move.w	(a5),(sp)
	jsr	L53070
	addq.l	#2,a5
	move.w	(a5),(sp)
	jsr	L53070
	addq.l	#2,a5
	move.w	(a5),(sp)
	jsr	L53070
	move.w	#3,(sp)
	jsr	L62166
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

word_turtletext:
	link	fp,#-6
	movem.l	d6-d7,-(sp)
	move.w	#1,-6(fp)
	move.w	#1,(sp)
	jsr	L61064
	move.w	d0,(sp)
	jsr	L8638
	move.w	U92094,-2(fp)
	move.w	#2,-4(fp)
	jsr	L33300
	bra.s	.L28896
.L28868:
	clr.w	-6(fp)
	bra.s	.L28912
.L28874:
	jsr	L33160
	move.w	d0,-2(fp)
	bra.s	.L28912
.L28886:
	move.w	#3,-4(fp)
	bra.s	.L28912
	bra.s	.L28912
.L28896:
	tst.w	d0
	beq.s	.L28868
	cmp.w	#2,d0
	beq.s	.L28886
	cmp.w	#3,d0
	beq.s	.L28874
.L28912:
	jsr	L22348
	jsr	L9350
	jsr	L64224
	move.w	d0,d7
	bra.s	.L28972
.L28934:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,U101046
	jsr	L18616
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
	beq.s	.L28972
	jsr	L76978
.L28972:
	tst.w	d7
	bne.s	.L28934
	jsr	L9388
	move.w	-4(fp),(sp)
	jsr	vswr_mode
	move.w	d0,-4(fp)
	move.w	-2(fp),(sp)
	bsr  	vst_color
	move.w	#8,contrl
	move.w	#1,contrl+2
	move.w	U99178,contrl+6
	move.w	U100970_x,d0
	add.w	U99860_x,d0
	move.w	d0,ptsin
	move.w	U100972_y,d0
	add.w	U100564_y,d0
	move.w	d0,ptsin+2
	clr.w	d6
	bra.s	.L29104
.L29070:
	movea.l	U101030,a0
	move.b	(a0),d0
	ext.w	d0
	and.w	#255,d0
	movea.w	d6,a1
	adda.l	a1,a1
	adda.l	#intin,a1
	move.w	d0,(a1)
	addq.l	#1,U101030
	addq.w	#1,d6
.L29104:
	cmp.w	U99178,d6
	bcs.s	.L29070
	tst.w	-6(fp)
	beq.s	.L29126
	jsr	L22312
	bra.s	.L29144
.L29126:
	jsr	L33100
	jsr	L47940
	jsr	L61834
.L29144:
	move.w	-4(fp),(sp)
	jsr	vswr_mode
	move.w	#1,(sp)
	bsr.s	vst_color
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

vst_color:
	link	fp,#-4
	move.w	#22,contrl
	clr.w	contrl+2
	move.w	#1,contrl+6
	move.w	8(fp),intin
	jsr	vdi
	unlk	fp
	rts

L29214:
	link	fp,#-22
	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	jsr	graf_mkstate
	adda.l	#12,sp
	move.w	U100972_y,d0
	sub.w	d0,-6(fp)
	move.w	-6(fp),(sp)
	move.w	U100970_x,d0
	sub.w	d0,-8(fp)
	move.w	-8(fp),-(sp)
	jsr	L36410
	addq.l	#2,sp
	move.w	d0,-18(fp)
	beq.s	L29308
	move.l	#0,-12(fp)
	move.l	#0,-16(fp)
	bra  	L29456

L29308:
	move.l	U92124,-(sp)
	jsr	L33780
	move.l	d0,-(sp)
	move.w	-8(fp),d0
	move.w	U101120,d1
	asr.w	#1,d1
	sub.w	d1,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,-12(fp)
	move.l	U92128,-(sp)
	jsr	L34692
	move.l	d0,-(sp)
	jsr	L33780
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.w	U101122,d0
	asr.w	#1,d0
	sub.w	-6(fp),d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,-16(fp)
L29456:
	move.l	-12(fp),(sp)
	jsr	L52972
	move.l	-16(fp),(sp)
	jsr	L52972
	move.w	-4(fp),(sp)
	andi.w	#1,(sp)
	jsr	L60886
	jsr	L64746
	move.w	-4(fp),(sp)
	andi.w	#2,(sp)
	jsr	L60886
	jsr	L64746
	tst.w	-18(fp)
	beq.s	L29526
	clr.w	(sp)
	bra.s	L29530

L29526:
	move.w	#1,(sp)
L29530:
	jsr	L60886
	jsr	L64746
	move.w	#5,(sp)
	jsr	L62166
	unlk	fp
	rts

L29556:
	link	fp,#-4
	move.w	10(fp),d0
	muls	#24,d0
	add.l	U92072,d0
	add.l	#10,d0
	movea.l	d0,a0
	move.w	8(fp),(a0)
	unlk	fp
	rts

L29590:
	link	fp,#-6
	move.w	8(fp),d0
	muls	#24,d0
	add.l	U92072,d0
	add.l	#10,d0
	movea.l	d0,a0
	cmpi.w	#1,(a0)
	beq.s	L29626
	clr.w	d0
	bra.s	L29628

L29626:
	moveq	#1,d0
L29628:
	move.w	d0,-2(fp)
	move.w	8(fp),(sp)
	clr.w	-(sp)
	bsr.s	L29556
	addq.l	#2,sp
	move.w	-2(fp),d0
	unlk	fp
	rts

L29650:
	link	fp,#-4
	jsr	L9350
	move.l	8(fp),(sp)
	jsr	L52972
	jsr	L64224
	move.w	d0,(sp)
	jsr	L54740
	clr.b	U100763
	move.l	#U100754,(sp)
	movea.l	#ev_adrerr,a0
	move.w	12(fp),d1
	muls	#24,d1
	add.l	U92072,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),-(sp)
	jsr	L83880
	addq.l	#4,sp
	jsr	L9388
	unlk	fp
	rts

L29740:
	link	fp,#-6
	movea.l	#ev_adrerr,a0
	move.w	8(fp),d1
	muls	#24,d1
	add.l	U92072,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),(sp)
	move.l	U101030,-(sp)
	jsr	L83880
	addq.l	#4,sp
	move.l	U101030,(sp)
	jsr	L62012
	move.w	d0,(sp)
	jsr	L9468
	move.w	d0,-2(fp)
	movea.l	10(fp),a0
	move.l	U99602,(a0)
	move.w	-2(fp),d0
	unlk	fp
	rts

L29826:
	link	fp,#-4
	move.l	8(fp),U92072
	tst.w	turtle_show_flag
	beq.s	L29854
	move.w	#8,(sp)
	bra.s	L29858

L29854:
	move.w	#9,(sp)
L29858:
	move.w	#1,-(sp)
	bsr  	L29556
	addq.l	#2,sp
	jsr	L33300
	move.w	d0,(sp)
	addi.w	#12,(sp)
	move.w	#1,-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#3,(sp)
	move.l	U99808,-(sp)
	bsr  	L29650
	addq.l	#4,sp
	move.w	#4,(sp)
	move.l	U99812,-(sp)
	bsr  	L29650
	addq.l	#4,sp
	move.w	#5,(sp)
	move.l	U92078,-(sp)
	bsr  	L29650
	addq.l	#4,sp
	unlk	fp
	rts

L29948:
	link	fp,#-12
	movem.l	d5-d7,-(sp)
	move.l	8(fp),U92072
	move.w	#16,(sp)
	bsr  	L29590
	tst.w	d0
	beq  	L30266
	jsr	wind_update_begin
	jsr	L48234
	jsr	L46108
	jsr	wind_update_end
	move.w	#8,(sp)
	bsr  	L29590
	tst.w	d0
	beq.s	L30022
	jsr	turtle_show
	bra.s	L30040

L30022:
	move.w	#9,(sp)
	bsr  	L29590
	tst.w	d0
L30032:
	beq.s	L30040
	jsr	turtle_hide
L30040:
	moveq	#12,d7
	bra.s	L30046

L30044:
	addq.w	#1,d7
L30046:
	move.w	d7,(sp)
	bsr  	L29590
	tst.w	d0
	beq.s	L30044
	move.w	d7,d0
	bra.s	L30094

L30060:
	jsr	L33238
	bra.s	L30118

L30068:
	jsr	L33212
	bra.s	L30118

L30076:
	jsr	L33276
	bra.s	L30118

L30084:
	jsr	L33252
	bra.s	L30118

	bra.s	L30118

L30094:
	cmp.w	#12,d0
	beq.s	L30060
	cmp.w	#13,d0
	beq.s	L30068
	cmp.w	#14,d0
	beq.s	L30076
	cmp.w	#15,d0
	beq.s	L30084
L30118:
	move.l	fp,(sp)
	subq.l	#4,(sp)
	move.w	#3,-(sp)
	bsr  	L29740
	addq.l	#2,sp
	tst.w	d0
	beq.s	L30170
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	#4,-(sp)
	bsr  	L29740
	addq.l	#2,sp
	tst.w	d0
	beq.s	L30170
	move.l	-8(fp),(sp)
	move.l	-4(fp),-(sp)
	jsr	L35228
	addq.l	#4,sp
L30170:
	move.l	fp,(sp)
	addi.l	#-12,(sp)
	move.w	#5,-(sp)
	bsr  	L29740
	addq.l	#2,sp
	tst.w	d0
	beq.s	L30258
	move.l	#-130993,-(sp)
	move.l	-12(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L30220
	move.l	#-130993,-12(fp)
L30220:
	move.l	#-130865,-(sp)
	move.l	-12(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L30248
	move.l	#-130865,-12(fp)
L30248:
	move.l	-12(fp),(sp)
	jsr	L33502
L30258:
	jsr	L47940
	bra.s	L30324

L30266:
	move.w	#17,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#8,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#9,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	moveq	#12,d7
	bra.s	L30318

L30306:
	move.w	d7,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	addq.w	#1,d7
L30318:
	cmp.w	#16,d7
	blt.s	L30306
L30324:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L30334:
	link	fp,#-4
	move.l	8(fp),U92072
	move.w	#2,(sp)
	jsr	L34692
	move.l	d0,-(sp)
	bsr  	L29650
	addq.l	#4,sp
	move.w	#7,(sp)
	jsr	L33780
	move.l	d0,-(sp)
	bsr  	L29650
	addq.l	#4,sp
	move.w	#3,(sp)
	move.l	U92124,-(sp)
	bsr  	L29650
	addq.l	#4,sp
	move.w	#6,(sp)
	move.l	U92128,-(sp)
	bsr  	L29650
	addq.l	#4,sp
	move.w	window_mode,d0
	addi.w	#11,d0
	move.w	d0,(sp)
	move.w	#1,-(sp)
	bsr  	L29556
	addq.l	#2,sp
	unlk	fp
	rts

L30444:
	link	fp,#-12
	move.l	8(fp),U92072
	move.w	#4,(sp)
	bsr  	L29590
	tst.w	d0
	beq  	L30650
	jsr	L48234
	move.w	#11,(sp)
	bsr  	L29590
	tst.w	d0
	beq.s	L30496
	jsr	L34482
	bra.s	L30534

L30496:
	move.w	#12,(sp)
	bsr  	L29590
	tst.w	d0
	beq.s	L30516
	jsr	L34554
	bra.s	L30534

L30516:
	move.w	#13,(sp)
	bsr  	L29590
	tst.w	d0
	beq.s	L30534
	jsr	L34588
L30534:
	move.l	fp,(sp)
	subq.l	#4,(sp)
	move.w	#2,-(sp)
	bsr  	L29740
	addq.l	#2,sp
	tst.w	d0
	beq.s	L30562
	move.l	-4(fp),(sp)
	jsr	L34648
L30562:
	move.l	fp,(sp)
	subq.l	#4,(sp)
	move.w	#7,-(sp)
	bsr  	L29740
	addq.l	#2,sp
	tst.w	d0
	beq.s	L30590
	move.l	-4(fp),(sp)
	jsr	L33736
L30590:
	move.l	fp,(sp)
	subq.l	#4,(sp)
	move.w	#3,-(sp)
	bsr  	L29740
	addq.l	#2,sp
	tst.w	d0
	beq.s	L30642
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	#6,-(sp)
	bsr  	L29740
	addq.l	#2,sp
	tst.w	d0
	beq.s	L30642
	move.l	-8(fp),(sp)
	move.l	-4(fp),-(sp)
	jsr	L33794
	addq.l	#4,sp
L30642:
	jsr	L47940
	bra.s	L30698

L30650:
	move.w	#11,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#12,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#13,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#5,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
L30698:
	unlk	fp
	rts

L30702:
	link	fp,#-16
	move.w	#8,U92076
	jsr	L25746
	move.w	d0,-2(fp)
	jsr	L25760
	move.w	d0,-4(fp)
	jsr	L25774
	move.w	d0,-6(fp)
	move.w	U101130,(sp)
	move.w	#8,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-8(fp)
	move.w	-8(fp),(sp)
	jsr	L23516
	move.w	d0,(sp)
	move.w	#10,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-10(fp)
	move.w	max_colors,(sp)
	move.w	#11,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-12(fp)
	move.w	-12(fp),(sp)
	move.w	-10(fp),-(sp)
	move.w	-8(fp),-(sp)
	jsr	L21964
	addq.l	#4,sp
	move.l	8(fp),(sp)
	addi.l	#10,(sp)
	move.w	#2,-(sp)
	jsr	L22670
	addq.l	#2,sp
	movea.l	8(fp),a0
	move.w	16(a0),(sp)
	movea.l	8(fp),a0
	move.w	14(a0),-(sp)
	movea.l	8(fp),a0
	move.w	12(a0),-(sp)
	movea.l	8(fp),a0
	move.w	10(a0),-(sp)
	move.w	-10(fp),-(sp)
	move.w	-8(fp),-(sp)
	move.w	#1,-(sp)
	jsr	L23682
	adda.l	#12,sp
	clr.w	(sp)
	jsr	L22670
	move.w	-6(fp),(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	jsr	L21964
	addq.l	#4,sp
	moveq	#16,d0
	unlk	fp
	rts

L30972:
	link	fp,#-16
	move.w	#13,U92076
	jsr	L25718
	move.w	d0,-2(fp)
	jsr	L25732
	move.w	d0,-4(fp)
	move.w	U92094,-6(fp)
	move.w	U101134,(sp)
	move.w	#13,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-8(fp)
	move.w	U101136,(sp)
	move.w	#15,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-10(fp)
	move.w	max_colors,(sp)
	move.w	#16,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-12(fp)
	move.w	-12(fp),(sp)
	move.w	-10(fp),-(sp)
	move.w	-8(fp),-(sp)
	jsr	L21448
	addq.l	#4,sp
	move.l	8(fp),(sp)
	addi.l	#10,(sp)
	move.w	#2,-(sp)
	jsr	L22670
	addq.l	#2,sp
	movea.l	8(fp),a0
	move.w	16(a0),(sp)
	movea.l	8(fp),a0
	move.w	14(a0),-(sp)
	movea.l	8(fp),a0
	move.w	12(a0),-(sp)
	movea.l	8(fp),a0
	move.w	10(a0),-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	jsr	L23682
	adda.l	#12,sp
	movea.l	8(fp),a0
	move.w	16(a0),d0
	asr.w	#1,d0
	movea.l	8(fp),a1
	add.w	d0,12(a1)
	movea.l	8(fp),a0
	move.w	12(a0),(sp)
	movea.l	8(fp),a0
	move.w	10(a0),-(sp)
	movea.l	8(fp),a0
	move.w	14(a0),d0
	add.w	d0,(sp)
	subq.w	#1,(sp)
	movea.l	8(fp),a0
	move.w	12(a0),-(sp)
	movea.l	8(fp),a0
	move.w	10(a0),-(sp)
	jsr	vdi_line
	addq.l	#6,sp
	clr.w	(sp)
	jsr	L22670
	move.w	-6(fp),(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	jsr	L21448
	addq.l	#4,sp
	moveq	#16,d0
	unlk	fp
	rts

L31302:
	link	fp,#-6
	move.w	#17,U92076
	move.w	max_colors,(sp)
	move.w	#17,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	vsf_color
	move.w	d0,-2(fp)
	move.l	8(fp),(sp)
	addi.l	#10,(sp)
	move.w	#2,-(sp)
	jsr	L22670
	addq.l	#2,sp
	movea.l	8(fp),a0
	move.w	16(a0),(sp)
	movea.l	8(fp),a0
	move.w	14(a0),-(sp)
	movea.l	8(fp),a0
	move.w	12(a0),-(sp)
	movea.l	8(fp),a0
	move.w	10(a0),-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	jsr	L23682
	adda.l	#12,sp
	clr.w	(sp)
	jsr	L22670
	move.w	-2(fp),(sp)
	jsr	vsf_color
	moveq	#16,d0
	unlk	fp
	rts

L31452:
	link	fp,#-8
	move.w	8(fp),d0
	ext.l	d0
	divs	#10,d0
	add.w	#48,d0
	move.b	d0,-4(fp)
	move.w	8(fp),d0
	ext.l	d0
	divs	#10,d0
	swap	d0
	add.w	#48,d0
	move.b	d0,-3(fp)
	clr.b	-2(fp)
	move.l	fp,(sp)
	subq.l	#4,(sp)
	movea.l	#ev_adrerr,a0
	move.w	10(fp),d1
	muls	#24,d1
	add.l	U92072,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),-(sp)
	jsr	L83880
	addq.l	#4,sp
	unlk	fp
	rts

L31540:
	link	fp,#-8
	movea.l	#ev_adrerr,a0
	move.w	8(fp),d1
	muls	#24,d1
	add.l	U92072,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	jsr	L83880
	addq.l	#4,sp
	move.l	fp,(sp)
	subq.l	#4,(sp)
	jsr	L83596
	unlk	fp
	rts

dialog_graphics_setup:
	link	fp,#-4
	move.l	8(fp),U92072
	move.w	#8,U92076
	jsr	L21310
	tst.w	d0
	beq.s	.L31632
	move.w	#6,(sp)
	bra.s	.L31636
.L31632:
	move.w	#7,(sp)
.L31636:
	move.w	#1,-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#8,(sp)
	jsr	L25746
	move.w	d0,-(sp)
	bsr  	L31452
	addq.l	#2,sp
	move.w	#10,(sp)
	jsr	L25760
	move.w	d0,-(sp)
	bsr  	L31452
	addq.l	#2,sp
	move.w	#11,(sp)
	jsr	L25774
	move.w	d0,-(sp)
	bsr  	L31452
	addq.l	#2,sp
	move.w	#13,(sp)
	jsr	L25718
	move.w	d0,-(sp)
	bsr  	L31452
	addq.l	#2,sp
	move.w	#15,(sp)
	jsr	L25732
	move.w	d0,-(sp)
	bsr  	L31452
	addq.l	#2,sp
	move.w	#16,(sp)
	move.w	U92094,-(sp)
	bsr  	L31452
	addq.l	#2,sp
	move.w	#17,(sp)
	jsr	L33160
	move.w	d0,-(sp)
	bsr  	L31452
	addq.l	#2,sp
	move.l	#L30702,U98674
	move.l	#L30972,U99000
	move.l	#L31302,U99008
	movea.l	U92072,a0
	adda.l	#222,a0
	move.w	#24,(a0)
	movea.l	U92072,a0
	adda.l	#342,a0
	move.w	#24,(a0)
	movea.l	U92072,a0
	adda.l	#438,a0
	move.w	#24,(a0)
	movea.l	U92072,a0
	adda.l	#228,a0
	move.l	#U98674,(a0)
	movea.l	U92072,a0
	adda.l	#348,a0
	move.l	#U99000,(a0)
	movea.l	U92072,a0
	adda.l	#444,a0
	move.l	#U99008,(a0)
	unlk	fp
	rts

L31908:
	link	fp,#-12
	move.l	8(fp),U92072
	tst.w	12(fp)
	beq  	L32264
	move.w	#6,(sp)
	bsr  	L29590
	tst.w	d0
	beq.s	L31948
	move.w	U100984,-8(fp)
L31948:
	move.w	#7,(sp)
	bsr  	L29590
	tst.w	d0
	beq.s	L31968
	move.w	U101186,-8(fp)
L31968:
	move.w	-8(fp),(sp)
	move.w	U98718,-(sp)
	move.l	T87350,-(sp)
	jsr	L62012
	addq.l	#4,sp
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
	move.w	U101130,(sp)
	move.w	#8,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-2(fp)
	move.w	-2(fp),(sp)
	jsr	L23516
	move.w	d0,(sp)
	move.w	#10,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-4(fp)
	move.w	max_colors,(sp)
	move.w	#11,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-6(fp)
	move.w	-6(fp),(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	jsr	L21964
	addq.l	#4,sp
	move.w	U101134,(sp)
	move.w	#13,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-2(fp)
	move.w	U101136,(sp)
	move.w	#15,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-4(fp)
	move.w	max_colors,(sp)
	move.w	#16,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,-6(fp)
	move.w	-6(fp),(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	jsr	L21448
	addq.l	#4,sp
	move.w	max_colors,(sp)
	move.w	#17,-(sp)
	bsr  	L31540
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L50202
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L33174
	bra.s	L32300

L32264:
	move.w	#3,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#6,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
	move.w	#7,(sp)
	clr.w	-(sp)
	bsr  	L29556
	addq.l	#2,sp
L32300:
	unlk	fp
	rts

dialog_graphics_handler:
	link	fp,#-6
.loop:
	clr.l	(sp)
	move.w	#257,-(sp)
	jsr	graf_mouse
	addq.l	#2,sp
	move.w	U92076,(sp)
	move.l	8(fp),-(sp)
	jsr	_form_do
	addq.l	#4,sp
	clr.l	(sp)
	move.w	#256,-(sp)
	jsr	graf_mouse
	addq.l	#2,sp
	move.w	#2,(sp)
	bsr  	L29590
	move.w	d0,-2(fp)
	bne.s	.return
	move.w	#3,(sp)
	bsr  	L29590
	tst.w	d0
	bne.s	.return
	bra.s	.loop
.return:
	move.w	-2(fp),d0
	unlk	fp
	rts

L32390:
	link	fp,#-8
	move.w	8(fp),U101120
	move.w	10(fp),U101122
	move.w	U92100,-2(fp)
	move.w	U92104,-4(fp)
	bsr  	L32752
	tst.w	U99190
	bne  	L32592
	move.l	U92132,-(sp)
	move.l	#-2147483582,-(sp)
	move.w	-2(fp),d0
	sub.w	U92100,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	U99808,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,U99808
	move.l	U92136,-(sp)
	move.l	#-2147483582,-(sp)
	move.w	U92104,d0
	sub.w	-4(fp),d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	U99812,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,U99812
L32592:
	unlk	fp
	rts

L32596:
	link	fp,#-8
	tst.w	U99190
	bne  	L32748
	move.w	U99860_x,-2(fp)
	move.w	U100564_y,-4(fp)
	bsr  	L34368
	move.w	-2(fp),d0
	cmp.w	U99860_x,d0
	bne.s	L32654
	move.w	-2(fp),d0
	cmp.w	U100564_y,d0
	beq.s	L32702
L32654:
	move.w	-2(fp),U99860_x
	move.w	-4(fp),U100564_y
	jsr	turtle_draw
	move.w	U92118,U99860_x
	move.w	U92120,U100564_y
	jsr	turtle_draw
L32702:
	move.w	U100564_y,(sp)
	move.w	U99860_x,-(sp)
	bsr  	L36410
	addq.l	#2,sp
	tst.w	d0
	beq.s	L32748
	tst.w	window_mode
	beq.s	L32748
	jsr	turtle_draw
	bsr  	L34706
	jsr	turtle_draw
L32748:
	unlk	fp
	rts

L32752:
	link	fp,#-4
	move.w	U101120,d0
	subq.w	#1,d0
	move.w	d0,U92100
	move.w	U101122,d0
	subq.w	#1,d0
	move.w	d0,U92104
	move.w	U101120,d0
	move.w	d0,U92106
	neg.w	d0
	move.w	d0,U92108
	move.w	U101122,d0
	move.w	d0,U92110
	neg.w	d0
	move.w	d0,U92112
	move.w	U101120,d0
	asr.w	#1,d0
	move.w	d0,U92114
	move.w	U101122,d0
	subq.w	#1,d0
	asr.w	#1,d0
	move.w	d0,U92116
	unlk	fp
	rts

L32858:
	link	fp,#-4
	move.w	#1,U92122
	clr.l	d0
	move.l	d0,U92078
	move.l	d0,U99812
	move.l	d0,U99808
	clr.w	U92082
	clr.w	turtle_show_flag
	clr.w	window_mode
	move.l	#$80000041,U92088
	clr.w	d0
	move.w	d0,U92102
	move.w	d0,U92098
	bsr  	L32752
	move.w	U101140,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	move.w	U101138,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,(sp)
	bsr  	L34648
	clr.w	(sp)
	bsr  	L33174
	move.w	#1,(sp)
	bsr  	L33316
	move.w	#256,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	move.w	#256,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,(sp)
	bsr  	L33736
	clr.l	(sp)
	clr.l	-(sp)
	bsr  	L33794
	addq.l	#4,sp
	bsr  	L33580
	bsr  	L33212
	bsr  	turtle_show
	unlk	fp
	rts

L33100:
	link	fp,#-4
	tst.w	U92122
	bne.s	L33126
	move.w	#1,U92122
	jsr	turtle_draw
L33126:
	unlk	fp
	rts

L33130:
	link	fp,#-4
	clr.w	U92122
	unlk	fp
	rts

L33144:
	link	fp,#-4
	bsr.s	L33130
	jsr	turtle_draw
	unlk	fp
	rts

L33160:
	link	fp,#-4
	move.w	U92096,d0
	unlk	fp
	rts

L33174:
	link	fp,#-4
	jsr	turtle_draw
	move.w	8(fp),d0
	move.w	d0,U92096
	move.w	d0,(sp)
	jsr	L49676
	jsr	turtle_draw
	unlk	fp
	rts

L33212:
	move.b	#1,U92092
	move.b	U92094,U92093
	rts

L33238:
	clr.b	U92092
	rts

L33252:
	link	fp,#-4
	move.b	#3,U92092
	bsr.s	L33160
	move.b	d0,U92093
	unlk	fp
	rts

L33276:
	move.b	#2,U92092
	move.b	U92094,U92093
	rts

L33300:
	link	fp,#-4
	move.b	U92092,d0
	ext.w	d0
	unlk	fp
	rts

L33316:
	link	fp,#-4
	move.w	8(fp),U92094
	bsr.s	L33300
	cmp.w	#3,d0
	beq.s	.return
	move.w	U92094,d0
	move.b	d0,U92093
.return:
	unlk	fp
	rts

L33366:
	link	fp,#-4
	move.l	U99812,-(sp)
	move.l	8(fp),-(sp)
	move.l	U92078,-(sp)
	jsr	L36612
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,(sp)
	move.l	U99808,-(sp)
	move.l	8(fp),-(sp)
	move.l	U92078,-(sp)
	jsr	L36642
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,-(sp)
	bsr  	L35228
	addq.l	#4,sp
	unlk	fp
	rts

L33472:
	link	fp,#-4
	move.l	8(fp),-(sp)
	move.l	U92078,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,(sp)
	bsr.s	L33502
	unlk	fp
	rts

L33502:
	link	fp,#-4
	jsr	turtle_draw
	move.l	8(fp),(sp)
	bsr  	L36300
	move.l	d0,U92078
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,U92082
	jsr	turtle_draw
	unlk	fp
	rts

L33580:
	link	fp,#-4
	move.w	U92096,(sp)
	jsr	L28042
	jsr	turtle_draw
	unlk	fp
	rts

L33606:
	link	fp,#-4
	move.l	12(fp),(sp)
	move.l	8(fp),-(sp)
	bsr  	L34046
	addq.l	#4,sp
	move.w	U92120,(sp)
	move.w	U92118,-(sp)
	bsr  	L36258
	addq.l	#2,sp
	bsr  	L36234
	tst.w	d0
	beq.s	L33726
	move.w	U92118,d0
	ext.l	d0
	divs	U101120,d0
	swap	d0
	move.w	d0,U92118
	tst.w	d0
	bge.s	L33688
	move.w	U101120,d0
	add.w	d0,U92118
L33688:
	move.w	U92120,d0
	ext.l	d0
	divs	U101122,d0
	swap	d0
	move.w	d0,U92120
	tst.w	d0
	bge.s	L33726
	move.w	U101122,d0
	add.w	d0,U92120
L33726:
	move.l	#U92118,d0
	unlk	fp
	rts

L33736:
	link	fp,#-4
	move.l	U92088,-(sp)
	move.l	8(fp),d0
	move.l	d0,U92132
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,U92136
	bsr  	L34368
	unlk	fp
	rts

L33780:
	link	fp,#-4
	move.l	U92132,d0
	unlk	fp
	rts

L33794:
	link	fp,#-4
	tst.w	window_mode
	beq.s	L33858
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L33846
	clr.l	-(sp)
	move.l	12(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	beq.s	L33858
L33846:
	jsr	turtle_draw
	jsr	L66832
L33858:
	move.l	8(fp),U92124
	move.l	12(fp),U92128
	bsr  	L34368
	unlk	fp
	rts

L33910:
	link	fp,#-4
	move.l	#$80000041,-(sp)
	move.l	U92132,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L33942
	move.l	8(fp),d0
	bra.s	L33960

L33942:
	move.l	8(fp),-(sp)
	move.l	U92132,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
L33960:
	unlk	fp
	rts

L33964:
	link	fp,#-4
	move.l	#$80000041,-(sp)
	move.l	U92136,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L33996
	move.l	8(fp),d0
	bra.s	L34014

L33996:
	move.l	8(fp),-(sp)
	move.l	U92136,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
L34014:
	unlk	fp
	rts

L34046:
	link	fp,#-12
	move.l	U92124,-(sp)
	move.l	8(fp),-(sp)
	bsr  	L35168
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,(sp)
	bsr  	L33910
	move.l	d0,-(sp)
	move.w	U92114,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	U92128,-(sp)
	move.l	12(fp),-(sp)
	bsr  	L35168
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,(sp)
	bsr  	L33964
	move.l	d0,-(sp)
	move.w	U92116,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,12(fp)
	move.l	8(fp),(sp)
	jsr	L3058
	move.l	d0,-4(fp)
	move.l	12(fp),(sp)
	jsr	L3058
	move.l	d0,-8(fp)
	move.l	#$FA00004F,-(sp)
	move.l	-4(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L34250
	move.l	#$FA00004F,-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L34336
L34250:
	move.l	-8(fp),-(sp)
	move.l	-4(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L34274
	move.l	-4(fp),-(sp)
	bra.s	L34278

L34274:
	move.l	-8(fp),-(sp)
L34278:
	move.l	#$FA00004F,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-4(fp)
	move.l	-4(fp),-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	-4(fp),-(sp)
	move.l	12(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,12(fp)
L34336:
	move.l	8(fp),(sp)
	bsr  	L35006
	move.w	d0,U92118
	move.l	12(fp),(sp)
	bsr  	L35006
	move.w	d0,U92120
	unlk	fp
	rts

L34368:
	link	fp,#-4
	move.l	U99812,(sp)
	move.l	U99808,-(sp)
	bsr  	L34046
	addq.l	#4,sp
	move.w	U92118,U99860_x
	move.w	U92120,U100564_y
	unlk	fp
	rts

turtle_hide:
	tst.w	turtle_show_flag
	beq.s	.return
	jsr	turtle_draw
	clr.w	turtle_show_flag
.return:
	rts

turtle_show:
	tst.w	turtle_show_flag
	bne.s	.return
	move.w	#1,turtle_show_flag
	jsr	turtle_draw
.return:
	rts

L34482:
	link	fp,#-4
	clr.w	window_mode
	unlk	fp
	rts

L34496:
	link	fp,#-4
	clr.l	-(sp)
	move.l	U92124,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L34544
	clr.l	-(sp)
	move.l	U92128,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	beq.s	L34550
L34544:
	jsr	L66832
L34550:
	unlk	fp
	rts

L34554:
	link	fp,#-4
	bsr.s	L34496
	jsr	turtle_draw
	move.w	#1,window_mode
	bsr  	L34706
	jsr	turtle_draw
	unlk	fp
	rts

L34588:
	link	fp,#-4
	move.w	U100564_y,(sp)
	move.w	U99860_x,-(sp)
	bsr  	L36410
	addq.l	#2,sp
	tst.w	d0
	beq.s	L34620
	jsr	L66856
L34620:
	bsr.s	L34496
	move.w	#2,window_mode
	unlk	fp
	rts

L34648:
	link	fp,#-4
	move.l	U92132,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,U92136
	move.l	8(fp),U92088
	bsr  	L34368
	unlk	fp
	rts

L34692:
	link	fp,#-4
	move.l	U92088,d0
	unlk	fp
	rts

L34706:
	link	fp,#-4
	bra.s	L34772

L34712:
	move.l	U92132,-(sp)
	move.w	U101120,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	U99808,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,U99808
	bsr  	L34368
L34772:
	tst.w	U99860_x
	blt.s	L34712
	bra.s	L34842

L34782:
	move.l	U92132,-(sp)
	move.w	U101120,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	U99808,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,U99808
	bsr  	L34368
L34842:
	move.w	U101120,d0
	cmp.w	U99860_x,d0
	ble.s	L34782
	bra.s	L34918

L34858:
	move.l	U92136,-(sp)
	move.w	U101122,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	U99812,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,U99812
	bsr  	L34368
L34918:
	tst.w	U100564_y
	blt.s	L34858
	bra.s	L34988

L34928:
	move.l	U92136,-(sp)
	move.w	U101122,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	U99812,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,U99812
	bsr  	L34368
L34988:
	move.w	U101122,d0
	cmp.w	U100564_y,d0
	ble.s	L34928
	unlk	fp
	rts

L35006:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L35088
	move.l	#$80000040,-(sp)
	move.l	8(fp),-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d7
	bra.s	L35156

L35088:
	move.l	#$80000040,-(sp)
	move.l	8(fp),-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	8(fp),-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d7
	move.l	8(fp),-(sp)
	move.w	d7,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L35156
	addq.w	#1,d7
L35156:
	move.w	d7,d0
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L35168:
	link	fp,#-4
	move.w	#16000,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	move.l	8(fp),-(sp)
	jsr	L3058
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L35220
	jsr	L66856
L35220:
	move.l	8(fp),d0
	unlk	fp
	rts

L35228:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.l	12(fp),(sp)
	move.l	8(fp),-(sp)
	bsr  	L34046
	addq.l	#4,sp
	move.w	U92120,(sp)
	move.w	U92118,-(sp)
	bsr  	L36258
	addq.l	#2,sp
	jsr	turtle_draw
	move.w	U99860_x,U92140
	move.w	U100564_y,U92142
	move.w	U92118,d0
	move.w	d0,U99860_x
	move.w	d0,U92144
	move.w	U92120,d0
	move.w	d0,U100564_y
	move.w	d0,U92146
	move.l	8(fp),U99808
	move.l	12(fp),U99812
	bsr  	L36234
	tst.w	d0
	beq  	L35524
	bsr  	L33300
	tst.w	d0
	beq  	L35518
L35366:
	move.w	U92092,(sp)
	bsr  	L35556
	move.w	d0,d6
	move.w	d6,d7
	asr.w	#1,d7
	move.w	U92120,(sp)
	move.w	U92118,-(sp)
	bsr  	L36410
	addq.l	#2,sp
	tst.w	d0
	beq.s	L35518
	move.w	U92144,U92140
	move.w	U92146,U92142
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	#U92106,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#U92140,a1
	move.w	(a0),d0
	add.w	d0,(a1)
	move.w	U92118,U92144
	move.w	U92120,U92146
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	#U92106,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#U92140,a1
	move.w	(a0),d0
	add.w	d0,4(a1)
	move.w	U92144,U92118
	move.w	U92146,U92120
	bra  	L35366

L35518:
	bsr  	L34706
	bra.s	L35540

L35524:
	bsr  	L33300
	tst.w	d0
	beq.s	L35540
	move.w	U92092,(sp)
	bsr.s	L35556
L35540:
	jsr	turtle_draw
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L35556:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	moveq	#-1,d0
	move.w	d0,U92152
	move.w	d0,U92150
	move.w	d0,U92154
	clr.w	U92148
	moveq	#-1,d6
	bra  	L35720

L35596:
	moveq	#-1,d7
	bra.s	L35710

L35600:
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	movea.l	#U92140,a1
	move.w	0(a0,a1.l),d0
	move.w	d0,U92156
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a1
	adda.l	#U92098,a1
	move.w	(a1),d1
	cmp.w	d1,d0
	bge.s	L35666
	clr.w	(sp)
	move.w	d7,-(sp)
	move.w	d6,-(sp)
	bsr  	L35836
	addq.l	#4,sp
	move.w	d0,U92154
	bra.s	L35710

L35666:
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#U92098,a1
	move.w	2(a0,a1.l),d0
	cmp.w	U92156,d0
	bge.s	L35710
	move.w	#1,(sp)
	move.w	d7,-(sp)
	move.w	d6,-(sp)
	bsr  	L35836
	addq.l	#4,sp
	move.w	d0,U92154
L35710:
	addq.w	#1,d7
	move.w	d7,d0
	cmp.w	#2,d0
	blt.s	L35600
L35720:
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#2,d0
	blt  	L35596
	tst.w	U92148
	bne.s	L35820
	move.w	U92142,(sp)
	move.w	U92140,-(sp)
	bsr  	L36410
	addq.l	#2,sp
	tst.w	d0
	bne.s	L35820
	move.w	U92146,(sp)
	move.w	U92144,-(sp)
	bsr  	L36410
	addq.l	#2,sp
	tst.w	d0
	bne.s	L35820
	move.w	8(fp),(sp)
	move.w	U92146,-(sp)
	move.w	U92144,-(sp)
	move.w	U92142,-(sp)
	move.w	U92140,-(sp)
	jsr	L27234
	addq.l	#8,sp
L35820:
	move.w	U92154,d0
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L35836:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	10(fp),d7
	move.w	8(fp),d6
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	12(fp),a1
	adda.l	a1,a1
	adda.l	a1,a0
	adda.l	#U92098,a0
	move.w	(a0),U92162
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	movea.l	#U92140,a1
	move.w	0(a0,a1.l),d0
	movea.w	#1,a1
	suba.w	d6,a1
	adda.l	a1,a1
	adda.l	a1,a1
	movea.w	d7,a2
	adda.l	a2,a2
	adda.l	a2,a1
	adda.l	#U92140,a1
	move.w	(a1),d1
	sub.w	d1,d0
	move.w	d0,U92160
	beq  	L36122
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	#1,a1
	suba.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	adda.l	#U92140,a0
	move.l	a0,-(sp)
	move.w	U92160,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	movea.w	#1,a0
	suba.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	#1,a1
	suba.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	movea.l	#U92140,a1
	move.w	0(a0,a1.l),d0
	movea.w	d6,a1
	adda.l	a1,a1
	adda.l	a1,a1
	movea.w	#1,a2
	suba.w	d7,a2
	adda.l	a2,a2
	adda.l	a2,a1
	adda.l	#U92140,a1
	move.w	(a1),d1
	sub.w	d1,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	movea.l	#U92140,a1
	move.w	0(a0,a1.l),d0
	sub.w	U92162,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	bsr  	L35006
	addq.l	#4,sp
	movea.l	(sp)+,a0
	add.w	d0,(a0)
L36122:
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	adda.l	#U92140,a0
	move.w	U92162,(a0)
	move.w	d7,d0
	asl.w	#1,d0
	add.w	12(fp),d0
	move.w	d0,U92158
	cmp.w	U92150,d0
	bne.s	L36176
	move.w	#1,U92148
L36176:
	move.w	U92158,d0
	cmp.w	U92152,d0
	bne.s	L36198
	move.w	#1,U92148
L36198:
	move.w	U92150,U92152
	move.w	U92158,U92150
	move.w	U92158,d0
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L36234:
	link	fp,#-4
	cmpi.w	#1,window_mode
	beq.s	L36252
	clr.w	d0
	bra.s	L36254

L36252:
	moveq	#1,d0
L36254:
	unlk	fp
	rts

L36258:
	link	fp,#-4
	cmpi.w	#2,window_mode
	bne.s	L36296
	move.w	10(fp),(sp)
	move.w	8(fp),-(sp)
	bsr  	L36410
	addq.l	#2,sp
	tst.w	d0
	beq.s	L36296
	jsr	L66856
L36296:
	unlk	fp
	rts

L36300:
	link	fp,#-4
	bra.s	L36328

L36306:
	move.l	#$B4000049,-(sp)
	move.l	8(fp),-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,8(fp)
L36328:
	move.l	#$B4000049,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L36306
	bra.s	L36372

L36350:
	move.l	#$B4000049,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,8(fp)
L36372:
	move.l	8(fp),-(sp)
	clr.w	d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L36350
	move.l	8(fp),d0
	unlk	fp
	rts

L36410:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	cmp.w	U92098,d7
	blt.s	L36466
	cmp.w	U92100,d7
	bgt.s	L36466
	move.w	U92102,d0
	cmp.w	10(fp),d0
	bgt.s	L36466
	move.w	U92104,d0
	cmp.w	10(fp),d0
	blt.s	L36466
	clr.w	d0
	bra.s	L36468

L36466:
	moveq	#1,d0
L36468:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L36478:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	cmp.w	#97,d7
	blt.s	L36510
	cmp.w	#122,d7
	bgt.s	L36510
	move.w	d7,d0
	moveq	#32,d1
	eor.w	d1,d0
	bra.s	L36512

L36510:
	move.w	d7,d0
L36512:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L36522:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	cmp.w	#65,d7
	blt.s	L36554
	cmp.w	#90,d7
	bgt.s	L36554
	move.w	d7,d0
	moveq	#32,d1
	eor.w	d1,d0
	bra.s	L36556

L36554:
	move.w	d7,d0
L36556:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L36566:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	cmp.w	#32,d7
	beq.s	L36600
	cmp.w	#9,d7
	beq.s	L36600
	cmp.w	#10,d7
	beq.s	L36600
	clr.w	d0
	bra.s	L36602

L36600:
	moveq	#1,d0
L36602:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L36612:
	link	fp,#-4
	move.l	#$B4000047,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,(sp)
	bsr.s	L36642
	unlk	fp
	rts

L36642:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.w	d7
	move.l	8(fp),U92166
	bra.s	L36690

L36662:
	move.l	#$B4000047,-(sp)
	move.l	U92166,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,U92166
	addq.w	#1,d7
L36690:
	move.l	#$B4000047,-(sp)
	move.l	U92166,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bgt.s	L36662
	btst	#0,d7
	beq.s	L36744
	move.l	U92166,-(sp)
	move.l	#$B4000047,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,U92166
L36744:
	move.l	U92166,-(sp)
	move.l	U92166,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,U92164
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L36818
	movea.w	U92164,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T85060,a1
	move.l	0(a0,a1.l),d0
	bra  	L36962

L36818:
	move.w	U92164,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	move.l	U92166,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,-(sp)
	movea.w	U92164,a0
	addq.w	#1,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T85060,a1
	move.l	0(a0,a1.l),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	U92166,-(sp)
	move.w	U92164,d0
	addq.w	#1,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,-(sp)
	movea.w	U92164,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T85060,a1
	move.l	0(a0,a1.l),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
L36962:
	move.l	d0,U92166
	btst	#1,d7
	beq.s	L36990
	move.l	U92166,-(sp)
	jsr	L82000
	addq.l	#4,sp
	bra.s	L36996

L36990:
	move.l	U92166,d0
L36996:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L37006:
	link	fp,#-4
	move.l	8(fp),(sp)
	jsr	L36300
	move.l	d0,(sp)
	jsr	L36642
	unlk	fp
	rts

L37032:
	link	fp,#-4
	move.l	8(fp),(sp)
	jsr	L36300
	move.l	d0,(sp)
	jsr	L36612
	unlk	fp
	rts

L37058:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L77854
.L37072:
	clr.w	U99852
	clr.w	U100748
	clr.w	U100622
	clr.w	U101006
	clr.w	U100890
	move.l	#U101158,(sp)
	jsr	L204
	move.w	d0,d7
	beq.s	.L37156
	clr.w	d0
	move.w	d0,U99190
	move.w	d0,U101476
	cmp.w	#23,d7
	bne.s	.L37150
	jsr	L62532
	jsr	word_recycle
.L37150:
	jsr	L58082
.L37156:
	jsr	L62532
	bsr.s	L37176
	bra.s	.L37072

	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L37176:
	link	fp,#-4
	clr.w	U101470
	clr.w	U101034
	move.l	#U100656,(sp)
	jsr	L204
	tst.w	d0
	beq.s	L37222
	jsr	L2226
	jsr	L60948
	bra.s	L37308

L37222:
	move.w	#63,(sp)
	jsr	L50590
	move.l	T87158,(sp)
	jsr	L52220
	tst.w	d0
	beq.s	L37256
	jsr	L54122
	bra.s	L37308

L37256:
	move.l	T87162,(sp)
	jsr	L52220
	tst.w	d0
	beq.s	L37280
	jsr	L49652
	bra.s	L37308

L37280:
	move.l	T87166,(sp)
	jsr	L52220
	tst.w	d0
	bne.s	L37302
	clr.w	U98712
L37302:
	jsr	L58142
L37308:
	unlk	fp
	rts

vdi:
	move.l	#pblock,d1
	moveq	#115,d0
	trap	#2
	rts

L37552:
	link	fp,#-4
	movea.l	8(fp),a0
	move.w	U99096,(a0)
	movea.l	12(fp),a0
	move.w	U99098,(a0)
	movea.l	16(fp),a0
	move.w	U99100,(a0)
	movea.l	20(fp),a0
	move.w	U99102,(a0)
	unlk	fp
	rts

L37614:
	link	fp,#-12
	bsr  	L48234
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#2,(sp)
	move.w	#7,-(sp)
	move.w	U92266,-(sp)
	jsr	wind_get
	adda.l	#16,sp
	bsr  	_L45356
	move.w	-8(fp),(sp)
	move.w	-6(fp),-(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	move.w	#5,-(sp)
	move.w	U92266,-(sp)
	jsr	wind_set
	adda.l	#10,sp
	move.w	#2,(sp)
	bsr  	L42772
	bsr  	L48234
	bsr  	L46108
	bsr  	L47940
	jsr	L61834
	unlk	fp
	rts

L37732:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)
	move.w	8(fp),d7
	bsr  	_mouse_hide
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	addq.l	#8,a5
	move.l	a5,(sp)
	addq.l	#6,(sp)
	move.l	a5,-(sp)
	addq.l	#4,(sp)
	move.l	a5,-(sp)
	addq.l	#2,(sp)
	move.l	a5,-(sp)
	move.w	#5,-(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	#-1,16(a0)
	cmp.w	U100904,d7
	bne.s	.L37844
	move.w	#-1,U100904
.L37844:
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),(sp)
	jsr	wind_close
	bsr  	_mouse_show
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L37878:
	link	fp,#-8
	movem.l	d6-d7,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),(sp)
	bsr  	L42570
	move.w	d0,d7
	movea.l	8(fp),a0
	move.w	(a0),d0
	bra  	.switch
.L37910:
	move.w	#1,(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	move.l	U92190,-(sp)
	jsr	menu_tnormal
	addq.l	#6,sp
	movea.l	8(fp),a0
	move.w	8(a0),(sp)
	bsr  	L39630
	bra  	.L39270
.L37952:
	bsr  	_mouse_hide
	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.w	#11,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	bra.s	.L38072
.L37998:
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	8(fp),-(sp)
	addq.l	#8,(sp)
	jsr	L49946
	addq.l	#4,sp
	tst.w	d0
	beq.s	.L38032
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	d7,-(sp)
	bsr  	L45236
	addq.l	#2,sp
.L38032:
	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.w	#12,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_get
	adda.l	#16,sp
.L38072:
	tst.w	-4(fp)
	beq.s	.L38084
	tst.w	-2(fp)
	bne.s	.L37998
.L38084:
	bra  	.L39270
.L38088:
	clr.w	(sp)
	move.w	#10,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_set
	addq.l	#4,sp
	move.w	d7,U100904
	movea.l	8(fp),a0
	move.w	6(a0),(sp)
	bsr  	L39356
	bra  	.L39270
.L38132:
	bsr  	_L45356
	cmp.w	#1,d7
	bne.s	.L38180
	btst	#0,U98293
	beq.s	.L38160
	move.w	#58,(sp)
	bsr  	L39630
.L38160:
	btst	#1,U98293
	beq.s	.L38178
	move.w	#59,(sp)
	bsr  	L39630
.L38178:
	bra.s	.L38202
.L38180:
	cmp.w	#3,d7
	bne.s	.L38202
	cmp.w	U101462,d7
	bne.s	.L38202
	move.w	#36,(sp)
	bsr  	L39630
.L38202:
	move.w	d7,(sp)
	bsr  	L37732
	bra  	.L39270
.L38212:
	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.w	#5,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.l	8(fp),(sp)
	addi.l	#14,(sp)
	move.l	8(fp),-(sp)
	addi.l	#12,(sp)
	move.l	8(fp),-(sp)
	addi.l	#10,(sp)
	move.l	8(fp),-(sp)
	addq.l	#8,(sp)
	move.w	#7,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	8(fp),-(sp)
	addq.l	#8,(sp)
	jsr	L49856
	addq.l	#4,sp
	tst.w	d0
	beq.s	.L38394
	move.l	8(fp),(sp)
	addi.l	#14,(sp)
	move.l	8(fp),-(sp)
	addi.l	#12,(sp)
	move.l	8(fp),-(sp)
	addi.l	#10,(sp)
	move.l	8(fp),-(sp)
	addq.l	#8,(sp)
	move.w	#6,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_get
	adda.l	#16,sp
.L38394:
	bsr  	_L45356
	movea.l	8(fp),a0
	move.w	14(a0),(sp)
	jsr	L28422
	move.w	d0,-(sp)
	jsr	L50174
	addq.l	#2,sp
	move.w	d0,(sp)
	movea.l	8(fp),a0
	move.w	12(a0),-(sp)
	jsr	L28402
	move.w	d0,-(sp)
	jsr	L50174
	addq.l	#4,sp
	move.w	d0,-(sp)
	movea.l	8(fp),a0
	move.w	10(a0),-(sp)
	movea.l	8(fp),a0
	move.w	8(a0),-(sp)
	move.w	#5,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_set
	adda.l	#10,sp
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	4(a0),-4(fp)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	6(a0),-2(fp)
	move.w	d7,(sp)
	bsr  	L42772
	cmp.w	#2,d7
	bne.s	.L38556
	move.w	d7,(sp)
	bsr  	L45052
	jsr	L22560
	bra.s	.L38568
.L38556:
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	d7,-(sp)
	bsr  	L41316
	addq.l	#2,sp
.L38568:
	bra  	.L39270
.L38572:
	cmp.w	#2,d7
	bne.s	.L38658
	movea.l	8(fp),a0
	move.w	8(a0),d0
	movea.l	8(fp),a1
	move.w	12(a1),d1
	add.w	d1,d0
	move.w	work_x,d1
	add.w	_work_w,d1
	cmp.w	d1,d0
	bgt.s	.L38646
	movea.l	8(fp),a0
	move.w	10(a0),d0
	movea.l	8(fp),a1
	move.w	14(a1),d1
	add.w	d1,d0
	move.w	work_y,d1
	add.w	_work_h,d1
	cmp.w	d1,d0
	ble.s	.L38658
.L38646:
	move.l	#U99096,(sp)
	jsr	L24328
.L38658:
	movea.l	8(fp),a0
	move.w	14(a0),(sp)
	movea.l	8(fp),a0
	move.w	12(a0),-(sp)
	movea.l	8(fp),a0
	move.w	10(a0),-(sp)
	movea.l	8(fp),a0
	move.w	8(a0),-(sp)
	move.w	#5,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_set
	adda.l	#10,sp
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	4(a0),-4(fp)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	6(a0),-2(fp)
	move.w	d7,(sp)
	bsr  	L42772
	cmp.w	#2,d7
	bne.s	.L38774
	move.w	d7,(sp)
	bsr  	L45052
	bra.s	.L38850
.L38774:
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	4(a0,a1.l),d0
	cmp.w	-4(fp),d0
	bne.s	.L38822
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	6(a0,a1.l),d0
	cmp.w	-2(fp),d0
	beq.s	.L38836
.L38822:
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	d7,-(sp)
	bsr  	L41316
	addq.l	#2,sp
	bra.s	.L38850
.L38836:
	cmp.w	U101462,d7
	bne.s	.L38850
	move.w	d7,(sp)
	bsr  	L45052
.L38850:
	bra  	.L39270
.L38854:
	movea.l	8(fp),a0
	move.w	8(a0),(sp)
	move.w	#8,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_set
	addq.l	#4,sp
	clr.w	(sp)
	movea.l	8(fp),a0
	move.w	8(a0),-(sp)
	move.w	d7,-(sp)
	clr.w	-(sp)
	bsr  	L42636
	addq.l	#6,sp
	move.w	d0,-(sp)
	move.w	d7,-(sp)
	clr.w	-(sp)
	bsr  	L41410
	addq.l	#6,sp
	bra  	.L39270
.L38918:
	movea.l	8(fp),a0
	move.w	8(a0),(sp)
	move.w	#9,-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	jsr	wind_set
	addq.l	#4,sp
	clr.w	(sp)
	movea.l	8(fp),a0
	move.w	8(a0),-(sp)
	move.w	d7,-(sp)
	move.w	#1,-(sp)
	bsr  	L42636
	addq.l	#6,sp
	move.w	d0,-(sp)
	move.w	d7,-(sp)
	move.w	#1,-(sp)
	bsr  	L41410
	addq.l	#6,sp
	bra  	.L39270
.L38986:
	movea.l	8(fp),a0
	move.w	8(a0),d0
	bra  	.L39212
.L38998:
	move.w	#1,(sp)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),-(sp)
	addq.w	#1,(sp)
	move.w	d7,-(sp)
	clr.w	-(sp)
	bsr  	L41410
	addq.l	#6,sp
	bra  	.L39242
.L39036:
	move.w	#1,(sp)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),-(sp)
	subq.w	#1,(sp)
	move.w	d7,-(sp)
	clr.w	-(sp)
	bsr  	L41410
	addq.l	#6,sp
	bra  	.L39242
.L39074:
	cmpi.w	#3,U101462
	bne.s	.L39104
	cmp.w	#3,d7
	bne.s	.L39104
	jsr	L28274
	move.w	d0,(sp)
	bsr  	L46448
	bra.s	.L39140
.L39104:
	move.w	#1,(sp)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	30(a0,a1.l),-(sp)
	subq.w	#1,(sp)
	move.w	d7,-(sp)
	move.w	#1,-(sp)
	bsr  	L41410
	addq.l	#6,sp
.L39140:
	bra.s	.L39242
.L39142:
	cmpi.w	#3,U101462
	bne.s	.L39172
	cmp.w	#3,d7
	bne.s	.L39172
	jsr	L28290
	move.w	d0,(sp)
	bsr  	L46448
	bra.s	.L39208
.L39172:
	move.w	#1,(sp)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	30(a0,a1.l),-(sp)
	addq.w	#1,(sp)
	move.w	d7,-(sp)
	move.w	#1,-(sp)
	bsr  	L41410
	addq.l	#6,sp
.L39208:
	bra.s	.L39242
	bra.s	.L39242
.L39212:
	cmp.w	#2,d0
	beq  	.L39074
	cmp.w	#3,d0
	beq.s	.L39142
	cmp.w	#6,d0
	beq  	.L39036
	cmp.w	#7,d0
	beq  	.L38998
.L39242:
	bra.s	.L39270
	bra.s	.L39270
.switch:
	sub.w	#10,d0
	cmp.w	#18,d0
	bhi.s	.L39270
	asl.w	#2,d0
	movea.l	#.T85526,a0
	movea.l	0(a0,d0.w),a0
	jmp	(a0)
.L39270:
	bsr  	_mouse_show
	movea.l	8(fp),a0
	clr.w	(a0)
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

.T85526:
	dc.l	.L37910,.L39270
	dc.l	.L39270,.L39270
	dc.l	.L39270,.L39270
	dc.l	.L39270,.L39270
	dc.l	.L39270,.L39270
	dc.l	.L37952,.L38088
	dc.l	.L38132,.L38212
	dc.l	.L38986,.L38854
	dc.l	.L38918,.L38394
	dc.l	.L38572

L39290:
	link	fp,#-4
	move.w	8(fp),d0
	bra.s	.switch
.L39300:
	moveq	#6,d0
	bra.s	.return
.L39304:
	moveq	#2,d0
	bra.s	.return
.L39308:
	moveq	#14,d0
	bra.s	.return
.L39312:
	moveq	#16,d0
	bra.s	.return
.L39316:
	moveq	#18,d0
	bra.s	.return
.L39320:
	moveq	#15,d0
	bra.s	.return
	bra.s	.L39348
.switch:
	ext.l	d0
	movea.l	#.T85602,a0
	moveq	#6,d1
.loop:
	cmp.l	(a0)+,d0
	dbeq	d1,.loop
	movea.l	24(a0),a0
	jmp	(a0)
.L39348:
	move.w	8(fp),d0
.return:
	unlk	fp
	rts

.T85602:
	dc.l	18176,18432
	dc.l	19200,19712
	dc.l	20480,20992
	dc.l	0,.L39316
	dc.l	.L39312,.L39304
	dc.l	.L39300,.L39308
	dc.l	.L39320,.L39348

L39356:
	link	fp,#-26
.L39360:
	move.l	fp,(sp)
	addi.l	#-22,(sp)
	move.l	fp,-(sp)
	addi.l	#-20,(sp)
	move.l	fp,-(sp)
	addi.l	#-18,(sp)
	move.l	fp,-(sp)
	addi.l	#-16,(sp)
	move.w	#5,-(sp)
	move.w	8(fp),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	bsr  	_mouse_show
	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.l	fp,-(sp)
	addi.l	#-10,(sp)
	move.l	fp,-(sp)
	addi.l	#-12,(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.l	U101480,-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	-22(fp),-(sp)
	move.w	-20(fp),-(sp)
	move.w	-18(fp),-(sp)
	move.w	-16(fp),-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	move.w	#21,-(sp)
	jsr	evnt_multi
	adda.l	#56,sp
	move.w	d0,-14(fp)
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	jsr	L22840
	btst	#4,-13(fp)
	beq.s	.L39562
	move.l	#U99820,(sp)
	bsr  	L37878
.L39562:
	btst	#0,-13(fp)
	beq.s	.L39578
	move.w	-4(fp),(sp)
	bsr  	L46448
.L39578:
	cmpi.w	#4,-14(fp)
	beq.s	.L39598
	tst.w	U92244
	bne.s	.L39598
	bra  	.L39360
.L39598:
	bsr  	_mouse_hide
	move.w	U101462,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	jsr	L22840
	unlk	fp
	rts

L39630:
	link	fp,#-10
	move.w	U101462,-6(fp)
	move.w	8(fp),d0
	bra  	.switch
.L39650:
	clr.w	(sp)
	move.l	_dialog_about,d0
	move.l	d0,-4(fp)
	move.l	d0,-(sp)
	move.l	#_form_do,-(sp)
	jsr  	_form_doer
	addq.l	#8,sp
	movea.l	-4(fp),a0
	adda.l	#154,a0
	clr.w	(a0)
	bra  	.L40578
.L39692:
	jsr	L28242
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39708:
	jsr	L28306
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39724:
	jsr	L28258
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39740:
	jsr	L28338
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39756:
	jsr	L28226
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39772:
	jsr	L28322
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39788:
	jsr	L28194
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39804:
	jsr	L28274
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39820:
	jsr	L28290
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39836:
	jsr	L28146
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39852:
	jsr	L28178
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39868:
	jsr	L28162
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39884:
	bsr  	L49652
	bra  	.L40578
.L39892:
	jsr	L28386
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39908:
	jsr	L28354
	move.w	d0,(sp)
	bsr  	L46448
	bra  	.L40578
.L39924:
	move.w	U92234,d0
	moveq	#1,d1
	eor.w	d1,d0
	move.w	d0,(sp)
	bsr  	L49422
	move.l	grph_buffer,(sp)
	move.w	U92234,d0
	muls	U92232,d0
	move.w	d0,-(sp)
	jsr	L24290
	addq.l	#2,sp
	tst.w	U92234
	beq.s	.L39992
	bsr  	L48234
	move.l	#U99096,(sp)
	jsr	L24328
.L39992:
	bra  	.L40578
.L39996:
	eori.w	#1,U98286
	move.w	U98286,(sp)
	move.w	#61,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_icheck
	addq.l	#6,sp
	cmpi.w	#3,U101462
	beq.s	.L40042
	bsr  	L47962
.L40042:
	bra  	.L40578
.L40046:
	eori.w	#1,U98288
	move.w	U98288,(sp)
	move.w	#60,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_icheck
	addq.l	#6,sp
	tst.w	U98292
	bne.s	.L40090
	bsr  	L47994
.L40090:
	bra  	.L40578
.L40094:
	clr.l	(sp)
	move.w	8(fp),-(sp)
	bsr  	L40590
	addq.l	#2,sp
	bra  	.L40578
.L40110:
	cmpi.w	#19,8(fp)
	bne.s	.L40126
	move.l	U92218,d0
	bra.s	.L40132
.L40126:
	move.l	U92222,d0
.L40132:
	move.l	d0,-4(fp)
	move.l	-4(fp),(sp)
	clr.w	-(sp)
	jsr	_draw_banner
	addq.l	#2,sp
	move.w	#1,(sp)
	move.l	#U100678,-(sp)
	jsr	L28438
	addq.l	#4,sp
	tst.w	d0
	bne.s	.L40182
	move.w	#1,(sp)
	jsr	_draw_banner
	bra  	.L40578
.L40182:
	move.l	-4(fp),(sp)
	move.w	#1,-(sp)
	jsr	_draw_banner
	addq.l	#2,sp
.L40196:
	move.l	#U100678,(sp)
	move.w	8(fp),-(sp)
	bsr  	L40590
	addq.l	#2,sp
	bra  	.L40578
.L40216:
	cmpi.w	#23,8(fp)
	bne.s	.L40232
	move.l	U92218,d0
	bra.s	.L40238
.L40232:
	move.l	U92222,d0
.L40238:
	move.l	d0,-4(fp)
	move.l	-4(fp),(sp)
	clr.w	-(sp)
	jsr	_draw_banner
	addq.l	#2,sp
	clr.w	(sp)
	move.l	#U98294,-(sp)
	jsr	L28438
	addq.l	#4,sp
	tst.w	d0
	beq.s	.L40290
	move.l	#U98294,(sp)
	move.w	8(fp),-(sp)
	bsr  	L40590
	addq.l	#2,sp
.L40290:
	move.l	-4(fp),(sp)
	move.w	#1,-(sp)
	jsr	_draw_banner
	addq.l	#2,sp
	bra  	.L40578
.L40308:
	cmpi.w	#21,8(fp)
	bne.s	.L40324
	move.l	U92214,d0
	bra.s	.L40330
.L40324:
	move.l	U92218,d0
.L40330:
	move.l	d0,-4(fp)
	move.l	-4(fp),(sp)
	clr.w	-(sp)
	jsr	_draw_banner
	addq.l	#2,sp
	move.w	#1,(sp)
	move.l	#U98294,-(sp)
	jsr	L28438
	addq.l	#4,sp
	tst.w	d0
	beq.s	.L40384
	move.l	#U98294,(sp)
	move.w	8(fp),-(sp)
	bsr  	L40590
	addq.l	#2,sp
.L40384:
	move.l	-4(fp),(sp)
	move.w	#1,-(sp)
	jsr	_draw_banner
	addq.l	#2,sp
	bra  	.L40578
.L40402:
	move.l	_dialog_turtle_settings,(sp)
	jsr	L29826
	move.w	#3,(sp)
	move.l	_dialog_turtle_settings,-(sp)
	move.l	#_form_do,-(sp)
	jsr  	_form_doer
	addq.l	#8,sp
	move.l	_dialog_turtle_settings,(sp)
	jsr	L29948
	bra  	.L40578
.L40452:
	move.l	_dialog_screen_settings,(sp)
	jsr	L30334
	move.w	#2,(sp)
	move.l	_dialog_screen_settings,-(sp)
	move.l	#_form_do,-(sp)
	jsr  	_form_doer
	addq.l	#8,sp
	move.l	_dialog_screen_settings,(sp)
	jsr	L30444
	bra.s	.L40578
.L40500:
	move.l	_dialog_graphics_settings,(sp)
	jsr	dialog_graphics_setup
	move.w	#8,(sp)
	move.l	_dialog_graphics_settings,-(sp)
	move.l	#dialog_graphics_handler,-(sp)
	jsr  	_form_doer
	addq.l	#8,sp
	move.w	d0,(sp)
	move.l	_dialog_graphics_settings,-(sp)
	jsr	L31908
	addq.l	#4,sp
	bra.s	.L40578
	bra.s	.L40578
.switch:
	sub.w	#10,d0
	cmp.w	#51,d0
	bhi.s	.L40578
	asl.w	#2,d0
	movea.l	#.T85658,a0
	movea.l	0(a0,d0.w),a0
	jmp	(a0)
.L40578:
	move.w	-6(fp),U101462
	unlk	fp
	rts

.T85658:
	dc.l	.L39650,.L40578
	dc.l	.L40578,.L40578
	dc.l	.L40578,.L40578
	dc.l	.L40578,.L40578
	dc.l	.L40578,.L40110
	dc.l	.L40110,.L40308
	dc.l	.L40578,.L40216
	dc.l	.L40216,.L40578
	dc.l	.L39884,.L40196
	dc.l	.L40578,.L39892
	dc.l	.L40094,.L40094
	dc.l	.L39908,.L40578
	dc.l	.L40094,.L40308
	dc.l	.L39868,.L39892
	dc.l	.L40578,.L39692
	dc.l	.L39708,.L39724
	dc.l	.L39740,.L40578
	dc.l	.L39756,.L39772
	dc.l	.L39788,.L39804
	dc.l	.L39820,.L40578
	dc.l	.L39836,.L39852
	dc.l	.L40578,.L40500
	dc.l	.L40402,.L40452
	dc.l	.L40578,.L39924
	dc.l	.L40094,.L40094
	dc.l	.L40046,.L39996

L40590:
	link	fp,#-4
	movem.l	d6-d7,-(sp)
	move.l	10(fp),-4(fp)
	jsr	L28370
	move.w	d0,(sp)
	bsr  	L46448
	move.w	8(fp),(sp)
	bsr  	L46448
	tst.l	-4(fp)
	beq.s	.return
	clr.w	d7
	bra.s	.L40648
.L40634:
	move.b	-4(fp,d7.w),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L46448
	addq.w	#1,d7
.L40648:
	cmp.w	#4,d7
	blt.s	.L40634
.return:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L41316:
	link	fp,#-4
	movea.l	10(fp),a0
	move.w	4(a0),(sp)
	move.w	8(fp),-(sp)
	clr.w	-(sp)
	bsr  	L42230
	addq.l	#4,sp
	movea.l	10(fp),a0
	move.w	6(a0),(sp)
	move.w	8(fp),-(sp)
	move.w	#1,-(sp)
	bsr  	L42230
	addq.l	#4,sp
	move.w	8(fp),d0
	cmp.w	U101462,d0
	bne.s	L41406
	move.w	8(fp),(sp)
	bsr  	L45052
	cmpi.w	#3,8(fp)
	bne.s	L41406
	bsr  	L47278
	jsr	L28194
	move.w	d0,(sp)
	bsr  	L46448
L41406:
	unlk	fp
	rts

L41410:
	link	fp,#-34
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	10(fp),d6
	cmp.w	#3,d6
	beq  	L42220
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	28(a0),-4(fp)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	36(a0,a1.l),(sp)
	subq.w	#1,(sp)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	addq.w	#2,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	0(a0,a1.l),d0
	ext.l	d0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#_cell_w,a1
	divs	(a1),d0
	sub.w	d0,(sp)
	move.w	#1,-(sp)
	jsr	L50174
	addq.l	#2,sp
	move.w	d0,-10(fp)
	move.l	#1000,-(sp)
	movea.w	12(fp),a0
	move.l	a0,-(sp)
	jsr	L84118
	addq.l	#8,sp
	add.l	#500,d0
	divs	-10(fp),d0
	ext.l	d0
	move.w	d0,-8(fp)
	move.l	fp,(sp)
	addi.l	#-32,(sp)
	move.w	d6,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.l	fp,(sp)
	addi.l	#-20,(sp)
	move.l	fp,-(sp)
	addi.l	#-32,(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.l	fp,(sp)
	addi.l	#-24,(sp)
	move.l	fp,-(sp)
	addi.l	#-32,(sp)
	move.w	#4,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	12(fp),d0
	cmp.w	-4(fp),d0
	ble.s	L41748
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	move.w	12(fp),-(sp)
	move.w	-10(fp),-(sp)
	jsr	L50202
	addq.l	#4,sp
	movea.l	(sp)+,a0
	move.w	d0,28(a0)
	cmp.w	-10(fp),d0
	bne.s	L41742
	move.w	#1000,-8(fp)
L41742:
	clr.w	-12(fp)
	bra.s	L41818

L41748:
	move.w	12(fp),d0
	cmp.w	-4(fp),d0
	bge.s	L41814
	move.w	12(fp),(sp)
	clr.w	-(sp)
	jsr	L50174
	addq.l	#2,sp
	move.w	d0,-(sp)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	(sp)+,28(a0)
	bne.s	L41806
	clr.w	-8(fp)
L41806:
	move.w	#2,-12(fp)
	bra.s	L41818

L41814:
	bra  	L42220

L41818:
	move.w	d6,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	move.w	#2,-(sp)
	jsr	L22670
	addq.l	#2,sp
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),d0
	cmp.w	-4(fp),d0
	beq  	L42092
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),(sp)
	move.w	-4(fp),d0
	sub.w	d0,(sp)
	jsr	L50344
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#_cell_w,a1
	muls	(a1),d0
	move.w	d0,-2(fp)
	movea.w	d7,a0
	addq.w	#2,a0
	adda.l	a0,a0
	move.w	-32(fp,a0.l),d0
	sub.w	-2(fp),d0
	ble  	L42076
	move.w	-2(fp),d0
	movea.l	fp,a1
	movea.w	d7,a2
	adda.w	-12(fp),a2
	adda.l	a2,a2
	adda.l	a2,a1
	add.w	d0,-24(a1)
	move.w	-2(fp),d0
	movea.l	fp,a1
	movea.w	d7,a2
	addq.w	#4,a2
	adda.l	a2,a2
	adda.l	a2,a1
	sub.w	d0,-24(a1)
	move.w	-14(fp),(sp)
	move.w	-16(fp),-(sp)
	move.w	-18(fp),-(sp)
	move.w	-20(fp),-(sp)
	move.w	-22(fp),-(sp)
	move.w	-24(fp),-(sp)
	move.w	#3,-(sp)
	jsr	L23836
	adda.l	#12,sp
	tst.w	-12(fp)
	bne.s	L42060
	movea.w	d7,a0
	addq.w	#2,a0
	adda.l	a0,a0
	move.w	-32(fp,a0.l),d0
	sub.w	-2(fp),d0
	movea.l	fp,a1
	movea.w	d7,a2
	adda.l	a2,a2
	adda.l	a2,a1
	add.w	d0,-32(a1)
L42060:
	movea.l	fp,a0
	movea.w	d7,a1
	addq.w	#2,a1
	adda.l	a1,a1
	adda.l	a1,a0
	move.w	-2(fp),-32(a0)
L42076:
	move.l	fp,(sp)
	addi.l	#-32,(sp)
	move.w	d6,-(sp)
	bsr  	L44174
	addq.l	#2,sp
L42092:
	tst.w	14(fp)
	beq.s	L42212
	move.l	fp,(sp)
	addi.l	#-34,(sp)
	move.l	fp,-(sp)
	addi.l	#-34,(sp)
	move.l	fp,-(sp)
	addi.l	#-34,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.w	d7,-(sp)
	addq.w	#8,(sp)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.w	-6(fp),d0
	cmp.w	-8(fp),d0
	beq.s	L42212
	move.w	-34(fp),(sp)
	move.w	-34(fp),-(sp)
	move.w	-34(fp),-(sp)
	move.w	-8(fp),-(sp)
	move.w	d7,-(sp)
	addq.w	#8,(sp)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_set
	adda.l	#10,sp
L42212:
	clr.w	(sp)
	jsr	L22670
L42220:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L42230:
	link	fp,#-6
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	10(fp),d6
	cmp.w	#3,d6
	beq  	L42560
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	addq.w	#2,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	0(a0,a1.l),d0
	cmp.w	12(fp),d0
	bge  	L42474
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	addq.w	#2,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	0(a0,a1.l),d0
	ext.l	d0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#_cell_w,a1
	divs	(a1),d0
	move.w	d0,-4(fp)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	36(a0,a1.l),(sp)
	subq.w	#1,(sp)
	move.w	-4(fp),d0
	sub.w	d0,(sp)
	move.w	#1,-(sp)
	jsr	L50174
	addq.l	#2,sp
	move.w	d0,-(sp)
	move.l	#1000,-(sp)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	L84118
	addq.l	#8,sp
	add.l	#500,d0
	divs	(sp)+,d0
	ext.l	d0
	move.w	d0,-2(fp)
	move.w	-2(fp),(sp)
	move.w	d7,-(sp)
	addq.w	#8,(sp)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_set
	addq.l	#4,sp
	bra.s	L42560

L42474:
	move.l	fp,(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#2,(sp)
	move.w	d7,-(sp)
	addq.w	#8,(sp)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.w	-2(fp),(sp)
	move.w	d6,-(sp)
	move.w	d7,-(sp)
	bsr.s	L42636
	addq.l	#4,sp
	move.w	d0,-(sp)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	(sp)+,28(a0)
L42560:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L42570:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	tst.w	8(fp)
	bne.s	L42588
	moveq	#4,d0
	bra.s	L42626

L42588:
	clr.w	d7
	bra.s	L42618

L42592:
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),d0
	cmp.w	8(fp),d0
	bne.s	L42616
	move.w	d7,d0
	bra.s	L42626

L42616:
	addq.w	#1,d7
L42618:
	cmp.w	#4,d7
	blt.s	L42592
	moveq	#-2,d0
L42626:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L42636:
	link	fp,#-4
	move.l	#1000,-(sp)
	movea.w	12(fp),a0
	move.l	a0,-(sp)
	move.w	10(fp),d0
	muls	#40,d0
	move.w	8(fp),d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	36(a0,a1.l),-(sp)
	subq.w	#1,(sp)
	move.w	10(fp),d0
	muls	#40,d0
	move.w	8(fp),d1
	addq.w	#2,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	0(a0,a1.l),d0
	ext.l	d0
	movea.w	8(fp),a1
	adda.l	a1,a1
	adda.l	#_cell_w,a1
	divs	(a1),d0
	sub.w	d0,(sp)
	move.w	#1,-(sp)
	jsr	L50174
	addq.l	#4,sp
	ext.l	d0
	move.l	d0,-(sp)
	jsr	L84118
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	L83960
	addq.l	#8,sp
	unlk	fp
	rts

L42772:
	link	fp,#-4
	move.w	8(fp),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	addq.l	#6,(sp)
	move.w	8(fp),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	addq.l	#4,(sp)
	move.w	8(fp),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	addq.l	#2,(sp)
	move.w	8(fp),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	move.w	#4,-(sp)
	movea.w	8(fp),a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.w	8(fp),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	move.l	#work_xywh,-(sp)
	jsr	L49946
	addq.l	#4,sp
	unlk	fp
	rts

L42912:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.w	d7
	bra.s	L42946

L42924:
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	#1,16(a0)
	addq.w	#1,d7
L42946:
	cmp.w	#3,d7
	ble.s	L42924
	move.l	#U99024,(sp)
	move.l	8(fp),-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	U99028,d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,U99028
	movea.l	8(fp),a0
	move.w	6(a0),(sp)
	movea.l	8(fp),a0
	move.w	4(a0),-(sp)
	movea.l	8(fp),a0
	move.w	2(a0),-(sp)
	movea.l	8(fp),a0
	move.w	(a0),-(sp)
	move.w	#4079,-(sp)
	jsr	wind_create
	addq.l	#8,sp
	move.w	d0,U92262
	move.l	#U99104,(sp)
	move.l	8(fp),-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	U99108,d0
	ext.l	d0
	divs	#2,d0
	move.w	d0,U99108
	addq.w	#1,d0
	add.w	d0,U99104
	subq.w	#1,U99108
	movea.l	8(fp),a0
	move.w	6(a0),(sp)
	movea.l	8(fp),a0
	move.w	4(a0),-(sp)
	movea.l	8(fp),a0
	move.w	2(a0),-(sp)
	movea.l	8(fp),a0
	move.w	(a0),-(sp)
	move.w	#47,-(sp)
	jsr	wind_create
	addq.l	#8,sp
	move.w	d0,U92266
	move.l	#U99064,(sp)
	move.l	8(fp),-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	U99070,d0
	ext.l	d0
	divs	#2,d0
	move.w	d0,U99070
	addq.w	#1,d0
	add.w	d0,U99066
	move.w	U99068,d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,U99068
	movea.l	8(fp),a0
	move.w	6(a0),(sp)
	movea.l	8(fp),a0
	move.w	4(a0),-(sp)
	movea.l	8(fp),a0
	move.w	2(a0),-(sp)
	movea.l	8(fp),a0
	move.w	(a0),-(sp)
	move.w	#4079,-(sp)
	jsr	wind_create
	addq.l	#8,sp
	move.w	d0,U92264
	move.l	#U99144,(sp)
	move.l	#U99064,-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	movea.l	8(fp),a0
	move.w	6(a0),(sp)
	movea.l	8(fp),a0
	move.w	4(a0),-(sp)
	movea.l	8(fp),a0
	move.w	2(a0),-(sp)
	movea.l	8(fp),a0
	move.w	(a0),-(sp)
	move.w	#239,-(sp)
	jsr	wind_create
	addq.l	#8,sp
	move.w	d0,U92268
	clr.w	d7
	bra.s	L43362

L43336:
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U92262,a0
	tst.w	(a0)
	bge.s	L43360
	move.l	#T85866,(sp)
	bsr  	alert
L43360:
	addq.w	#1,d7
L43362:
	cmp.w	#3,d7
	ble.s	L43336
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L43378:
	link	fp,#-8
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	clr.l	(sp)
	move.w	#2,-(sp)
	jsr	graf_mouse
	addq.l	#2,sp
	clr.w	(sp)
	clr.w	-(sp)
	move.l	10(fp),-(sp)
	move.w	#2,-(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_set
	adda.l	#10,sp
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	addq.l	#8,(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	-2(fp),(sp)
	move.w	-4(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	-8(fp),-(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_open
	addq.l	#8,sp
	move.w	d7,(sp)
	bsr  	L42772
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	cmpi.w	#1,16(a0)
	bne  	L43790
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	14(fp),18(a0)
	bne  	L43790
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	20(fp),20(a0)
	beq.s	L43626
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	moveq	#1,d0
	move.w	d0,34(a0)
	move.w	d7,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	d0,32(a1)
L43626:
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	clr.w	26(a0)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	moveq	#0,d0
	move.w	d0,30(a0)
	move.w	d7,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	d0,28(a1)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.l	16(fp),22(a0)
	move.w	24(fp),d0
	subq.w	#1,d0
	move.w	d7,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	d0,36(a1)
	move.w	#32,(sp)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	22(fp),d0
	move.w	d0,38(a0)
	move.w	d7,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	24(fp),d1
	move.w	d1,36(a1)
	muls	d1,d0
	move.w	d0,-(sp)
	move.l	16(fp),-(sp)
	jsr	L50304
	addq.l	#6,sp
L43790:
	move.w	d7,(sp)
	bsr  	L45052
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	clr.w	16(a0)
	clr.l	(sp)
	clr.w	-(sp)
	jsr	graf_mouse
	addq.l	#2,sp
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L43836:
	link	fp,#-12
	tst.w	U99032
	bne  	L44066
	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.w	#5,-(sp)
	move.w	U92262,-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	8(fp),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	addq.l	#8,(sp)
	jsr	L49946
	addq.l	#4,sp
	tst.w	d0
	beq  	L44066
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	#work_xywh,-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	-4(fp),d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,-4(fp)
	move.w	-2(fp),d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,-2(fp)
	move.w	-2(fp),(sp)
	move.w	-4(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	-8(fp),-(sp)
	move.w	#5,-(sp)
	move.w	U92262,-(sp)
	jsr	wind_set
	adda.l	#10,sp
	clr.w	(sp)
	bsr  	L42772
	move.w	-2(fp),d0
	addq.w	#2,d0
	add.w	d0,-6(fp)
	move.w	8(fp),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	addq.l	#8,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
L44066:
	unlk	fp
	rts

L44070:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	10(fp)
	beq.s	L44118
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#U98362,a1
	move.w	(a1),20(a0)
	bra.s	L44164

L44118:
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U98362,a0
	move.w	d7,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	20(a1),(a0)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	clr.w	20(a0)
L44164:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L44174:
	link	fp,#-8
	movem.l	d6-d7/a5,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr  	L44486
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	movea.l	10(fp),a0
	move.w	6(a0),(sp)
	movea.l	10(fp),a0
	move.w	4(a0),-(sp)
	movea.l	10(fp),a0
	move.w	2(a0),-(sp)
	movea.l	10(fp),a0
	move.w	(a0),-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	jsr	L23682
	adda.l	#12,sp
	movea.l	10(fp),a0
	move.w	4(a0),d0
	subq.w	#1,d0
	ext.l	d0
	divs	_cell_w,d0
	addq.w	#2,d0
	move.w	d0,-2(fp)
	movea.l	10(fp),a0
	move.w	(a0),d0
	movea.l	10(fp),a1
	move.w	(a1),d1
	sub.w	(a5),d1
	ext.l	d1
	divs	_cell_w,d1
	swap	d1
	sub.w	d1,d0
	move.w	d0,-4(fp)
	movea.l	10(fp),a0
	move.w	2(a0),d0
	sub.w	cell_pad,d0
	movea.l	10(fp),a1
	move.w	2(a1),d1
	sub.w	2(a5),d1
	ext.l	d1
	divs	_cell_h,d1
	swap	d1
	sub.w	d1,d0
	move.w	d0,-6(fp)
	movea.l	10(fp),a0
	move.w	2(a0),d0
	sub.w	2(a5),d0
	ext.l	d0
	divs	_cell_h,d0
	add.w	30(a5),d0
	muls	36(a5),d0
	movea.l	10(fp),a1
	move.w	(a1),d1
	sub.w	(a5),d1
	ext.l	d1
	divs	_cell_w,d1
	add.w	d1,d0
	add.w	28(a5),d0
	move.w	d0,-8(fp)
	movea.l	10(fp),a0
	move.w	2(a0),(sp)
	movea.l	10(fp),a0
	move.w	6(a0),d0
	add.w	d0,(sp)
	move.w	-6(fp),-(sp)
	move.w	-4(fp),-(sp)
	move.w	-2(fp),-(sp)
	move.w	_cell_h,-(sp)
	move.w	36(a5),-(sp)
	move.l	22(a5),d0
	move.w	-8(fp),d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,-(sp)
	jsr	L24012
	adda.l	#14,sp
	move.w	d7,(sp)
	bsr.s	L44486
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L44486:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	move.w	8(fp),d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	tst.w	20(a5)
	beq.s	L44598
	move.w	_cell_h,(sp)
	move.w	_cell_w,-(sp)
	move.w	34(a5),d0
	sub.w	30(a5),d0
	subq.w	#1,d0
	muls	_cell_h,d0
	move.w	d0,-(sp)
	move.w	2(a5),d0
	add.w	d0,(sp)
	move.w	32(a5),d0
	sub.w	28(a5),d0
	subq.w	#1,d0
	muls	_cell_w,d0
	move.w	d0,-(sp)
	move.w	(a5),d0
	add.w	d0,(sp)
	move.w	#2,-(sp)
	move.w	#1,-(sp)
	move.w	#3,-(sp)
	jsr	L23682
	adda.l	#12,sp
L44598:
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L44608:
	link	fp,#-4
	clr.w	U92244
	clr.w	d0
	move.w	d0,U92240
	move.w	d0,U92242
	unlk	fp
	rts

L44636:
	link	fp,#-4
	bra.s	L44654

L44642:
	move.w	U101462,(sp)
	bsr.s	L44710
	bsr  	L46108
L44654:
	move.w	U101462,d0
	cmp.w	U100904,d0
	bne.s	L44642
	move.w	U101462,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	18(a0)
	bne.s	L44700
	jsr	L22368
	bra.s	L44706

L44700:
	jsr	L22560
L44706:
	unlk	fp
	rts

L44710:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	bsr  	_L45356
	move.w	d7,d0
	move.w	d0,U100904
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	16(a0)
	bne.s	L44804
	clr.w	(sp)
	move.w	#10,-(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(sp)
	jsr	wind_set
	addq.l	#4,sp
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	jsr	L22840
	bra  	L45042

L44804:
	move.w	d7,d0
	bra  	L45016

L44810:
	move.w	#80,(sp)
	move.w	#25,-(sp)
	move.w	#1,-(sp)
	move.l	#U92270,-(sp)
	clr.w	-(sp)
	move.l	#T85908,-(sp)
	clr.w	-(sp)
	bsr  	L43378
	adda.l	#16,sp
	clr.w	(sp)
	move.w	#8,-(sp)
	move.w	U92262,-(sp)
	jsr	wind_set
	addq.l	#4,sp
	clr.w	(sp)
	move.w	#9,-(sp)
	move.w	U92262,-(sp)
	jsr	wind_set
	addq.l	#4,sp
	bra  	L45042

L44892:
	move.w	#3,(sp)
	bsr  	L43836
	move.w	#80,(sp)
	move.w	#25,-(sp)
	move.w	#1,-(sp)
	move.l	#U94270,-(sp)
	clr.w	-(sp)
	move.l	#T85922,-(sp)
	move.w	#3,-(sp)
	bsr  	L43378
	adda.l	#16,sp
	bra.s	L45042

L44942:
	move.w	#1,(sp)
	move.l	#T85934,-(sp)
	move.w	#2,-(sp)
	bsr  	L43378
	addq.l	#6,sp
	bra.s	L45042

L44964:
	move.w	#1,(sp)
	bsr  	L43836
	move.w	#80,(sp)
	move.w	#25,-(sp)
	move.w	#1,-(sp)
	move.l	#U96270,-(sp)
	clr.w	-(sp)
	move.l	#T85951,-(sp)
	move.w	#1,-(sp)
	bsr  	L43378
	adda.l	#16,sp
	bra.s	L45042

	bra.s	L45042

L45016:
	tst.w	d0
	beq  	L44810
	cmp.w	#1,d0
	beq.s	L44964
	cmp.w	#2,d0
	beq.s	L44942
	cmp.w	#3,d0
	beq  	L44892
L45042:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L45052:
	link	fp,#-4
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,d0
	bra.s	L45142

L45068:
	move.w	#24,-2(fp)
	move.w	#79,-4(fp)
	bra.s	L45164

L45082:
	move.w	d7,(sp)
	bsr  	L45442
	move.w	d0,-2(fp)
	move.w	d7,(sp)
	bsr  	L45492
	move.w	d0,-4(fp)
	bra.s	L45164

L45104:
	move.w	#24,-2(fp)
	move.w	#79,-4(fp)
	bra.s	L45164

L45118:
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	jsr	L22392
	bra.s	L45164

	bra.s	L45164

L45142:
	tst.w	d0
	beq.s	L45068
	cmp.w	#1,d0
	beq.s	L45104
	cmp.w	#2,d0
	beq.s	L45118
	cmp.w	#3,d0
	beq.s	L45082
L45164:
	cmp.w	#2,d7
	beq.s	L45206
	move.w	-2(fp),(sp)
	move.w	-4(fp),-(sp)
	move.w	d7,-(sp)
	bsr  	L45386
	addq.l	#2,sp
	move.w	d0,-(sp)
	move.w	d7,-(sp)
	bsr  	L45414
	addq.l	#2,sp
	move.w	d0,-(sp)
	jsr	L22588
	addq.l	#6,sp
L45206:
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	jsr	L22840
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L45236:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.l	10(fp),(sp)
	jsr	L22840
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	18(a0)
	bne.s	.L45292
	move.l	10(fp),(sp)
	move.w	d7,-(sp)
	bsr  	L44174
	addq.l	#2,sp
	bra.s	.L45322
.L45292:
	move.l	10(fp),(sp)
	jsr	L28066
	move.w	U99098,(sp)
	move.w	U99096,-(sp)
	jsr	L24504
	addq.l	#2,sp
.L45322:
	move.w	U101462,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(sp)
	jsr	L22840
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

	xdef _L45356
_L45356:
	link	fp,#-4
	cmpi.w	#2,U100904
	bne.s	L45382
	move.l	#U99096,(sp)
	jsr	L24328
L45382:
	unlk	fp
	rts

L45386:
	link	fp,#-4
	move.w	8(fp),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	34(a0,a1.l),d0
	unlk	fp
	rts

L45414:
	link	fp,#-4
	move.w	8(fp),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	32(a0,a1.l),d0
	unlk	fp
	rts

L45442:
	link	fp,#-4
	move.w	8(fp),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	6(a0,a1.l),d0
	ext.l	d0
	divs	_cell_h,d0
	move.w	d0,(sp)
	move.w	#1,-(sp)
	jsr	L50174
	addq.l	#2,sp
	unlk	fp
	rts

L45492:
	link	fp,#-4
	move.w	8(fp),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	4(a0,a1.l),d0
	ext.l	d0
	divs	_cell_w,d0
	move.w	d0,(sp)
	move.w	#2,-(sp)
	jsr	L50174
	addq.l	#2,sp
	unlk	fp
	rts

L45542:
	link	fp,#-20
	move.w	#27,-16(fp)
	move.w	U92266,-10(fp)
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	8(fp),-(sp)
	move.w	#47,-(sp)
	clr.w	-(sp)
	jsr	wind_calc
	addq.l	#8,sp
	move.l	fp,(sp)
	addi.l	#-16,(sp)
	bsr  	L37878
	bsr  	L46108
	unlk	fp
	rts

L45602:
	link	fp,#-6
	movem.l	d7/a5,-(sp)
	movea.l	12(fp),a5
	move.w	8(fp),d0
	sub.w	28(a5),d0
	move.w	d0,-4(fp)
	move.w	10(fp),d0
	sub.w	30(a5),d0
	move.w	d0,-6(fp)
	clr.w	(sp)
	move.w	U100904,-(sp)
	bsr  	L44070
	addq.l	#2,sp
	move.w	U100904,(sp)
	bsr  	L45492
	move.w	d0,-2(fp)
	cmp.w	-4(fp),d0
	blt.s	L45678
	tst.w	-4(fp)
	bgt.s	L45712
L45678:
	move.w	#1,(sp)
	move.w	8(fp),-(sp)
	move.w	-2(fp),d0
	ext.l	d0
	divs	#2,d0
	sub.w	d0,(sp)
	move.w	U100904,-(sp)
	clr.w	-(sp)
	bsr  	L41410
	addq.l	#6,sp
L45712:
	move.w	U100904,(sp)
	bsr  	L45442
	move.w	d0,-2(fp)
	cmp.w	-6(fp),d0
	blt.s	L45738
	tst.w	-6(fp)
	bgt.s	L45774
L45738:
	move.w	#1,(sp)
	move.w	10(fp),-(sp)
	move.w	-2(fp),d0
	ext.l	d0
	divs	#2,d0
	sub.w	d0,(sp)
	move.w	U100904,-(sp)
	move.w	#1,-(sp)
	bsr  	L41410
	addq.l	#6,sp
L45774:
	move.w	#1,(sp)
	move.w	U100904,-(sp)
	bsr  	L44070
	addq.l	#2,sp
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L45800:
	link	fp,#0
	movem.l	d5-d7/a5,-(sp)
	move.w	10(fp),d7
	move.w	12(fp),d6
	bsr  	L44636
	move.w	U100904,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	move.w	U100904,(sp)
	bsr  	L44486
	addq.w	#1,32(a5)
	movea.w	d7,a0
	move.w	d6,d1
	subq.w	#1,d1
	muls	36(a5),d1
	adda.w	d1,a0
	adda.l	22(a5),a0
	move.b	9(fp),-1(a0)
	tst.w	26(a5)
	beq.s	L45924
	cmp.w	U98280,d6
	bge.s	L45894
	move.w	d6,U98280
L45894:
	cmp.w	U98282,d6
	ble.s	L45908
	move.w	d6,U98282
L45908:
	cmp.w	U98284,d7
	bge.s	L45922
	move.w	d7,U98284
L45922:
	bra.s	L46004

L45924:
	move.w	d6,d0
	sub.w	30(a5),d0
	subq.w	#1,d0
	muls	_cell_h,d0
	move.w	d0,(sp)
	move.w	2(a5),d0
	add.w	d0,(sp)
	move.w	d7,d0
	sub.w	28(a5),d0
	subq.w	#1,d0
	muls	_cell_w,d0
	move.w	d0,-(sp)
	move.w	(a5),d0
	add.w	d0,(sp)
	move.b	9(fp),d0
	ext.w	d0
	move.w	d0,-(sp)
	jsr	vdi_putchar
	addq.l	#4,sp
	move.l	a5,(sp)
	move.w	d6,-(sp)
	move.w	d7,-(sp)
	bsr  	L45602
	addq.l	#4,sp
	move.w	U100904,(sp)
	bsr  	L44486
L46004:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7/a5
	unlk	fp
	rts

L46014:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	bsr  	L44636
	move.w	U100904,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	move.w	U100904,(sp)
	bsr  	L44486
	tst.w	26(a5)
	bne.s	L46076
	move.l	a5,(sp)
	move.w	10(fp),-(sp)
	move.w	8(fp),-(sp)
	bsr  	L45602
	addq.l	#4,sp
L46076:
	move.w	8(fp),32(a5)
	move.w	10(fp),34(a5)
	move.w	U100904,(sp)
	bsr  	L44486
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L46108:
	link	fp,#-12
	movem.l	d5-d7/a5,-(sp)
	move.w	U100904,d6
	lea 	-12(fp),a5
.L46126:
	tst.w	draw_lock_flag
	beq.s	.L46150
	bsr  	wind_update_begin
	bsr  	wind_update_end
	bsr  	wind_update_begin
	bsr  	wind_update_end
.L46150:
	tst.w	draw_lock_flag
	beq.s	.L46162
	clr.w	d0
	bra.s	.L46164
.L46162:
	moveq	#2,d0
.L46164:
	or.w	#49,d0
	move.w	d0,-2(fp)
	move.l	a5,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	a5,-(sp)
	move.l	a5,-(sp)
	move.l	a5,-(sp)
	move.l	a5,-(sp)
	clr.w	-(sp)
	cmp.w	#-2,d6
	bne.s	.L46200
	move.w	#40,-(sp)
	bra.s	.L46202
.L46200:
	clr.w	-(sp)
.L46202:
	move.l	U101480,-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	move.w	#1,-(sp)
	move.w	-2(fp),-(sp)
	jsr	evnt_multi
	adda.l	#56,sp
	move.w	d0,d7
	move.l	a5,(sp)
	move.l	a5,-(sp)
	move.l	a5,-(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.w	#10,-(sp)
	clr.w	-(sp)
	jsr	wind_get
	adda.l	#16,sp
	move.w	-6(fp),(sp)
	bsr  	L42570
	move.w	d0,d6
	move.l	a5,(sp)
	move.l	a5,-(sp)
	move.l	fp,-(sp)
	addi.l	#-10,(sp)
	move.l	fp,-(sp)
	subq.l	#8,(sp)
	jsr	graf_mkstate
	adda.l	#12,sp
	move.w	-8(fp),d0
	cmp.w	mouse_x,d0
	bne.s	.L46352
	move.w	-10(fp),d0
	cmp.w	mouse_y,d0
	beq.s	.L46374
.L46352:
	move.w	-8(fp),mouse_x
	move.w	-10(fp),mouse_y
	bsr  	_mouse_show
	bra.s	.L46388
.L46374:
	move.w	d7,d0
	and.w	#-33,d0
	bne.s	.L46388
	cmp.w	#-2,d6
	bne.s	.L46432
.L46388:
	btst	#0,d7
	beq.s	.L46412
	jsr	L28370
	cmp.w	-4(fp),d0
	beq.s	.L46412
	move.w	-4(fp),(sp)
	bsr.s	L46448
.L46412:
	btst	#4,d7
	beq.s	.L46428
	move.l	#U99820,(sp)
	bsr  	L37878
.L46428:
	bra  	.L46126
.L46432:
	move.w	U92244,d0
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7/a5
	unlk	fp
	rts

L46448:
	link	fp,#-6
	move.w	#1,-2(fp)
	cmpi.w	#-1,U92244
	beq.s	L46526
	jsr	L28386
	move.w	8(fp),d1
	ext.w	d1
	cmp.w	d1,d0
	beq.s	L46516
	jsr	L28354
	move.w	8(fp),d1
	ext.w	d1
	cmp.w	d1,d0
	beq.s	L46516
	jsr	L28370
	move.w	8(fp),d1
	ext.w	d1
	cmp.w	d1,d0
	bne.s	L46526
L46516:
	bsr  	L44608
	move.w	#-1,-2(fp)
L46526:
	move.w	U92240,d0
	cmp.w	U92242,d0
	bne.s	L46548
	tst.w	U92244
	bne.s	L46616
L46548:
	movea.w	U92240,a0
	adda.l	#U92240,a0
	move.l	a0,-(sp)
	move.w	8(fp),-(sp)
	bsr  	L39290
	addq.l	#2,sp
	movea.l	(sp)+,a0
	move.b	d0,6(a0)
	addq.w	#1,U92240
	move.w	U92240,d0
	ext.l	d0
	divs	#16,d0
	swap	d0
	move.w	d0,U92240
	clr.w	d0
	move.w	-2(fp),d0
	or.w	d0,U92244
L46616:
	unlk	fp
	rts

L46620:
	link	fp,#-6
L46624:
	bsr  	L46108
	tst.w	d0
	beq.s	L46698
	movea.w	U92242,a0
	adda.l	#U92240,a0
	move.b	6(a0),-2(fp)
	addq.w	#1,U92242
	move.w	U92242,d0
	ext.l	d0
	divs	#16,d0
	swap	d0
	move.w	d0,U92242
	cmp.w	U92240,d0
	bne.s	L46688
	clr.w	d0
	bra.s	L46690

L46688:
	moveq	#1,d0
L46690:
	move.w	d0,U92244
	bra.s	L46700

L46698:
	bra.s	L46624

L46700:
	move.b	-2(fp),d0
	ext.w	d0
	and.w	#255,d0
	unlk	fp
	rts

L46714:
	link	fp,#-10
	movem.l	d7/a5,-(sp)
	bsr  	L44636
	move.w	U100904,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	tst.w	26(a5)
	beq.s	L46776
	move.w	26(a5),-10(fp)
	move.w	#2,(sp)
	bsr  	L47436
	clr.w	(sp)
	bsr  	L47436
	move.w	-10(fp),26(a5)
L46776:
	move.w	U100904,(sp)
	bsr  	L44486
	move.l	22(a5),(sp)
	move.l	22(a5),d0
	move.w	36(a5),d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,-(sp)
	move.w	38(a5),d0
	subq.w	#1,d0
	muls	36(a5),d0
	move.w	d0,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	#32,(sp)
	move.w	36(a5),-(sp)
	move.w	38(a5),d0
	subq.w	#1,d0
	muls	36(a5),d0
	ext.l	d0
	add.l	22(a5),d0
	move.l	d0,-(sp)
	jsr	L50304
	addq.l	#6,sp
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	a5,-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	-2(fp),(sp)
	move.w	_cell_h,d0
	sub.w	d0,(sp)
	move.w	-4(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	-8(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	_cell_h,d0
	add.w	d0,(sp)
	move.w	-8(fp),-(sp)
	move.w	#3,-(sp)
	jsr	L23836
	adda.l	#12,sp
	move.w	_cell_h,(sp)
	move.w	-4(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	-2(fp),d0
	add.w	d0,(sp)
	move.w	_cell_h,d0
	sub.w	d0,(sp)
	move.w	-8(fp),-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	jsr	L23682
	adda.l	#12,sp
	move.w	U100904,(sp)
	bsr  	L44486
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L47004:
	link	fp,#-16
	bsr  	L44636
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-12(fp)
	move.w	U100904,(sp)
	bsr  	L44486
	movea.l	-12(fp),a0
	move.l	22(a0),d0
	movea.l	-12(fp),a1
	move.w	36(a1),d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,(sp)
	movea.l	-12(fp),a0
	move.l	22(a0),-(sp)
	move.w	U100904,-(sp)
	bsr  	L45442
	addq.l	#2,sp
	subq.w	#1,d0
	movea.l	-12(fp),a1
	muls	36(a1),d0
	move.w	d0,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	#32,(sp)
	movea.l	-12(fp),a0
	move.w	36(a0),-(sp)
	movea.l	-12(fp),a0
	move.l	22(a0),-(sp)
	jsr	L50304
	addq.l	#6,sp
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	-12(fp),-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	-2(fp),d0
	ext.l	d0
	divs	_cell_h,d0
	swap	d0
	sub.w	d0,-2(fp)
	move.w	-2(fp),(sp)
	move.w	_cell_h,d0
	sub.w	d0,(sp)
	move.w	-4(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	_cell_h,d0
	add.w	d0,(sp)
	move.w	-8(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	-8(fp),-(sp)
	move.w	#3,-(sp)
	jsr	L23836
	adda.l	#12,sp
	move.w	_cell_h,(sp)
	move.w	-4(fp),-(sp)
	move.w	-6(fp),-(sp)
	move.w	-8(fp),-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	jsr	L23682
	adda.l	#12,sp
	move.w	U100904,(sp)
	bsr  	L44486
	unlk	fp
	rts

L47278:
	link	fp,#-8
	move.w	U101462,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-4(fp)
	movea.l	-4(fp),a0
	tst.w	18(a0)
	bne.s	L47368
	movea.l	-4(fp),a0
	moveq	#1,d0
	move.w	d0,34(a0)
	movea.l	-4(fp),a1
	move.w	d0,32(a1)
	move.w	#32,(sp)
	movea.l	-4(fp),a0
	move.w	36(a0),d0
	movea.l	-4(fp),a1
	muls	38(a1),d0
	move.w	d0,-(sp)
	movea.l	-4(fp),a0
	move.l	22(a0),-(sp)
	jsr	L50304
	addq.l	#6,sp
L47368:
	bsr  	L44636
	movea.l	-4(fp),a0
	move.w	6(a0),(sp)
	movea.l	-4(fp),a0
	move.w	4(a0),-(sp)
	movea.l	-4(fp),a0
	move.w	2(a0),-(sp)
	movea.l	-4(fp),a0
	move.w	(a0),-(sp)
	clr.w	-(sp)
	clr.w	-(sp)
	move.w	#1,-(sp)
	jsr	L23682
	adda.l	#12,sp
	move.w	U100904,(sp)
	bsr  	L44486
	unlk	fp
	rts

L47436:
	link	fp,#-14
	bsr  	L44636
	move.w	8(fp),d0
	bra  	L47914

L47452:
	move.w	U100904,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	26(a0,a1.l),d0
	move.w	U100904,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	addq.w	#1,26(a1)
	tst.w	d0
	bne.s	L47584
	move.w	#-1,U98282
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	34(a0),U98280
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	32(a0),U98284
	move.w	U100904,(sp)
	bsr  	L44486
	clr.w	(sp)
	move.w	U100904,-(sp)
	bsr  	L44070
	addq.l	#2,sp
L47584:
	bra  	L47936

L47588:
	move.w	U100904,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	tst.w	26(a0,a1.l)
	beq  	L47936
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	#1,26(a0)
L47638:
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	26(a0)
	ble  	L47936
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	subq.w	#1,26(a0)
	bne  	L47910
	cmpi.w	#-1,U98282
	beq  	L47884
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	U100904,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(sp)
	move.w	#8,-(sp)
	jsr	memmove
	addq.l	#6,sp
	move.w	U98280,d0
	move.w	U100904,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	30(a1),d1
	sub.w	d1,d0
	subq.w	#1,d0
	muls	_cell_h,d0
	add.w	d0,-6(fp)
	move.w	U98282,d0
	sub.w	U98280,d0
	addq.w	#1,d0
	muls	_cell_h,d0
	move.w	d0,-2(fp)
	cmp.w	_cell_h,d0
	bne.s	L47868
	move.w	U98284,d0
	move.w	U100904,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	28(a1),d1
	sub.w	d1,d0
	subq.w	#1,d0
	muls	_cell_w,d0
	move.w	d0,-10(fp)
	move.w	-10(fp),d0
	add.w	d0,-8(fp)
	move.w	-10(fp),d0
	sub.w	d0,-4(fp)
L47868:
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.w	U100904,-(sp)
	bsr  	L44174
	addq.l	#2,sp
L47884:
	move.w	#1,(sp)
	move.w	U100904,-(sp)
	bsr  	L44070
	addq.l	#2,sp
	move.w	U100904,(sp)
	bsr  	L44486
L47910:
	bra.s	L47936

	bra.s	L47936

L47914:
	tst.w	d0
	beq  	L47452
	cmp.w	#1,d0
	beq  	L47638
	cmp.w	#2,d0
	beq  	L47588
L47936:
	unlk	fp
	rts

L47940:
	clr.w	d0
	move.w	d0,U101462
	move.w	d0,-(sp)
	bsr  	L45052
	addq	#2,sp
	rts

L47962:
	link	fp,#-4
	tst.w	U98286
	beq.s	L47990
	tst.w	U99152
	bne.s	L47990
	move.w	#3,(sp)
	bsr  	L37732
L47990:
	unlk	fp
	rts

L47994:
	link	fp,#-4
	tst.w	U98288
	beq.s	L48022
	tst.w	U99072
	bne.s	L48022
	move.w	#1,(sp)
	bsr  	L37732
L48022:
	unlk	fp
	rts

L48026:
	link	fp,#-4
	moveq	#3,d0
	move.w	d0,U101462
	move.w	d0,(sp)
	bsr  	L45052
	unlk	fp
	rts

L48048:
	link	fp,#-4
	moveq	#1,d0
	move.w	d0,U101462
	move.w	d0,(sp)
	bsr  	L45052
	move.w	#2,(sp)
	bsr  	L47436
	clr.w	(sp)
	bsr  	L47436
	unlk	fp
	rts

L48084:
	link	fp,#-4
	tst.w	U98292
	bne.s	L48106
	bsr.s	L48048
	bsr  	L47278
	bsr  	L47940
L48106:
	move.w	#1,(sp)
	cmpi.w	#1,8(fp)
	bne.s	L48124
	move.w	#58,-(sp)
	bra.s	L48128

L48124:
	move.w	#59,-(sp)
L48128:
	move.l	U92190,-(sp)
	jsr	menu_icheck
	addq.l	#6,sp
	move.w	8(fp),d0
	or.w	d0,U98292
	unlk	fp
	rts

L48156:
	link	fp,#-4
	move.w	U98292,d0
	and.w	8(fp),d0
	beq.s	L48206
	clr.w	(sp)
	cmpi.w	#1,8(fp)
	bne.s	L48188
	move.w	#58,-(sp)
	bra.s	L48192

L48188:
	move.w	#59,-(sp)
L48192:
	move.l	U92190,-(sp)
	jsr	menu_icheck
	addq.l	#6,sp
L48206:
	move.w	8(fp),d0
	not.w	d0
	and.w	d0,U98292
	tst.w	U98292
	bne.s	L48230
	bsr  	L47994
L48230:
	unlk	fp
	rts

L48234:
	moveq	#2,d0
	move.w	d0,U101462
	move.w	d0,-(sp)
	bsr  	L45052
	bsr  	L44636
	addq	#2,sp
	rts

	xdef _mouse_hide
_mouse_hide:
	link	fp,#-6
	tst.w	draw_lock_flag
	beq.s	.return

	bsr.s	wind_update_begin

	clr.l	(sp)
	move.w	#256,-(sp)	; M_OFF
	jsr	graf_mouse	; hide mouse
	addq.l	#2,sp

	clr.w	draw_lock_flag

	move.l	fp,(sp)
	subq.l	#2,(sp)
	move.l	fp,-(sp)
	subq.l	#2,(sp)
	move.l	#mouse_y,-(sp)
	move.l	#mouse_x,-(sp)
	jsr	graf_mkstate
	adda.l	#12,sp
.return:
	unlk	fp
	rts

	xdef _mouse_show
_mouse_show:
	link	fp,#-4
	tst.w	draw_lock_flag
	bne.s	.return

	bsr  	_L45356

	clr.l	(sp)
	move.w	#257,-(sp)	; M_ON
	jsr	graf_mouse	; show mouse
	addq.l	#2,sp

	move.w	#1,draw_lock_flag
	bsr.s	wind_update_end
.return:
	unlk	fp
	rts

wind_update_begin:
	link	fp,#-4
	move.w	#1,(sp)		; BEG_UPDATE
	jsr	wind_update
	unlk	fp
	rts

wind_update_end:
	link	fp,#-4
	clr.w	(sp)		; END_UPDATE
	jsr	wind_update
	unlk	fp
	rts

L48408:
	link	fp,#-4
	clr.w	d0
	move.w	d0,U98290
	move.w	d0,(sp)
	move.w	#27,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	unlk	fp
	rts

L48444:
	link	fp,#-4
	moveq	#1,d0
	move.w	d0,U98290
	move.w	d0,(sp)
	move.w	#27,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	unlk	fp
	rts

L48480:
	link	fp,#-4
	move.w	#1,(sp)
	bsr.s	L48506
	unlk	fp
	rts

L48494:
	link	fp,#-4
	clr.w	(sp)
	bsr.s	L48506
	unlk	fp
	rts

L48506:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	moveq	#19,d7
	bra.s	L48546

L48518:
	move.w	8(fp),d0
	moveq	#1,d1
	eor.w	d1,d0
	move.w	d0,(sp)
	move.w	d7,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	addq.w	#1,d7
L48546:
	cmp.w	#36,d7
	blt.s	L48518
	bra.s	L48576

L48554:
	move.w	8(fp),(sp)
	move.w	d7,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	addq.w	#1,d7
L48576:
	cmp.w	#48,d7
	ble.s	L48554
	moveq	#53,d7
	bra.s	L48614

L48586:
	move.w	8(fp),d0
	moveq	#1,d1
	eor.w	d1,d0
	move.w	d0,(sp)
	move.w	d7,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	addq.w	#1,d7
L48614:
	cmp.w	#61,d7
	blt.s	L48586
	clr.w	(sp)
	move.w	#22,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	clr.w	(sp)
	move.w	#25,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	clr.w	(sp)
	move.w	#56,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	clr.w	(sp)
	move.w	#38,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	clr.w	(sp)
	move.w	#43,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	tst.w	8(fp)
	bne.s	L48742
	tst.w	U98290
	bne.s	L48738
	bsr  	L48408
L48738:
	bsr  	L49460
L48742:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

init:
	link	fp,#-16
	move.w	#16,(sp)	; mode
	move.w	#11,-(sp)	; Kbshift
	trap	#13		; BIOS
	addq.l	#2,sp
	move.w	d0,U101192
	move.w	#1,draw_lock_flag
	jsr	appl_init
	tst.w	d0
	beq.s	.error
	move.l	fp,(sp)
	subq.l	#8,(sp)
	move.l	fp,-(sp)
	subq.l	#6,(sp)
	move.l	fp,-(sp)
	subq.l	#4,(sp)
	move.l	fp,-(sp)
	subq.l	#2,(sp)
	jsr	graf_handle
	adda.l	#12,sp
	move.w	d0,(sp)
	jsr	L27114
	tst.w	d0
	bne.s	.no_err

.error:	move.l	#init_err,(sp)
	bsr  	alert

.no_err:
	move.w	_cell_h,d0
	sub.w	char_h,d0
	move.w	d0,cell_pad

	; get working area of desktop window
	; (everything but the menu bar)
	move.l	#_work_h,(sp)
	move.l	#_work_w,-(sp)
	move.l	#work_y,-(sp)
	move.l	#work_x,-(sp)
	move.w	#4,-(sp)	; WF_WORKXYWH
	clr.w	-(sp)		; desktop window
	jsr	wind_get
	adda.l	#16,sp

	move.l	#U99820,U101480

	clr.l	(sp)
	clr.w	-(sp)
	jsr	graf_mouse
	addq.l	#2,sp

	move.l	#T85962,(sp)
	jsr	rsrc_load
	tst.w	d0
	bne.s	.L48982

	move.l	#rsrc_err,(sp)
	bsr  	alert

.L48982:
	jsr	_dialog_init
	; set up banners
	move.w	#5,(sp)
	jsr  	_rsrc_gaddr_tree
	move.l	d0,U92214
	move.w	#6,(sp)
	jsr  	_rsrc_gaddr_tree
	move.l	d0,U92218
	move.w	#7,(sp)
	jsr  	_rsrc_gaddr_tree
	move.l	d0,U92222

	move.l	#work_xywh,(sp)
	bsr  	L42912

	move.w	#-2,U101462
	move.w	#-1,U100904

	jsr	get_free_mem
	cmp.l	#$DFFF,d0
	ble.s	.not_enough_mem

	; "A good area to place assembly language programs is right after the
	; screen buffer. This location can be calculated by adding 27,000 to
	; the location of the screen buffer given in SYSFACTS. There are about
	; 5,700 free bytes at this location." -- ST Logo Addendum

	; screen buffer was originally fixed at 32256 bytes,
	; leaving 5256 bytes for asm programs

	; this obviously breaks on extended resolutions
	; so we do not currently implement this, oh well...

	; figure out how much screen buffer we need
	clr.l	d1
	move.w	nplanes,d1
	mulu.w	_work_h,d1
	mulu.w	_work_w,d1
	lsr.l	#3,d1	; in bytes

	move.l	d1,(sp)	; Allocate graphics buffer
	jsr	Malloc

	move.l	d0,grph_buffer
	move.w	#1,U92232
	bra	.L49232

.not_enough_mem:
	jsr	L21006
	tst.w	d0
	beq.s	.L49224
	moveq	#2,d0
	bra.s	.L49226

.L49224:
	clr.w	d0
.L49226:
	move.w	d0,U92232
.L49232:
	cmpi.w	#1,U92232
	bne.s	.L49246
	moveq	#1,d0
	bra.s	.L49248

.L49246:
	clr.w	d0
.L49248:
	move.w	d0,U92234
	move.l	grph_buffer,(sp)
	move.w	U92234,d0
	muls	U92232,d0
	move.w	d0,-(sp)
	jsr	L24290
	addq.l	#2,sp
	move.w	#1,U98286
	move.w	#1,U98288
	clr.w	U98292
	bsr  	L44608
	clr.l	(sp)
	move.w	#32,-(sp)	; Super
	jsr	gemdos
	addq.l	#2,sp
	move.l	d0,U91942
	jsr	L236
	movea.l	U91932,a0
	addq.l	#6,a0
	move.l	(a0),U91936
	move.l	U91942,(sp)
	move.w	#32,-(sp)	; Super
	jsr	gemdos
	addq.l	#2,sp
	unlk	fp
	rts

L49370:
	link	fp,#-4
	clr.w	(sp)
	jsr  	_rsrc_gaddr_tree
	move.l	d0,U92190
	move.w	#1,(sp)
	move.l	U92190,-(sp)
	jsr	menu_bar
	addq.l	#4,sp
	move.w	U92234,(sp)
	bsr.s	L49422
	bsr  	L48408
	bsr.s	L49460
	unlk	fp
	rts

L49422:
	link	fp,#-4
	move.w	8(fp),d0
	move.w	d0,U92234
	move.w	d0,(sp)
	move.w	#57,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_icheck
	addq.l	#6,sp
	unlk	fp
	rts

L49460:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L21006
	tst.w	d0
	bne.s	.L49556
	moveq	#19,d7
	bra.s	.L49502

.L49482:
	clr.w	(sp)
	move.w	d7,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	addq.w	#1,d7
.L49502:
	cmp.w	#26,d7
	blt.s	.L49482
	clr.w	(sp)
	move.w	#35,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
	tst.w	U92232
	bne.s	.L49556
	clr.w	(sp)
	move.w	#57,-(sp)
	move.l	U92190,-(sp)
	jsr	menu_ienable
	addq.l	#6,sp
.L49556:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

alert:
	link	fp,#-4
	bsr  	_mouse_show
	move.l	8(fp),(sp)
	move.w	#1,-(sp)
	jsr	form_alert
	addq.l	#2,sp
	bsr	L49596
	unlk	fp
	rts

L49596:
	link	fp,#-4
	jsr	L290
	move.w	U101192,(sp)	; mode
	move.w	#11,-(sp)	; Kbshift
	trap	#13		; BIOS
	addq.l	#2,sp
	jsr	v_clsvwk
	jsr	appl_exit
	clr.l	(sp)
	clr.w	-(sp)	; Pterm0
	jsr	gemdos
	addq.l	#2,sp
	unlk	fp
	rts

L49652:
	link	fp,#-4
	bsr  	_mouse_show
	jsr	L69360
	tst.w	d0
	beq.s	L49672
	bsr.s	L49596
L49672:
	unlk	fp
	rts

L49676:
	link	fp,#-4
	unlk	fp
	rts

L49684:
	link	fp,#-4
	move.w	#7,(sp)
	move.w	#6,-(sp)	; Crawio
	jsr	gemdos
	addq.l	#2,sp
	unlk	fp
	rts

L49708:
	link	fp,#-4
	clr.l	(sp)
	move.w	#17,-(sp)	; Cprnos
	jsr	gemdos
	addq.l	#2,sp
	unlk	fp
	rts

L49730:
	link	fp,#-4
	move.b	9(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	andi.w	#255,(sp)
	jsr	Cprnout
	unlk	fp
	rts

L49856:
	link	fp,#-4
	movea.l	8(fp),a0
	move.w	(a0),d0
	movea.l	12(fp),a1
	move.w	(a1),d1
	cmp.w	d1,d0
	bne.s	L49936
	movea.l	8(fp),a0
	move.w	2(a0),d0
	movea.l	12(fp),a1
	move.w	2(a1),d1
	cmp.w	d1,d0
	bne.s	L49936
	movea.l	8(fp),a0
	move.w	4(a0),d0
	movea.l	12(fp),a1
	move.w	4(a1),d1
	cmp.w	d1,d0
	bne.s	L49936
	movea.l	8(fp),a0
	move.w	6(a0),d0
	movea.l	12(fp),a1
	move.w	6(a1),d1
	cmp.w	d1,d0
	beq.s	L49940
L49936:
	clr.w	d0
	bra.s	L49942

L49940:
	moveq	#1,d0
L49942:
	unlk	fp
	rts

L49946:
	link	fp,#-4
	move.l	12(fp),(sp)
	addq.l	#6,(sp)
	move.l	12(fp),-(sp)
	addq.l	#4,(sp)
	move.l	12(fp),-(sp)
	addq.l	#2,(sp)
	move.l	12(fp),-(sp)
	movea.l	8(fp),a0
	move.w	6(a0),-(sp)
	movea.l	8(fp),a0
	move.w	4(a0),-(sp)
	movea.l	8(fp),a0
	move.w	2(a0),-(sp)
	movea.l	8(fp),a0
	move.w	(a0),-(sp)
	bsr.s	L50014
	adda.l	#20,sp
	unlk	fp
	rts

L50014:
	link	fp,#0
	movem.l	d3-d7,-(sp)
	movea.l	16(fp),a0
	move.w	(a0),(sp)
	movea.l	24(fp),a0
	move.w	(a0),d0
	add.w	d0,(sp)
	move.w	8(fp),-(sp)
	move.w	12(fp),d0
	add.w	d0,(sp)
	bsr  	L50202
	addq.l	#2,sp
	move.w	d0,d5
	movea.l	20(fp),a0
	move.w	(a0),(sp)
	movea.l	28(fp),a0
	move.w	(a0),d0
	add.w	d0,(sp)
	move.w	10(fp),-(sp)
	move.w	14(fp),d0
	add.w	d0,(sp)
	bsr  	L50202
	addq.l	#2,sp
	move.w	d0,d4
	move.w	8(fp),(sp)
	movea.l	16(fp),a0
	move.w	(a0),-(sp)
	bsr.s	L50174
	addq.l	#2,sp
	move.w	d0,d7
	move.w	10(fp),(sp)
	movea.l	20(fp),a0
	move.w	(a0),-(sp)
	bsr.s	L50174
	addq.l	#2,sp
	move.w	d0,d6
	movea.l	16(fp),a0
	move.w	d7,(a0)
	movea.l	20(fp),a0
	move.w	d6,(a0)
	move.w	d5,d0
	sub.w	d7,d0
	movea.l	24(fp),a1
	move.w	d0,(a1)
	move.w	d4,d0
	sub.w	d6,d0
	movea.l	28(fp),a1
	move.w	d0,(a1)
	cmp.w	d7,d5
	ble.s	L50158
	cmp.w	d6,d4
	bgt.s	L50162
L50158:
	clr.w	d0
	bra.s	L50164

L50162:
	moveq	#1,d0
L50164:
	tst.l	(sp)+
	movem.l	(sp)+,d4-d7
	unlk	fp
	rts

L50174:
	link	fp,#-4
	move.w	8(fp),d0
	cmp.w	10(fp),d0
	ble.s	L50194
	move.w	8(fp),d0
	bra.s	L50198

L50194:
	move.w	10(fp),d0
L50198:
	unlk	fp
	rts

L50202:
	link	fp,#-4
	move.w	8(fp),d0
	cmp.w	10(fp),d0
	bge.s	L50222
	move.w	8(fp),d0
	bra.s	L50226

L50222:
	move.w	10(fp),d0
L50226:
	unlk	fp
	rts

memmove:
	move.w	4(sp),d0	; len
	movea.l	6(sp),a0	; src
	movea.l	10(sp),a1	; dst

	cmpa.l	a1,a0
	bge.s	.forwards

 	ext.l	d0
	adda.l	d0,a0
	adda.l	d0,a1

	bra.s	.backwards

.loopr:	move.b	-(a0),-(a1)
.backwards:
	dbra	d0,.loopr
	rts

.loopf:	move.b	(a0)+,(a1)+
.forwards:
	dbra	d0,.loopf
	rts

L50304:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)
	movea.l	8(fp),a5
	move.w	12(fp),d7
	bra.s	.L50326

.L50322:
	move.b	15(fp),(a5)+
.L50326:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bne.s	.L50322
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L50344:
	link	fp,#-4
	tst.w	8(fp)
	bge.s	L50362
	move.w	8(fp),d0
	neg.w	d0
	bra.s	L50366

L50362:
	move.w	8(fp),d0
L50366:
	unlk	fp
	rts

L50370:
	link	fp,#-4
	bra.s	L50384

L50376:
	bsr.s	L50408
	tst.w	d0
	bne.s	L50404
	bsr.s	L50456
L50384:
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L36566
	tst.w	d0
	bne.s	L50376
L50404:
	unlk	fp
	rts

L50408:
	link	fp,#-4
	cmpi.b	#10,U101148
	beq.s	L50426
	clr.w	d0
	bra.s	L50428

L50426:
	moveq	#1,d0
L50428:
	unlk	fp
	rts

L50432:
	link	fp,#-4
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	unlk	fp
	rts

L50456:
	link	fp,#-4
	move.b	U101148,U101050
	cmpi.w	#2,U100986
	bne.s	L50486
	jsr	L19524
L50486:
	addq.l	#1,U100962
	movea.l	U100962,a0
	move.b	(a0),U101148
	unlk	fp
	rts

L50508:
	link	fp,#-4
	movea.l	U100962,a0
	tst.b	(a0)
	bne.s	L50564
	cmpi.b	#62,9(fp)
	bne.s	L50560
	move.l	T87170,(sp)
	move.l	#U100162,d0
	move.l	d0,U100962
	move.l	d0,-(sp)
	jsr	L83880
	addq.l	#4,sp
	bra.s	L50564

L50560:
	moveq	#1,d0
	bra.s	L50566

L50564:
	clr.w	d0
L50566:
	unlk	fp
	rts

L50570:
	link	fp,#-4
	addq.l	#1,U101030
	subq.w	#1,U99178
	unlk	fp
	rts

L50590:
	link	fp,#-4
	cmpi.w	#32,8(fp)
	ble.s	.L50608
	jsr	L74840
.L50608:
	cmpi.w	#2,U100986
	bne.s	.L50706
	tst.w	U100998
	beq.s	.L50684
	jsr	L19370
	clr.w	U101476
	tst.w	U99190
	beq.s	.L50660
	jsr	L58082
	clr.w	U99190
	bra.s	.L50674
.L50660:
	movea.l	#U100162,a0
	move.l	a0,U100962
	clr.b	(a0)
.L50674:
	move.w	8(fp),(sp)
	bsr  	L50508
	bra.s	.L50706
.L50684:
	move.w	U100898,d0
	ext.l	d0
	add.l	#U100162,d0
	subq.l	#3,d0
	move.l	d0,U100962
.L50706:
	cmpi.w	#1,U100986
	bne.s	.L50748
	bsr  	L50408
	tst.w	d0
	beq.s	.L50728
	bsr  	L50456
.L50728:
	move.w	8(fp),(sp)
	bsr  	L50508
	tst.w	d0
	beq.s	.L50746
	jsr	L58082
.L50746:
	bra.s	.L50848
.L50748:
	tst.w	U100986
	bne.s	.L50848
	cmpi.w	#63,8(fp)
	bne.s	.L50816
	tst.w	U99188
	beq.s	.L50778
	move.w	#33,8(fp)
.L50778:
	jsr	L64994
	bra.s	.L50806
.L50786:
	jsr	L65014
	move.w	d0,(sp)
	jsr	L55354
	jsr	L76978
.L50806:
	jsr	L65102
	tst.w	d0
	bne.s	.L50786
.L50816:
	tst.w	8(fp)
	beq.s	.L50832
	move.w	8(fp),(sp)
	jsr	L74948
.L50832:
	jsr	L69798
	move.l	#U100162,U100962
.L50848:
	bsr.s	L50854
	unlk	fp
	rts

L50854:
	link	fp,#-4
	clr.w	U100892
	movea.l	U100962,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,U100632
	tst.w	U101470
	beq.s	.L50912
	bra.s	.L50900
.L50890:
	bsr  	L50456
	addq.w	#1,U100892
.L50900:
	movea.l	U100962,a0
	cmpi.b	#32,(a0)
	beq.s	.L50890
.L50912:
	movea.l	U100962,a0
	move.b	(a0),U101148
	move.b	#10,U101050
	bsr  	L51714
	unlk	fp
	rts

L50940:
	movea.l	6(sp),a0
	clr.w	d0
	move.b	5(sp),d2
.loop:
	move.b	(a0)+,d1
	beq.s	.return

	cmp.b	d2,d1
	bne.s	.loop
	moveq	#1,d0
.return:
	rts

L50984:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr.s	L51030
	tst.w	d0
	beq.s	.L51008
	moveq	#1,d0
	bra.s	.L51020

.L51008:
	move.l	#T86008,(sp)
	move.w	d7,-(sp)
	bsr.s	L50940
	addq.l	#2,sp
.L51020:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L51030:
	link	fp,#-4
	move.l	#T86020,(sp)
	move.b	9(fp),d0
	ext.w	d0
	move.w	d0,-(sp)
	bsr.s	L50940
	addq.l	#2,sp
	unlk	fp
	rts

L51056:
	link	fp,#-4
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	bsr.s	L50984
	unlk	fp
	rts

L51076:
	link	fp,#-4
	tst.b	U101050
	beq.s	L51098
	cmpi.b	#41,U101050
	bne.s	L51102
L51098:
	clr.w	d0
	bra.s	L51116

L51102:
	move.b	U101050,d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L50984
L51116:
	unlk	fp
	rts

L51120:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.b	9(fp),d7
	cmp.b	#48,d7
	blt.s	L51144
	cmp.b	#57,d7
	ble.s	L51148
L51144:
	clr.w	d0
	bra.s	L51150

L51148:
	moveq	#1,d0
L51150:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L51160:
	link	fp,#-4
	bsr  	L50432
	tst.w	d0
	beq.s	L51182
	clr.w	U100982
	bra  	L51464

L51182:
	cmpi.b	#34,U101148
	bne.s	L51204
	move.w	#2,U100982
	bra  	L51464

L51204:
	cmpi.b	#58,U101148
	bne.s	L51226
	move.w	#4,U100982
	bra  	L51464

L51226:
	cmpi.b	#46,U101148
	bne.s	L51278
	bsr  	L51076
	tst.w	d0
	beq.s	L51278
	movea.l	U100962,a0
	move.b	1(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L51120
	tst.w	d0
	beq.s	L51278
	move.w	#6,U100982
	bra  	L51464

L51278:
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L51120
	tst.w	d0
	beq.s	L51308
	move.w	#6,U100982
	bra  	L51464

L51308:
	cmpi.b	#45,U101148
	bne  	L51456
	bsr  	L51076
	tst.w	d0
	beq  	L51456
	movea.l	U100962,a0
	move.b	1(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L51120
	tst.w	d0
	bne.s	L51388
	movea.l	U100962,a0
	cmpi.b	#46,1(a0)
	bne.s	L51398
	movea.l	U100962,a0
	move.b	2(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L51120
	tst.w	d0
	beq.s	L51398
L51388:
	move.w	#6,U100982
	bra.s	L51454

L51398:
	movea.l	U100962,a0
	cmpi.b	#40,1(a0)
	beq.s	L51438
	movea.l	U100962,a0
	move.b	1(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L50984
	tst.w	d0
	beq.s	L51438
	clr.w	d0
	bra.s	L51440

L51438:
	moveq	#1,d0
L51440:
	move.w	d0,U100562
	move.w	#8,U100982
L51454:
	bra.s	L51464

L51456:
	move.w	#8,U100982
L51464:
	unlk	fp
	rts

L51468:
	link	fp,#-4
	bsr  	L50456
	addq.w	#1,U99178
	unlk	fp
	rts

L51486:
	link	fp,#-4
	bra.s	L51526

L51492:
	cmpi.b	#35,U101148
	bne.s	L51504
	bsr.s	L51468
L51504:
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	tst.w	d0
	bne.s	L51534
	bsr.s	L51468
L51526:
	bsr  	L51056
	tst.w	d0
	beq.s	L51492
L51534:
	unlk	fp
	rts

L51538:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.w	d7
	bra.s	L51602

L51550:
	addq.w	#1,d7
	move.w	d7,d0
	cmp.w	#18,d0
	ble.s	L51598
	bsr  	L50456
	move.l	U100962,(sp)
	move.l	U101030,d0
	clr.l	d1
	move.w	U99178,d1
	add.l	d1,d0
	move.l	d0,-(sp)
	jsr	L83880
	addq.l	#4,sp
	bra.s	L51602

L51598:
	bsr  	L51468
L51602:
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L51120
	tst.w	d0
	bne.s	L51550
	tst.w	d7
	beq.s	L51704
	tst.w	8(fp)
	beq.s	L51704
	bra.s	L51674

L51632:
	move.l	U100962,(sp)
	subq.w	#1,U99178
	clr.w	d0
	move.w	U99178,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	U101030,d0
	move.l	d0,-(sp)
	jsr	L83880
	addq.l	#4,sp
L51674:
	suba.w	a0,a0
	movea.w	U99178,a0
	adda.l	U101030,a0
	cmpi.b	#48,-1(a0)
	bne.s	L51704
	tst.w	U99178
	bne.s	L51632
L51704:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L51714:
	link	fp,#-4
	bsr  	L50370
	cmpi.w	#2,U100986
	bne.s	L51806
	movea.w	U100898,a0
	adda.l	#U100162,a0
	cmpi.b	#10,-3(a0)
	bne.s	L51758
	jsr	L19524
L51758:
	move.w	U100898,d0
	ext.l	d0
	add.l	#U100162,d0
	move.l	d0,(sp)
	subq.l	#3,(sp)
	move.l	#U100162,d0
	move.l	d0,U100962
	move.l	d0,-(sp)
	jsr	L83880
	addq.l	#4,sp
	move.w	#3,U100898
L51806:
	move.l	U100962,U101030
	clr.w	U99178
	clr.w	U100562
	bsr  	L51160
	clr.w	d0
	move.w	U100982,d0
	bra  	L52160

L51844:
	clr.w	U99178
	bra  	L52186

L51854:
	bsr  	L51468
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L51030
	tst.w	d0
	bne  	L52180
	bsr  	L51056
	tst.w	d0
	beq.s	L51890
	bsr  	L51468
L51890:
	bsr  	L51486
	bra  	L52180

L51898:
	bsr  	L51486
	bra  	L52180

L51906:
	cmpi.b	#45,U101148
	bne.s	L51920
	bsr  	L51468
L51920:
	clr.w	(sp)
	bsr  	L51538
	cmpi.b	#46,U101148
	bne.s	L51948
	bsr  	L51468
	move.w	#1,(sp)
	bsr  	L51538
L51948:
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L36478
	cmp.w	#69,d0
	bne.s	L52004
	bsr  	L51468
	cmpi.b	#43,U101148
	beq.s	L51994
	cmpi.b	#45,U101148
	bne.s	L51998
L51994:
	bsr  	L51468
L51998:
	clr.w	(sp)
	bsr  	L51538
L52004:
	movea.l	U101030,a0
	suba.l	a1,a1
	movea.w	U99178,a1
	adda.l	a1,a0
	clr.b	(a0)
	move.l	U101030,(sp)
	jsr	L80660
	move.l	d0,U99602
	movea.l	U101030,a0
	suba.l	a1,a1
	movea.w	U99178,a1
	adda.l	a1,a0
	move.b	U101148,(a0)
	bra  	L52186

L52066:
	bsr  	L51056
	tst.w	d0
	beq.s	L52152
	bsr  	L51468
	move.l	#T86026,(sp)
	move.b	U101050,d0
	ext.w	d0
	move.w	d0,-(sp)
	bsr  	L50940
	addq.l	#2,sp
	tst.w	d0
	beq.s	L52150
	move.l	#T86030,(sp)
	move.b	U101148,d0
	ext.w	d0
	move.w	d0,-(sp)
	bsr  	L50940
	addq.l	#2,sp
	tst.w	d0
	beq.s	L52150
	move.b	U101050,d0
	ext.w	d0
	cmp.b	U101148,d0
	beq.s	L52150
	bsr  	L51468
L52150:
	bra.s	L52186

L52152:
	bsr  	L51486
	bra.s	L52180

	bra.s	L52180

L52160:
	cmp.w	#8,d0
	bhi.s	L52180
	asl.w	#2,d0
	movea.w	d0,a0
	adda.l	#T85972,a0
	movea.l	(a0),a0
	jmp	(a0)

L52180:
	clr.b	U101050
L52186:
	unlk	fp
	rts

L52190:
	link	fp,#-4
	bra.s	L52200

L52196:
	bsr  	L51468
L52200:
	bsr  	L50432
	tst.w	d0
	beq.s	L52196
	move.w	#8,U100982
	unlk	fp
	rts

L52220:
	link	fp,#0
	movem.l	d6-d7/a4-a5,-(sp)
	movea.l	8(fp),a5
	cmpi.w	#8,U100982
	beq.s	L52246
	clr.w	d0
	bra.s	L52294

L52246:
	move.w	U99178,d7
	movea.l	U101030,a4
	bra.s	L52280

L52260:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bne.s	L52272
	clr.w	d0
	bra.s	L52294

L52272:
	cmpm.b	(a4)+,(a5)+
	beq.s	L52280
	clr.w	d0
	bra.s	L52294

L52280:
	tst.b	(a5)
	bne.s	L52260
	tst.w	d7
	beq.s	L52292
	clr.w	d0
	bra.s	L52294

L52292:
	moveq	#1,d0
L52294:
	tst.l	(sp)+
	movem.l	(sp)+,d7/a4-a5
	unlk	fp
	rts

L52304:
	link	fp,#-4
	clr.w	d0
	move.w	U99178,d0
	subq.w	#1,d0
	beq.s	L52324
	clr.w	d0
	bra.s	L52334

L52324:
	move.b	9(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr.s	L52352
L52334:
	unlk	fp
	rts

L52338:
	link	fp,#-4
	move.w	#59,(sp)
	bsr.s	L52352
	unlk	fp
	rts

L52352:
	link	fp,#-4
	cmpi.w	#8,U100982
	bne.s	L52382
	movea.l	U101030,a0
	move.b	(a0),d0
	ext.w	d0
	cmp.b	9(fp),d0
	beq.s	L52386
L52382:
	clr.w	d0
	bra.s	L52388

L52386:
	moveq	#1,d0
L52388:
	unlk	fp
	rts

L52392:
	link	fp,#0
	movem.l	d2-d7/a5,-(sp)
	move.w	8(fp),d7
	move.w	U99178,d4
	movea.l	U101030,a5
	move.w	d7,d0
	jsr	L378_1d
	jsr	L358_1d
	move.w	d0,d7
	bra  	.L52542
.L52438:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d3
	moveq	#-1,d6
	bra.s	.L52522
.L52452:
	cmpi.b	#35,(a5)
	bne.s	.L52468
	cmp.w	#1,d4
	ble.s	.L52468
	addq.l	#1,a5
	subq.w	#1,d4
.L52468:
	move.w	d6,d1
	move.w	d3,d0
	jsr	L332_2d
	move.w	d0,d5
	tst.w	d5
	bne.s	.L52498
	tst.w	d4
	beq.s	.L52494
	clr.w	d0
	bra.s	.L52496
.L52494:
	moveq	#1,d0
.L52496:
	bra.s	.return
.L52498:
	move.w	d4,d0
	subq.w	#1,d4
	tst.w	d0
	bne.s	.L52510
	clr.w	d0
	bra.s	.return
.L52510:
	move.b	(a5)+,d0
	ext.w	d0
	cmp.w	d0,d5
	beq.s	.L52522
	clr.w	d0
	bra.s	.return
.L52522:
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#4,d0
	blt.s	.L52452
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L52542:
	tst.w	d7
	bne.s	.L52438
	tst.w	d4
	beq.s	.L52554
	clr.w	d0
	bra.s	.return
.L52554:
	moveq	#1,d0
.return:
	tst.l	(sp)+
	movem.l	(sp)+,d3-d7/a5
	unlk	fp
	rts

L52566:
	movem.l	d4-d7,-(sp)
	jsr	node_add
	move.w	d0,d7
	move.w	d7,-(sp)
	jsr	L64090
	jsr	node_add
	move.w	d0,d4
	move.w	d4,d1
	move.w	d7,d0
	jsr	L65226_2d
	jsr	node_add
	move.w	d0,d5
	move.w	d5,d1
	move.w	d4,d0
	jsr	L65186_2d
	jsr	node_add
	move.w	d0,d1
	move.w	d5,d0
	jsr	L65186_2d
	move.w	#8,d1
	move.w	d7,d0
	jsr	L65186_2d
.L52662:
	move.w	d5,d0
	jsr	L358_1d
	move.w	d0,d7
	moveq	#-1,d6
	bra  	.L52794
.L52678:
	tst.w	U99178
	bne.s	.L52704
	clr.w	(sp)
	clr.w	-(sp)
	move.w	d7,-(sp)
	jsr	L418
	addq.l	#4,sp
	bra  	.L52872
.L52704:
	movea.l	U101030,a0
	cmpi.b	#35,(a0)
	bne.s	.L52730
	cmpi.w	#1,U99178
	bls.s	.L52730
	bsr  	L50570
.L52730:
	movea.l	U101030,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	move.w	d6,-(sp)
	move.w	d7,-(sp)
	jsr	L418
	addq.l	#4,sp
	addq.l	#1,U101030
	subq.w	#1,U99178
	bne.s	.L52794
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#4,d0
	bge.s	.L52792
	clr.w	(sp)
	move.w	d6,-(sp)
	move.w	d7,-(sp)
	jsr	L418
	addq.l	#4,sp
.L52792:
	bra.s	.L52872
.L52794:
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#4,d0
	blt.s	.L52678
	clr.w	(sp)
	jsr	L65694
	move.w	d0,(sp)
	jsr	L64090
	jsr	L64160
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,(sp)
	jsr	L64276
	jsr	L64160
	move.w	d0,d1
	move.w	d5,d0
	jsr	L65226_2d
	jsr	L64224
	move.w	d0,d5
	bra  	.L52662
.L52872:
	addq	#2,sp
	movem.l	(sp)+,d4-d7
	rts

L52882:
	bsr  	L52566
	clr.w	-(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64090
	jsr	L64224
	movea.w	U101184,a0
	adda.l	a0,a0
	movea.l	#U101202,a1
	move.w	0(a0,a1.l),d1
	jsr	L65226_2d
	move.w	d0,-(sp)
	movea.w	U101184,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(sp)+,(a0)
	addq	#2,sp
	rts

L52972:
	move.l	4(sp),U99602
	jmp	L52990

L52990:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.l	U99602,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d7
	move.l	U99602,-(sp)
	move.w	d7,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	.L53052
	move.w	d7,(sp)
	bsr.s	L53070
	bra.s	.L53060
.L53052:
	move.l	U99602,(sp)
	bsr.s	L53102
.L53060:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L53070:
	link	fp,#-4
	move.w	8(fp),(sp)
	move.w	#10,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64090
	unlk	fp
	rts

L53102:
	move.l	d7,-(sp)
	move.l	8(sp),U100628
	jsr	node_add
	move.w	d0,d7
	move.w	d7,(sp)
	jsr	L64090
	jsr	node_add
	move.w	d0,d1
	move.w	d7,d0
	jsr	L65226_2d
	move.w	#16,d1
	move.w	d7,d0
	jsr	L65186_2d
	move.l	U100628,(sp)
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,-(sp)
	jsr	L488
	addq.l	#2,sp
	move.l	(sp)+,d7
	rts

L53202:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	tst.w	U100562
	beq.s	L53232
	move.w	U100888,(sp)
	jsr	L64090
	bra.s	L53308

L53232:
	bsr.s	L53318
	movea.w	U101184,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(a0),d7
	bra.s	L53298

L53252:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L52392
	tst.w	d0
	beq.s	L53288
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L64090
	bra.s	L53308

L53288:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L53298:
	tst.w	d7
	bne.s	L53252
	jsr	L64732
L53308:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L53318:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	clr.w	U101184
	movea.l	U101030,a5
L53338:
	cmpi.b	#35,(a5)
	bne.s	L53346
	addq.l	#1,a5
L53346:
	move.l	U101030,d0
	clr.l	d1
	move.w	U99178,d1
	add.l	d1,d0
	cmpa.l	d0,a5
	bcc.s	L53378
	move.b	(a5)+,d0
	ext.w	d0
	add.w	d0,U101184
	bra.s	L53338

L53378:
	andi.w	#127,U101184
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L53396:
	link	fp,#-4
	bsr  	L53202
	jsr	L64160
	tst.w	d0
	bne.s	L53424
	jsr	L64180
	bsr  	L52882
L53424:
	unlk	fp
	rts

L53428:
	link	fp,#-4
	cmpi.w	#6,U100982
	bne.s	L53448
	bsr  	L52990
	bra.s	L53450

L53448:
	bsr.s	L53396
L53450:
	bsr  	L53858
	bsr  	L51714
	unlk	fp
	rts

L53462:
	link	fp,#-4
	bsr  	L53644
	tst.w	d0
	beq.s	.L53486
	jsr	L64732
	bsr  	L53858
	bra.s	.return
.L53486:
	move.w	#93,(sp)
	bsr  	L52304
	tst.w	d0
	beq.s	.L53514
	bsr  	L51714
	jsr	L64732
	bsr  	L53858
	bra.s	.return
.L53514:
	jsr	L74764
	bsr.s	L53534
	bsr.s	L53462
	jsr	L64470
.return:
	unlk	fp
	rts

L53534:
	link	fp,#-4
	move.w	#91,(sp)
	bsr  	L52304
	tst.w	d0
	beq.s	L53564
	bsr  	L53858
	bsr  	L51714
	bsr.s	L53462
	bra.s	L53568

	bra.s	L53568

L53564:
	bsr  	L53428
L53568:
	unlk	fp
	rts

L53572:
	link	fp,#-4
	bra.s	L53582

L53578:
	bsr  	L51714
L53582:
	move.w	#93,(sp)
	bsr  	L52304
	tst.w	d0
	bne.s	L53578
	bsr.s	L53644
	tst.w	d0
	beq.s	L53608
	jsr	L64732
	bra.s	L53624

L53608:
	jsr	L74764
	bsr.s	L53534
	bsr.s	L53572
	jsr	L64470
L53624:
	unlk	fp
	rts

L53628:
	link	fp,#-4
	clr.w	U101008
	bsr.s	L53572
	unlk	fp
	rts

L53644:
	link	fp,#-4
	tst.w	U101008
	beq.s	.L53662
	moveq	#1,d0
	bra  	.return
.L53662:
	tst.w	U100982
	beq.s	.L53758
	tst.w	U101470
	beq.s	.L53754
	bsr  	L52338
	tst.w	d0
	beq.s	.L53754
	bsr  	L52190
	move.w	U101042,(sp)
	bsr  	L53070
	cmpi.w	#59,U100632
	bne.s	.L53718
	move.w	U100676,(sp)
	bra.s	.L53724
.L53718:
	move.w	U100634,(sp)
.L53724:
	jsr	L64090
	bsr  	L53396
	bsr  	L53872
	bsr  	L51714
	jsr	L74764
	bsr.s	L53644
	bra  	.return
.L53754:
	clr.w	d0
	bra.s	.return
.L53758:
	tst.w	U101470
	bne.s	.L53770
	moveq	#1,d0
	bra.s	.return
.L53770:
	move.w	#62,(sp)
	bsr  	L50590
	tst.w	U100892
	beq.s	.L53790
	clr.w	d0
	bra.s	.L53792
.L53790:
	moveq	#1,d0
.L53792:
	move.w	d0,U101008
	beq.s	.L53804
	moveq	#1,d0
	bra.s	.return
.L53804:
	move.w	U101042,(sp)
	bsr  	L53070
	move.w	U100740,(sp)
	jsr	L64090
	move.w	U100892,(sp)
	bsr  	L53070
	bsr.s	L53872
	clr.w	U100892
	jsr	L74764
	bsr  	L53644
.return:
	unlk	fp
	rts

L53858:
	link	fp,#-4
	addq.w	#1,U101042
	unlk	fp
	rts

L53872:
	subq	#2,sp
	jsr	L64470
	jsr	L64470
	tst.w	U101034
	bne.s	.L53924
	jsr	L64160
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,U101010
	move.w	d0,U101034
	bra.s	.return
.L53924:
	jsr	L64160
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,d1
	move.w	U101010,d0
	jsr	L65226_2d
	move.w	U101010,d0
	jsr	L378_1d
	move.w	d0,U101010
.return:
	addq	#2,sp
	jmp	L64180

L53982:
	link	fp,#-4
	tst.w	U100982
	beq.s	L54044
	bsr  	L52338
	tst.w	d0
	bne.s	L54044
	cmpi.w	#4,U100982
	bne.s	L54018
	bsr  	L50570
	bra.s	L54030

L54018:
	move.l	U101030,(sp)
	jsr	L67208
L54030:
	bsr  	L53428
	bsr.s	L53982
	jsr	L64470
	bra.s	L54050

L54044:
	jsr	L64732
L54050:
	unlk	fp
	rts

L54054:
	link	fp,#-4
	move.l	T87170,(sp)
	bsr  	L52220
	tst.w	d0
	beq.s	L54080
	jsr	L64732
	bra.s	L54118

L54080:
	bsr  	L53628
	jsr	L74764
	jsr	L64160
	tst.w	d0
	bne.s	L54110
	jsr	L64180
	bsr.s	L54054
	bra.s	L54118

L54110:
	bsr.s	L54054
	jsr	L64470
L54118:
	unlk	fp
	rts

L54122:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	bsr  	L51714
	cmpi.w	#2,U100982
	bne.s	.L54150
	bsr  	L50570
	bra.s	.L54170
.L54150:
	cmpi.w	#8,U100982
	beq.s	.L54170
	jsr	L58102
	bra  	.L54380
.L54170:
	bsr  	L53428
	jsr	L64160
	move.w	d0,d7
	move.w	d7,(sp)
	jsr	L65878
	tst.w	d0
	beq.s	.L54220
	jsr	L61762
	tst.w	d0
	beq.s	.L54212
	jsr	L61804
	bra.s	.L54220
.L54212:
	move.w	d7,(sp)
	jsr	L66904
.L54220:
	bsr  	L53982
	move.w	#1,U101470
	clr.w	U101042
	bsr  	L53644
	bsr  	L54054
	jsr	L64470
	tst.w	U101034
	bne.s	.L54278
	move.w	U100738,(sp)
	move.w	d7,-(sp)
	jsr	L66244
	addq.l	#2,sp
	bra.s	.L54300
.L54278:
	move.w	U101034,(sp)
	move.w	U100738,-(sp)
	move.w	d7,-(sp)
	jsr	L66062
	addq.l	#4,sp
.L54300:
	move.w	d7,(sp)
	jsr	L55654
	jsr	L64160
	move.w	d0,(sp)
	move.w	U98716,-(sp)
	move.w	d7,-(sp)
	jsr	L66062
	addq.l	#4,sp
	jsr	L64180
	tst.w	U99190
	bne.s	.L54374
	move.w	d7,(sp)
	move.l	#L54682,-(sp)
	move.l	T87202,-(sp)
	jsr	L54390
	addq.l	#8,sp
	jsr	L74840
.L54374:
	jsr	L64180
.L54380:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L54390:
	link	fp,#-4
	movem.l	d6-d7/a5,-(sp)
	movea.l	8(fp),a5
	bra.s	L54470

L54404:
	cmpi.b	#8,(a5)
	blt.s	L54424
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74948
	bra.s	L54468

L54424:
	move.l	fp,d0
	move.b	d7,d1
	ext.w	d1
	subq.w	#1,d1
	move.b	d1,d7
	asl.w	#3,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#12,d0
	move.l	d0,-4(fp)
	movea.l	-4(fp),a0
	move.l	4(a0),-(sp)
	movea.l	-4(fp),a0
	movea.l	(a0),a0
	jsr	(a0)
	addq.l	#4,sp
L54468:
	addq.l	#1,a5
L54470:
	move.b	(a5),d7
	bne.s	L54404
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L54484:
	link	fp,#0
	movem.l	d2-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,d0
	jsr	L378_1d
	jsr	L358_1d
	move.w	d0,d7
	beq.s	.L54542
	move.w	d7,d0
	jsr	L358_1d
	moveq	#1,d1
	jsr	L332_2d
	move.w	d0,d3
.L54542:
	bra  	.L54668
.L54546:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d6
	moveq	#-1,d5
	bra.s	.L54648
.L54560:
	move.w	d5,d1
	move.w	d6,d0
	jsr	L332_2d
	move.b	d0,d4
	beq.s	.L54672
	tst.w	10(fp)
	beq.s	.L54636
	move.l	#T86034,(sp)
	move.b	d4,d0
	ext.w	d0
	move.w	d0,-(sp)
	jsr	L50940
	addq.l	#2,sp
	tst.w	d0
	bne.s	.L54626
	move.b	d4,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L50984
	tst.w	d0
	beq.s	.L54636
	tst.w	d3
	beq.s	.L54636
.L54626:
	move.w	#35,(sp)
	jsr	L74948
.L54636:
	move.b	d4,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74948
.L54648:
	addq.w	#1,d5
	move.w	d5,d0
	cmp.w	#4,d0
	blt.s	.L54560
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L54668:
	tst.w	d7
	bne.s	.L54546
.L54672:
	tst.l	(sp)+
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

L54682:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	U100996
	beq.s	L54714
	move.w	d7,(sp)
	jsr	L65878
	tst.w	d0
	beq.s	L54718
L54714:
	clr.w	(sp)
	bra.s	L54722

L54718:
	move.w	#1,(sp)
L54722:
	move.w	d7,-(sp)
	bsr  	L54484
	addq.l	#2,sp
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L54740:
	link	fp,#-36
	movem.l	d4-d7/a4-a5,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65532
	move.l	d0,d6
	move.l	d6,(sp)
	jsr	L3058
	move.l	d0,d5
	move.l	d6,-(sp)
	move.l	d6,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.l	d0,-36(fp)
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L54822
	move.l	-36(fp),(sp)
	bsr  	L54980
	bra  	L54970

L54822:
	move.l	#-2095944137,-(sp)
	move.l	d5,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L54858
	move.l	#-1734967208,-(sp)
	move.l	d5,-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L54884
L54858:
	move.w	#6,(sp)
	move.l	fp,-(sp)
	addi.l	#-32,(sp)
	move.l	d6,-(sp)
	jsr	L80128
	addq.l	#8,sp
	movea.l	d0,a4
	bra.s	L54962

L54884:
	move.w	#6,(sp)
	move.l	fp,-(sp)
	addi.l	#-32,(sp)
	move.l	d6,-(sp)
	jsr	L79618
	addq.l	#8,sp
	movea.l	d0,a4
	move.l	a4,(sp)
	jsr	L83914
	ext.l	d0
	movea.l	d0,a5
	move.l	a4,d0
	adda.l	d0,a5
	subq.l	#1,a5
	cmpi.b	#46,(a5)
	beq.s	L54954
	bra.s	L54940

L54934:
	movea.l	a5,a0
	clr.b	(a0)
	subq.l	#1,a5
L54940:
	cmpi.b	#48,(a5)
	bne.s	L54954
	move.l	a4,d0
	addq.l	#1,d0
	cmpa.l	d0,a5
	bhi.s	L54934
L54954:
	cmpi.b	#46,(a5)
	bne.s	L54962
	clr.b	(a5)
L54962:
	move.l	a4,(sp)
	jsr	L74902
L54970:
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7/a4-a5
	unlk	fp
	rts

L54980:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.l	8(fp),d7
	tst.l	d7
	bge.s	L55012
	move.w	#45,(sp)
	jsr	L74948
	move.l	d7,d0
	neg.l	d0
	move.l	d0,d7
L55012:
	move.l	#10,-(sp)
	move.l	d7,-(sp)
	jsr	L83960
	addq.l	#8,sp
	move.l	d0,d6
	beq.s	L55036
	move.l	d6,(sp)
	bsr.s	L54980
L55036:
	move.l	#10,-(sp)
	move.l	d7,-(sp)
	jsr	L84202
	addq.l	#8,sp
	ext.w	d0
	move.w	d0,(sp)
	addi.w	#48,(sp)
	jsr	L74948
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L55076:
	link	fp,#-4
	movea.w	8(fp),a0
	move.l	a0,(sp)
	bsr.s	L54980
	unlk	fp
	rts

L55092:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	bsr  	L55694
	move.w	d7,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	L55128
	move.w	d7,(sp)
	bsr  	L54740
	bra.s	L55134

L55128:
	move.w	d7,(sp)
	bsr  	L54682
L55134:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L55144:
	link	fp,#-4
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	d7
	beq  	L55328
L55162:
	bsr  	L55694
	jsr	L58044
	tst.w	d0
	beq.s	L55204
	cmp.w	U101006,d7
	bne.s	L55204
	move.w	U101044,U98710
	move.w	U100990,U99194
L55204:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-2(fp)
	move.w	d0,(sp)
	bsr  	L55354
	jsr	L53858
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
	beq.s	L55328
	move.w	d7,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L55274
	move.l	#T86040,(sp)
	jsr	L74902
	move.w	d7,(sp)
	bsr  	L55092
	clr.w	d0
	bra.s	L55344

L55274:
	clr.w	d0
	move.w	-2(fp),d0
	cmp.w	U100624,d0
	beq.s	L55324
	clr.w	d0
	move.w	-2(fp),d0
	cmp.w	U100888,d0
	beq.s	L55324
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	U100652,d0
	beq.s	L55324
	jsr	L76978
L55324:
	bra  	L55162

L55328:
	bsr  	L55826
	move.w	d0,-4(fp)
	bsr  	L55694
	move.w	-4(fp),d0
L55344:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L55354:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	d7
	beq.s	L55390
	move.w	d7,(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L55390
	move.w	d7,(sp)
	bsr  	L55092
	bra.s	L55428

L55390:
	move.w	#91,(sp)
	jsr	L74948
	jsr	L74764
	jsr	L53858
	move.w	d7,(sp)
	bsr  	L55144
	move.w	#93,(sp)
	jsr	L74948
L55428:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L55438:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	jsr	L76978
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	beq.s	L55486
	move.w	#34,(sp)
	jsr	L74948
	move.w	d7,(sp)
	bsr  	L54682
	bra.s	L55492

L55486:
	move.w	d7,(sp)
	bsr  	L55354
L55492:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L55502:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),(sp)
	bsr  	L55092
	move.w	10(fp),d7
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d7
	bra.s	L55574

L55534:
	jsr	L76978
	move.w	#58,(sp)
	jsr	L74948
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L55092
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L55574:
	tst.w	d7
	bne.s	L55534
	move.w	U100738,(sp)
	move.w	8(fp),-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,U101034
	clr.w	U101042
	bsr  	L55826
	tst.w	d0
	beq.s	L55644
	bsr  	L55898
	tst.w	d0
	beq.s	L55644
	jsr	L76978
	bsr  	L55994
	bsr  	L56014
	jsr	L74840
L55644:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L55654:
	link	fp,#-4
	tst.w	U101108
	beq.s	L55690
	move.w	U101108,(sp)
	move.w	U98400,-(sp)
	move.w	8(fp),-(sp)
	jsr	L66062
	addq.l	#4,sp
L55690:
	unlk	fp
	rts

L55694:
	link	fp,#-6
	bra  	L55816

L55702:
	bsr  	L55922
	cmp.w	U100740,d0
	bne.s	L55780
	bsr  	L55958
	move.w	d0,(sp)
	jsr	L65532
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,-2(fp)
	bsr  	L56014
	jsr	L74840
	bsr.s	L55826
	tst.w	d0
	beq.s	L55768
	bsr  	L55898
	tst.w	d0
	beq.s	L55768
	subq.w	#1,-2(fp)
L55768:
	move.w	-2(fp),(sp)
	jsr	L76954
	bra.s	L55816

L55780:
	bsr  	L55898
	tst.w	d0
	beq.s	L55796
	jsr	L76978
	bra.s	L55802

L55796:
	jsr	L74840
L55802:
	bsr  	L55994
	bsr  	L56014
	jsr	L74840
L55816:
	bsr.s	L55826
	tst.w	d0
	bne.s	L55702
	unlk	fp
	rts

L55826:
	link	fp,#-4
	tst.w	U101034
	bne.s	L55842
	clr.w	d0
	bra.s	L55894

L55842:
	move.w	U101034,d0
	jsr	L358_1d
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65532
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	cmp.w	U101042,d0
	beq.s	L55892
	clr.w	d0
	bra.s	L55894

L55892:
	moveq	#1,d0
L55894:
	unlk	fp
	rts

L55898:
	bsr.s	L55922
	cmp.w	U100634,d0
	beq.s	.L55916
	clr.w	d0
	bra.s	.return
.L55916:
	moveq	#1,d0
.return:
	rts

L55922:
	move.w	U101034,d0
	jsr	L358_1d
	jsr	L378_1d
	jmp	L358_1d

L55958:
	move.w	U101034,d0
	jsr	L358_1d
	jsr	L378_1d
	jmp	L378_1d

L55994:
	link	fp,#-4
	clr.w	(sp)
	bsr.s	L55958
	move.w	d0,-(sp)
	bsr  	L54484
	addq.l	#2,sp
	unlk	fp
	rts

L56014:
	move.w	U101034,d0
	jsr	L378_1d
	move.w	d0,U101034
	rts

L56054:
	link	fp,#-4
	move.w	U98718,(sp)
	bsr.s	L56100
	unlk	fp
	rts

L56070:
	link	fp,#-4
	jsr	L64714
	move.w	U98716,(sp)
	bsr.s	L56100
	move.w	U100738,(sp)
	bsr.s	L56100
	unlk	fp
	rts

L56100:
	link	fp,#0
	movem.l	d4-d7,-(sp)
	move.w	8(fp),d7
	bra.s	.L56204
.L56114:
	jsr	L64160
	jsr	L358_1d
	move.w	d0,d6
	move.w	d6,(sp)
	bsr  	L57862
	tst.w	d0
	bne.s	.L56182
	move.w	U98400,(sp)
	move.w	d6,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,d5
	beq.s	.L56170
	move.w	d5,(sp)
	bsr  	L57862
	tst.w	d0
	bne.s	.L56182
.L56170:
	move.w	d7,(sp)
	move.w	d6,-(sp)
	jsr	L66244
	addq.l	#2,sp
.L56182:
	jsr	L64160
	jsr	L378_1d
	move.w	d0,(sp)
	jsr	L64276
.L56204:
	jsr	L64160
	tst.w	d0
	bne.s	.L56114
	jsr	L64180
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7
	unlk	fp
	rts

L56230:
	link	fp,#-4
	jsr	L64732
	bsr.s	L56264
	unlk	fp
	rts

L56246:
	link	fp,#-4
	jsr	L64714
	bsr.s	L56362
	bsr.s	L56264
	unlk	fp
	rts

L56264:
	link	fp,#-4
	move.w	U100736,(sp)
	bsr.s	L56294
	jsr	L64224
	move.w	d0,(sp)
	jsr	L64276
	unlk	fp
	rts

L56294:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	d7
	beq.s	L56352
	jsr	L74764
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,(sp)
	bsr.s	L56294
	move.w	U98716,(sp)
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	bsr  	L57652
	addq.l	#2,sp
L56352:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L56362:
	link	fp,#-4
	jsr	L64732
	move.w	U98718,(sp)
	bsr  	L57456
	unlk	fp
	rts

L56386:
	link	fp,#-4
	jsr	L69648
	clr.w	U98712
	move.w	#1,U100986
	move.l	U100744,d0
	subq.l	#1,d0
	move.l	d0,U100962
	move.b	#10,U101148
	jsr	L66768
L56438:
	jsr	L37176
	tst.w	U100986
	beq.s	L56454
	bra.s	L56438

L56454:
	jsr	L66800
	unlk	fp
	rts

L56464:
	link	fp,#-4
	moveq	#1,d0
	move.w	d0,U100990
	move.w	d0,U98710
	move.w	d0,U99194
	jsr	L61834
	unlk	fp
	rts

L56498:
	link	fp,#-4
	bsr.s	L56464
	move.l	#U101090,(sp)
	jsr	L204
	tst.w	d0
	beq.s	L56526
	jsr	L67594
L56526:
	move.w	#1,U100996
	jsr	L69744
	jsr	L77150
	clr.w	d0
	move.w	d0,U101200
	movea.l	U100744,a1
	move.l	a1,U101102
	move.b	d0,(a1)
	unlk	fp
	rts

L56572:
	link	fp,#-4
	jsr	L77150
	bsr  	L58068
	jsr	L69744
	bra.s	L56620

L56594:
	subq.l	#1,U99196
	movea.l	U99196,a0
	movea.l	U101102,a1
	move.b	(a1),(a0)
	subq.l	#1,U101102
L56620:
	move.w	U101200,d0
	subq.w	#1,U101200
	tst.w	d0
	bne.s	L56594
	move.l	U99196,U101102
	unlk	fp
	rts

L56650:
	link	fp,#-4
	bsr  	L56498
	move.w	10(fp),(sp)
	move.w	8(fp),-(sp)
	bsr.s	L56676
	addq.l	#2,sp
	bsr.s	L56572
	unlk	fp
	rts

L56676:
	link	fp,#-2
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	bra  	L57342

L56692:
	clr.w	U101034
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,U98372
	move.w	10(fp),d0
	bra  	L57312

L56720:
	move.w	U98716,(sp)
	move.w	U98372,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,d6
	beq  	L56878
	bsr  	L57364
	move.w	d6,(sp)
	move.w	U98372,-(sp)
	jsr	L55502
	addq.l	#2,sp
	cmpi.w	#1,10(fp)
	bne.s	L56870
	clr.w	-2(fp)
	bra.s	L56830

L56780:
	tst.w	-2(fp)
	bne.s	L56792
	jsr	L74840
L56792:
	cmp.w	U100622,d6
	bne.s	L56810
	move.w	U100990,U99194
L56810:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L55144
	move.w	d0,-2(fp)
L56830:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
	bne.s	L56780
	jsr	L55694
	tst.w	U101006
	bne.s	L56866
	move.w	U101498,U98710
L56866:
	bsr  	L57390
L56870:
	jsr	L74840
	bra.s	L56922

L56878:
	move.w	U98718,(sp)
	move.w	U98372,-(sp)
	jsr	L65948
	addq.l	#2,sp
	tst.w	d0
	bne.s	L56922
	bsr  	L57364
	move.w	U98372,(sp)
	jsr	L55092
	bsr  	L57390
L56922:
	bra  	L57332

L56926:
	move.w	U98718,(sp)
	move.w	U98372,-(sp)
	jsr	L65948
	addq.l	#2,sp
	move.w	d0,d6
	beq  	L57106
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,d6
	bsr  	L58022
	tst.w	d0
	beq.s	L57054
	move.l	T87174,(sp)
	jsr	L74902
	move.l	#T86068,(sp)
	jsr	L74902
	move.w	U98372,(sp)
	jsr	L55092
	jsr	L76978
	move.w	d6,(sp)
	jsr	L65726
	tst.w	d0
	beq.s	L57044
	move.w	#34,(sp)
	jsr	L74948
	move.w	d6,(sp)
	jsr	L55092
	bra.s	L57052

L57044:
	move.w	d6,(sp)
	jsr	L55354
L57052:
	bra.s	L57100

L57054:
	move.w	d6,(sp)
	move.l	#L55354,-(sp)
	clr.l	d0
	move.w	U98372,d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L55092,-(sp)
	move.l	T87286,-(sp)
	jsr	L54390
	adda.l	#16,sp
L57100:
	jsr	L74840
L57106:
	bra  	L57332

L57110:
	move.w	U98372,(sp)
	bsr  	L57838
	bra.s	L57184

L57122:
	bsr  	L57986
	tst.w	d0
	bne.s	L57184
	move.l	T87178,(sp)
	jsr	L74902
	move.w	U98372,(sp)
	jsr	L55438
	move.w	U101490,(sp)
	jsr	L55438
	move.w	U101182,(sp)
	jsr	L55438
	jsr	L74840
L57184:
	bsr  	L57902
	tst.w	d0
	bne.s	L57122
	bra  	L57332

L57196:
	move.l	T87182,(sp)
	jsr	L74902
	move.w	U98400,(sp)
	move.w	U98372,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L55438
	move.w	U98372,(sp)
	jsr	L55438
	jsr	L74840
	bra.s	L57332

L57256:
	move.w	U100994,(sp)
	move.w	U98372,-(sp)
	jsr	L66008
	addq.l	#2,sp
	tst.w	d0
	beq.s	L57310
	move.l	T87186,(sp)
	jsr	L74902
	move.w	U98372,(sp)
	jsr	L55438
	jsr	L74840
L57310:
	bra.s	L57332

L57312:
	cmp.w	#5,d0
	bhi.s	L57332
	asl.w	#2,d0
	movea.w	d0,a0
	adda.l	#T86044,a0
	movea.l	(a0),a0
	jmp	(a0)

L57332:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L57342:
	tst.w	d7
	bne  	L56692
	clr.w	U101034
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L57364:
	link	fp,#-4
	move.l	T87158,(sp)
	jsr	L74902
	jsr	L76978
	unlk	fp
	rts

L57390:
	link	fp,#-4
	jsr	L74840
	move.l	T87170,(sp)
	jsr	L74902
	jsr	L74860
	jsr	L74860
	unlk	fp
	rts

L57428:
	link	fp,#-4
	move.w	8(fp),(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L65948
	addq.l	#2,sp
	unlk	fp
	rts

L57456:
	link	fp,#-4
	bsr.s	L57504
	bra.s	L57480

L57464:
	move.w	8(fp),(sp)
	move.w	U100668,-(sp)
	bsr  	L57652
	addq.l	#2,sp
L57480:
	bsr.s	L57542
	tst.w	d0
	bne.s	L57464
	jsr	L64224
	move.w	d0,(sp)
	jsr	L64276
	unlk	fp
	rts

L57504:
	link	fp,#-4
	clr.w	d0
	move.w	d0,U99854
	lsl.w	#1,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	#U101202,d0
	movea.l	d0,a0
	move.w	(a0),U100960
	unlk	fp
	rts

L57542:
	link	fp,#-4
	bra.s	L57602

L57548:
	addq.w	#1,U99854
	clr.w	d0
	move.w	U99854,d0
	cmp.w	#128,d0
	bcs.s	L57572
	clr.w	d0
	bra.s	L57648

L57572:
	clr.w	d0
	move.w	U99854,d0
	lsl.w	#1,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	#U101202,d0
	movea.l	d0,a0
	move.w	(a0),U100960
L57602:
	tst.w	U100960
	beq.s	L57548
	move.w	U100960,d0
	jsr	L358_1d
	move.w	d0,U100668
	move.w	U100960,d0
	jsr	L378_1d
	move.w	d0,U100960
	moveq	#1,d0
L57648:
	unlk	fp
	rts

L57652:
	link	fp,#0
	movem.l	d4-d7,-(sp)
	move.w	8(fp),d7
	move.w	10(fp),d6
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	beq  	L57798
	cmp.w	#1,d6
	bne.s	L57704
	move.w	d7,(sp)
	bsr  	L57838
	bsr  	L57808
	tst.w	d0
	bne.s	L57798
	bra.s	L57720

L57704:
	move.w	d6,(sp)
	move.w	d7,-(sp)
	jsr	L65948
	addq.l	#2,sp
	tst.w	d0
	beq.s	L57798
L57720:
	move.w	U98400,(sp)
	move.w	d7,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,d5
	move.w	#1,(sp)
	jsr	L64352
	move.w	d0,U98374
	bne.s	L57770
	tst.w	d5
	beq.s	L57768
	move.w	d5,(sp)
	bsr.s	L57862
	tst.w	d0
	bne.s	L57798
L57768:
	bra.s	L57790

L57770:
	move.w	d5,(sp)
	move.w	U98374,-(sp)
	jsr	L66568
	addq.l	#2,sp
	tst.w	d0
	beq.s	L57798
L57790:
	move.w	d7,(sp)
	jsr	L12242
L57798:
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7
	unlk	fp
	rts

L57808:
	link	fp,#-4
	bra.s	L57826

L57814:
	bsr  	L57986
	tst.w	d0
	bne.s	L57826
	clr.w	d0
	bra.s	L57834

L57826:
	bsr.s	L57902
	tst.w	d0
	bne.s	L57814
	moveq	#1,d0
L57834:
	unlk	fp
	rts

L57838:
	move.w	4(sp),d0
	jsr	L66356_1d
	move.w	d0,U100670
	rts

L57862:
	link	fp,#-4
	move.w	U100994,(sp)
	move.w	8(fp),-(sp)
	jsr	L66008
	addq.l	#2,sp
	cmp.w	U100984,d0
	beq.s	L57896
	clr.w	d0
	bra.s	L57898

L57896:
	moveq	#1,d0
L57898:
	unlk	fp
	rts

L57902:
	link	fp,#-4
	tst.w	U100670
	bne.s	.L57918
	clr.w	d0
	bra.s	.return
.L57918:
	move.w	U100670,d0
	jsr	L358_1d
	move.w	d0,U101490
	move.w	U100670,d0
	jsr	L378_1d
	jsr	L358_1d
	move.w	d0,U101182
	move.w	U100670,d0
	jsr	L66356_1d
	move.w	d0,U100670
	moveq	#1,d0
.return:
	unlk	fp
	rts

L57986:
	link	fp,#-4
	move.w	U101490,(sp)
	jsr	L9214
	cmpi.b	#46,U100754
	beq.s	.L58016
	clr.w	d0
	bra.s	.return
.L58016:
	moveq	#1,d0
.return:
	unlk	fp
	rts

L58022:
	link	fp,#-4
	tst.w	U100996
	bne.s	.L58038
	clr.w	d0
	bra.s	.return
.L58038:
	moveq	#1,d0
.return:
	unlk	fp
	rts

L58044:
	link	fp,#-4
	cmpi.w	#1,U100996
	beq.s	L58062
	clr.w	d0
	bra.s	L58064

L58062:
	moveq	#1,d0
L58064:
	unlk	fp
	rts

L58068:
	link	fp,#-4
	clr.w	U100996
	unlk	fp
	rts

L58082:
	link	fp,#-4
	clr.w	U101108
	clr.w	U100986
	unlk	fp
	rts

L58102:
	link	fp,#-4
	jsr	L74840
	move.l	U101030,(sp)
	move.l	#L74902,-(sp)
	move.l	T87206,-(sp)
	jsr	L54390
	addq.l	#8,sp
	unlk	fp
	rts

L58142:
	link	fp,#-4
	jsr	L53628
	jsr	L64160
	move.w	d0,U99864
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,U99818
	move.w	d0,(sp)
	jsr	L64276
	bra.s	L58212

L58188:
	bsr  	L60580
	bsr  	L60924
	tst.w	d0
	beq.s	L58212
	jsr	L47940
	jsr	L18690
L58212:
	jsr	L61904
	tst.w	d0
	beq.s	L58188
	jsr	L64180
	unlk	fp
	rts

L58232:
	link	fp,#-4
	move.w	U98716,(sp)
	move.w	U100636,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,U98376
	bne.s	.L58270
	jsr	L67690
.L58270:
	move.w	U101474,(sp)
	jsr	L64090
	move.w	U100636,(sp)
	jsr	L64090
	move.w	U99818,(sp)
	jsr	L64090
	move.w	U98376,d0
	jsr	L378_1d
	move.w	d0,(sp)
	jsr	L64090
	move.w	#6,(sp)
	jsr	L64300
	move.w	#18,(sp)
	jsr	L64090
	bsr  	L59950
	move.l	#U101014,(sp)
	jsr	L204
	tst.w	d0
	beq.s	.L58380
	jsr	L61834
	bsr  	L58830
	bra  	.L58606
.L58380:
	jsr	L64888
	jsr	L64732
	move.w	U98376,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L59090
	jsr	L64180
	move.w	#18,(sp)
	jsr	L68540
	jsr	L61834
	bsr  	L58610
	tst.w	d0
	bne  	.L58606
	move.w	#7,(sp)
	jsr	L64352
	move.w	d0,U99818
	move.w	U99864,(sp)
	move.w	#7,-(sp)
	jsr	L64408
	addq.l	#2,sp
	tst.w	U99818
	beq.s	.L58506
	move.w	U99818,d0
	jsr	L358_1d
	move.w	d0,U99864
	bsr  	L58878
.L58506:
	move.w	#18,(sp)
	jsr	L68540
	tst.w	U101198
	beq.s	.L58602
	bsr  	L60924
	tst.w	d0
	beq.s	.L58602
	bsr  	L60968
	move.w	U101046,(sp)
	move.l	#L55354,-(sp)
	jsr	L64994
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L54682,-(sp)
	move.l	T87290,-(sp)
	jsr	L54390
	adda.l	#16,sp
	jsr	L74840
	jsr	L47940
.L58602:
	bsr  	L58830
.L58606:
	unlk	fp
	rts

L58610:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	U99818,d0
	jsr	L378_1d
	tst.w	d0
	bne  	.L58818
	tst.w	U99864
	bne  	.L58818
	move.w	#11,(sp)
	jsr	L64352
	cmp.w	#18,d0
	bne  	.L58818
	jsr	L64994
	jsr	L65148
	move.w	#9,(sp)
	jsr	L64352
	move.w	d0,U100636
	move.w	d0,-(sp)
	jsr	L65014
	cmp.w	(sp)+,d0
	bne.s	.L58818
	move.w	U98716,(sp)
	clr.w	d0
	move.w	U100636,d0
	move.w	d0,U101156
	move.w	d0,-(sp)
	jsr	L66008
	addq.l	#2,sp
	move.w	d0,d7
	beq.s	.L58818
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,U99818
	beq.s	.L58818
	move.w	#10,(sp)
	jsr	L64326
	move.w	U99818,d0
	jsr	L358_1d
	move.w	d0,U99864
	move.w	#11,(sp)
	jsr	L64352
	move.w	d0,(sp)
	jsr	L64160
	move.w	d0,-(sp)
	bsr  	L60088
	addq.l	#2,sp
	jsr	L64180
	moveq	#1,d0
	bra.s	.return
.L58818:
	clr.w	d0
.return:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L58830:
	link	fp,#-4
	move.w	#7,(sp)
	jsr	L64326
	jsr	L66800
	jsr	L64224
	move.w	d0,U101156
	jsr	L64224
	move.w	d0,(sp)
	bsr  	L59986
	unlk	fp
	rts

L58878:
	link	fp,#-4
	move.l	#U101014,(sp)
	jsr	L204
	tst.w	d0
	bne  	.return
	jsr	L64888
.L58906:
	bsr  	L60948
	bra.s	.L58944
.L58912:
	bsr  	L59916
	tst.w	U99818
	beq  	.return
	move.w	U99818,d0
	jsr	L358_1d
	move.w	d0,U99864
.L58944:
	jsr	L61904
	tst.w	d0
	bne.s	.L58912
	tst.w	U98398
	beq.s	.L59078
	jsr	L64994
	move.w	d0,(sp)
	jsr	L66546
	tst.w	d0
	beq.s	.L59078
	jsr	L66768
;.L58986:
	jsr	L58082
	bsr  	L60968
	jsr	L64160
	move.w	d0,(sp)
	move.l	#L65620,-(sp)
	jsr	L64994
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L55354,-(sp)
	move.l	T87294,-(sp)
	jsr	L54390
	adda.l	#16,sp
	;bra.s	.L59056
	;bra.s	.L58986
;.L59056:
	jsr	L66800
	move.w	#2,(sp)
	jsr	L47436
	jsr	L47940
.L59078:
	bsr  	L59366
	bra  	.L58906
.return:
	unlk	fp
	rts

L59090:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	d7
	bne.s	.L59162
	tst.w	U101198
	beq.s	.L59158
	bsr  	L60968
	jsr	L64994
	move.w	d0,(sp)
	move.l	#L54682,-(sp)
	move.l	T87210,-(sp)
	jsr	L54390
	addq.l	#8,sp
	jsr	L74840
	jsr	L47940
.L59158:
	bra  	.L59356
.L59162:
	jsr	L61884
	tst.w	d0
	beq.s	.L59186
	jsr	L64994
	move.w	d0,(sp)
	jsr	L66942
.L59186:
	bsr  	L60616
	bsr  	L60924
	tst.w	d0
	bne.s	.L59212
	jsr	L64994
	move.w	d0,(sp)
	jsr	L67152
.L59212:
	jsr	L64746
	jsr	L74764
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,(sp)
	bsr  	L59090
	jsr	L64160
	move.w	d0,(sp)
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,-(sp)
	jsr	L11782
	addq.l	#2,sp
	tst.w	U101198
	beq.s	.L59350
	bsr  	L60968
	jsr	L64160
	move.w	d0,(sp)
	move.l	#L55354,-(sp)
	move.w	d7,d0
	jsr	L358_1d
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L54682,-(sp)
	move.l	T87286,-(sp)
	jsr	L54390
	adda.l	#16,sp
	jsr	L74840
	jsr	L47940
.L59350:
	jsr	L64180
.L59356:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L59366:
	link	fp,#-4
	jsr	L61834
	jsr	L75710
	jsr	L61904
	tst.w	d0
	bne  	L59726
	move.w	U99864,d0
	jsr	L358_1d
	move.w	d0,U100636
	move.w	d0,(sp)
	jsr	L65266
	tst.w	d0
	beq  	L59724
	tst.w	U100636
	bne.s	L59448
	clr.w	U101046
	bsr  	L59950
	bra  	L59722

L59448:
	move.w	U100636,(sp)
	jsr	L65356
	tst.w	d0
	beq.s	L59472
	bsr  	L59730
	bra  	L59722

L59472:
	move.w	U100636,(sp)
	jsr	L65726
	tst.w	d0
	beq  	L59710
	move.w	U100996,U98380
	move.w	#-1,U100996
	move.w	U100636,(sp)
	jsr	L9468
	move.w	d0,U98382
	move.w	U98380,U100996
	tst.w	U98382
	beq.s	L59552
	bsr  	L59730
	bra  	L59726

L59552:
	tst.w	U99178
	beq.s	L59622
	jsr	L50570
	cmpi.b	#34,U100754
	bne.s	L59590
	jsr	L61992
	bsr  	L59950
	bra  	L59726

L59590:
	cmpi.b	#58,U100754
	bne.s	L59622
	jsr	L61992
	move.w	U101046,(sp)
	bsr  	L60254
	bsr  	L59950
	bra.s	L59726

L59622:
	move.w	U100636,(sp)
	jsr	L65878
	move.w	d0,U98378
	bne.s	L59648
	bsr  	L58232
	bra.s	L59726

L59648:
	move.w	U101460,(sp)
	jsr	L64090
	move.w	U99864,U101460
	bsr  	L59950
	move.w	U98378,(sp)
	jsr	L510
	move.w	U101460,U101156
	jsr	L64224
	move.w	d0,U101460
	bra.s	L59722

L59710:
	move.l	#T86328,(sp)
	jsr	L67406
L59722:
	bra.s	L59726

L59724:
	bsr.s	L59730
L59726:
	unlk	fp
	rts

L59730:
	link	fp,#-4
	move.w	U100636,U101046
	bsr  	L59950
	unlk	fp
	rts

L59752:
	link	fp,#-4
	bsr  	L59366
	bsr  	L60948
	unlk	fp
	rts

L59768:
	link	fp,#-4
	move.w	U99864,(sp)
	jsr	L64090
	clr.w	d0
	move.w	U101046,d0
	move.w	d0,U99864
	move.w	d0,(sp)
	jsr	L64090
	jsr	L75710
	bra.s	L59816

L59814:
	bsr.s	L59752
L59816:
	jsr	L61904
	tst.w	d0
	beq.s	L59814
	jsr	L64764
	jsr	L64224
	move.w	d0,U99864
	unlk	fp
	rts

L59848:
	link	fp,#-4
	move.w	U99864,(sp)
	jsr	L64090
	move.w	U101046,U99864
	jsr	L61834
	bra.s	L59890

L59882:
	bsr  	L60948
	bsr  	L60580
L59890:
	jsr	L61904
	tst.w	d0
	beq.s	L59882
	jsr	L64224
	move.w	d0,U99864
	unlk	fp
	rts

L59916:
	link	fp,#-4
	tst.w	U99818
	beq.s	L59946
	move.w	U99818,d0
	jsr	L378_1d
	move.w	d0,U99818
L59946:
	unlk	fp
	rts

L59950:
	link	fp,#-4
	jsr	L61904
	tst.w	d0
	bne.s	.L59982
	move.w	U99864,d0
	jsr	L378_1d
	move.w	d0,U99864
.L59982:
	unlk	fp
	rts

L59986:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	bra.s	L60064

L59996:
	tst.w	U101474
	bne.s	L60016
	move.l	#T86331,(sp)
	jsr	L67406
L60016:
	move.w	U101474,d7
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	node_del
	move.w	U101474,d0
	jsr	L378_1d
	move.w	d0,U101474
	move.w	d7,(sp)
	jsr	node_del
L60064:
	clr.w	d0
	move.w	U101474,d0
	cmp.w	8(fp),d0
	bne.s	L59996
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L60088:
	link	fp,#-2
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	U101474,d6
	cmp.w	10(fp),d6
	beq  	.return
	clr.w	d0
	move.w	d7,d0
	move.w	d0,-2(fp)
	cmp.w	d0,d6
	bne.s	.L60136
	move.w	10(fp),(sp)
	bsr  	L59986
	bra.s	.return
.L60136:
	tst.w	d7
	bne.s	.L60152
	move.l	#T86334,(sp)
	jsr	L67406
.L60152:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,(sp)
	jsr	L64090
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	node_del
	move.w	d7,(sp)
	jsr	node_del
	move.w	d6,d0
	jsr	L378_1d
	cmp.w	-2(fp),d0
	beq.s	.L60216
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
.L60216:
	jsr	L64224
	move.w	d0,d7
	cmp.w	10(fp),d7
	beq.s	.L60232
	bra.s	.L60136
.L60232:
	move.w	d7,d1
	move.w	d6,d0
	jsr	L65226_2d
.return:
	movem.l	(sp)+,d5-d7
	unlk	fp
	rts

L60254:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L11848
	move.w	d0,d6
	bne.s	L60334
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	beq.s	L60310
	move.w	U98718,(sp)
	move.w	d7,-(sp)
	jsr	L65948
	addq.l	#2,sp
	move.w	d0,d6
	bne.s	L60318
L60310:
	move.w	d7,(sp)
	jsr	L67730
L60318:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,U101046
	bra.s	L60348

L60334:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,U101046
L60348:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L60358:
	link	fp,#-6
	movea.l	8(fp),a0
	movea.l	8(a0),a0
	jsr	(a0)
	bra  	.L60564
.L60376:
	clr.w	-2(fp)
	bra  	.L60526
.L60384:
	movea.l	8(fp),a0
	move.w	-2(fp),d1
	asl.w	#4,d1
	ext.l	d1
	move.l	0(a0,d1.l),(sp)
	move.w	U100636,-(sp)
	jsr	L62078
	addq.l	#2,sp
	tst.w	d0
	beq.s	.L60522
	move.w	U100636,(sp)
	jsr	L64090
	bsr  	L59950
	jsr	L64160
	move.w	d0,-(sp)
	movea.l	8(fp),a0
	movea.l	12(a0),a0
	jsr	(a0)
	addq.l	#2,sp
	jsr	L64746
	movea.l	8(fp),a0
	movea.l	8(a0),a0
	jsr	(a0)
	move.w	#1,-(sp)
	jsr	L64352
	addq.l	#2,sp
	move.w	d0,-(sp)
	movea.l	8(fp),a0
	movea.l	12(a0),a0
	jsr	(a0)
	addq.l	#2,sp
	movea.l	8(fp),a0
	move.w	-2(fp),d1
	asl.w	#4,d1
	ext.l	d1
	movea.l	4(a0,d1.l),a0
	jsr	(a0)
	jsr	L64180
	bra.s	.L60546
.L60522:
	addq.w	#1,-2(fp)
.L60526:
	movea.l	8(fp),a0
	move.w	-2(fp),d1
	asl.w	#4,d1
	ext.l	d1
	tst.l	0(a0,d1.l)
	bne  	.L60384
.L60546:
	movea.l	8(fp),a0
	move.w	-2(fp),d1
	asl.w	#4,d1
	ext.l	d1
	tst.l	0(a0,d1.l)
	beq.s	.L60576
.L60564:
	jsr	L61904
	tst.w	d0
	beq  	.L60376
.L60576:
	unlk	fp
	rts

L60580:
	link	fp,#-4
	move.l	#T86072,(sp)
	bsr  	L60358
	unlk	fp
	rts

L60598:
	link	fp,#-4
	move.l	#T86120,(sp)
	bsr  	L60358
	unlk	fp
	rts

L60616:
	link	fp,#-4
	move.l	#T86200,(sp)
	bsr  	L60358
	unlk	fp
	rts

L60634:
	link	fp,#-4
	move.l	#T86248,(sp)
	bsr  	L60358
	unlk	fp
	rts

L60652:
	link	fp,#-4
	move.l	#T86296,(sp)
	bsr  	L60358
	unlk	fp
	rts

L60670:
	link	fp,#-4
	bsr  	L59366
	move.w	U99864,(sp)
	jsr	L65840
	move.w	d0,U100636
	unlk	fp
	rts

L60700:
	link	fp,#-4
	bsr  	L60924
	tst.w	d0
	bne.s	L60722
	move.w	8(fp),(sp)
	jsr	L66942
L60722:
	unlk	fp
	rts

L60726:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr.s	L60700
	move.w	U101046,(sp)
	jsr	L65322
	tst.w	d0
	bne.s	L60774
	move.w	U101046,(sp)
	move.w	d7,-(sp)
	jsr	L67066
	addq.l	#2,sp
L60774:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L60784:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr.s	L60700
	move.w	U101046,(sp)
	jsr	L65356
	tst.w	d0
	bne.s	L60842
	jsr	L61432
	tst.w	d0
	bne.s	L60842
	move.w	U101046,(sp)
	move.w	d7,-(sp)
	jsr	L67066
	addq.l	#2,sp
L60842:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L60852:
	link	fp,#-4
	move.w	U101046,(sp)
	jsr	L64224
	move.w	d0,-(sp)
	jsr	L6590
	addq.l	#2,sp
	move.w	d0,(sp)
	bsr.s	L60886
	unlk	fp
	rts

L60886:
	link	fp,#-4
	tst.w	8(fp)
	beq.s	.L60906
	clr.w	d0
	move.w	U100984,d0
	bra.s	.L60914
.L60906:
	clr.w	d0
	move.w	U101186,d0
.L60914:
	move.w	d0,U101046
	unlk	fp
	rts

L60924:
	link	fp,#-4
	cmpi.w	#1,U101046
	bne.s	L60942
	clr.w	d0
	bra.s	L60944

L60942:
	moveq	#1,d0
L60944:
	unlk	fp
	rts

L60948:
	link	fp,#-4
	bsr.s	L60924
	tst.w	d0
	beq.s	L60964
	jsr	L67028
L60964:
	unlk	fp
	rts

L60968:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L48048
	jsr	L74840
	jsr	L64994
	tst.w	d0
	bne.s	L61002
	clr.w	d7
	bra.s	L61024

L61002:
	moveq	#1,d7
	bra.s	L61008

L61006:
	addq.w	#1,d7
L61008:
	jsr	L65148
	jsr	L65014
	tst.w	d0
	bne.s	L61006
L61024:
	move.w	#91,(sp)
	jsr	L74948
	move.w	d7,(sp)
	jsr	L55076
	move.l	#T86337,(sp)
	jsr	L74902
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L61064:
	link	fp,#-4
	clr.w	d0
	move.w	U100626,d0
	cmp.w	U101460,d0
	bne.s	.L61090
	move.w	#32767,d0
	bra.s	.return
.L61090:
	move.w	8(fp),d0
.return:
	unlk	fp
	rts

L61098:
	link	fp,#-4
	cmpi.w	#2,8(fp)
	ble.s	L61116
	bsr  	L61884
	bra.s	L61128

L61116:
	tst.w	8(fp)
	beq.s	L61126
	clr.w	d0
	bra.s	L61128

L61126:
	moveq	#1,d0
L61128:
	unlk	fp
	rts

L61132:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr.s	L61064
	move.w	d0,d7
	move.w	d7,(sp)
	bsr.s	L61098
	tst.w	d0
	beq.s	L61178
	move.w	U101460,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L66942
L61178:
	move.w	d7,d0
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L61190:
	link	fp,#-4
	move.l	#L60616,(sp)
	bsr.s	L61222
	unlk	fp
	rts

L61206:
	link	fp,#-4
	move.l	#L60580,(sp)
	bsr.s	L61222
	unlk	fp
	rts

L61222:
	link	fp,#-4
	bsr  	L61904
	tst.w	d0
	beq.s	L61254
	move.w	U101460,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L66942
L61254:
	movea.l	8(fp),a0
	jsr	(a0)
	jsr	L60924
	tst.w	d0
	bne.s	L61290
	move.w	U101460,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L67152
L61290:
	unlk	fp
	rts

L61294:
	link	fp,#-4
	bsr.s	L61190
	clr.w	d0
	move.w	U101046,d0
	unlk	fp
	rts

L61312:
	link	fp,#-4
	bsr.s	L61294
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	L61336
	jsr	L67118
L61336:
	unlk	fp
	rts

L61340:
	link	fp,#-4
	bsr.s	L61294
	move.w	d0,(sp)
	jsr	L65356
	tst.w	d0
	bne.s	L61370
	bsr.s	L61432
	tst.w	d0
	bne.s	L61370
	jsr	L67118
L61370:
	unlk	fp
	rts

L61374:
	link	fp,#-4
	bsr.s	L61340
	jsr	L64746
	unlk	fp
	rts

L61390:
	link	fp,#-4
	move.w	8(fp),(sp)
	jsr	L65266
	tst.w	d0
	beq.s	L61422
	move.w	8(fp),(sp)
	jsr	L9468
	tst.w	d0
	bne.s	L61426
L61422:
	clr.w	d0
	bra.s	L61428

L61426:
	moveq	#1,d0
L61428:
	unlk	fp
	rts

L61432:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	U101046,(sp)
	bsr.s	L61390
	move.w	d0,d7
	beq.s	L61464
	jsr	L52990
	jsr	L64764
L61464:
	move.w	d7,d0
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L61476:
	bsr  	L61340
	move.w	U101046,-(sp)
	jsr	L65532
	addq	#2,sp
	rts

L61500:
	link	fp,#-4
	bsr  	L61294
	move.w	d0,(sp)
	bsr  	L62492
	unlk	fp
	rts

L61518:
	bsr  	L61190
	bra  	L61710

L61534:
	bsr.s	L61518
	jmp	L64746

L61550:
	bsr  	L61294
	tst.w	d0
	bne.s	.return
	jmp	L67118
.return:
	rts

L61572:
	link	fp,#-4
	bsr  	L61294
	move.w	d0,(sp)
	jsr	L64090
	unlk	fp
	rts

L61592:
	bsr.s	L61500
	jmp	L64746

L61608:
	bsr  	L61206
	clr.w	d0
	move.w	U101046,d0
	cmp.w	U100984,d0
	beq.s	.return
	clr.w	d0
	move.w	U101046,d0
	cmp.w	U101186,d0
	beq.s	.return
	jmp	L67508
.return:
	rts

L61658:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	bsr  	L61476
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d7
	blt.s	L61694
	cmp.w	8(fp),d7
	bgt.s	L61694
	move.w	d7,d0
	bra.s	L61700

L61694:
	jsr	L67118
L61700:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L61710:
	link	fp,#-4
	move.w	U101046,(sp)
	bsr  	L62492
	move.w	U101046,(sp)
	jsr	L65878
	tst.w	d0
	beq.s	L61758
	bsr.s	L61762
	tst.w	d0
	bne.s	L61758
	move.w	U101046,(sp)
	jsr	L66904
L61758:
	unlk	fp
	rts

L61762:
	link	fp,#-4
	move.w	U98718,(sp)
	move.w	U101114,-(sp)
	jsr	L66008
	addq.l	#2,sp
	cmp.w	U100984,d0
	beq.s	L61798
	clr.w	d0
	bra.s	L61800

L61798:
	moveq	#1,d0
L61800:
	unlk	fp
	rts

L61804:
	link	fp,#-4
	move.w	U100742,(sp)
	jsr	L64160
	move.w	d0,-(sp)
	jsr	L66244
	addq.l	#2,sp
	unlk	fp
	rts

L61834:
	move.w	#1,U101046
	rts

L61850:
	link	fp,#-4
	move.w	U99864,d0
	jsr	L358_1d
	cmp.w	U100652,d0
	beq.s	L61878
	clr.w	d0
	bra.s	L61880

L61878:
	moveq	#1,d0
L61880:
	unlk	fp
	rts

L61884:
	link	fp,#-4
	bsr.s	L61904
	tst.w	d0
	beq.s	.L61898
	moveq	#1,d0
	bra.s	.L61900

.L61898:
	bsr.s	L61850
.L61900:
	unlk	fp
	rts

L61904:
	tst.w	U99864
	beq.s	.ret1
	clr.w	d0
	rts
.ret1:
	moveq	#1,d0
	rts

L61926:
	link	fp,#-4
	move.w	8(fp),(sp)
	jsr	L53070
	jsr	L64764
	unlk	fp
	rts

L61950:
	link	fp,#-4
	move.l	8(fp),(sp)
	jsr	L52972
	jsr	L64764
	unlk	fp
	rts

L61974:
	link	fp,#-4
	move.w	#1,U99178
	bsr.s	L61992
	unlk	fp
	rts

L61992:
	link	fp,#-4
	jsr	L53396
	jsr	L64764
	unlk	fp
	rts

L62012:
	link	fp,#-4
	move.l	8(fp),d0
	move.l	d0,U101030
	move.l	d0,(sp)
	jsr	L83914
	move.w	d0,U99178
	jsr	L53396
	jsr	L64224
	unlk	fp
	rts

L62056:
	link	fp,#-4
	move.l	8(fp),(sp)
	bsr.s	L62012
	move.w	d0,(sp)
	jsr	L64090
	unlk	fp
	rts

L62078:
	move.w	4(sp),-(sp)
	jsr	L65726
	tst.w	d0
	beq.s	.ret0
	jsr	L65878
	tst.w	d0
	beq.s	.ret0
	jsr	L378_1d
	clr.l	d1
	move.w	d0,d1
	add.l	p_tbase,d1
	cmp.l	8(sp),d1
	beq.s	.ret1
	clr.w	d0
.ret0:
	addq	#2,sp
	rts
.ret1:
	moveq	#1,d0
	addq	#2,sp
	rts

L62166:
	link	fp,#-4
	jsr	L64732
	bra.s	.L62184
.L62178:
	jsr	L64470
.L62184:
	move.w	8(fp),d0
	subq.w	#1,8(fp)
	tst.w	d0
	bne.s	.L62178
	jsr	L64764
	unlk	fp
	rts

L62206:
	link	fp,#-4
	move.w	U101046,(sp)
	jsr	L65532
	unlk	fp
	rts

L62226:
	link	fp,#-4
	bsr.s	L62206
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	unlk	fp
	rts

L62246:
	link	fp,#-4
	move.w	#255,(sp)
	bsr  	L61658
	unlk	fp
	rts

L62262:
	link	fp,#-4
	move.w	#1,(sp)
	move.w	8(fp),-(sp)
	bsr.s	L62282
	addq.l	#2,sp
	unlk	fp
	rts

L62282:
	link	fp,#-4
	clr.w	d0
	move.w	d0,U99864
	move.w	d0,U99818
	bra.s	L62344

L62302:
	jsr	L64160
	cmp.w	8(fp),d0
	bne.s	L62338
	jsr	L64942
	move.w	10(fp),(sp)
	move.l	#U101014,-(sp)
	jsr	L218
	addq.l	#4,sp
L62338:
	jsr	L64028
L62344:
	jsr	L64006
	tst.w	d0
	beq.s	L62302
	tst.w	10(fp)
	beq.s	L62376
	jsr	L60924
	tst.w	d0
	beq.s	L62376
	jsr	L67028
L62376:
	move.w	10(fp),(sp)
	move.l	#U101158,-(sp)
	jsr	L218
	addq.l	#4,sp
	unlk	fp
	rts

L62398:
	link	fp,#-4
	jsr	L64160
	move.w	d0,(sp)
	jsr	L65322
	tst.w	d0
	bne.s	L62426
	jsr	L67118
L62426:
	unlk	fp
	rts

L62430:
	tst.w	U101476
	beq.s	.L62464
	tst.w	U100998
	beq.s	.L62458
	clr.w	U99190
	bra.s	.L62464
.L62458:
	jsr	L67286
.L62464:
	rts

L62468:
	cmpi.w	#1,U100986
	bne.s	.L62488
	jsr	L67334
.L62488:
	rts

L62492:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	bne.s	L62522
	jsr	L67118
L62522:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L62532:
	clr.w	U101460
	clr.w	U101156
	clr.w	U98402
	clr.w	U101474
	clr.w	U99818
	clr.w	U99864
	clr.w	U100674
	jmp	L61834

node_add:
	move.l	d7,-(sp)

	cmpi.w	#100,nodes_free
	bls.s	.nodes_low

.enough_nodes:
	move.w	U99186,d7
	tst.w	d7
	beq.s	.eq
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,U99186
.L62790:
	clr.w	d1
	move.w	d7,d0
	bsr  	L65226_2d
	subq.w	#1,nodes_free
	move.w	d7,d0

	move.l	(sp)+,d7
	rts

.eq	move.w	U100620,d0
	cmp.w	nodes_max,d0
	bcc.s	.err_nodes
	clr.w	d1
	move.w	U99176,d7
	move.w	d7,d0
	bsr  	L65186_2d
	addq.w	#1,U99176
	move.w	d7,(sp)
	bsr  	L63932
	addq.w	#1,U100620
	bra.s	.L62790

.nodes_low:
	jsr	is_oom
	tst.w	d0
	bne.s	.err_mem

	tst.w	U99188
	bne.s	.enough_nodes
	move.w	#1,U99188
	bsr  	word_recycle
	tst.w	U99188
	beq	.enough_nodes
	bsr	node_add
	move.w	d0,U101004
	jsr	do_err_nodes_low
	bra	.enough_nodes

.err_nodes:
	move.l	err_nodes,(sp)
	move.w	#1,-(sp)
	jsr	form_alert
	addq.l	#2,sp

	move.w	#23,(sp)
	move.l	#U101158,-(sp)
	jsr	L218
	addq.l	#4,sp
	bra	.L62790

.err_mem:
	move.l	err_mem,(sp)
	jsr	alert
	bra	.enough_nodes

U99186: dc.w 0

node_del:
	move.l	d7,-(sp)
	move.w	8(sp),d7
	clr.w	d1
	move.w	d7,d0
	bsr  	L65186_2d
	move.w	U99186,d1
	move.w	d7,d0
	bsr  	L65226_2d
	move.w	d0,U99186
	addq.w	#1,nodes_free
	move.l	(sp)+,d7
	rts

word_recycle:
	clr.w	U99186
	bsr  	L63344
	bsr  	L64782
	move.w	U99864,-(sp)
	bsr  	L63544
	move.w	U99818,(sp)
	bsr  	L63544
	move.w	U98398,(sp)
	bsr  	L63544
	move.w	U100736,(sp)
	bsr  	L63544
	move.w	U100674,(sp)
	bsr  	L63544
	move.w	U101034,(sp)
	bsr  	L63544
	move.w	U99862,(sp)
	bsr  	L63544
	move.w	U101474,(sp)
	bsr  	L63544
	move.w	U100890,(sp)
	bsr  	L63544
	move.w	U100888,(sp)
	bsr  	L63444
	move.w	U100888,d0
	jsr	L378_1d
	jsr	L378_1d
	move.w	d0,(sp)
	bsr  	L63544
	jsr	L60924
	tst.w	d0
	beq.s	.L63042
	move.w	U101046,(sp)
	bsr  	L63544
.L63042:
	move.w	U101004,(sp)
	bsr  	L63792
	bsr.s	do_recycle
	cmpi.w	#100,nodes_free
	bcs.s	.return
	clr.w	U99188
.return:
	addq	#2,sp
	rts

do_recycle:
	movem.l	d6-d7,-(sp)
	subq	#2,sp
	move.w	#-1,U98384
	bra  	.L63228
.L63094:
	movea.w	U98384,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(a0),d6
	bra.s	.L63140
.L63112:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L63864
	tst.w	d0
	bne.s	.L63144
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
.L63140:
	tst.w	d6
	bne.s	.L63112
.L63144:
	movea.w	U98384,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	d6,(a0)
	beq.s	.L63228
	bra.s	.L63210
.L63164:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L63864
	tst.w	d0
	beq.s	.L63192
	move.w	d6,(sp)
	bsr  	L63792
	move.w	d7,d6
	bra.s	.L63210
.L63192:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d1
	move.w	d6,d0
	bsr  	L65226_2d
.L63210:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d7
	bne.s	.L63164
	move.w	d6,(sp)
	bsr  	L63792
.L63228:
	addq.w	#1,U98384
	move.w	U98384,d0
	cmp.w	#128,d0
	blt  	.L63094
	move.w	nodes_max,d0
	sub.w	U100620,d0
	move.w	d0,nodes_free
	move.w	#-1,U98384
	bra.s	.L63314
.L63278:
	move.w	U100734,d6
	add.w	U98384,d6
	move.w	d6,(sp)
	bsr  	L63864
	tst.w	d0
	beq.s	.L63308
	move.w	d6,(sp)
	bsr  	L63932
	bra.s	.L63314
.L63308:
	move.w	d6,(sp)
	bsr  	node_del
.L63314:
	addq.w	#1,U98384
	move.w	U98384,d0
	cmp.w	U100620,d0
	bcs.s	.L63278
	addq	#2,sp
	movem.l	(sp)+,d6-d7
	rts

L63344:
	link	fp,#0
	movem.l	d3-d7,-(sp)
	moveq	#-1,d6
	bra.s	.L63424
.L63356:
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(a0),d7
	bra.s	.L63420
.L63370:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d5
	move.w	d5,d0
	jsr	L378_1d
	jsr	L378_1d
	move.w	d0,d4
	beq.s	.L63410
	move.w	d5,(sp)
	bsr.s	L63444
	move.w	d4,(sp)
	bsr  	L63544
.L63410:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L63420:
	tst.w	d7
	bne.s	.L63370
.L63424:
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#128,d0
	blt.s	.L63356
	tst.l	(sp)+
	movem.l	(sp)+,d4-d7
	unlk	fp
	rts

L63444:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr  	L63864
	tst.w	d0
	bne.s	.return
	move.w	d7,(sp)
	bsr  	L63792
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d6
	move.w	d7,(sp)
	bsr  	L63792
	bra.s	.L63530
.L63500:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L63792
	move.w	d6,(sp)
	bsr  	L63792
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d6
.L63530:
	tst.w	d6
	bne.s	.L63500
.return:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L63544:
	move.l	d7,-(sp)
	move.w	8(sp),d7
	subq	#2,sp
	bra  	.L63690
.L63560:
	move.w	d7,(sp)
	bsr  	L63864
	tst.w	d0
	bne  	.return
	cmp.w	#32,d7
	bcc.s	.L63586
	cmp.w	#18,d7
	bcc  	.return
.L63586:
	move.w	d7,(sp)
	bsr  	L65266
	tst.w	d0
	beq.s	.L63648
	move.w	d7,(sp)
	bsr  	L65356
	tst.w	d0
	beq.s	.L63638
	move.w	d7,(sp)
	bsr  	L65454
	tst.w	d0
	beq.s	.L63630
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,(sp)
	bsr  	L63792
.L63630:
	move.w	d7,(sp)
	bsr  	L63792
	bra.s	.L63644
.L63638:
	move.w	d7,(sp)
	bsr  	L63444
.L63644:
	bra.s	.return
.L63648:
	move.w	d7,(sp)
	bsr  	L63792
	jsr	L75962
	tst.w	d0
	beq.s	.L63666
	bsr.s	do_err_stackgc
.L63666:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr  	L63544
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L63690:
	tst.w	d7
	bne  	.L63560
.return:
	addq	#2,sp
	move.l	(sp)+,d7
	rts

do_err_stackgc:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.l	err_stackgc,(sp)
	move.w	#1,-(sp)
	jsr	form_alert
	addq.l	#2,sp
	moveq	#-1,d7
	bra.s	.L63752
.L63736:
	move.w	d7,(sp)
	clr.w	d0
	move.w	U100734,d0
	add.w	d0,(sp)
	bsr  	L63932
.L63752:
	addq.w	#1,d7
	move.w	d7,d0
	cmp.w	U100620,d0
	bcs.s	.L63736
	move.w	#1,(sp)
	move.l	#U101158,-(sp)
	jsr	L218
	addq.l	#4,sp
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L63792:
	clr.l	d0
	move.w	4(sp),d0

	moveq	#7,d2
	movea.l	#pow2_table,a0
	and.l	d0,d2
	move.b	0(a0,d2.w),d2

	movea.l	U101036,a0
	lsr.w	#3,d0
	or.b	d2,0(a0,d0.l)

	rts

L63864:
	move.w	4(sp),d2

	move.w	d2,d1
	movea.l	U101036,a0
	lsr.w	#3,d1
	move.b	0(a0,d1.w),d0

	moveq	#7,d1
	movea.l	#pow2_table,a0
	and.w	d2,d1
	move.b	0(a0,d1.w),d1

	and.w	d1,d0
	rts

L63932:
	move.w	4(sp),d2

	moveq	#7,d0
	movea.l	#pow2_table,a0
	and.w	d2,d0
	move.b	0(a0,d0.w),d0

	not.w	d0
	movea.l	U101036,a0
	move.w	d0,d1
	lsr.w	#3,d2
	and.b	d1,0(a0,d2.w)

	rts

pow2_table: dc.b 1,2,4,8,16,32,64,128

L64006:
	link	fp,#-4
	tst.w	U98402
	beq.s	L64022
	clr.w	d0
	bra.s	L64024

L64022:
	moveq	#1,d0
L64024:
	unlk	fp
	rts

L64028:
	link	fp,#-4
	bsr  	L64160
	cmp.w	#18,d0
	bne.s	L64056
	move.w	#10,(sp)
	bsr  	L64352
	move.w	d0,U101474
L64056:
	move.w	U98402,(sp)
	bsr  	L64594
	move.w	d0,(sp)
	move.w	U98402,-(sp)
	bsr  	L64544
	addq.l	#2,sp
	move.w	d0,U98402
	unlk	fp
	rts

L64090:
	move.l	a3,-(sp)
	movea.l	#U101004,a3
	movea.l	#U98402,a2
	move.w	8(sp),d1
	move.w	(a3),d0
	bsr  	L65226_2d
	move.w	(a2),d1
	bsr  	L65186_2d
	move.w	d0,(a2)
	bsr  	node_add
	move.w	d0,(a3)
	move.l	(sp)+,a3
	rts

L64160:
	move.w	U98402,d0
	jmp	L378_1d

U98402: dc.w 0

L64180:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	U98402,d7
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,U98402
	move.w	d7,(sp)
	bsr  	node_del
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L64224:
	movem.l	d6-d7,-(sp)
	bsr.s	L64160
	move.w	d0,d7
	move.w	U98402,d6
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,U98402
	move.w	d6,-(sp)
	bsr  	node_del
	addq	#2,sp
	clr.w	d0
	move.w	d7,d0
	movem.l	(sp)+,d6-d7
	rts

L64276:
	move.w	4(sp),d1
	move.w	U98402,d0
	jmp 	L65226_2d

L64300:
	link	fp,#-4
	bra.s	.L64310
.L64306:
	bsr  	L64732
.L64310:
	move.w	8(fp),d0
	subq.w	#1,8(fp)
	tst.w	d0
	bne.s	.L64306
	unlk	fp
	rts

L64326:
	link	fp,#-4
	bra.s	.L64336
.L64332:
	bsr  	L64180
.L64336:
	move.w	8(fp),d0
	subq.w	#1,8(fp)
	tst.w	d0
	bne.s	.L64332
	unlk	fp
	rts

L64352:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	U98402,d7
	bra.s	.L64378
.L64368:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d7
.L64378:
	move.w	8(fp),d0
	subq.w	#1,8(fp)
	tst.w	d0
	bne.s	.L64368
	move.w	d7,(sp)
	move.w	d7,d0
	jsr	L378_1d
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L64408:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	10(fp),d7
	move.w	U98402,d6
	bra.s	.L64438
.L64428:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,d6
.L64438:
	move.w	8(fp),d0
	subq.w	#1,8(fp)
	tst.w	d0
	bne.s	.L64428
	move.w	d7,d1
	move.w	d6,d0
	bsr  	L65226_2d
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L64470:
	move.l	d7,-(sp)
	move.w	U98402,d0
	jsr	L358_1d
	move.w	d0,d7
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d1
	move.w	U98402,d0
	bsr  	L65186_2d
	move.w	U98402,d1
	move.w	d7,d0
	bsr  	L65226_2d
	move.w	d7,U98402
	move.l	(sp)+,d7
	rts

L64544:	; optimize me
	link	fp,#0
	move.l	d7,-(sp)
	move.w	8(fp),d7
	bra.s	.do
.loop:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,d7
.do:
	move.w	10(fp),d0
	subq.w	#1,10(fp)
	tst.w	d0
	bne.s	.loop

	clr.w	d0
	move.w	d7,d0
	move.l	(sp)+,d7
	unlk	fp
	rts

L64594:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
	cmp.w	#20,d7
	bne.s	L64626
	moveq	#10,d0
	bra.s	L64648

L64626:
	cmp.w	#18,d7
	bne.s	L64636
	moveq	#11,d0
	bra.s	L64648

L64636:
	cmp.w	#22,d7
	bne.s	L64646
	moveq	#9,d0
	bra.s	L64648

L64646:
	moveq	#1,d0
L64648:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L64658:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	d7
	beq.s	.L64692
	move.w	d7,(sp)
	move.w	U98402,-(sp)
	bsr  	L64544
	addq.l	#2,sp
	move.w	d0,(sp)
	bra.s	.L64698
.L64692:
	move.w	U98402,d0
	move.w	d0,(sp)
.L64698:
	jsr	L378_1d
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L64714:
	link	fp,#-4
	bsr  	L64160
	move.w	d0,(sp)
	bsr  	L64090
	unlk	fp
	rts

L64732:
	link	fp,#-4
	clr.w	(sp)
	bsr  	L64090
	unlk	fp
	rts

L64746:
	link	fp,#-4
	move.w	U101046,(sp)
	bsr  	L64090
	unlk	fp
	rts

L64764:
	bsr  	L64224
	move.w	d0,U101046
	rts

L64782:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	move.w	U98402,d6
	bra.s	.L64874
.L64798:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d7
	move.w	d7,(sp)
	bsr  	L63544
	cmp.w	#22,d7
	bhi.s	.L64830
	cmp.w	#18,d7
	bcs.s	.L64830
	moveq	#7,d0
	bra.s	.L64832
.L64830:
	moveq	#1,d0
.L64832:
	move.w	d0,U98386
	bra.s	.L64858
.L64840:
	move.w	d6,d0
	jsr	L358_1d
	move.w	d0,d7
	move.w	d6,(sp)
	bsr  	L63792
	move.w	d7,d6
.L64858:
	move.w	U98386,d0
	subq.w	#1,U98386
	tst.w	d0
	bne.s	.L64840
.L64874:
	tst.w	d6
	bne.s	.L64798
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L64888:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.w	d7
	bra.s	L64926

L64900:
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U101014,a1
	move.w	0(a0,a1.l),(sp)
	move.w	d7,-(sp)
	addq.w	#1,(sp)
	bsr  	L64408
	addq.l	#2,sp
	addq.w	#1,d7
L64926:
	cmp.w	#6,d7
	blt.s	L64900
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L64942:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.w	d7
	bra.s	L64978

L64954:
	move.w	d7,(sp)
	addq.w	#1,(sp)
	bsr  	L64658
	move.w	d0,-(sp)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U101014,a0
	move.w	(sp)+,(a0)
	addq.w	#1,d7
L64978:
	cmp.w	#6,d7
	blt.s	L64954
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L64994:
	link	fp,#-4
	move.w	U98402,U99866
	bsr.s	L65014
	unlk	fp
	rts

L65014:
	link	fp,#-4
	bra.s	L65088

L65020:
	move.w	U99866,d0
	jsr	L378_1d
	cmp.w	#22,d0
	bne.s	L65042
	clr.w	d0
	bra.s	L65098

L65042:
	move.w	U99866,d0
	jsr	L378_1d
	cmp.w	#18,d0
	bne.s	L65086
	move.w	#9,(sp)
	move.w	U99866,-(sp)
	bsr  	L64544
	addq.l	#2,sp
	jsr	L378_1d
	bra.s	L65098

L65086:
	bsr.s	L65148
L65088:
	tst.w	U99866
	bne.s	L65020
	clr.w	d0
L65098:
	unlk	fp
	rts

L65102:
	link	fp,#-4
	bra.s	L65134

L65108:
	move.w	U99866,d0
	jsr	L378_1d
	cmp.w	#22,d0
	bne.s	L65132
	bsr.s	L65148
	moveq	#1,d0
	bra.s	L65144

L65132:
	bsr.s	L65148
L65134:
	tst.w	U99866
	bne.s	L65108
	clr.w	d0
L65144:
	unlk	fp
	rts

L65148:
	link	fp,#-4
	move.w	U99866,(sp)
	bsr  	L64594
	move.w	d0,(sp)
	move.w	U99866,-(sp)
	bsr  	L64544
	addq.l	#2,sp
	move.w	d0,U99866
	unlk	fp
	rts

L65186_2d: ; L444 inlined
	clr.l	d2
	movea.l	U101194,a0
	move.w	d0,d2
	lsl.l	#2,d2
	move.w	d1,0(a0,d2.l)
	rts

L65226_2d: ; L466 inlined
	clr.l	d2
	movea.l	U101194,a0
	move.w	d0,d2
	lsl.l	#2,d2
	move.w	d1,2(a0,d2.l)
	rts

L65266:
	move.w	4(sp),d0
	beq.s	.ret1

	jsr	L358_1d
	bls.s	.ret0
	moveq	#32,d1
	cmp.w	d1,d0
	bcs.s	.ret1
.ret0:
	clr.w	d0
	rts
.ret1:
	moveq	#1,d0
	rts

L65322:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	tst.w	d7
	bne.s	L65342
	clr.w	d0
	bra.s	L65346

L65342:
	move.w	d7,(sp)
	bsr.s	L65266
L65346:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L65356:
	move.l	d7,-(sp)
	move.w	8(sp),d7
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	#16,d0
	bhi.s	.ret0
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	#10,d0
	bcc.s	.ret1
.ret0:
	clr.w	d0
.return:
	move.l	(sp)+,d7
	rts
.ret1:
	moveq	#1,d0
	bra.s	.return

L65412:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	#10,d0
	beq.s	L65442
	clr.w	d0
	bra.s	L65444

L65442:
	moveq	#1,d0
L65444:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L65454:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	#16,d0
	beq.s	.L65484
	clr.w	d0
	bra.s	.return
.L65484:
	moveq	#1,d0
.return:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L65496:
	bsr  	node_add
	move.w	4(sp),d1
	bsr  	L65186_2d
	move.w	6(sp),d1
	jmp  	L65226_2d

L65532:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr  	L65412
	tst.w	d0
	beq.s	L65582
	move.w	d7,d0
	jsr	L378_1d
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,U100628
	bra.s	L65604

L65582:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,(sp)
	jsr	L398
	move.l	d0,U100628
L65604:
	move.l	U100628,d0
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L65620:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	bsr  	L65266
	tst.w	d0
	bne.s	L65684
	clr.w	U101034
L65648:
	move.w	d7,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L55354
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
	beq.s	L65684
	jsr	L76978
	bra.s	L65648

L65684:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L65694:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	clr.w	(sp)
	move.w	d7,-(sp)
	bsr  	L65496
	addq.l	#2,sp
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L65726:
	move.w	4(sp),-(sp)
	jsr	L65840
	addq	#2,sp

	subq	#8,d0
	bne.s	.ret0
	moveq	#1,d0
	rts
.ret0:
	clr.w	d0
	rts

L65756:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	10(fp),d7
	move.w	d7,(sp)
	bsr  	L65266
	tst.w	d0
	beq.s	.L65782
	clr.w	d0
	bra.s	.L65830
.L65782:
	bra.s	.L65806
.L65784:
	tst.w	d7
	bne.s	.L65796
	clr.w	d0
	move.w	d7,d0
	bra.s	.L65830
	;bra.s	.L65806
.L65796:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
.L65806:
	cmpi.w	#1,8(fp)
	move	sr,d0
	subq.w	#1,8(fp)
	move	d0,ccr
	bgt.s	.L65784
	move.w	d7,(sp)
	move.w	d7,d0
	jsr	L358_1d
.L65830:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L65840:
	move.w	4(sp),d0
	beq.s	.ret0
	jmp	L358_1d
.ret0:
	rts

L65878:
	move.w	4(sp),d2
.loop:
	move.w	d2,d0
	jsr  	L66356_1d
	beq.s	.ret0

	move.w	d0,d2
	jsr	L358_1d
	cmp.w	U100742,d0
	bne.s	.loop
	move.w	d2,d0
	jsr	L378_1d
	jmp	L358_1d
.ret0:
	rts

L65948:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	bra.s	.L65986
.L65962:
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	10(fp),d0
	bne.s	.L65986
	move.w	d7,d0
	jsr	L378_1d
	bra.s	.L65998
.L65986:
	move.w	d7,d0
	jsr  	L66356_1d
	move.w	d0,d7
	bne.s	.L65962
	clr.w	d0
.L65998:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L66008:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	beq.s	L66050
	move.w	10(fp),(sp)
	move.w	d7,-(sp)
	bsr.s	L65948
	addq.l	#2,sp
	move.w	d0,(sp)
	bsr  	L65840
	bra.s	L66052

L66050:
	clr.w	d0
L66052:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L66062:
	link	fp,#0
	movem.l	d4-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65726
	tst.w	d0
	bne.s	.L66092
	clr.w	d0
	bra  	.L66234
.L66092:
	move.w	10(fp),d6
	cmp.w	U98716,d6
	bne.s	.L66124
	move.w	d7,(sp)
	bsr  	L66524
	tst.w	d0
	bne.s	.L66124
	clr.w	(sp)
	move.w	d7,-(sp)
	bsr  	L66394
	addq.l	#2,sp
.L66124:
	move.w	d6,(sp)
	move.w	d7,-(sp)
	bsr  	L65948
	addq.l	#2,sp
	move.w	d0,d5
	bne.s	.L66216
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d4
	jsr	L378_1d
	move.w	d0,(sp)
	move.w	12(fp),-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	jsr	L64090
	jsr	L64160
	move.w	d0,(sp)
	move.w	d6,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,d1
	move.w	d4,d0
	jsr	L65226_2d
	jsr	L64180
	bra.s	.L66230
.L66216:
	move.w	12(fp),d1
	move.w	d5,d0
	jsr	L65186_2d
.L66230:
	clr.w	d0
	move.w	d7,d0
.L66234:
	movem.l	(sp)+,d4-d7
	unlk	fp
	rts

L66244:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	clr.w	d0
	move.w	10(fp),d0
	cmp.w	U98716,d0
	bne.s	.L66276
	move.w	d7,(sp)
	bsr  	L66626
.L66276:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d6
	bra.s	.L66334
.L66288:
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	10(fp),d0
	bne.s	.L66332
	move.w	d7,d0
	jsr	L378_1d
	jsr	L378_1d
	move.w	d0,d1
	move.w	d6,d0
	jsr	L65226_2d
	bra.s	.L66346
.L66332:
	move.w	d7,d6
.L66334:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d7
	bne.s	.L66288
.L66346:
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L66394:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),(sp)
	jsr	L65694
	move.w	d0,(sp)
	jsr	L64090
	tst.w	U100736
	bne.s	.L66442
	jsr	L64224
	move.w	d0,U100736
	bra.s	.L66514
.L66442:
	move.w	U100736,d7
	bra.s	.L66466
.L66450:
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	10(fp),d0
	beq.s	.L66478
	move.w	d6,d7
.L66466:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d6
	bne.s	.L66450
.L66478:
	jsr	L64160
	move.w	d6,d1
	jsr	L65226_2d
	jsr	L64224
	move.w	d0,d1
	move.w	d7,d0
	jsr	L65226_2d
.L66514:
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

L66524:
	link	fp,#-4
	move.w	8(fp),(sp)
	move.w	U100736,-(sp)
	bsr.s	L66568
	addq.l	#2,sp
	unlk	fp
	rts

L66546:
	link	fp,#-4
	move.w	8(fp),(sp)
	move.w	U98398,-(sp)
	bsr.s	L66568
	addq.l	#2,sp
	unlk	fp
	rts

L66568:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	bra.s	L66610

L66582:
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	10(fp),d0
	bne.s	L66600
	moveq	#1,d0
	bra.s	L66616

L66600:
	move.w	d7,d0
	jsr	L378_1d
	move.w	d0,d7
L66610:
	tst.w	d7
	bne.s	L66582
	clr.w	d0
L66616:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L66626:
	link	fp,#-4
	move.w	8(fp),(sp)
	move.w	U100736,-(sp)
	bsr.s	L66654
	addq.l	#2,sp
	move.w	d0,U100736
	unlk	fp
	rts

L66654:
	movem.l	d5-d7,-(sp)
	move.w	16(sp),d7
	tst.w	d7
	bne.s	.L66674
	clr.w	d0
	bra.s	.return
.L66674:
	move.w	d7,d0
	jsr	L358_1d
	cmp.w	18(sp),d0
	bne.s	.L66698
	move.w	d7,d0
	jsr	L378_1d
	bra.s	.return
.L66698:
	move.w	d7,d6
	bra.s	.L66750
.L66702:
	move.w	d6,d0
	jsr	L378_1d
	move.w	d0,d5
	move.w	d5,d0
	jsr	L358_1d
	cmp.w	18(sp),d0
	bne.s	.L66748
	move.w	d5,d0
	jsr	L378_1d
	move.w	d0,d1
	move.w	d6,d0
	jsr	L65226_2d
	bra.s	.L66754
.L66748:
	move.w	d5,d6
.L66750:
	tst.w	d6
	bne.s	.L66702
.L66754:
	clr.w	d0
	move.w	d7,d0
.return:
	movem.l	(sp)+,d5-d7
	rts

L66768:
	link	fp,#-4
	move.w	U99818,(sp)
	jsr	L64090
	move.w	U99864,(sp)
	jsr	L64090
	unlk	fp
	rts

L66800:
	link	fp,#-4
	jsr	L64224
	move.w	d0,U99864
	jsr	L64224
	move.w	d0,U99818
	unlk	fp
	rts

L66832:
	link	fp,#-4
	move.l	T87086,(sp)
	move.w	#54,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L66856:
	link	fp,#-4
	move.l	T87090,(sp)
	move.w	#34,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L66880:
	link	fp,#-4
	move.l	T87094,(sp)
	move.w	#2,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L66904:
	link	fp,#-4
	move.w	#6,(sp)
	jsr	L53070
	move.w	8(fp),(sp)
	jsr	L64090
	move.l	T87218,(sp)
	bsr  	L67956
	unlk	fp
	rts

L66942:
	link	fp,#-4
	move.w	#29,(sp)
	jsr	L53070
	move.w	8(fp),(sp)
	jsr	L64090
	move.l	T87222,(sp)
	bsr  	L67956
	unlk	fp
	rts

	link	fp,#-4
	move.w	U101460,d0
	jsr	L358_1d
	move.w	d0,(sp)
	bsr.s	L66942
	unlk	fp
	rts

L67004:
	link	fp,#-4
	move.l	T87098,(sp)
	move.w	#37,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67028:
	link	fp,#-4
	move.w	#38,(sp)
	jsr	L53070
	move.w	U101046,(sp)
	bsr  	L67866
	move.l	T87226,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67066:
	link	fp,#-4
	move.w	#41,(sp)
	jsr	L53070
	move.w	8(fp),(sp)
	jsr	L64090
	move.w	10(fp),(sp)
	bsr  	L67866
	move.l	T87298,(sp)
	move.w	#2,-(sp)
	bsr  	L67976
	addq.l	#2,sp
	unlk	fp
	rts

L67118:
	link	fp,#-4
	move.w	U101046,(sp)
	move.w	U101460,-(sp)
	jsr	L65840
	addq.l	#2,sp
	move.w	d0,-(sp)
	bsr.s	L67066
	addq.l	#2,sp
	unlk	fp
	rts

L67152:
	link	fp,#-4
	move.w	#42,(sp)
	jsr	L53070
	move.w	U101156,(sp)
	jsr	L64090
	move.w	8(fp),(sp)
	jsr	L64090
	move.l	T87302,(sp)
	move.w	#2,-(sp)
	bsr  	L67976
	addq.l	#2,sp
	unlk	fp
	rts

L67208:
	link	fp,#-4
	move.w	#49,(sp)
	jsr	L53070
	move.l	8(fp),(sp)
	jsr	L62012
	move.w	d0,(sp)
	jsr	L64090
	move.l	T87230,(sp)
	bsr  	L67956
	unlk	fp
	rts

do_err_nodes_low:
	link	fp,#-4
	move.w	#1,U99188
	move.l	err_nodes_low,(sp)
	move.w	#23,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67286:
	link	fp,#-4
	move.w	#50,(sp)
	jsr	L53070
	move.w	U101460,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L64090
	move.l	T87274,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67334:
	link	fp,#-4
	move.w	#8,(sp)
	jsr	L53070
	move.w	U101460,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L64090
	move.l	T87278,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67382:
	link	fp,#-4
	move.l	T87106,(sp)
	move.w	#13,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67406:
	link	fp,#-4
	jsr	L47940
	move.l	8(fp),(sp)
	move.l	#L74902,-(sp)
	move.l	T87234,-(sp)
	jsr	L54390
	addq.l	#8,sp
	jsr	L49652
	unlk	fp
	rts

L67450:
	link	fp,#-4
	move.l	T87110,(sp)
	move.w	#45,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67474:
	link	fp,#-4
	move.w	#32,(sp)
	jsr	L53070
	jsr	L64746
	move.l	T87238,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67508:
	link	fp,#-4
	move.w	#25,(sp)
	jsr	L53070
	move.w	U101046,(sp)
	bsr  	L67866
	move.l	T87242,(sp)
	bsr  	L67956
	unlk	fp
	rts

do_err_disk:
	link	fp,#-4
	move.l	err_disk,(sp)
	move.w	#11,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67570:
	link	fp,#-4
	move.l	T87118,(sp)
	move.w	#12,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67594:
	link	fp,#-4
	move.l	T87122,(sp)
	move.w	#46,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67618:
	link	fp,#-4
	move.l	T87246,(sp)
	move.w	#15,-(sp)
	bsr  	L67836
	addq.l	#2,sp
	unlk	fp
	rts

L67642:
	link	fp,#-4
	move.l	T87250,(sp)
	move.w	#17,-(sp)
	bsr  	L67836
	addq.l	#2,sp
	unlk	fp
	rts

L67666:
	link	fp,#-4
	move.l	T87126,(sp)
	move.w	#47,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	unlk	fp
	rts

L67690:
	link	fp,#-4
	move.w	#35,(sp)
	jsr	L53070
	move.w	U100636,(sp)
	jsr	L64090
	move.l	T87254,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67730:
	link	fp,#-4
	move.w	#36,(sp)
	jsr	L53070
	move.w	8(fp),(sp)
	jsr	L64090
	move.l	T87258,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67768:
	link	fp,#-4
	move.w	#21,(sp)
	jsr	L53070
	jsr	L64746
	move.l	T87262,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67802:
	link	fp,#-4
	move.w	#7,(sp)
	jsr	L53070
	jsr	L64746
	move.l	T87266,(sp)
	bsr  	L67956
	unlk	fp
	rts

L67836:
	link	fp,#-4
	move.w	8(fp),(sp)
	jsr	L53070
	jsr	L64746
	move.l	10(fp),(sp)
	bsr.s	L67956
	unlk	fp
	rts

L67866:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	move.w	d7,(sp)
	jsr	L65322
	tst.w	d0
	beq.s	.L67910
	move.w	d7,(sp)
	jsr	L6858
	tst.w	d0
	beq.s	.L67910
	move.w	U100650,(sp)
	bra.s	.L67912
.L67910:
	move.w	d7,(sp)
.L67912:
	jsr	L64090
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L67928:
	link	fp,#-4
	move.w	8(fp),(sp)
	jsr	L53070
	move.l	10(fp),(sp)
	clr.w	-(sp)
	bsr.s	L67976
	addq.l	#2,sp
	unlk	fp
	rts

L67956:
	link	fp,#-4
	move.l	8(fp),(sp)
	move.w	#1,-(sp)
	bsr.s	L67976
	addq.l	#2,sp
	unlk	fp
	rts

L67976:
	link	fp,#-2
	movem.l	d6-d7,-(sp)
	jsr	L33100
	jsr	L47940
	jsr	L58068
	jsr	L58082
	clr.w	U101476
	jsr	L9350
	move.w	8(fp),d0
	bra.s	L68124

L68026:
	move.l	10(fp),(sp)
	jsr	L74902
	bra.s	L68140

L68038:
	jsr	L64224
	move.w	d0,(sp)
	move.l	#L55354,-(sp)
	move.l	10(fp),-(sp)
	jsr	L54390
	addq.l	#8,sp
	bra.s	L68140

L68066:
	jsr	L64224
	move.w	d0,-2(fp)
	move.w	-2(fp),(sp)
	move.l	#L55354,-(sp)
	jsr	L64224
	ext.l	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(sp)
	move.l	#L55354,-(sp)
	move.l	10(fp),-(sp)
	jsr	L54390
	adda.l	#16,sp
	bra.s	L68140

L68124:
	tst.w	d0
	beq.s	L68026
	cmp.w	#1,d0
	beq.s	L68038
	cmp.w	#2,d0
	beq.s	L68066
L68140:
	jsr	L9388
	move.w	#2,U100982
	jsr	L53396
	jsr	L64224
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,(sp)
	jsr	L64090
	jsr	L64994
	move.w	d0,U100748
	move.w	d0,(sp)
	jsr	L64090
	clr.w	d0
	move.w	U99818,d0
	move.w	d0,U100622
	move.w	d0,(sp)
	jsr	L65840
	move.w	d0,(sp)
	jsr	L64090
	move.w	U101460,(sp)
	jsr	L65840
	move.w	d0,(sp)
	jsr	L64090
	clr.w	d0
	move.w	U99864,d0
	move.w	d0,U101006
	move.w	d0,(sp)
	jsr	L65840
	move.w	d0,(sp)
	jsr	L65694
	move.w	d0,(sp)
	jsr	L64090
	jsr	L64470
	jsr	L64470
	jsr	L64470
	jsr	L64470
	jsr	L64470
	jsr	L64224
	move.w	d0,U100890
	move.w	U98718,(sp)
	move.w	U101500,-(sp)
	jsr	L66008
	addq.l	#2,sp
	cmp.w	U100984,d0
	beq.s	L68364
	clr.w	d0
	bra.s	L68366

L68364:
	moveq	#1,d0
L68366:
	move.w	d0,d7
	beq.s	L68376
	jsr	L2226
L68376:
	move.w	#24,(sp)
	bsr  	L68570
	tst.w	d0
	beq.s	L68414
	jsr	L64942
	move.w	#1,(sp)
	move.l	#U101014,-(sp)
	jsr	L218
	addq.l	#4,sp
	bra.s	L68422

L68414:
	tst.w	d7
	bne.s	L68422
	bsr  	L68942
L68422:
	bsr.s	L68434
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L68434:
	link	fp,#-4
	jsr	L64006
	tst.w	d0
	beq.s	L68508
	tst.w	U100890
	bne.s	L68462
	move.w	#1,(sp)
	bra.s	L68494

L68462:
	move.w	U100890,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L65532
	move.l	d0,-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,(sp)
L68494:
	move.l	#U101158,-(sp)
	jsr	L218
	addq.l	#4,sp
L68508:
	move.w	#22,(sp)
	bsr.s	L68540
	jsr	L64942
	clr.w	(sp)
	move.l	#U101014,-(sp)
	jsr	L218
	addq.l	#4,sp
	unlk	fp
	rts

L68540:
	link	fp,#-4
	jsr	L64160
	cmp.w	8(fp),d0
	beq.s	L68566
	move.l	#T86348,(sp)
	bsr  	L67406
L68566:
	unlk	fp
	rts

L68570:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	bra.s	L68646

L68580:
	jsr	L64160
	cmp.w	#22,d0
	beq.s	L68656
	jsr	L64160
	cmp.w	#20,d0
	bne.s	L68640
	move.w	#9,(sp)
	jsr	L64658
	move.w	d0,d7
	cmp.w	8(fp),d7
	beq.s	L68636
	cmp.w	U100984,d7
	beq.s	L68636
	cmp.w	#26,d7
	bne.s	L68640
L68636:
	moveq	#1,d0
	bra.s	L68658

L68640:
	jsr	L64028
L68646:
	jsr	L64006
	tst.w	d0
	beq.s	L68580
L68656:
	clr.w	d0
L68658:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L68668:
	link	fp,#-4
	move.l	#U100754,d0
	move.l	d0,U101030
	move.l	d0,(sp)
	jsr	L83914
	move.w	d0,U99178
	unlk	fp
	rts

L68702:
	link	fp,#0
	movem.l	d6-d7/a4-a5,-(sp)
	movea.l	8(fp),a4
	movea.l	12(fp),a5
	move.l	a4,(sp)
	jsr	L83914
	ext.l	d0
	adda.l	d0,a4
	bra.s	L68760

L68732:
	move.l	#T86351,(sp)
	move.b	d7,d0
	ext.w	d0
	move.w	d0,-(sp)
	jsr	L50940
	addq.l	#2,sp
	tst.w	d0
	beq.s	L68758
	move.b	d7,(a4)+
L68758:
	move.b	d7,(a4)+
L68760:
	move.w	16(fp),d0
	subq.w	#1,16(fp)
	tst.w	d0
	beq.s	L68776
	move.b	(a5)+,d7
	bne.s	L68732
L68776:
	clr.b	(a4)
	tst.l	(sp)+
	movem.l	(sp)+,d7/a4-a5
	unlk	fp
	rts

L68788:
	link	fp,#0
	movem.l	d7/a5,-(sp)
	movea.l	#U100754,a5
	bsr  	L68668
	cmp.w	12(fp),d0
	blt.s	L68862
	move.w	12(fp),(sp)
	move.l	a5,-(sp)
	move.l	8(fp),-(sp)
	bsr.s	L68702
	addq.l	#8,sp
	move.l	#T86354,(sp)
	move.l	8(fp),-(sp)
	jsr	L83706
	addq.l	#4,sp
	move.w	12(fp),d0
	ext.l	d0
	adda.l	d0,a5
	move.w	12(fp),(sp)
	addi.w	#28,(sp)
	bsr.s	L68894
L68862:
	move.l	a5,(sp)
	jsr	L83914
	move.w	d0,(sp)
	move.l	a5,-(sp)
	move.l	8(fp),-(sp)
	bsr  	L68702
	addq.l	#8,sp
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L68894:
	link	fp,#-4
	bsr  	L68668
	cmp.w	8(fp),d0
	ble.s	L68938
	move.l	#T86358,(sp)
	move.w	8(fp),d0
	ext.l	d0
	add.l	#U100754,d0
	move.l	d0,-(sp)
	subq.l	#3,(sp)
	jsr	L83880
	addq.l	#4,sp
L68938:
	unlk	fp
	rts

L68942:
	link	fp,#-218
	jsr	_mouse_show
	tst.w	U100748
	bne.s	L69040
	move.l	#T86362,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	jsr	L83880
	addq.l	#4,sp
	move.w	#27,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	bsr  	L68788
	addq.l	#4,sp
	move.l	#T86382,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	jsr	L83706
	addq.l	#4,sp
	move.l	d0,(sp)
	move.w	#1,-(sp)
	jsr	form_alert
	addq.l	#2,sp
	bra  	L69344

L69040:
	move.l	#T86389,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	jsr	L83880
	addq.l	#4,sp
	clr.b	U100815
	move.l	#U100754,(sp)
	move.l	fp,-(sp)
	addi.l	#-214,(sp)
	jsr	L83880
	addq.l	#4,sp
	jsr	L9350
	move.w	U100748,(sp)
	jsr	L55354
	jsr	L9388
	move.w	#19,(sp)
	bsr  	L68894
	move.l	#U100754,(sp)
	jsr	L83914
	move.w	d0,(sp)
	move.l	#U100754,-(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	bsr  	L68702
	addq.l	#8,sp
	move.l	#T86404,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	jsr	L83706
	addq.l	#4,sp
	move.l	fp,(sp)
	addi.l	#-214,(sp)
	move.l	#U100754,-(sp)
	jsr	L83880
	addq.l	#4,sp
	move.w	#18,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	bsr  	L68788
	addq.l	#4,sp
	move.l	#T86416,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	jsr	L83706
	addq.l	#4,sp
	jsr	L9350
	move.w	U100622,(sp)
	jsr	L65840
	move.w	d0,(sp)
	jsr	L65620
	jsr	L9388
	move.w	#18,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	bsr  	L68788
	addq.l	#4,sp
	move.l	#T86428,(sp)
	move.l	fp,-(sp)
	addi.l	#-152,(sp)
	jsr	L83706
	addq.l	#4,sp
	move.l	d0,(sp)
	move.w	#1,-(sp)
	jsr	form_alert
	addq.l	#2,sp
	cmp.w	#2,d0
	bne.s	L69344
	move.l	T87166,(sp)
	jsr	L76856
L69344:
	jsr	_mouse_hide
	jsr	L74840
	unlk	fp
	rts

L69360:
	link	fp,#-132
	move.l	#T86501,(sp)
	move.l	#T86439,-(sp)
	move.l	fp,-(sp)
	addi.l	#-128,(sp)
	jsr	L83880
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	L83706
	addq.l	#4,sp
	move.l	fp,(sp)
	addi.l	#-128,(sp)
	move.w	#1,-(sp)
	jsr	form_alert
	addq.l	#2,sp
	cmp.w	#1,d0
	beq.s	L69432
	clr.w	d0
	bra.s	L69434

L69432:
	moveq	#1,d0
L69434:
	unlk	fp
	rts

L69438:
	link	fp,#-4
	move.l	temp_pic,(sp)
	move.l	U101030,-(sp)
	jsr	L83748
	addq.l	#4,sp
	tst.w	d0
	bne.s	L69484
	move.l	#T86551,(sp)
	move.w	#100,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	bra.s	L69500

L69484:
	move.l	#T86580,(sp)
	move.w	#100,-(sp)
	bsr  	L67836
	addq.l	#2,sp
L69500:
	unlk	fp
	rts

L69504:
	link	fp,#-4
	move.l	temp_pic,(sp)
	move.l	U101030,-(sp)
	jsr	L83748
	addq.l	#4,sp
	tst.w	d0
	bne.s	.err_trouble
	move.l	#T86608,(sp)
	move.w	#101,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	bra.s	.return

.err_trouble:
	move.l	#err_s_trouble,(sp)
	move.w	#101,-(sp)
	bsr  	L67836
	addq.l	#2,sp
.return:
	unlk	fp
	rts

L69570:
	link	fp,#-4
	move.l	temp_pic,(sp)
	move.l	U101030,-(sp)
	jsr	L83814
	addq.l	#4,sp
	tst.w	d0
	bne.s	L69616
	move.l	#T86674,(sp)
	move.w	#102,-(sp)
	bsr  	L67928
	addq.l	#2,sp
	bra.s	L69620

L69616:
	bsr  	L67570
L69620:
	unlk	fp
	rts

L69624:
	link	fp,#-4
	move.l	#T86710,(sp)
	move.w	#103,-(sp)
	bsr  	L67836
	addq.l	#2,sp
	unlk	fp
	rts

L69648:
	link	fp,#-4
	jsr	L62430
	move.w	#2,(sp)
	jsr	L47436
	jsr	L48026
	jsr	L48480
	moveq	#1,d0
	move.w	d0,U100980
	move.w	d0,U98712
	jsr	L77166
	move.l	U100744,U99856
	clr.w	d0
	ext.l	d0
	move.l	d0,U100642
	move.l	d0,U100638
	move.l	U100744,(sp)
	bsr  	L69934
	bsr  	L70038
	unlk	fp
	rts

L69744:
	link	fp,#-4
	move.l	fp,d0
	add.l	#-1527,d0
	move.l	d0,U99196
	sub.l	U100744,d0
	move.w	d0,U101468
	cmp.w	#512,d0
	bge.s	L69786
	jsr	L67594
L69786:
	movea.l	U99196,a0
	clr.b	(a0)
	unlk	fp
	rts

L69798:
	link	fp,#-4
	movea.l	#U100561,a0
	move.l	a0,U99196
	clr.b	(a0)
	move.w	#2,(sp)
	jsr	L47436
	move.w	#1,U99200
	move.l	#U100162,d0
	move.l	d0,U99856
	move.l	d0,(sp)
	bsr.s	L69934
	tst.w	U101146
	beq.s	L69870
	move.l	#U100162,(sp)
	jsr	L19024
L69870:
	tst.b	U100162
	beq.s	L69928
	clr.w	(sp)
	bsr  	L74214
	move.l	#U100162,U99856
	bra.s	L69918

L69896:
	movea.l	U99856,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L74214
	addq.l	#1,U99856
L69918:
	movea.l	U99856,a0
	tst.b	(a0)
	bne.s	L69896
L69928:
	bsr.s	L70006
	unlk	fp
	rts

L69934:
	link	fp,#-6
	move.w	U101146,-2(fp)
	clr.w	U101146
	bsr  	L70106
L69956:
	movea.l	U99196,a0
	move.b	(a0),d0
	ext.w	d0
	movea.l	8(fp),a1
	move.b	d0,(a1)
	addq.l	#1,U99196
	addq.l	#1,8(fp)
	tst.w	d0
	bne.s	L69956
	move.l	8(fp),U99196
	move.w	-2(fp),U101146
	unlk	fp
	rts

L70006:
	link	fp,#-4
	move.l	#U101040,U99856
	clr.w	U99200
	clr.w	(sp)
	jsr	L47436
	unlk	fp
	rts

L70038:
	link	fp,#-4
	clr.w	U100980
	jsr	L48494
	jsr	L47962
	jsr	L47940
	clr.w	(sp)
	jsr	L47436
	unlk	fp
	rts

L70078:
	link	fp,#-4
	tst.w	U99200
	beq.s	L70096
	jsr	L49684
L70096:
	move.w	U99200,d0
	unlk	fp
	rts

L70106:
	link	fp,#-10
	clr.w	d0
	move.w	d0,U101496
	move.w	d0,U101200
	move.w	#1,U100990
	move.w	U101044,U100992
	tst.w	U99200
	bne.s	L70186
	move.w	U99194,(sp)
	subq.w	#1,(sp)
	clr.w	-(sp)
	bsr  	L72198
	addq.l	#2,sp
	bsr  	L73126
	bsr  	L72348
	move.w	U98710,(sp)
	subq.w	#1,(sp)
	bsr  	L71062
L70186:
	move.l	#U101090,(sp)
	jsr	L204
	tst.w	d0
	beq.s	L70208
	jsr	L75582
L70208:
	bsr  	L73126
	jsr	L75856
	move.w	U101458,d0
	bra  	L70754

L70228:
	bsr  	L70952
	bra  	L70778

L70236:
	bsr  	L71138
	bra  	L70778

L70244:
	bsr  	L70078
	tst.w	d0
	bne  	L70778
	bsr  	L70792
	bra  	L70788

L70262:
	bsr  	L72906
	tst.w	d0
	bne  	L70778
	addq.l	#1,U101492
	bsr  	L71274
	bra  	L70778

L70286:
	bsr  	L70986
	bra  	L70778

L70294:
	bsr  	L70890
	bra  	L70778

L70302:
	bsr  	L71124
	bra  	L70778

L70310:
	bsr  	L71000
	bra  	L70778

L70318:
	clr.w	(sp)
	bsr  	L74214
L70324:
	movea.l	U101492,a0
	move.b	(a0),-2(fp)
	beq.s	L70354
	addq.l	#1,U101492
	move.b	-2(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L74214
L70354:
	move.b	-2(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	tst.w	d0
	bne.s	L70382
	bsr  	L72984
	tst.w	d0
	bne.s	L70382
	bra.s	L70324

L70382:
	bsr  	L71274
	bra  	L70778

L70390:
	bsr  	L70078
	tst.w	d0
	bne.s	L70410
	bsr  	L70792
	bsr  	L70824
	bsr  	L72348
L70410:
	bra  	L70778

L70414:
	tst.w	U99200
	beq.s	L70436
	bsr  	L70792
	jsr	L74860
	bra  	L70788

L70436:
	move.w	#10,(sp)
	bsr  	L71636
	bra  	L70778

L70448:
	move.w	U101044,(sp)
	bsr  	L71832
	bra  	L70778

L70462:
	bsr  	L70078
	tst.w	d0
	bne.s	L70482
	move.w	#10,(sp)
	bsr  	L71636
	bsr  	L71138
L70482:
	bra  	L70778

L70486:
	bsr  	L71730
	bra  	L70778

L70494:
	move.w	#35,(sp)
	bsr  	L71636
	bra  	L70778

L70506:
	bsr  	L70078
	tst.w	d0
	bne.s	L70526
	move.w	#-1,(sp)
	clr.w	-(sp)
	bsr  	L72378
	addq.l	#2,sp
L70526:
	bra  	L70778

L70530:
	bsr  	L70078
	tst.w	d0
	bne.s	L70552
	move.w	#-1,(sp)
	move.w	#1,-(sp)
	bsr  	L72198
	addq.l	#2,sp
L70552:
	bra  	L70778

L70556:
	bsr  	L70078
	tst.w	d0
	bne.s	L70588
	move.w	U100672,(sp)
	move.w	U101154,d0
	sub.w	d0,(sp)
	move.w	#1,-(sp)
	bsr  	L72198
	addq.l	#2,sp
L70588:
	bra  	L70778

L70592:
	bsr  	L70078
	tst.w	d0
	bne.s	L70624
	move.w	U101154,(sp)
	move.w	U100672,d0
	add.w	d0,(sp)
	subq.w	#1,(sp)
	clr.w	-(sp)
	bsr  	L72378
	addq.l	#2,sp
L70624:
	bra  	L70778

L70628:
	bsr  	L74326
	bra  	L70778

L70636:
	bsr  	L70078
	tst.w	d0
	bne.s	L70648
	bsr  	L74298
L70648:
	bra  	L70778

L70652:
	bsr  	L70078
	tst.w	d0
	bne.s	L70668
	move.w	#1,(sp)
	bsr  	L74392
L70668:
	bra  	L70778

L70672:
	bsr  	L70078
	tst.w	d0
	bne.s	L70724
	clr.w	(sp)
	jsr	L47436
	move.l	U99196,-6(fp)
	clr.w	(sp)
	bsr  	L74392
	move.l	-6(fp),(sp)
	bsr  	L74566
	bsr  	L74326
	move.w	#1,(sp)
	jsr	L47436
L70724:
	bra.s	L70778

L70726:
	tst.w	U101458
	ble.s	L70746
	move.w	U101458,(sp)
	bsr  	L71636
	bra.s	L70752

L70746:
	jsr	L49684
L70752:
	bra.s	L70778

L70754:
	sub.w	#-27,d0
	cmp.w	#26,d0
	bhi.s	L70726
	asl.w	#2,d0
	movea.w	d0,a0
	adda.l	#T86756,a0
	movea.l	(a0),a0
	jmp	(a0)

L70778:
	jsr	L75582
	bra  	L70208

L70788:
	unlk	fp
	rts

L70792:
	link	fp,#-4
	jsr	L75582
L70802:
	bsr  	L72596
	bsr  	L73010
	tst.w	d0
	bne.s	L70820
	bsr  	L72870
	bra.s	L70802

L70820:
	unlk	fp
	rts

L70824:
	link	fp,#-4
	bra.s	L70872

L70830:
	bsr  	L72958
	tst.w	d0
	bne.s	L70862
	clr.w	(sp)
	bsr  	L73072
	add.w	U101496,d0
	cmp.w	U101498,d0
	blt.s	L70862
	bsr  	L72808
L70862:
	bsr  	L72710
	addq.l	#1,U99196
L70872:
	move.l	U99196,d0
	cmp.l	U101492,d0
	bne.s	L70830
	unlk	fp
	rts

L70890:
	link	fp,#-4
	bsr  	L72906
	tst.w	d0
	bne.s	L70948
	bsr  	L72930
	tst.w	d0
	bne.s	L70918
	bsr  	L73106
	tst.w	d0
	beq.s	L70924
L70918:
	bsr  	L71818
	bra.s	L70928

L70924:
	bsr  	L72098
L70928:
	bsr  	L73144
	tst.w	d0
	beq.s	L70948
	bsr  	L72958
	tst.w	d0
	bne.s	L70948
	bsr  	L71818
L70948:
	unlk	fp
	rts

L70952:
	link	fp,#-4
	bsr  	L72596
	clr.w	(sp)
	bsr  	L73072
	move.w	d0,(sp)
	move.w	U101154,-(sp)
	jsr	L77222
	addq.l	#2,sp
	unlk	fp
	rts

L70986:
	link	fp,#-4
	move.w	#-1,(sp)
	bsr.s	L71062
	unlk	fp
	rts

L71000:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	clr.w	(sp)
	jsr	L47436
	jsr	L75548
	move.w	d0,d7
	bra.s	L71034

L71026:
	move.w	#32,(sp)
	bsr  	L71636
L71034:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bgt.s	L71026
	move.w	#1,(sp)
	jsr	L47436
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L71062:
	link	fp,#-4
	bra.s	L71088

L71068:
	bsr  	L72906
	tst.w	d0
	bne.s	L71100
	bsr  	L72930
	tst.w	d0
	bne.s	L71100
	bsr  	L72144
L71088:
	move.w	8(fp),d0
	subq.w	#1,8(fp)
	tst.w	d0
	bne.s	L71068
L71100:
	move.w	U101044,(sp)
	move.w	U101154,-(sp)
	jsr	L77222
	addq.l	#2,sp
	unlk	fp
	rts

L71124:
	link	fp,#-4
	bsr.s	L71138
	bsr  	L71274
	unlk	fp
	rts

L71138:
	link	fp,#-4
	tst.w	U101200
	beq  	L71270
	tst.w	U101496
	beq.s	L71192
	bsr  	L72616
	move.w	U101154,(sp)
	subq.w	#1,U101044
	move.w	U101044,-(sp)
	jsr	L46014
	addq.l	#2,sp
	bra.s	L71270

L71192:
	bsr  	L73032
	tst.w	d0
	beq.s	L71210
	bsr  	L71540
	bsr  	L70986
	bra.s	L71270

L71210:
	bsr  	L72870
	bsr  	L72616
	bsr  	L72958
	tst.w	d0
	beq.s	L71246
	move.w	#-1,(sp)
	bsr  	L73072
	move.w	d0,(sp)
	move.w	U101496,d0
	add.w	d0,(sp)
	bra.s	L71254

L71246:
	move.w	U101498,(sp)
	subq.w	#1,(sp)
L71254:
	move.w	U101154,-(sp)
	subq.w	#1,(sp)
	jsr	L77222
	addq.l	#2,sp
L71270:
	unlk	fp
	rts

L71274:
	link	fp,#-4
	bsr  	L73250
	move.l	U100638,d0
	cmp.l	U99196,d0
	bcs.s	L71320
	move.l	U100638,d0
	cmp.l	U101492,d0
	bhi.s	L71320
	move.l	U101492,U100638
L71320:
	move.l	U100642,d0
	cmp.l	U99196,d0
	bcs.s	L71358
	move.l	U100642,d0
	cmp.l	U101492,d0
	bhi.s	L71358
	move.l	U101492,U100642
L71358:
	move.l	U101492,U99196
	bsr.s	L71374
	unlk	fp
	rts

L71374:
	link	fp,#-4
	tst.w	U101496
	bne  	L71536
	bsr  	L72984
	tst.w	d0
	beq  	L71536
	bsr  	L73010
	tst.w	d0
	bne  	L71536
	bsr  	L72870
	movea.l	U99856,a0
	cmpi.b	#10,-1(a0)
	bne.s	L71432
	bsr  	L72808
	bra.s	L71536

L71432:
	bsr  	L73032
	tst.w	d0
	beq.s	L71450
	bsr  	L71554
	bsr  	L70986
	bra.s	L71536

L71450:
	movea.l	U101492,a0
	tst.b	(a0)
	beq.s	L71470
	addq.l	#1,U101492
	bsr  	L73250
L71470:
	move.w	U101498,(sp)
	move.w	U101154,-(sp)
	subq.w	#1,(sp)
	jsr	L77222
	addq.l	#2,sp
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	move.w	#32,-(sp)
	jsr	L45800
	addq.l	#4,sp
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	jsr	L46014
	addq.l	#2,sp
L71536:
	unlk	fp
	rts

L71540:
	link	fp,#-4
	bsr  	L72870
	bsr.s	L71554
	unlk	fp
	rts

L71554:
	link	fp,#-8
	move.w	U101154,-2(fp)
	move.w	U101044,-4(fp)
	bsr  	L72596
	move.l	U99196,U101026
	jsr	L47004
	clr.w	(sp)
	jsr	L47436
	bsr  	L73832
	move.w	-4(fp),(sp)
	move.w	-2(fp),-(sp)
	jsr	L77222
	addq.l	#2,sp
	move.w	#1,(sp)
	jsr	L47436
	unlk	fp
	rts

L71636:
	link	fp,#-4
	bsr  	L72470
	bsr  	L73106
	tst.w	d0
	beq.s	L71664
	cmpi.w	#10,8(fp)
	beq.s	L71664
	bsr  	L71818
L71664:
	subq.l	#1,U99196
	move.w	8(fp),d0
	movea.l	U99196,a1
	move.b	d0,(a1)
	movea.l	U101492,a0
	tst.b	(a0)
	beq.s	L71696
	bsr  	L73220
L71696:
	bsr  	L73126
	bsr  	L71374
	cmpi.w	#10,8(fp)
	bne.s	L71718
	bsr  	L71818
	bra.s	L71722

L71718:
	bsr  	L72098
L71722:
	bsr  	L73126
	unlk	fp
	rts

L71730:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	U101044,d7
	clr.w	(sp)
	jsr	L47436
	bsr  	L70952
	tst.w	U101200
	beq.s	L71792
	bsr  	L73032
	tst.w	d0
	beq.s	L71778
	bsr  	L71540
	bra.s	L71792

L71778:
	bsr  	L72870
	subq.w	#1,U101154
	bsr  	L70952
L71792:
	move.w	d7,(sp)
	bsr  	L72050
	move.w	#1,(sp)
	jsr	L47436
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L71818:
	link	fp,#-4
	move.w	#1,(sp)
	bsr.s	L71832
	unlk	fp
	rts

L71832:
	link	fp,#-4
	bsr  	L72906
	tst.w	d0
	bne  	L72046
	clr.w	(sp)
	jsr	L47436
	bsr  	L70986
	bsr  	L73172
	tst.w	d0
	beq.s	L71944
	bra.s	L71934

L71868:
	bsr  	L72098
	bsr  	L72958
	tst.w	d0
	bne.s	L71942
	bsr  	L73144
	tst.w	d0
	beq.s	L71934
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	move.w	#33,-(sp)
	jsr	L45800
	addq.l	#4,sp
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	jsr	L46014
	addq.l	#2,sp
	bra.s	L71942

L71934:
	bsr  	L72906
	tst.w	d0
	beq.s	L71868
L71942:
	bra.s	L72026

L71944:
	bsr  	L72906
	tst.w	d0
	bne.s	L72026
	bsr  	L72930
	tst.w	d0
	beq.s	L71964
	bsr  	L72470
L71964:
	bsr  	L72144
	tst.w	U99200
	beq.s	L71986
	move.w	#2,(sp)
	jsr	L47436
L71986:
	move.w	#1,(sp)
	addq.w	#1,U101154
	move.w	U101154,-(sp)
	jsr	L77222
	addq.l	#2,sp
	tst.w	U99200
	beq.s	L72026
	clr.w	(sp)
	jsr	L47436
L72026:
	bsr  	L70952
	move.w	8(fp),(sp)
	bsr.s	L72050
	move.w	#1,(sp)
	jsr	L47436
L72046:
	unlk	fp
	rts

L72050:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	cmp.w	U101044,d7
	ble.s	L72082
	move.w	d7,(sp)
	move.w	U101044,d0
	sub.w	d0,(sp)
	bra.s	L72084

L72082:
	clr.w	(sp)
L72084:
	bsr  	L71062
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L72098:
	link	fp,#-6
	bsr  	L72930
	tst.w	d0
	beq.s	L72114
	bsr  	L72470
L72114:
	movea.l	U99196,a0
	move.b	(a0),-2(fp)
	bsr.s	L72160
	move.b	-2(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74948
	unlk	fp
	rts

L72144:
	link	fp,#-4
	bsr.s	L72160
	addq.w	#1,U101044
	unlk	fp
	rts

L72160:
	link	fp,#-4
	bsr  	L72958
	tst.w	d0
	bne.s	L72184
	bsr  	L73144
	tst.w	d0
	beq.s	L72184
	bsr  	L72808
L72184:
	bsr  	L72710
	addq.l	#1,U99196
	unlk	fp
	rts

L72198:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	10(fp),d7
	bra.s	L72290

L72212:
	bsr  	L72906
	tst.w	d0
	bne.s	L72294
	bsr  	L72518
	tst.w	d0
	beq.s	L72236
	jsr	L49684
	bra.s	L72294

L72236:
	bsr  	L72958
	tst.w	d0
	bne.s	L72270
	clr.w	(sp)
	bsr  	L73072
	add.w	U101496,d0
	cmp.w	U101498,d0
	blt.s	L72270
	subq.w	#1,d7
	bsr  	L72808
L72270:
	bsr  	L72710
	bsr  	L72958
	tst.w	d0
	beq.s	L72284
	subq.w	#1,d7
L72284:
	addq.l	#1,U99196
L72290:
	tst.w	d7
	bne.s	L72212
L72294:
	tst.w	8(fp)
	beq.s	L72338
	bsr  	L72906
	tst.w	d0
	beq.s	L72316
	bsr  	L73010
	tst.w	d0
	bne.s	L72338
L72316:
	bsr  	L72596
	jsr	L77166
	bsr  	L73200
	tst.w	d7
	bge.s	L72338
	bsr  	L70986
L72338:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L72348:
	link	fp,#-4
	move.w	U100672,d0
	ext.l	d0
	divs	#2,d0
	move.w	d0,(sp)
	move.w	#1,-(sp)
	bsr.s	L72378
	addq.l	#2,sp
	unlk	fp
	rts

L72378:
	link	fp,#-8
L72382:
	bsr  	L72596
	subq.w	#1,10(fp)
	beq.s	L72406
	bsr  	L73010
	tst.w	d0
	bne.s	L72406
	bsr  	L72870
	bra.s	L72382

L72406:
	jsr	L77166
	clr.w	(sp)
	jsr	L47436
	move.l	U101492,-4(fp)
	bsr  	L73200
	tst.w	8(fp)
	beq.s	L72456
	bra.s	L72444

L72440:
	bsr  	L70890
L72444:
	move.l	-4(fp),d0
	cmp.l	U99196,d0
	bne.s	L72440
L72456:
	move.w	#1,(sp)
	jsr	L47436
	unlk	fp
	rts

L72470:
	link	fp,#-4
	bsr.s	L72518
	tst.w	d0
	beq.s	L72514
	jsr	L49684
	move.w	#2,(sp)
	jsr	L47436
	move.w	#1,(sp)
	move.l	#U101090,-(sp)
	jsr	L218
	addq.l	#4,sp
L72514:
	unlk	fp
	rts

L72518:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	tst.w	U99200
	beq.s	L72538
	moveq	#6,d0
	bra.s	L72542

L72538:
	move.w	#250,d0
L72542:
	move.w	d0,d7
	sub.w	U100990,d7
	move.l	U99196,d0
	sub.l	U99856,d0
	cmp.w	#2,d7
	bge.s	L72572
	moveq	#2,d1
	bra.s	L72574

L72572:
	move.w	d7,d1
L72574:
	ext.l	d1
	cmp.l	d1,d0
	blt.s	L72584
	clr.w	d0
	bra.s	L72586

L72584:
	moveq	#1,d0
L72586:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L72596:
	link	fp,#-4
	bra.s	L72604

L72602:
	bsr.s	L72616
L72604:
	tst.w	U101496
	bne.s	L72602
	unlk	fp
	rts

L72616:
	link	fp,#-4
	subq.w	#1,U101200
	subq.w	#1,U101496
	subq.l	#1,U99196
	subq.l	#1,U99856
	movea.l	U99196,a0
	movea.l	U99856,a1
	move.b	(a1),(a0)
	move.l	U100638,d0
	cmp.l	U99856,d0
	bne.s	L72682
	move.l	U99196,U100638
L72682:
	move.l	U100642,d0
	cmp.l	U99856,d0
	bne.s	L72706
	move.l	U99196,U100642
L72706:
	unlk	fp
	rts

L72710:
	link	fp,#-4
	addq.w	#1,U101496
	addq.w	#1,U101200
	move.l	U100638,d0
	cmp.l	U99196,d0
	bne.s	L72750
	move.l	U99856,U100638
L72750:
	move.l	U100642,d0
	cmp.l	U99196,d0
	bne.s	L72774
	move.l	U99856,U100642
L72774:
	movea.l	U99856,a0
	movea.l	U99196,a1
	move.b	(a1),(a0)
	addq.l	#1,U99856
	bsr  	L72958
	tst.w	d0
	beq.s	L72804
	bsr.s	L72808
L72804:
	unlk	fp
	rts

L72808:
	link	fp,#-4
	move.w	U101496,d0
	movea.l	U99856,a1
	move.b	d0,(a1)
	addq.l	#1,U99856
	clr.w	U101496
	addq.w	#1,U100990
	move.w	U100990,d0
	cmp.w	U100672,d0
	ble.s	L72866
	move.w	#1,U100992
L72866:
	unlk	fp
	rts

L72870:
	link	fp,#-4
	subq.w	#1,U100990
	subq.l	#1,U99856
	movea.l	U99856,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,U101496
	unlk	fp
	rts

L72906:
	link	fp,#-4
	movea.l	U99196,a0
	tst.b	(a0)
	beq.s	L72924
	clr.w	d0
	bra.s	L72926

L72924:
	moveq	#1,d0
L72926:
	unlk	fp
	rts

L72930:
	link	fp,#-4
	bsr.s	L72958
	tst.w	d0
	bne.s	L72952
	bsr  	L73144
	tst.w	d0
	bne.s	L72952
	clr.w	d0
	bra.s	L72954

L72952:
	moveq	#1,d0
L72954:
	unlk	fp
	rts

L72958:
	link	fp,#-4
	movea.l	U99196,a0
	cmpi.b	#10,(a0)
	beq.s	L72978
	clr.w	d0
	bra.s	L72980

L72978:
	moveq	#1,d0
L72980:
	unlk	fp
	rts

L72984:
	link	fp,#-4
	movea.l	U101492,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	unlk	fp
	rts

L73010:
	link	fp,#-4
	tst.w	U101200
	beq.s	L73026
	clr.w	d0
	bra.s	L73028

L73026:
	moveq	#1,d0
L73028:
	unlk	fp
	rts

L73032:
	link	fp,#-4
	cmpi.w	#1,U101154
	bne.s	L73066
	clr.w	(sp)
	bsr.s	L73072
	cmp.w	U101044,d0
	beq.s	L73062
	clr.w	d0
	bra.s	L73064

L73062:
	moveq	#1,d0
L73064:
	bra.s	L73068

L73066:
	clr.w	d0
L73068:
	unlk	fp
	rts

L73072:
	link	fp,#-4
	move.w	U100990,d0
	add.w	8(fp),d0
	cmp.w	#1,d0
	bgt.s	L73100
	move.w	U100992,d0
	bra.s	L73102

L73100:
	moveq	#1,d0
L73102:
	unlk	fp
	rts

L73106:
	link	fp,#-4
	bsr.s	L73172
	tst.w	d0
	beq.s	L73120
	bsr.s	L73144
	bra.s	L73122

L73120:
	clr.w	d0
L73122:
	unlk	fp
	rts

L73126:
	link	fp,#-4
	move.l	U99196,U101492
	unlk	fp
	rts

L73144:
	link	fp,#-4
	move.w	U101044,d0
	cmp.w	U101498,d0
	bge.s	L73166
	clr.w	d0
	bra.s	L73168

L73166:
	moveq	#1,d0
L73168:
	unlk	fp
	rts

L73172:
	link	fp,#-4
	move.w	U101154,d0
	cmp.w	U100672,d0
	bge.s	L73194
	clr.w	d0
	bra.s	L73196

L73194:
	moveq	#1,d0
L73196:
	unlk	fp
	rts

L73200:
	link	fp,#-4
	move.l	#U101040,U101492
	bsr.s	L73220
	unlk	fp
	rts

L73220:
	link	fp,#-4
	move.l	U99196,U101026
	move.l	U101492,U100750
	bsr.s	L73280
	unlk	fp
	rts

L73250:
	link	fp,#-4
	move.l	U101492,U101026
	move.l	U99196,U100750
	bsr.s	L73280
	unlk	fp
	rts

L73280:
	link	fp,#-8
	clr.w	(sp)
	jsr	L47436
	move.w	U101154,d0
	move.w	d0,-2(fp)
	move.w	d0,U101052
	move.w	U101044,-4(fp)
	bsr.s	L73348
	move.w	-4(fp),(sp)
	move.w	-2(fp),-(sp)
	jsr	L77222
	addq.l	#2,sp
	move.w	#1,(sp)
	jsr	L47436
	unlk	fp
	rts

L73348:
	link	fp,#-4
	move.l	#U101170,(sp)
	jsr	L204
	tst.w	d0
	bne  	L73540
L73370:
	movea.l	U101026,a0
	tst.b	(a0)
	beq.s	L73450
	move.l	U101026,d0
	cmp.l	U100750,d0
	bne.s	L73412
	move.w	U101154,d0
	cmp.w	U101052,d0
	bne.s	L73412
	bra  	L73540

L73412:
	movea.l	U100750,a0
	tst.b	(a0)
	beq.s	L73428
	bsr  	L73686
	bra.s	L73432

L73428:
	bsr  	L73832
L73432:
	movea.l	U101026,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L73544
	bra.s	L73492

L73450:
	movea.l	U100750,a0
	tst.b	(a0)
	beq.s	L73490
	bsr  	L74120
	bsr  	L74054
	tst.w	d0
	beq.s	L73482
	bsr  	L74080
	addq.l	#1,U100750
L73482:
	move.w	#1,(sp)
	bsr.s	L73544
	bra.s	L73492

L73490:
	bra.s	L73540

L73492:
	movea.l	U101026,a0
	tst.b	(a0)
	beq.s	L73522
	bsr  	L74054
	tst.w	d0
	beq.s	L73522
	addq.l	#1,U100750
	addq.w	#1,U101052
L73522:
	bsr  	L74028
	tst.w	d0
	beq.s	L73536
	addq.l	#1,U101026
L73536:
	bra  	L73370

L73540:
	unlk	fp
	rts

L73544:
	link	fp,#-4
	bsr  	L73144
	tst.w	d0
	beq  	L73670
	bsr  	L73976
	tst.w	d0
	beq.s	L73620
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	move.w	#32,-(sp)
	jsr	L45800
	addq.l	#4,sp
	addq.w	#1,U101044
	tst.w	8(fp)
	bne.s	L73618
	bsr  	L74054
	tst.w	d0
	beq.s	L73618
	jsr	L77150
	bra.s	L73682

L73618:
	bra.s	L73650

L73620:
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	move.w	#33,-(sp)
	jsr	L45800
	addq.l	#4,sp
	addq.w	#1,U101044
L73650:
	bsr  	L74054
	tst.w	d0
	bne.s	L73664
	addq.w	#1,U101052
L73664:
	bsr  	L74080
	bra.s	L73682

L73670:
	bsr  	L74028
	tst.w	d0
	beq.s	L73682
	bsr  	L74080
L73682:
	unlk	fp
	rts

L73686:
	link	fp,#0
	movem.l	d6-d7,-(sp)
L73694:
	bsr  	L73976
	tst.w	d0
	beq.s	L73710
	bsr  	L74120
	bra  	L73822

L73710:
	bsr  	L74002
	tst.w	d0
	beq.s	L73724
	bsr  	L73832
	bra.s	L73822

L73724:
	bsr  	L73878
	move.w	d0,d7
	move.w	d7,d0
	cmp.w	#4,d0
	ble.s	L73784
	move.w	d7,d0
	ext.l	d0
	add.l	d0,U100750
	move.w	d7,d0
	ext.l	d0
	add.l	d0,U101026
	move.w	d7,(sp)
	move.w	U101044,d0
	add.w	d0,(sp)
	move.w	U101154,-(sp)
	jsr	L77222
	addq.l	#2,sp
	bra.s	L73820

L73784:
	bsr  	L73144
	tst.w	d0
	bne.s	L73822
	movea.l	U101026,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L74158
	addq.l	#1,U101026
	addq.l	#1,U100750
L73820:
	bra.s	L73694

L73822:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L73832:
	link	fp,#-4
	bra.s	L73868

L73838:
	bsr  	L73144
	tst.w	d0
	bne.s	L73874
	movea.l	U101026,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L74158
	addq.l	#1,U101026
L73868:
	bsr.s	L73976
	tst.w	d0
	beq.s	L73838
L73874:
	unlk	fp
	rts

L73878:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)
	movea.l	U101026,a5
	move.l	U100750,U98388
	clr.w	d7
	bra.s	L73940

L73906:
	move.w	d7,d0
	add.w	U101044,d0
	cmp.w	U101498,d0
	bge.s	L73964
	move.b	(a5)+,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	tst.w	d0
	bne.s	L73964
	addq.w	#1,d7
L73940:
	movea.l	U98388,a0
	move.b	(a0),d0
	ext.w	d0
	cmp.b	(a5),d0
	move	sr,d0
	addq.l	#1,U98388
	move	d0,ccr
	beq.s	L73906
L73964:
	move.w	d7,d0
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L73976:
	link	fp,#-4
	movea.l	U101026,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	unlk	fp
	rts

L74002:
	link	fp,#-4
	movea.l	U100750,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74802
	unlk	fp
	rts

L74028:
	link	fp,#-4
	movea.l	U101026,a0
	cmpi.b	#10,(a0)
	beq.s	L74048
	clr.w	d0
	bra.s	L74050

L74048:
	moveq	#1,d0
L74050:
	unlk	fp
	rts

L74054:
	link	fp,#-4
	movea.l	U100750,a0
	cmpi.b	#10,(a0)
	beq.s	L74074
	clr.w	d0
	bra.s	L74076

L74074:
	moveq	#1,d0
L74076:
	unlk	fp
	rts

L74080:
	link	fp,#-4
	bsr  	L73172
	tst.w	d0
	beq.s	L74110
	move.w	#1,(sp)
	move.l	#U101170,-(sp)
	jsr	L218
	addq.l	#4,sp
L74110:
	jsr	L74860
	unlk	fp
	rts

L74120:
	link	fp,#-4
	bra.s	L74146

L74126:
	bsr  	L73144
	tst.w	d0
	bne.s	L74154
	move.w	#32,(sp)
	bsr.s	L74158
	addq.l	#1,U100750
L74146:
	bsr  	L74002
	tst.w	d0
	beq.s	L74126
L74154:
	unlk	fp
	rts

L74158:
	link	fp,#-4
	bsr  	L73172
	tst.w	d0
	beq.s	L74196
	bsr  	L73144
	tst.w	d0
	beq.s	L74196
	move.w	#1,(sp)
	move.l	#U101170,-(sp)
	jsr	L218
	addq.l	#4,sp
L74196:
	move.b	9(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L74948
	unlk	fp
	rts

L74214:
	link	fp,#-4
	tst.b	9(fp)
	bne.s	L74236
	move.l	#U99202,U98392
	bra.s	L74272

L74236:
	move.l	#U99601,d0
	cmp.l	U98392,d0
	bhi.s	L74256
	bsr  	L74702
	bra.s	L74272

L74256:
	movea.l	U98392,a0
	move.b	9(fp),(a0)
	addq.l	#1,U98392
L74272:
	movea.l	U98392,a0
	clr.b	(a0)
	unlk	fp
	rts

L74284:
	link	fp,#-4
	move.l	#U99202,d0
	unlk	fp
	rts

L74298:
	link	fp,#-4
	move.l	U100638,U100642
	move.l	U99196,U100638
	unlk	fp
	rts

L74326:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)
	clr.w	(sp)
	jsr	L47436
	move.l	U99856,U100638
	bsr.s	L74284
	movea.l	d0,a5
	bra.s	L74364

L74358:
	move.w	d7,(sp)
	bsr  	L71636
L74364:
	move.b	(a5)+,d7
	ext.w	d7
	bne.s	L74358
	bsr.s	L74298
	move.w	#1,(sp)
	jsr	L47436
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L74392:
	link	fp,#-8
	tst.l	U100638
	beq  	L74562
	tst.l	U100642
	beq  	L74562
	move.l	U100638,d0
	cmp.l	U100642,d0
	bls.s	L74456
	move.l	U100638,-4(fp)
	move.l	U100642,U100638
	move.l	-4(fp),U100642
L74456:
	move.l	U100638,d0
	cmp.l	U100642,d0
	beq.s	L74546
	move.l	U100638,(sp)
	bsr.s	L74566
	clr.w	(sp)
	bsr  	L74214
	bra.s	L74508

L74486:
	movea.l	U100638,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr  	L74214
	addq.l	#1,U100638
L74508:
	move.l	U100638,d0
	cmp.l	U100642,d0
	bcs.s	L74486
	tst.w	8(fp)
	beq.s	L74542
	move.l	U100642,U99196
	bsr  	L73126
L74542:
	bsr  	L72348
L74546:
	clr.w	d0
	ext.l	d0
	move.l	d0,U100642
	move.l	d0,U100638
L74562:
	unlk	fp
	rts

L74566:
	link	fp,#-4
	move.l	8(fp),d0
	cmp.l	U99856,d0
	bcc.s	L74624
L74582:
	bsr  	L73010
	tst.w	d0
	bne.s	L74622
	move.l	8(fp),d0
	cmp.l	U99856,d0
	bcc.s	L74622
	tst.w	U101496
	beq.s	L74616
	bsr  	L72616
	bra.s	L74620

L74616:
	bsr  	L72870
L74620:
	bra.s	L74582

L74622:
	bra.s	L74698

L74624:
	move.l	8(fp),d0
	cmp.l	U99196,d0
	beq.s	L74698
	bsr  	L72906
	tst.w	d0
	bne.s	L74698
	bsr  	L72518
	tst.w	d0
	beq.s	L74654
	bsr.s	L74702
L74654:
	bsr  	L72958
	tst.w	d0
	bne.s	L74686
	clr.w	(sp)
	bsr  	L73072
	add.w	U101496,d0
	cmp.w	U101498,d0
	blt.s	L74686
	bsr  	L72808
L74686:
	bsr  	L72710
	addq.l	#1,U99196
	bra.s	L74624

L74698:
	unlk	fp
	rts

L74702:
	link	fp,#-4
	jsr	L49684
	tst.w	U99200
	bne.s	L74742
	move.w	#2,(sp)
	jsr	L47436
	move.w	#-1,(sp)
	clr.w	-(sp)
	bsr  	L72378
	addq.l	#2,sp
L74742:
	move.w	#1,(sp)
	move.l	#U101090,-(sp)
	jsr	L218
	addq.l	#4,sp
	unlk	fp
	rts

L74764:
	link	fp,#-4
	addq.w	#1,U99852
	clr.w	d0
	move.w	U99852,d0
	cmp.w	#20,d0
	bls.s	L74798
	clr.w	U99852
	bsr  	L75710
L74798:
	unlk	fp
	rts

L74802:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.w	8(fp),d7
	cmp.w	#10,d7
	beq.s	L74828
	tst.w	d7
	beq.s	L74828
	clr.w	d0
	bra.s	L74830

L74828:
	moveq	#1,d0
L74830:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L74840:
	link	fp,#-4
	cmpi.w	#1,U101044
	ble.s	L74856
	bsr.s	L74860
L74856:
	unlk	fp
	rts

L74860:
	link	fp,#-4
	move.w	#10,(sp)
	bsr.s	L74948
	unlk	fp
	rts

L74874:
	link	fp,#-4
	jsr	L58068
	jsr	L47940
	bsr.s	L74860
	move.l	8(fp),(sp)
	bsr.s	L74902
	unlk	fp
	rts

L74902:
	link	fp,#-6
	bra.s	.L74918

.L74908:
	move.b	-2(fp),d0
	ext.w	d0
	move.w	d0,(sp)
	bsr.s	L74948
.L74918:
	movea.l	8(fp),a0
	move.b	(a0),d0
	ext.w	d0
	move.b	d0,-2(fp)
	move.w	d0,(sp)
	bsr  	L74802
	addq.l	#1,8(fp)
	tst.w	d0
	beq.s	.L74908
	unlk	fp
	rts

L74948:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	move.b	9(fp),d7
	tst.w	U98714
	beq.s	.L75020
	addq.w	#1,U99178
	clr.w	d0
	move.w	U99178,d0
	cmp.w	#134,d0
	bcs.s	.L74994
	jsr	L67450
.L74994:
	movea.l	U101030,a0
	move.b	d7,(a0)
	addq.l	#1,U101030
	movea.l	U101030,a0
	clr.b	(a0)
	bra  	.L75538
.L75020:
	cmpi.w	#2,U100996
	bne.s	.L75090
	cmp.b	#10,d7
	bne.s	.L75068
	bsr  	L77150
	move.w	#13,(sp)
	jsr	L19402
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L19402
	bsr  	L75596
	bra.s	.L75086
.L75068:
	addq.w	#1,U101044
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L19402
.L75086:
	bra  	.L75538
.L75090:
	jsr	L58044
	tst.w	d0
	beq  	.L75244
	move.w	U101200,d0
	move.w	U101468,d1
	add.w	#-250,d1
	cmp.w	d1,d0
	move	sr,d0
	addq.w	#1,U101200
	move	d0,ccr
	blt.s	.L75150
	move.w	#1,(sp)
	move.l	#U101090,-(sp)
	jsr	L218
	addq.l	#4,sp
.L75150:
	cmp.b	#9,d7
	bne.s	.L75170
	bsr  	L75548
	move.w	d0,(sp)
	bsr  	L76954
	bra  	.L75538
.L75170:
	cmp.b	#10,d7
	bne.s	.L75188
	addq.w	#1,U100990
	bsr  	L77150
	bra.s	.L75226
.L75188:
	move.w	U101044,d0
	cmp.w	U101498,d0
	move	sr,d0
	addq.w	#1,U101044
	move	d0,ccr
	blt.s	.L75226
	addq.w	#1,U100990
	move.w	#2,U101044
.L75226:
	addq.l	#1,U101102
	movea.l	U101102,a0
	move.b	d7,(a0)
	bra  	.L75538
.L75244:
	tst.w	U101146
	beq.s	.L75264
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(sp)
	jsr	L19078
.L75264:
	move.b	d7,d0
	ext.w	d0
	bra  	.L75506
.L75272:
	move.w	U101154,(sp)
	move.w	#1,-(sp)
	jsr	L46014
	addq.l	#2,sp
	bsr  	L77262
	tst.w	d0
	beq.s	.L75308
	move.w	#2,(sp)
	jsr	L47436
.L75308:
	jsr	L73172
	tst.w	d0
	beq.s	.L75326
	jsr	L46714
	bra.s	.L75332
.L75326:
	addq.w	#1,U101154
.L75332:
	move.w	U101154,(sp)
	moveq	#1,d0
	move.w	d0,U101044
	move.w	d0,-(sp)
	jsr	L46014
	addq.l	#2,sp
	bsr  	L77262
	tst.w	d0
	beq.s	.L75376
	clr.w	(sp)
	jsr	L47436
	bsr  	L75596
.L75376:
	bra  	.L75538
.L75380:
	cmpi.w	#1,U101044
	ble.s	.L75416
	move.w	U101154,(sp)
	subq.w	#1,U101044
	move.w	U101044,-(sp)
	jsr	L46014
	addq.l	#2,sp
.L75416:
	bra  	.L75538
.L75420:
	bsr  	L75548
	move.w	d0,(sp)
	bsr  	L76954
	bra.s	.L75538
.L75432:
	jsr	L73144
	tst.w	d0
	beq.s	.L75470
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	move.w	#33,-(sp)
	jsr	L45800
	addq.l	#4,sp
	bsr  	L74840
.L75470:
	move.w	U101154,(sp)
	move.w	U101044,-(sp)
	move.b	d7,d0
	ext.w	d0
	move.w	d0,-(sp)
	jsr	L45800
	addq.l	#4,sp
	addq.w	#1,U101044
	bra.s	.L75538
.L75506:
	cmp.w	#8,d0
	beq  	.L75380
	cmp.w	#9,d0
	beq.s	.L75420
	cmp.w	#10,d0
	beq  	.L75272
	cmp.w	#13,d0
	beq  	.L75332
	bra.s	.L75432
.L75538:
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L75548:
	link	fp,#-4
	moveq	#4,d0
	move.w	U101044,d1
	subq.w	#1,d1
	moveq	#4,d2
	subq.w	#1,d2
	and.w	d2,d1
	sub.w	d1,d0
	unlk	fp
	rts

L75582:
	link	fp,#-4
	clr.w	U101458
	unlk	fp
	rts

L75596:
	link	fp,#-4
	movea.l	#6,a0
	movea.l	U91932,a1
	move.l	0(a0,a1.l),d0
	cmp.l	U91936,d0
	bne.s	.L75632
	tst.w	U91926
	beq.s	.L75666
.L75632:
	movea.l	U91932,a0
	addq.l	#6,a0
	move.l	(a0),U91936
	clr.w	U91926
	jsr	L46108
	cmp.w	#-1,d0
	bne.s	.L75666
	bsr.s	L75670
.L75666:
	unlk	fp
	rts

L75670:
	link	fp,#-4
	jsr	L46620
	and.w	#255,d0
	move.b	d0,U101150
	move.w	d0,(sp)
	bsr  	L75910
	move.w	d0,U101458
	bsr  	L76094
	unlk	fp
	rts

L75710:
	link	fp,#-4
	bsr  	L75962
	tst.w	d0
	beq	.L75758
	move.l	err_stack,(sp)
	move.w	#1,-(sp)
	jsr	form_alert
	addq.l	#2,sp
	move.w	#1,(sp)
	move.l	#U101158,-(sp)
	jsr	L218
	addq.l	#4,sp
.L75758:
	bsr  	L75596
	bsr.s	L75788
	tst.w	d0
	beq.s	.L75780
	bsr  	L75582
	jsr	L2226
	bra	.return

.L75780:
	bsr  	L76400
.return:
	unlk	fp
	rts

L75788:
	link	fp,#-4
	cmpi.w	#-26,U101458
	bne.s	L75808
	bsr.s	L75818
	tst.w	d0
	bne.s	L75812
L75808:
	clr.w	d0
	bra.s	L75814

L75812:
	moveq	#1,d0
L75814:
	unlk	fp
	rts

L75818:
	link	fp,#-4
	tst.w	U101470
	bne.s	L75846
	tst.w	U101476
	bne.s	L75846
	tst.w	U100980
	beq.s	L75850
L75846:
	clr.w	d0
	bra.s	L75852

L75850:
	moveq	#1,d0
L75852:
	unlk	fp
	rts

L75856:
	link	fp,#-4
	tst.w	U101458
	bne.s	L75872
	bsr  	L75670
L75872:
	bsr.s	L75788
	tst.w	d0
	beq.s	L75902
	bsr  	L75582
	move.w	#1,(sp)
	move.l	#U100656,-(sp)
	jsr	L218
	addq.l	#4,sp
	bra.s	L75906

L75902:
	bsr  	L76400
L75906:
	unlk	fp
	rts

L75910:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)
	moveq	#-1,d7
	movea.l	#T84580,a5
	bra.s	L75944

L75928:
	move.w	8(fp),d0
	ext.w	d0
	cmp.b	(a5)+,d0
	bne.s	L75942
	move.w	d7,d0
	bra.s	L75952

L75942:
	subq.w	#1,d7
L75944:
	tst.b	(a5)
	bne.s	L75928
	move.w	8(fp),d0
L75952:
	tst.l	(sp)+
	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L75962:
	link	fp,#0
	cmpi.w	#1,U100986
	beq.s	.L75990
	cmpi.w	#1,U100996
	beq.s	.L75990
	move.l	U100744,d0
.L76014:
	move.l	d0,d2
	move.l	fp,d0
	sub.l	#1719,d0
	cmp.l	d0,d2
	bhi.s	.gt
.L76036:
	move.l	fp,d0
	sub.l	#503,d0
	cmp.l	d0,d2
	bhi.s	.ret1
	clr.w	d0
.return:
	unlk	fp
	rts
.ret1:
	moveq	#1,d0
	bra.s	.return

.gt:
	move.w	#19,U99852
	bra.s	.L76036

.L75990:
	move.l	U100744,d0
	move.w	U101468,d1
	ext.l	d1
	add.l	d1,d0
	bra.s	.L76014

is_oom:
	link	fp,#-4
	tst.w	U99190
	beq.s	.ret_noerr
	tst.w	U101476
	beq.s	.ret_err
.ret_noerr:
	clr.w	d0
	bra.s	.return
.ret_err:
	moveq	#1,d0
.return:
	unlk	fp
	rts

L76094:
	link	fp,#-4
	cmpi.w	#-7,U101458
	bne  	L76344
	bsr.s	is_oom
	tst.w	d0
	bne  	L76344
	bsr  	L75582
	move.w	#2,(sp)
	jsr	L47436
	tst.w	U101146
	beq.s	L76156
	jsr	L49708
	tst.w	d0
	bne.s	L76156
	clr.w	U101146
L76156:
	tst.w	U100980
	beq.s	L76206
	move.w	U100990,U99194
	move.w	U101044,U98710
	jsr	L70792
	move.l	U99196,U101102
	jsr	L70038
L76206:
	jsr	L70006
	move.l	T87066,(sp)
	bsr  	L76994
	bra.s	L76316

L76224:
	jsr	L64160
	cmp.w	#20,d0
	bne.s	L76276
	move.w	#9,(sp)
	jsr	L64658
	cmp.w	#26,d0
	bne.s	L76276
	jsr	L64942
	move.w	#2,(sp)
	move.l	#U101014,-(sp)
	jsr	L218
	addq.l	#4,sp
L76276:
	jsr	L64160
	cmp.w	#22,d0
	bne.s	L76310
	jsr	L64942
	clr.w	(sp)
	move.l	#U101014,-(sp)
	jsr	L218
	addq.l	#4,sp
L76310:
	jsr	L64028
L76316:
	jsr	L64006
	tst.w	d0
	beq.s	L76224
	move.w	#1,(sp)
	move.l	#U101158,-(sp)
	jsr	L218
	addq.l	#4,sp
L76344:
	unlk	fp
	rts

L76348:
	link	fp,#-14
	clr.w	-6(fp)
	bra.s	L76384

L76358:
	movea.l	fp,a0
	movea.w	-6(fp),a1
	adda.l	a1,a0
	move.l	a0,-(sp)
	jsr	L46620
	movea.l	(sp)+,a0
	move.b	d0,-10(a0)
	addq.w	#1,-6(fp)
L76384:
	cmpi.w	#4,-6(fp)
	blt.s	L76358
	move.l	-10(fp),d0
	unlk	fp
	rts

L76400:
	link	fp,#-4
	cmpi.w	#-28,U101458
	bne  	L76800
	bsr  	L75818
	tst.w	d0
	beq  	L76800
L76426:
	bsr  	L75582
	clr.w	U99200
	jsr	L46620
	bra  	L76724

L76446:
	jsr	L64006
	tst.w	d0
	bne.s	L76482
	jsr	L64160
	cmp.w	#22,d0
	bne.s	L76482
	bsr  	L74840
	move.w	#22,(sp)
	jsr	L62262
L76482:
	bra  	L76746

L76486:
	move.l	#T86968,(sp)
	bsr  	L76804
	bra  	L76746

L76500:
	bsr  	L76348
	move.l	d0,(sp)
	move.l	#U100754,d0
	move.l	d0,U101030
	move.l	d0,-(sp)
	jsr	L83880
	addq.l	#4,sp
	move.l	d0,(sp)
	jsr	Fdelete
	move.l	U101030,(sp)
	move.l	#T86975,-(sp)
	move.l	#U100162,-(sp)
	jsr	L83880
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	L83706
	addq.l	#4,sp
	move.l	#U100162,(sp)
	bsr  	L76856
	bra  	L76746

L76586:
	move.l	#T86982,(sp)
	bsr  	L76804
	bra  	L76746

L76600:
	move.l	#T86992,(sp)
	bsr  	L76804
	bra  	L76746

L76614:
	move.l	#T87002,(sp)
	bsr  	L76804
	bra  	L76746

L76628:
	move.l	#T87014,(sp)
	bsr  	L76856
	bra  	L76746

L76642:
	move.l	#T87020,(sp)
	bsr  	L76804
	bra.s	L76746

L76654:
	move.l	#U99202,(sp)
	bsr  	L76856
	bra.s	L76746

L76666:
	tst.w	U98398
	beq.s	L76682
	move.l	#T87026,(sp)
	bra.s	L76688

L76682:
	move.l	#T87034,(sp)
L76688:
	bsr  	L76856
	bra.s	L76746

L76694:
	tst.w	U101198
	beq.s	L76710
	move.l	#T87040,(sp)
	bra.s	L76716

L76710:
	move.l	#T87048,(sp)
L76716:
	bsr  	L76856
	bra.s	L76746

	bra.s	L76746

L76724:
	ext.l	d0
	movea.l	#T86864,a0
	moveq	#12,d1
L76734:
	cmp.l	(a0)+,d0
	dbeq	d1,L76734
	movea.l	48(a0),a0
	jmp	(a0)

L76746:
	bsr  	L75596
	cmpi.w	#-28,U101458
	bne.s	L76764
	bra  	L76426

L76764:
	jsr	L64006
	tst.w	d0
	bne.s	L76786
	jsr	L64160
	cmp.w	#22,d0
	bne.s	L76800
L76786:
	clr.w	(sp)
	move.w	#22,-(sp)
	jsr	L62282
	addq.l	#2,sp
L76800:
	unlk	fp
	rts

L76804:
	link	fp,#-4
	bsr  	L76348
	move.l	d0,(sp)
	move.l	8(fp),-(sp)
	move.l	#U100162,-(sp)
	jsr	L83880
	addq.l	#8,sp
	move.l	d0,-(sp)
	jsr	L83706
	addq.l	#4,sp
	move.l	d0,(sp)
	bsr.s	L76856
	clr.b	U100162
	unlk	fp
	rts

L76856:
	link	fp,#-4
	move.w	#26,(sp)
	jsr	L64090
	jsr	L9760
	move.l	#U101014,(sp)
	jsr	L204
	bra.s	L76932

L76890:
	clr.w	U100748
	jsr	L68942
	bra.s	L76944

L76904:
	jsr	L64888
	move.l	8(fp),U100962
	jsr	L50854
	jsr	L58142
L76930:
	bra.s	L76944

L76932:
	tst.w	d0
	beq.s	L76904
	cmp.w	#1,d0
	beq.s	L76890
	bra.s	L76930

L76944:
	jsr	L9794
	unlk	fp
	rts

L76954:
	link	fp,#-4
	bra.s	L76962

L76960:
	bsr.s	L76978
L76962:
	move.w	8(fp),d0
	subq.w	#1,8(fp)
	tst.w	d0
	bgt.s	L76960
	unlk	fp
	rts

L76978:
	link	fp,#-4
	move.w	#32,(sp)
	bsr  	L74948
	unlk	fp
	rts

L76994:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L47940
	jsr	L64994
	move.w	d0,d7
	beq.s	L77128
	bsr  	L74840
	move.w	d7,(sp)
	move.l	#L55354,-(sp)
	move.l	8(fp),-(sp)
	move.l	#L74902,-(sp)
	move.l	T87306,-(sp)
	jsr	L54390
	adda.l	#16,sp
	move.l	#T87054,(sp)
	bsr  	L74902
	tst.w	U99864
	beq.s	L77098
	move.w	U99864,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L55354
	bra.s	L77126

L77098:
	tst.w	U99818
	beq.s	L77126
	move.w	U99818,d0
	jsr	L358_1d
	move.w	d0,(sp)
	jsr	L55354
L77126:
	bra.s	L77136

L77128:
	move.l	8(fp),(sp)
	bsr  	L74874
L77136:
	bsr  	L74840
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L77150:
	link	fp,#-4
	move.w	#1,U101044
	unlk	fp
	rts

L77166:
	link	fp,#-4
	bsr.s	L77262
	tst.w	d0
	beq.s	L77186
	move.w	#2,(sp)
	jsr	L47436
L77186:
	jsr	L47278
	move.w	#1,(sp)
	move.w	#1,-(sp)
	bsr.s	L77222
	addq.l	#2,sp
	bsr.s	L77262
	tst.w	d0
	beq.s	L77218
	clr.w	(sp)
	jsr	L47436
L77218:
	unlk	fp
	rts

L77222:
	link	fp,#-4
	move.w	8(fp),d0
	move.w	d0,U101154
	move.w	d0,(sp)
	move.w	10(fp),d0
	move.w	d0,U101044
	move.w	d0,-(sp)
	jsr	L46014
	addq.l	#2,sp
	unlk	fp
	rts

L77262:
	link	fp,#-4
	tst.w	U100980
	bne.s	L77282
	tst.w	U99200
	beq.s	L77286
L77282:
	clr.w	d0
	bra.s	L77288

L77286:
	moveq	#1,d0
L77288:
	unlk	fp
	rts

Cprnout:
	link	fp,#-4
	move.w	8(fp),(sp)
	move.w	#5,-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

gemdos:
	link	fp,#-4
	move.l	10(fp),(sp)
	move.w	8(fp),-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

Dgetdrv:
	link	fp,#-4
	move.w	#25,(sp)
	trap	#1	; GEMDOS
	unlk	fp
	rts

Fsetdta:
	link	fp,#-4
	move.l	8(fp),(sp)
	move.w	#26,-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

Fsfirst:
	link	fp,#-4
	move.w	12(fp),(sp)
	move.l	8(fp),-(sp)
	move.w	#78,-(sp)
	trap	#1	; GEMDOS
	addq.l	#6,sp
	unlk	fp
	rts

Fsnext:
	link	fp,#-6
	move.w	#79,(sp)
	trap	#1	; GEMDOS
	unlk	fp
	rts

Fopen:
	link	fp,#-8
	move.w	12(fp),(sp)
	move.l	8(fp),-(sp)
	move.w	#61,-(sp)
	trap	#1	; GEMDOS
	addq.l	#6,sp
	unlk	fp
	rts

Fclose:
	link	fp,#-4
	move.w	8(fp),(sp)
	move.w	#62,-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

Fread:
	link	fp,#-4
	move.l	8(fp),(sp)
	movea.w	12(fp),a0
	move.l	a0,-(sp)
	move.w	14(fp),-(sp)
	move.w	#63,-(sp)
	trap	#1	; GEMDOS
	addq.l	#8,sp
	unlk	fp
	rts

Fwrite:
	link	fp,#-4
	move.l	8(fp),(sp)
	movea.w	12(fp),a0
	move.l	a0,-(sp)
	move.w	14(fp),-(sp)
	move.w	#64,-(sp)
	trap	#1	; GEMDOS
	addq.l	#8,sp
	unlk	fp
	rts

Dsetpath:
	link	fp,#-4
	move.l	8(fp),(sp)
	move.w	#59,-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

Dgetpath:
	link	fp,#-4
	move.w	12(fp),(sp)
	move.l	8(fp),-(sp)
	move.w	#71,-(sp)
	trap	#1	; GEMDOS
	addq.l	#6,sp
	unlk	fp
	rts

Dsetdrv:
	link	fp,#-4
	move.w	8(fp),(sp)
	move.w	#14,-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

Fcreate:
	link	fp,#-4
	move.w	12(fp),(sp)
	move.l	8(fp),-(sp)
	move.w	#60,-(sp)
	trap	#1	; GEMDOS
	addq.l	#6,sp
	unlk	fp
	rts

Fdelete:
	link	fp,#-4
	move.l	8(fp),(sp)
	move.w	#65,-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

Frename:
	link	fp,#-6
	move.l	12(fp),(sp)
	move.l	8(fp),-(sp)
	move.w	-2(fp),-(sp)
	move.w	#86,-(sp)
	trap	#1	; GEMDOS
	addq.l	#8,sp
	unlk	fp
	rts

Malloc:
	move.l	4(sp),d0
	addq.l	#1,d0
	andi.l	#-2,d0
	move.l	d0,-(sp)
	move.w	#72,-(sp)
	trap	#1	; GEMDOS
	addq.l	#6,sp
	addq.l	#1,d0
	andi.l	#-2,d0
	rts

get_free_mem:
	move.l	#-1,-(sp)
	move.w	#72,-(sp)
	trap	#1	; GEMDOS
	addq.l	#6,sp
	rts

Mfree:
	link	fp,#-4
	move.l	8(fp),(sp)
	move.w	#73,-(sp)
	trap	#1	; GEMDOS
	addq.l	#2,sp
	unlk	fp
	rts

L77854:
	link	fp,#-2
	movem.l	d7/a5,-(sp)
	jsr	init
	move.w	#1,U99190
	jsr	L47940
	bsr  	alloc_mem
	clr.w	d0
	move.w	d0,U98714
	move.w	d0,U99192
	move.w	d0,U101146
	move.w	d0,U101198
	move.w	d0,U100980
	move.w	d0,U100626
	move.w	d0,U98398
	move.w	d0,U100736
	move.b	d0,U101040
	move.b	d0,U99202
	clr.b	U101148
	clr.w	U101106
	move.w	#899,U100646
	jsr	L58082
	jsr	L58068
	jsr	L70006
	jsr	L77166
	jsr	L75582
	movea.l	#string_table,a0
	move.l	4(a0),(sp)
	jsr	L74902
	jsr	L74860
	bsr  	L78494
	jsr	L48234
	jsr	L32858
	jsr	L47940
	move.w	U100984,U99816
	move.l	U91922,a0
	tst.b	(a0)
	beq.s	.L78092
	move.l	a0,(sp)
	addq.l	#1,(sp)
	bra.s	.L78102

.L78092:
	movea.l	#string_table,a0
	move.l	32(a0),(sp)
.L78102:
	move.l	#U100754,d0
	move.l	d0,U101030
	move.l	d0,-(sp)
	jsr	L83880
	addq.l	#4,sp
	jsr	L20414
	tst.w	d0
	beq.s	.L78154
	move.l	U101030,(sp)
	move.l	T87150,-(sp)
	bsr.s	L78238
	addq.l	#4,sp
	tst.w	d0
	bne.s	.L78158
.L78154:
	clr.w	d0
	bra.s	.L78160

.L78158:
	moveq	#1,d0
.L78160:
	move.w	d0,U101476
	beq.s	.L78216
	movea.l	#string_table,a0
	move.l	28(a0),(sp)
	jsr	L74902
	move.l	#U100754,(sp)
	jsr	L74902
	jsr	L74860
	jsr	L19286
	jsr	L19594
	bra.s	.L78222

.L78216:
	clr.w	U99190
.L78222:
	jsr	L49370
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L78238:
	link	fp,#0
	movem.l	d4-d7/a4-a5,-(sp)
	movea.l	8(fp),a5
	movea.l	12(fp),a4
	clr.w	d5
	move.l	a4,(sp)
	jsr	L83914
	move.w	d0,d7
	move.l	a5,(sp)
	jsr	L83914
	sub.w	d0,d7
	clr.w	d6
	bra.s	L78326

L78280:
	move.l	a5,(sp)
	jsr	L83914
	move.w	d0,(sp)
	move.l	a5,-(sp)
	move.l	a4,d0
	move.w	d6,d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,-(sp)
	jsr	L83814
	addq.l	#8,sp
	tst.w	d0
	beq.s	L78318
	clr.w	d0
	bra.s	L78320

L78318:
	moveq	#1,d0
L78320:
	move.w	d0,d5
	bne.s	L78330
	addq.w	#1,d6
L78326:
	cmp.w	d7,d6
	ble.s	L78280
L78330:
	move.w	d5,d0
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7/a4-a5
	unlk	fp
	rts

alloc_mem:
	link	fp,#-4
	movem.l	d6-d7,-(sp)

	jsr	get_free_mem
	sub.l	#$A00,d0	; leave 2.5k for TOS or bad things happen
	bge	.pos
	clr.l	d0
.pos:
	; for reference a 512k TOS 1.0 machine originally
	; allocated 0x44AF6 (0x444B6 in lowres)
	move.l	d0,-(sp)
	jsr	Malloc
	addq.l	#4,sp

	move.l	d0,-4(fp)
	move.l	sp,d0
	sub.l	#8680,d0
	move.l	d0,U100744
	move.l	#33,-(sp)
	sub.l	-4(fp),d0
	move.l	d0,-(sp)
	subq.l	#1,(sp)
	jsr	L83960
	addq.l	#8,sp
	add.l	-4(fp),d0
	addq.l	#2,d0
	and.l	#$00FFFFFE,d0	; uh oh
	move.l	d0,U101194
	move.l	U100744,d7
	sub.l	U101194,d7
	asr.l	#2,d7
	move.l	d7,d0
	cmp.l	#65535,d0
	ble.s	.L78458
	move.w	#-1,nodes_max
	bra.s	.L78464
.L78458:
	;move.w	#2750,nodes_max
	move.w	d7,nodes_max
.L78464:
	move.l	-4(fp),d0
	subq.l	#4,d0
	move.l	d0,U101036
	move.w	#32,U100734
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L78494:
	link	fp,#0
	movem.l	d6-d7,-(sp)
	jsr	L75582
	jsr	L74840
	clr.w	d7
	bra.s	.L78532
.L78518:
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	clr.w	(a0)
	addq.w	#1,d7
.L78532:
	cmp.w	#128,d7
	blt.s	.L78518
	clr.w	d0
	move.w	d0,U99186
	move.w	d0,U99862
	clr.w	U99188
	clr.w	U100620
	move.w	U100734,U99176
	move.w	nodes_max,nodes_free
	jsr	node_add
	move.w	d0,U101004
	movea.l	#string_table,a0
	move.l	48(a0),(sp)
	jsr	L62012
	move.w	d0,U100742
	move.w	d0,(sp)
	bsr  	L79296
	bsr.s	L78646
	bsr  	L79392
	bsr  	L79328
	bsr.s	init_string_table
	tst.l	(sp)+
	movem.l	(sp)+,d7
	unlk	fp
	rts

L78646:
	link	fp,#-4
	move.l	#T91780,U101030
	move.w	#1,U99178
	jsr	L52566
	move.l	p_tbase,-(sp)
	move.l	#L3652,d0
	sub.l	(sp)+,d0
	move.w	d0,(sp)
	move.w	#10,-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,(sp)
	move.w	U100742,-(sp)
	jsr	L64224
	move.w	d0,U100888
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp
	unlk	fp
	rts

init_string_table:
	move.l	a3,-(sp)
	move.l	T87142,-(sp)
	jsr	L62012
	move.w	d0,U100984
	move.w	d0,(sp)
	bsr  	L79296
	move.l	T87146,(sp)
	jsr	L62012
	move.w	d0,U101186
	move.w	d0,(sp)
	bsr  	L79296
	movea.l	#string_table,a3
	move.l	52(a3),(sp)
	jsr	L62012
	move.w	d0,U98716
	move.w	d0,(sp)
	bsr  	L79296
	move.l	60(a3),(sp)
	jsr	L62012
	move.w	d0,U98718
	move.w	d0,(sp)
	bsr  	L79296
	move.l	84(a3),(sp)
	jsr	L62012
	move.w	d0,U100738
	move.w	d0,(sp)
	bsr  	L79296
	move.l	72(a3),(sp)
	jsr	L62012
	move.w	d0,U100740
	move.w	d0,(sp)
	bsr  	L79296
	move.l	76(a3),(sp)
	jsr	L62012
	move.w	d0,U100676
	move.w	d0,(sp)
	bsr  	L79296
	move.l	80(a3),(sp)
	jsr	L62012
	move.w	d0,U100634
	move.w	d0,(sp)
	bsr  	L79296
	move.l	88(a3),(sp)
	jsr	L62012
	move.w	d0,U100994
	move.w	d0,(sp)
	bsr  	L79296
	move.l	92(a3),(sp)
	jsr	L62012
	move.w	d0,U98400
	move.w	d0,(sp)
	bsr  	L79296
	move.l	96(a3),(sp)
	jsr	L62012
	move.w	d0,U100648
	move.w	d0,(sp)
	bsr  	L79296
	move.l	100(a3),(sp)
	jsr	L62012
	move.w	d0,U101012
	move.w	d0,(sp)
	bsr  	L79296
	move.l	104(a3),(sp)
	jsr	L62012
	move.w	d0,U101114
	move.w	d0,(sp)
	bsr  	L79296
	move.l	108(a3),(sp)
	jsr	L62012
	move.w	d0,U101500
	move.w	d0,(sp)
	bsr  	L79296
	move.l	112(a3),(sp)
	jsr	L62012
	move.w	d0,U100650
	move.w	d0,(sp)
	bsr  	L79296
	move.l	(sp)+,a3
	addq	#4,sp
	rts

L79158:
	link	fp,#0
	movem.l	d7/a5,-(sp)

	movea.l	8(fp),a5

.loop:
	move.l	a5,U101030
	clr.w	U99178
	bra.s	.L79192

.L79184:
	addq.w	#1,U99178
	addq.l	#1,a5
.L79192:
	tst.b	(a5)
	beq.s	.L79202
	cmpi.b	#32,(a5)
	bne.s	.L79184
.L79202:
	jsr	L53318
	jsr	L52882
	move.l	p_tbase,-(sp)
	move.l	12(fp),d0
	sub.l	(sp)+,d0

	move.w	d0,(sp)
	move.w	#10,-(sp)
	jsr	L65496
	addq.l	#2,sp

	move.w	d0,(sp)
	move.w	U100742,-(sp)
	jsr	L64224

	move.w	d0,U101046
	move.w	d0,-(sp)
	jsr	L66062
	addq.l	#4,sp

	tst.b	(a5)+
	beq.s	.break
	bra.s	.loop

.break:
	clr.w	d0
	move.w	U101046,d0
	tst.l	(sp)+
	movem.l	(sp)+,a5
	unlk	fp
	rts

L79296:
	link	fp,#-4
	move.w	U99862,(sp)
	move.w	8(fp),-(sp)
	jsr	L65496
	addq.l	#2,sp
	move.w	d0,U99862
	unlk	fp
	rts

L79328:
	link	fp,#0
	movem.l	d6-d7/a5,-(sp)

	move.l	#word_table,a5
	move.w	#199,d7
	bra.s	.do

.loop:
	move.l	4(a5),d0
	tst.l	d0
	beq.s	.null

	move.l	d0,(sp)
	move.l	(a5),-(sp)
	bsr  	L79158
	addq.l	#4,sp

.null:
	addq.l	#8,a5
.do:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bne.s	.loop
	tst.l	(sp)+

	movem.l	(sp)+,d7/a5
	unlk	fp
	rts

L79392:
	link	fp,#-4
	move.l	#L2120,(sp)
	move.l	#T91782,-(sp)
	bsr  	L79158
	addq.l	#4,sp
	move.w	d0,U100624
	move.l	#L67004,(sp)
	move.l	#T91784,-(sp)
	bsr  	L79158
	addq.l	#4,sp
	move.w	d0,U100652
	unlk	fp
	rts

L79448:
	link	fp,#-4
	move.l	d7,-(sp)
	move.l	8(fp),d7
	jsr	L79472
	move.l	d7,d0
	move.l	(sp)+,d7
	unlk	fp
	rts

L79472:
	movem.l	d1-d6/a0,-(sp)
	move.b	d7,-(sp)
	and.b	#127,d7
	move.l	#-2147483583,d6
	clr.b	-(sp)
	cmp.b	d6,d7
	bcs.s	L79510
	bhi.s	L79500
	cmp.l	d6,d7
	bls.s	L79510
L79500:
	not.b	(sp)
	exg	d6,d7
	jsr	FFPDIV
L79510:
	sub.b	#67,d7
	neg.b	d7
	cmp.b	#31,d7
	bls.s	L79526
	moveq	#0,d6
	bra.s	L79582

L79526:
	lsr.l	d7,d7
	moveq	#0,d6
	move.l	#$20000000,d5
	lea 	X83274,a0
	moveq	#24,d1
	moveq	#1,d2
	bra.s	L79554

L79548:
	asr.l	d2,d4
	add.l	d4,d5
	add.l	(a0),d6
L79554:
	move.l	d7,d4
	move.l	d5,d3
	asr.l	d2,d3
L79560:
	sub.l	d3,d7
	bpl.s	L79548
	move.l	d4,d7
	addq.l	#4,a0
	addq.b	#1,d2
	lsr.l	#1,d3
	dbf	d1,L79560
	jsr	L83378
L79582:
	move.l	d6,d7
	tst.b	(sp)+
	beq.s	L79600
	move.l	#-921707711,d7
	jsr	FFPSUB
L79600:
	move.b	(sp)+,d6
	tst.b	d7
	beq.s	L79612
	and.b	#128,d6
	or.b	d6,d7
L79612:
	movem.l	(sp)+,d1-d6/a0
	rts

L79618:
	link	fp,#-8
	movem.l	d3-d7,-(sp)
	move.l	12(fp),-4(fp)
	tst.w	16(fp)
	bgt.s	L79642
	moveq	#1,d0
	bra.s	L79660

L79642:
	cmpi.w	#22,16(fp)
	ble.s	L79654
	moveq	#23,d0
	bra.s	L79660

L79654:
	move.w	16(fp),d0
	addq.w	#1,d0
L79660:
	move.w	d0,d4
	clr.w	d7
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L79708
	movea.l	12(fp),a0
	move.b	#45,(a0)
	addq.l	#1,12(fp)
	move.l	8(fp),-(sp)
	jsr	L82000
	addq.l	#4,sp
	move.l	d0,8(fp)
L79708:
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L79770
	bra.s	L79750

L79726:
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,8(fp)
	subq.w	#1,d7
L79750:
	move.l	#-2147483583,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L79726
L79770:
	bra.s	L79796

L79772:
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,8(fp)
	addq.w	#1,d7
L79796:
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L79772
	add.w	d7,d4
	moveq	#1,d6
	move.w	d6,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-8(fp)
	bra.s	L79864

L79840:
	move.l	#-1610612668,-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-8(fp)
	addq.w	#1,d6
L79864:
	cmp.w	d4,d6
	blt.s	L79840
	move.l	#-2147483582,-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L79934
	move.l	#-2147483583,8(fp)
	addq.w	#1,d7
L79934:
	tst.w	d7
	bge.s	L79990
	movea.l	12(fp),a0
	move.b	#48,(a0)
	addq.l	#1,12(fp)
	movea.l	12(fp),a0
	move.b	#46,(a0)
	addq.l	#1,12(fp)
	tst.w	d4
	bge.s	L79968
	sub.w	d4,d7
L79968:
	moveq	#-1,d6
	bra.s	L79986

L79972:
	movea.l	12(fp),a0
	move.b	#48,(a0)
	addq.l	#1,12(fp)
	subq.w	#1,d6
L79986:
	cmp.w	d7,d6
	bgt.s	L79972
L79990:
	clr.w	d6
	bra.s	L80100

L79994:
	move.l	8(fp),-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d5
	move.w	d5,d0
	add.w	#48,d0
	movea.l	12(fp),a1
	move.b	d0,(a1)
	addq.l	#1,12(fp)
	cmp.w	d7,d6
	bne.s	L80040
	movea.l	12(fp),a0
	move.b	#46,(a0)
	addq.l	#1,12(fp)
L80040:
	move.w	d5,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-8(fp)
	move.l	d0,-(sp)
	move.l	8(fp),-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,8(fp)
	addq.w	#1,d6
L80100:
	cmp.w	d4,d6
	blt.s	L79994
	movea.l	12(fp),a0
	clr.b	(a0)
	addq.l	#1,12(fp)
	move.l	-4(fp),d0
	tst.l	(sp)+
	movem.l	(sp)+,d4-d7
	unlk	fp
	rts

L80128:
	link	fp,#-8
	movem.l	d3-d7,-(sp)
	move.l	12(fp),-4(fp)
	tst.w	16(fp)
	bgt.s	L80152
	moveq	#1,d0
	bra.s	L80170

L80152:
	cmpi.w	#22,16(fp)
	ble.s	L80164
	moveq	#23,d0
	bra.s	L80170

L80164:
	move.w	16(fp),d0
	addq.w	#1,d0
L80170:
	move.w	d0,d4
	clr.w	d7
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L80218
	movea.l	12(fp),a0
	move.b	#45,(a0)
	addq.l	#1,12(fp)
	move.l	8(fp),-(sp)
	jsr	L82000
	addq.l	#4,sp
	move.l	d0,8(fp)
L80218:
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	ble.s	L80280
	bra.s	L80260

L80236:
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,8(fp)
	subq.w	#1,d7
L80260:
	move.l	#-2147483583,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L80236
L80280:
	bra.s	L80306

L80282:
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,8(fp)
	addq.w	#1,d7
L80306:
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L80282
	moveq	#1,d6
	move.w	d6,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-8(fp)
	bra.s	L80372

L80348:
	move.l	#-1610612668,-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-8(fp)
	addq.w	#1,d6
L80372:
	cmp.w	d4,d6
	blt.s	L80348
	move.l	#-2147483582,-(sp)
	move.l	-8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L80442
	move.l	#-2147483583,8(fp)
	addq.w	#1,d7
L80442:
	clr.w	d6
	bra.s	L80552

L80446:
	move.l	8(fp),-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.w	d0,d5
	move.w	d5,d0
	add.w	#48,d0
	movea.l	12(fp),a1
	move.b	d0,(a1)
	addq.l	#1,12(fp)
	tst.w	d6
	bne.s	L80492
	movea.l	12(fp),a0
	move.b	#46,(a0)
	addq.l	#1,12(fp)
L80492:
	move.w	d5,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-8(fp)
	move.l	d0,-(sp)
	move.l	8(fp),-(sp)
	jsr	L82028
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	#-1610612668,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,8(fp)
	addq.w	#1,d6
L80552:
	cmp.w	d4,d6
	blt.s	L80446
	movea.l	12(fp),a0
	move.b	#69,(a0)
	addq.l	#1,12(fp)
	tst.w	d7
	bge.s	L80590
	move.w	d7,d0
	neg.w	d0
	move.w	d0,d7
	movea.l	12(fp),a0
	move.b	#45,(a0)
	addq.l	#1,12(fp)
L80590:
	move.w	d7,d0
	ext.l	d0
	divs	#10,d0
	add.w	#48,d0
	movea.l	12(fp),a1
	move.b	d0,(a1)
	addq.l	#1,12(fp)
	move.w	d7,d0
	ext.l	d0
	divs	#10,d0
	swap	d0
	add.w	#48,d0
	movea.l	12(fp),a1
	move.b	d0,(a1)
	addq.l	#1,12(fp)
	movea.l	12(fp),a0
	clr.b	(a0)
	addq.l	#1,12(fp)
	move.l	-4(fp),d0
	tst.l	(sp)+
	movem.l	(sp)+,d4-d7
	unlk	fp
	rts

L80660:
	link	fp,#-46
	movem.l	d7/a4-a5,-(sp)
	lea 	-20(fp),a5
	lea 	-24(fp),a4
	clr.w	-30(fp)
	clr.w	-38(fp)
	bra.s	L80690

L80686:
	addq.l	#1,8(fp)
L80690:
	movea.l	8(fp),a0
	cmpi.b	#32,(a0)
	beq.s	L80686
	movea.l	8(fp),a0
	cmpi.b	#9,(a0)
	beq.s	L80686
	movea.l	8(fp),a0
	cmpi.b	#45,(a0)
	beq.s	L80724
	clr.w	d0
	bra.s	L80726

L80724:
	moveq	#1,d0
L80726:
	move.w	d0,-34(fp)
	movea.l	8(fp),a0
	cmpi.b	#45,(a0)
	beq.s	L80750
	movea.l	8(fp),a0
	cmpi.b	#43,(a0)
	bne.s	L80754
L80750:
	addq.l	#1,8(fp)
L80754:
	bra.s	L80792

L80756:
	movea.l	8(fp),a0
	cmpi.b	#46,(a0)
	bne.s	L80772
	addq.w	#1,-30(fp)
	bra.s	L80788

L80772:
	movea.l	8(fp),a0
	move.b	(a0),(a5)+
	tst.w	-30(fp)
	beq.s	L80788
	addq.w	#1,-38(fp)
L80788:
	addq.l	#1,8(fp)
L80792:
	movea.l	8(fp),a0
	tst.b	(a0)
	beq.s	L80820
	movea.l	8(fp),a0
	cmpi.b	#101,(a0)
	beq.s	L80820
	movea.l	8(fp),a0
	cmpi.b	#69,(a0)
	bne.s	L80756
L80820:
	clr.b	(a5)
	movea.l	8(fp),a0
	cmpi.b	#101,(a0)
	beq.s	L80842
	movea.l	8(fp),a0
	cmpi.b	#69,(a0)
	bne.s	L80910
L80842:
	addq.l	#1,8(fp)
	movea.l	8(fp),a0
	cmpi.b	#45,(a0)
	beq.s	L80860
	clr.w	d0
	bra.s	L80862

L80860:
	moveq	#1,d0
L80862:
	move.w	d0,-32(fp)
	movea.l	8(fp),a0
	cmpi.b	#45,(a0)
	beq.s	L80886
	movea.l	8(fp),a0
	cmpi.b	#43,(a0)
	bne.s	L80890
L80886:
	addq.l	#1,8(fp)
L80890:
	bra.s	L80902

L80892:
	movea.l	8(fp),a0
	move.b	(a0),(a4)+
	addq.l	#1,8(fp)
L80902:
	movea.l	8(fp),a0
	tst.b	(a0)
	bne.s	L80892
L80910:
	clr.b	(a4)
	move.l	fp,(sp)
	addi.l	#-20,(sp)
	bsr  	L81148
	move.l	d0,-42(fp)
	move.l	fp,(sp)
	addi.l	#-24,(sp)
	jsr	L83596
	move.w	d0,-36(fp)
	tst.w	-32(fp)
	beq.s	L80964
	move.w	-36(fp),d0
	neg.w	d0
	sub.w	-38(fp),d0
	bra.s	L80972

L80964:
	move.w	-36(fp),d0
	sub.w	-38(fp),d0
L80972:
	move.w	d0,-38(fp)
	move.l	-42(fp),-(sp)
	move.w	-38(fp),-(sp)
	bsr.s	L81044
	addq.l	#2,sp
	move.l	d0,-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-46(fp)
	move.l	-46(fp),(sp)
	jsr	L81258
	move.l	d0,-28(fp)
	tst.w	-34(fp)
	beq.s	L81030
	ori.l	#128,-28(fp)
L81030:
	move.l	-28(fp),d0
	tst.l	(sp)+
	movem.l	(sp)+,a4-a5
	unlk	fp
	rts

L81044:
	link	fp,#-8
	tst.w	8(fp)
	bge.s	L81098
	move.l	#-2147483583,-4(fp)
	bra.s	L81090

L81064:
	move.l	#-1610612668,-(sp)
	move.l	-4(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,-4(fp)
	addq.w	#1,8(fp)
L81090:
	tst.w	8(fp)
	blt.s	L81064
	bra.s	L81140

L81098:
	move.l	#-2147483583,-4(fp)
	bra.s	L81134

L81108:
	move.l	#-1610612668,-(sp)
	move.l	-4(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-4(fp)
	subq.w	#1,8(fp)
L81134:
	tst.w	8(fp)
	bgt.s	L81108
L81140:
	move.l	-4(fp),d0
	unlk	fp
	rts

L81148:
	link	fp,#-8
	move.l	#0,-4(fp)
	bra.s	L81230

L81162:
	move.l	#-1610612668,-(sp)
	move.l	-4(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,-4(fp)
	move.l	-4(fp),-(sp)
	movea.l	8(fp),a0
	move.b	(a0),d0
	ext.w	d0
	add.w	#-48,d0
	ext.l	d0
	move.l	d0,-(sp)
	jsr	int_to_ffp
	addq.l	#4,sp
	move.l	d0,-(sp)
	jsr	fp_add
	addq.l	#8,sp
	move.l	d0,-4(fp)
	addq.l	#1,8(fp)
L81230:
	movea.l	8(fp),a0
	cmpi.b	#48,(a0)
	blt.s	L81250
	movea.l	8(fp),a0
	cmpi.b	#57,(a0)
	ble.s	L81162
L81250:
	move.l	-4(fp),d0
	unlk	fp
	rts

L81258:
	link	fp,#-4
	movem.l	d4-d7,-(sp)
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bne.s	L81288
	clr.l	d0
	bra  	L81500

L81288:
	clr.l	-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L81324
	move.l	8(fp),-(sp)
	jsr	L82000
	addq.l	#4,sp
	move.l	d0,8(fp)
	moveq	#1,d5
	bra.s	L81326

L81324:
	clr.w	d5
L81326:
	clr.w	d7
	bra.s	L81354

L81330:
	addq.w	#1,d7
	move.l	#-2147483582,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_div
	addq.l	#8,sp
	move.l	d0,8(fp)
L81354:
	move.l	#-2147483583,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	bge.s	L81330
	bra.s	L81400

L81376:
	subq.w	#1,d7
	move.l	#-2147483582,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,8(fp)
L81400:
	move.l	#-2147483584,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_cmp
	addq.l	#8,sp
	blt.s	L81376
	move.l	#-2147483559,-(sp)
	move.l	8(fp),-(sp)
	jsr	fp_mul
	addq.l	#8,sp
	move.l	d0,8(fp)
	move.l	8(fp),-(sp)
	jsr	ffp_to_int
	addq.l	#4,sp
	move.l	d0,-4(fp)
	move.l	-4(fp),d0
	asl.l	#8,d0
	move.l	d0,-4(fp)
	add.w	#64,d7
	move.w	d7,d0
	and.w	#127,d0
	ext.l	d0
	or.l	d0,-4(fp)
	tst.w	d5
	beq.s	L81496
	ori.l	#128,-4(fp)
L81496:
	move.l	-4(fp),d0
L81500:
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7
	unlk	fp
	rts

fp_add:
	link	fp,#-4
	movem.l	d3-d7,-(sp)
	move.l	8(fp),d7
	move.l	12(fp),d6
	jsr	FFPADD
	move.l	d7,d0
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

fp_cmp:
	movem.l	d6-d7,-(sp)
	move.l	12(sp),d7
	move.l	16(sp),d6
	jsr	.FFPCMP
	movem.l	(sp)+,d6-d7
	rts

.FFPCMP:
	tst.b	d6
	bpl.s	.FFPCP
	tst.b	d7
	bpl.s	.FFPCP
	cmp.b	d7,d6
	bne.s	.return
	cmp.l	d7,d6
.return:
	rts

.FFPCP:
	cmp.b	d6,d7
	bne.s	.FFPCRTN
	cmp.l	d6,d7
.FFPCRTN
	rts

fp_div:
	link	fp,#-4
	movem.l	d3-d7,-(sp)
	move.l	8(fp),d7
	move.l	12(fp),d6
	jsr	FFPDIV
	move.l	d7,d0
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

L81604:
	link	fp,#-4
	movem.l	d3-d7,-(sp)
	move.l	8(fp),d7
	jsr	L82100
	move.l	d7,d0
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

fp_exp:
	link	fp,#-4
	movem.l	d7,-(sp)
	move.l	8(fp),d7
	jsr	FFPEXP
	move.l	d7,d0
	movem.l	(sp)+,d7
	unlk	fp
	rts

fp_log:
	link	fp,#-4
	movem.l	d7,-(sp)
	move.l	8(fp),d7
	jsr	FFPLOG
	move.l	d7,d0
	movem.l	(sp)+,d7
	unlk	fp
	rts

int_to_ffp:
	link	fp,#0
	movem.l	d5-d7,-(sp)
	tst.l	8(fp)
	bge.s	.L81716
	moveq	#1,d6
	move.l	8(fp),d0
	neg.l	d0
	move.l	d0,8(fp)
	bra.s	.L81718

.L81716:
	clr.w	d6
.L81718:
	tst.l	8(fp)
	bne.s	.L81728
	clr.l	d0
	bra.s	.L81822

.L81728:
	moveq	#24,d7
	bra.s	.L81744

.L81732:
	move.l	8(fp),d0
	asr.l	#1,d0
	move.l	d0,8(fp)
	addq.l	#1,d7
.L81744:
	move.l	8(fp),d0
	and.l	#$7F000000,d0
	bne.s	.L81732
	bra.s	.L81770

.L81758:
	move.l	8(fp),d0
	asl.l	#1,d0
	move.l	d0,8(fp)
	subq.l	#1,d7
.L81770:
	btst	#7,9(fp)
	beq.s	.L81758
	move.l	8(fp),d0
	asl.l	#8,d0
	move.l	d0,8(fp)
	add.l	#64,d7
	move.l	d7,d0
	and.l	#127,d0
	or.l	d0,8(fp)
	tst.w	d6
	beq.s	.L81818
	ori.l	#128,8(fp)
.L81818:
	move.l	8(fp),d0
.L81822:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7
	unlk	fp
	rts

ffp_to_int:
	link	fp,#0
	movem.l	d4-d7,-(sp)
	move.l	8(fp),d0
	and.l	#127,d0
	add.l	#-64,d0
	move.w	d0,d6
	tst.l	8(fp)
	beq.s	.L81868
	tst.w	d6
	bge.s	.L81872
.L81868:
	clr.l	d0
	bra.s	.L81958

.L81872:
	move.l	8(fp),d0
	and.l	#128,d0
	move.w	d0,d5
	cmp.w	#31,d6
	ble.s	.L81910
	tst.w	d5
	beq.s	.L81902
	move.l	#-2147483648,d0
	bra.s	.L81908

.L81902:
	move.l	#$7FFFFFFF,d0
.L81908:
	bra.s	.L81958

.L81910:
	move.l	8(fp),d7
	asr.l	#8,d7
	and.l	#$00FFFFFF,d7
	sub.w	#24,d6
	bra.s	.L81932

.L81928:
	asr.l	#1,d7
	addq.w	#1,d6
.L81932:
	tst.w	d6
	blt.s	.L81928
	bra.s	.L81942

.L81938:
	asl.l	#1,d7
	subq.w	#1,d6
.L81942:
	tst.w	d6
	bgt.s	.L81938
	tst.w	d5
	beq.s	.L81956
	move.l	d7,d0
	neg.l	d0
	move.l	d0,d7
.L81956:
	move.l	d7,d0
.L81958:
	tst.l	(sp)+
	movem.l	(sp)+,d5-d7
	unlk	fp
	rts

fp_mul:
	link	fp,#-4
	movem.l	d3-d7,-(sp)
	move.l	8(fp),d7
	move.l	12(fp),d6
	jsr	FFPMUL
	move.l	d7,d0
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

L82000:
	link	fp,#-4
	movem.l	d3-d7,-(sp)
	move.l	8(fp),d7
	jsr	L82284
	move.l	d7,d0
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

L82028:
	link	fp,#-4
	movem.l	d3-d7,-(sp)
	move.l	8(fp),d7
	move.l	12(fp),d6
	jsr	FFPSUB
	move.l	d7,d0
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

L82088:
	and.b	#127,d7
	bsr.s	L82100
	ori	#2,ccr
	rts

L82100:
	move.b	d7,d3
	beq.s	L82184
	bmi.s	L82088
	lsr.b	#1,d3
	bcc.s	L82114
	addq.b	#1,d3
	lsr.l	#1,d7
L82114:
	add.b	#32,d3
	swap	d3
	move.w	#23,d3
	lsr.l	#7,d7
	move.l	d7,d4
	move.l	d7,d5
	move.l	a0,d6
	lea 	X82186(pc),a0
	move.l	#$800000,d7
	sub.l	d7,d4
	sub.l	#$1200000,d5
	bra.s	L82164

L82152:
	bset	d3,d7
	move.l	d5,d4
L82156:
	add.l	d4,d4
	move.l	d4,d5
	sub.l	(a0)+,d5
	sub.l	d7,d5
L82164:
	dbmi	d3,L82152
	dbpl	d3,L82156
	bls.s	L82176
	addq.l	#1,d7
L82176:
	lsl.l	#8,d7
	movea.l	d6,a0
	swap	d3
	move.b	d3,d7
L82184:
	rts

X82186:
	dc.l	$00100000,$00080000
	dc.l	$00040000,$00020000
	dc.l	$00010000,$00008000
	dc.l	$00004000,$00002000
	dc.l	$00001000,$00000800
	dc.l	$00000400,$00000200
	dc.l	$00000100,$00000080
	dc.l	$00000040,$00000020
	dc.l	$00000010,$00000008
	dc.l	$00000004,$00000002
	dc.l	$00000001,$00000000
	dc.l	$00000000

	and.b	#127,d7
	rts

L82284:
	tst.b	d7
	beq.s	L82292
	eori.b	#128,d7
L82292:
	rts

FFPSUB:
	move.b	d6,d4
	beq.s	L82380
	eori.b	#128,d4
	bmi.s	FPAMI1
	move.b	d7,d5
	bmi.s	FPAMS
	bne.s	FPALS
	bra.s	FPART1

FFPADD:
	move.b	d6,d4
	bmi.s	FPAMI1
	beq.s	L82380
	move.b	d7,d5
	bmi.s	FPAMS
	beq.s	FPART1
FPALS:
	sub.b	d4,d5
	bmi.s	FPA2LT
	move.b	d7,d4
	cmp.b	#24,d5
	bcc.s	L82380
	move.l	d6,d3
	clr.b	d3
	lsr.l	d5,d3
	move.b	#128,d7
	add.l	d3,d7
	bcs.s	FPA2GC
FPARSR:
	move.b	d4,d7
	rts

FPA2GC:
	roxr.l	#1,d7
	addq.b	#1,d4
	bvs.s	L82362
	bcc.s	FPARSR
L82362:
	moveq	#-1,d7
	subq.b	#1,d4
	move.b	d4,d7
	ori	#2,ccr
	rts

FPART1:
	move.l	d6,d7
	move.b	d4,d7
	rts

L82380:
	tst.b	d7
	rts

FPA2LT:
	cmp.b	#-24,d5 ;!! #$FFE8.W
	ble.s	FPART1
	neg.b	d5
	move.l	d6,d3
	clr.b	d7
	lsr.l	d5,d7
	move.b	#128,d3
	add.l	d3,d7
	bcs.s	FPA2GC
	move.b	d4,d7
	rts

FPAMI1:
	move.b	d7,d5
	bmi.s	FPALS
	beq.s	FPART1
FPAMS:
	moveq	#-128,d3
	eor.b	d3,d5
	sub.b	d4,d5
	beq.s	L82504
	bmi.s	L82486
	cmp.b	#24,d5
	bcc.s	L82380
	move.b	d7,d4
	move.b	d3,d7
	move.l	d6,d3
L82438:
	clr.b	d3
	lsr.l	d5,d3
	sub.l	d3,d7
	bmi.s	FPARSR
L82446:
	move.b	d4,d5
L82448:
	clr.b	d7
	subq.b	#1,d4
	cmp.l	#32767,d7
	bhi.s	L82466
	swap	d7
	sub.b	#16,d4
L82466:
	add.l	d7,d7
	dbmi	d4,L82466
	eor.b	d4,d5
	bmi.s	L82482
	move.b	d4,d7
	beq.s	L82482
	rts

L82482:
	moveq	#0,d7
	rts

L82486:
	cmp.b	#-24,d5 ;!! #$FFE8.W
	ble.s	FPART1
	neg.b	d5
	move.l	d7,d3
	move.l	d6,d7
	move.b	#128,d7
	bra.s	L82438

L82504:
	move.b	d7,d5
	exg	d5,d4
	move.b	d6,d7
	sub.l	d6,d7
	beq.s	L82482
	bpl.s	L82446
	neg.l	d7
	move.b	d5,d4
	bra.s	L82448

FPDDZR:
	divu	#0,d7
	tst.l	d6
	bne.s	FFPDIV
FPDOVF:
	or.l	#-129,d7
	tst.b	d7
	ori	#2,ccr
FPDRTN:
	rts

FPDOV2:
	swap	d6
	swap	d7
FPDOVFS:
	eor.b	d6,d7
	bra.s	FPDOVF

FPDOUF:
	bmi.s	FPDOVFS
FPDUND:
	moveq	#0,d7
	rts

FFPDIV:
	move.b	d6,d5
	beq.s	FPDDZR
	move.l	d7,d4
	beq.s	FPDRTN
	moveq	#-128,d3
	add.w	d5,d5
	add.w	d4,d4
	eor.b	d3,d5
	eor.b	d3,d4
	sub.b	d5,d4
	bvs.s	FPDOUF
	clr.b	d7
	swap	d7
	swap	d6
	cmp.w	d6,d7
	bmi.s	.FPDNOV
	addq.b	#2,d4
	bvs.s	FPDOV2
	ror.l	#1,d7
.FPDNOV:
	swap	d7
	move.b	d3,d5
	eor.w	d5,d4
	lsr.w	#1,d4
	move.l	d7,d3
	divu	d6,d3
	move.w	d3,d5
	mulu.w	d6,d3
	sub.l	d3,d7
	swap	d7
	swap	d6
	move.w	d6,d3
	clr.b	d3
	mulu.w	d5,d3
	sub.l	d3,d7
	bcc.s	.FPDQOK
	move.l	d6,d3
	clr.b	d3
	add.l	d3,d7
	subq.w	#1,d5
.FPDQOK:
	move.l	d6,d3
	swap	d3
	clr.w	d7
	divu	d3,d7
	swap	d5
	bmi.s	.FPDISN
	move.w	d7,d5
	add.l	d5,d5
	subq.b	#1,d4
	move.w	d5,d7
.FPDISN:
	move.w	d7,d5
	add.l	#128,d5
	move.l	d5,d7
	move.b	d4,d7
	beq.s	FPDUND
	rts

L82672:
	move.w	(sp)+,d6
	tst.b	d6
	bpl.s	L82682
	moveq	#0,d7
	bra.s	L82690

L82682:
	moveq	#-1,d7
	lsr.b	#1,d7
	ori	#2,ccr
L82690:
	movem.l	(sp)+,d1-d6/a0
	rts

L82696:
	move.l	#-2147483583,d7
	lea 	30(sp),sp
	tst.b	d7
	rts

FFPEXP:
	movem.l	d1-d6/a0,-(sp)
	move.w	d7,-(sp)
	beq.s	L82696
	and.b	#127,d7
	move.l	d7,d2
	move.l	#-1196803263,d6
	jsr	FFPMUL
	bvs.s	L82672
	move.b	d7,d5
	move.b	d7,d6
	sub.b	#96,d5
	neg.b	d5
	cmp.b	#24,d5
	ble.s	L82672
	cmp.b	#32,d5
	bge.s	.L82794
	lsr.l	d5,d7
	move.b	d7,(sp)
	lsl.l	d5,d7
	move.b	d6,d7
	move.l	#-1317922752,d6
	jsr	FFPMUL
	move.l	d7,d6
	move.l	d2,d7
	jsr	FFPSUB
	move.l	d7,d2
	bra.s	.L82798

.L82794:
	clr.b	(sp)
	move.l	d2,d7
.L82798:
	clr.b	d7
	sub.b	#67,d2
	neg.b	d2
	cmp.b	#31,d2
	bls.s	.FPESHF
	moveq	#0,d7
.FPESHF:
	lsr.l	d2,d7
	moveq	#0,d5
	move.l	#$26A3D100,d6
	lea 	FFPHTHET,a0
	moveq	#0,d2
	moveq	#3,d1
	bsr.s	L82890
	subq.l	#4,a0
	subq.w	#1,d2
	moveq	#9,d1
	bsr.s	L82890
	subq.l	#4,a0
	subq.w	#1,d2
	moveq	#10,d1
	bsr.s	L82890
	tst.b	1(sp)
	bpl.s	.L82862
	neg.l	d5
	neg.b	(sp)
.L82862:
	add.l	d5,d6
	jsr	L83378
	move.l	d6,d7
	add.b	(sp),d7
	bmi  	L82672
	beq  	L82672
	addq.l	#2,sp
	movem.l	(sp)+,d1-d6/a0
	rts

L82890:
	addq.w	#1,d2
	move.l	d5,d3
	move.l	d6,d4
	asr.l	d2,d3
	asr.l	d2,d4
	tst.l	d7
	bmi.s	L82916
	add.l	d4,d5
	add.l	d3,d6
	sub.l	(a0)+,d7
	dbf	d1,L82890
	rts

L82916:
	sub.l	d4,d5
	sub.l	d3,d6
	add.l	(a0)+,d7
	dbf	d1,L82890
	rts

FFPLOG:
	tst.b	d7
	beq.s	.FPLZRO
	bpl.s	.FPLOK
	and.b	#127,d7
	bsr.s	.FPLOK
.FPSETV:
	ori	#2,ccr
	rts

.FPLZRO:
	moveq	#-1,d7
	jmp	.FPSETV

.FPLOK:
	movem.l	d1-d6/a0,-(sp)
	move.b	d7,-(sp)
	move.b	#65,d7
	move.l	#-2147483583,d6
	move.l	d7,d2
	jsr	FFPADD
	exg	d7,d2
	jsr	FFPSUB
	move.l	d2,d6
	jsr	FFPDIV
	beq.s	L83074
	sub.b	#67,d7
	neg.b	d7
	cmp.b	#31,d7
	bls.s	.FPLSHF
	moveq	#0,d7
.FPLSHF:
	lsr.l	d7,d7
	moveq	#0,d6
	move.l	#$20000000,d5
	lea 	FFPHTHET,a0
	moveq	#22,d1
	moveq	#1,d2
	bra.s	L83038

L83032:
	asr.l	d2,d4
	sub.l	d4,d5
	add.l	(a0),d6
L83038:
	move.l	d7,d4
	move.l	d5,d3
	asr.l	d2,d3
L83044:
	sub.l	d3,d7
	bpl.s	L83032
	move.l	d4,d7
	addq.l	#4,a0
	addq.b	#1,d2
	lsr.l	#1,d3
	dbf	d1,L83044
	moveq	#0,d7
	jsr	L83378
	beq.s	L83074
	addq.b	#1,d6
	move.l	d6,d7
L83074:
	move.l	d7,d2
	moveq	#0,d6
	move.b	(sp)+,d6
	sub.b	#65,d6
	beq.s	L83130
	move.b	d6,d1
	bpl.s	L83092
	neg.b	d6
L83092:
	ror.l	#8,d6
	moveq	#71,d5
L83096:
	add.l	d6,d6
	dbmi	d5,L83096
	move.b	d5,d6
	and.b	#128,d1
	or.b	d1,d6
	move.l	#-1317922752,d7
	jsr	FFPMUL
	move.l	d2,d6
	jsr	FFPADD
L83130:
	movem.l	(sp)+,d1-d6/a0
	rts

FFPMUL:
	move.b	d7,d5
	beq.s	.FFMRTN
	move.b	d6,d4
	beq.s	L83248
	add.w	d5,d5
	add.w	d4,d4
	moveq	#-128,d3
	eor.b	d3,d4
	eor.b	d3,d5
	add.b	d4,d5
	bvs.s	L83252
	move.b	d3,d4
	eor.w	d4,d5
	ror.w	#1,d5
	swap	d5
	move.w	d6,d5
	clr.b	d7
	clr.b	d5
	move.w	d5,d4
	mulu.w	d7,d4
	swap	d4
	move.l	d7,d3
	swap	d3
	mulu.w	d5,d3
	add.l	d3,d4
	swap	d6
	move.l	d6,d3
	mulu.w	d7,d3
	add.l	d3,d4
	clr.w	d4
	addx.b	d4,d4
	swap	d4
	swap	d7
	mulu.w	d6,d7
	swap	d6
	swap	d5
	add.l	d4,d7
	bpl.s	L83224
	add.l	#128,d7
	move.b	d5,d7
	beq.s	L83248
.FFMRTN:
	rts

L83224:
	subq.b	#1,d5
	bvs.s	L83248
	bcs.s	L83248
	moveq	#64,d4
	add.l	d4,d7
	add.l	d7,d7
	bcc.s	L83242
	roxr.l	#1,d7
	addq.b	#1,d5
L83242:
	move.b	d5,d7
	beq.s	L83248
	rts

L83248:
	moveq	#0,d7
	rts

L83252:
	bpl.s	L83248
	eor.b	d6,d7
	or.l	#-129,d7
	tst.b	d7
	ori	#2,ccr
	rts

	dc.w	6433,64340
X83274:
	dc.w	3798,13186,2006,56702
	dc.w	1018,46931,511,21947
	dc.w	255,60077,127,64853
	dc.w	63,65450,31,65525
	dc.w	15,65534,7,65535
	dc.w	3,65535,1,65535
	dc.w	0,65535,0,32767
	dc.w	0,16383,0,8191
	dc.w	0,4095,0,2047
	dc.w	0,1023,0,511
	dc.w	0,255,0,127
	dc.w	0,63,0,31
	dc.w	0,15,0,7

L83378:
	moveq	#66,d4
	tst.l	d6
	beq.s	L83430
	bpl.s	L83392
	neg.l	d6
	move.b	#194,d4
L83392:
	cmp.l	#32767,d6
	bhi.s	L83406
	swap	d6
	sub.b	#16,d4
L83406:
	add.l	d6,d6
	dbmi	d4,L83406
	tst.b	d6
	bpl.s	L83428
	add.l	#256,d6
	bcc.s	L83428
	roxr.l	#1,d6
	addq.b	#1,d4
L83428:
	move.b	d4,d6
L83430:
	rts

FFPHTHET:
	dc.l	$1193EA7A,$082C577D
	dc.l	$04056247,$0200AB11
	dc.l	$01001558,$008002AA
	dc.l	$00400055,$0020000A
	dc.l	$00100001,$00080000
	dc.l	$00040000,$00020000
	dc.l	$00010000,$00008000
	dc.l	$00004000,$00002000
	dc.l	$00001000,$00000800
	dc.l	$00000400,$00000200
	dc.l	$00000100,$00000080
	dc.l	$00000040,$00000020

	;dc.b 'mc68343 floating point firmware '
	;dc.b '(c) copyright 1981 by motorola inc.',0

L83596:
	link	fp,#0
	movem.l	d5-d7/a5,-(sp)
	movea.l	8(fp),a5
	clr.w	d7
	clr.w	d6
	bra.s	.L83616

.L83614:
	addq.l	#1,a5
.L83616:
	move.b	(a5),d0
	ext.w	d0
	ext.l	d0
	add.l	#T91786,d0
	movea.l	d0,a0
	btst	#5,(a0)
	bne.s	.L83614
	cmpi.b	#43,(a5)
	bne.s	.L83646
	addq.l	#1,a5
	bra.s	.L83656

.L83646:
	cmpi.b	#45,(a5)
	bne.s	.L83656
	addq.l	#1,a5
	addq.w	#1,d6
.L83656:
	bra.s	.L83672

.L83658:
	muls	#10,d7
	move.b	(a5)+,d0
	ext.w	d0
.L83666:
	add.w	d0,d7
.L83668:
	add.w	#-48,d7
.L83672:
	cmpi.b	#48,(a5)
.L83676:
	blt.s	.L83684
	cmpi.b	#57,(a5)
	ble.s	.L83658
.L83684:
	tst.w	d6
	beq.s	.L83694
	move.w	d7,d0
	neg.w	d0
	move.w	d0,d7
.L83694:
	move.w	d7,d0
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7/a5
	unlk	fp
	rts

L83706:
	link	fp,#0
	movem.l	d7/a4-a5,-(sp)
	movea.l	12(fp),a5
	movea.l	8(fp),a4
	bra.s	.do

.loop:	addq.l	#1,a4
.do:	tst.b	(a4)
	bne.s	.loop

.loop2: move.b	(a5)+,(a4)+
	bne.s	.loop2

	move.l	8(fp),d0
	tst.l	(sp)+
	movem.l	(sp)+,a4-a5
	unlk	fp
	rts

L83748:
	link	fp,#0
	movem.l	d5-d7/a4-a5,-(sp)
	movea.l	8(fp),a5
	movea.l	12(fp),a4
	bra.s	L83786

L83766:
	move.b	(a5)+,d7
	move.b	(a4)+,d6
	cmp.b	d6,d7
	ble.s	L83778
	moveq	#1,d0
	bra.s	L83804

L83778:
	cmp.b	d6,d7
	bge.s	L83786
	moveq	#-1,d0
	bra.s	L83804

L83786:
	tst.b	(a5)
	beq.s	L83794
	tst.b	(a4)
	bne.s	L83766
L83794:
	move.b	(a5),d0
	ext.w	d0
	move.b	(a4),d1
	ext.w	d1
	sub.w	d1,d0
L83804:
	tst.l	(sp)+
	movem.l	(sp)+,d6-d7/a4-a5
	unlk	fp
	rts

L83814:
	link	fp,#0
	movem.l	d6-d7/a4-a5,-(sp)
	movea.l	8(fp),a5
	movea.l	12(fp),a4
	move.w	16(fp),d7
	bra.s	L83848

L83836:
	tst.b	(a5)
	bne.s	L83844
	clr.w	d0
	bra.s	L83870

L83844:
	addq.l	#1,a5
	addq.l	#1,a4
L83848:
	subq.w	#1,d7
	ble.s	L83860
	move.b	(a5),d0
	ext.w	d0
	cmp.b	(a4),d0
	beq.s	L83836
L83860:
	move.b	(a5),d0
	ext.w	d0
	move.b	(a4),d1
	ext.w	d1
	sub.w	d1,d0
L83870:
	tst.l	(sp)+
	movem.l	(sp)+,d7/a4-a5
	unlk	fp
	rts

L83880:
	link	fp,#0
	movem.l	d7/a4-a5,-(sp)
	movea.l	12(fp),a5
	movea.l	8(fp),a4
L83896:
	move.b	(a5)+,(a4)+
	bne.s	L83896
	move.l	8(fp),d0
	tst.l	(sp)+
	movem.l	(sp)+,a4-a5
	unlk	fp
	rts

L83914:
	link	fp,#0
	movem.l	d7/a4-a5,-(sp)
	movea.l	8(fp),a5
	movea.l	a5,a4
	bra.s	.do
.loop:
	addq.l	#1,a4
.do:
	tst.b	(a4)
	bne.s	.loop
	move.l	a4,d0
	ext.l	d0
	sub.l	a5,d0
	tst.l	(sp)+
	movem.l	(sp)+,a4-a5
	unlk	fp
	rts

L83960:
	link	fp,#-2
	movem.l	d2-d7,-(sp)
	clr.w	d3
	clr.l	d5
	move.l	8(fp),d7
	move.l	12(fp),d6
	bne.s	.L84006
	move.l	#-2147483648,U98682
	move.l	#-2147483648,d0
	divs	#0,d0
	bra  	.L84108

.L84006:
	bge.s	.L84012
	neg.l	d6
	addq.w	#1,d3
.L84012:
	tst.l	d7
	bge.s	.L84020
	neg.l	d7
	addq.w	#1,d3
.L84020:
	cmp.l	d7,d6
	bgt.s	.L84080
	bne.s	.L84032
	moveq	#1,d5
	clr.l	d7
	bra.s	.L84080

.L84032:
	cmp.l	#65536,d7
	bge.s	.L84050
	divu	d6,d7
	move.w	d7,d5
	swap	d7
	ext.l	d7
	bra.s	.L84080

.L84050:
	moveq	#1,d4
.L84052:
	cmp.l	d6,d7
	bcs.s	.L84062
	asl.l	#1,d6
	asl.l	#1,d4
	bra.s	.L84052

.L84062:
	tst.l	d4
	beq.s	.L84080
	cmp.l	d6,d7
	bcs.s	.L84074
	or.l	d4,d5
	sub.l	d6,d7
.L84074:
	lsr.l	#1,d4
	lsr.l	#1,d6
	bra.s	.L84062

.L84080:
	cmp.w	#1,d3
	bne.s	.L84100
	neg.l	d7
	move.l	d7,U98682
	move.l	d5,d0
	neg.l	d0
	bra.s	.L84108

.L84100:
	move.l	d7,U98682
	move.l	d5,d0
.L84108:
	tst.l	(sp)+
	movem.l	(sp)+,d3-d7
	unlk	fp
	rts

L84118:
	link	fp,#-4
	clr.w	d2
	tst.l	8(fp)
	bge.s	L84136
	neg.l	8(fp)
	addq.w	#1,d2
L84136:
	tst.l	12(fp)
	bge.s	L84148
	neg.l	12(fp)
	addq.w	#1,d2
L84148:
	move.w	10(fp),d0
	mulu.w	14(fp),d0
	move.l	d0,-4(fp)
	move.w	8(fp),d0
	mulu.w	14(fp),d0
	move.w	12(fp),d1
	mulu.w	10(fp),d1
	add.w	d1,d0
	add.w	-4(fp),d0
	move.w	d0,-4(fp)
	move.l	-4(fp),d0
	btst	#0,d2
	beq.s	L84198
	neg.l	d0
L84198:
	unlk	fp
	rts

L84202:
	link	fp,#-2
	move.l	12(fp),-(sp)
	move.l	8(fp),-(sp)
	jsr	L83960
	cmpm.l	(sp)+,(sp)+
	move.l	U98682,d0
	unlk	fp
	rts

	data

ctrl_cnts:
	dc.b	0,1,0,2,1,1,2,1
	dc.b	1,0,1,1,2,1,1,1
	dc.b	1,1,0,0,0,0,0,0
	dc.b	0,0,0,0,1,0,0,1
	dc.b	0,3,5,0,5,5,0,0
	dc.b	1,1,2,1,0,16,7,1
	dc.b	2,1,0,0,0,0,0,0
	dc.b	0,0,0,0,1,1,1,2
	dc.b	1,1,2,1,1,2,1,1
	dc.b	1,1,2,1,1,1,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,2,1,1,1,1,1
	dc.b	6,1,1,4,1,1,1,3
	dc.b	1,2,1,1,4,2,1,8
	dc.b	1,1,0,0,0,0,0,0
	dc.b	1,1,1,9,1,1,1,1
	dc.b	1,1,1,0,0,5,1,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,4,3,0,8
	dc.b	3,0,6,1,0,8,1,0
	dc.b	8,1,0,4,1,1,3,1
	dc.b	1,0,5,0,1,1,1,0
	dc.b	5,0,0,1,1,0,1,1
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,2,2,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,5,1
	dc.b	0,5,1,0,1,1,0,1
	dc.b	1,0,2,5,0,6,1,0
	dc.b	2,1,0,1,1,0,6,5
	dc.b	0,0,0,0,0,1,1,0
	dc.b	1,0,2,1,0,2,1,1
	dc.b	1,1,1,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,1,2,3,1,2
	dc.b	1,1,1,1,1,1,0,1
	dc.b	1,0,1,2

T84580:
	dc.b	1,2
T84582:
	dc.b	3,4
T84584:
	dc.b	5,6
T84586:
	dc.b	7,8,9,10,11
T84591:
	dc.b	12
T84592:
	dc.b	13,14,15,16,17
T84597:
	dc.b	18
T84598:
	dc.b	19
T84599:
	dc.b	20
T84600:
	dc.b	21
T84601:
	dc.b	22
T84602:
	dc.b	23
T84603:
	dc.b	24
T84604:
	dc.b	25
T84605:
	dc.b	26,127
T84607:
	dc.b	255,0,0

turtle_table:
	dc.b	10,6,0,242,246,6,10,8
	dc.b	2,242,246,4,8,8,2,242
	dc.b	244,4,8,8,4,242,244,2
	dc.b	6,10,6,244,244,2,6,10
	dc.b	8,244,244,0,4,10,8,244
	dc.b	244,254,4,12,10,246,244,254
	dc.b	2,12,10,246,244,252,2,12
	dc.b	12,248,246,252,0,12,12,248
	dc.b	246,250,254,12,12,250,246,250
	dc.b	254,12,14,252,248,248,252,12
	dc.b	14,254,248,248,252,10,14,254
	dc.b	248,246,250,10,14,0,250,246
	dc.b	8,2,0,250,248,2,8,2
	dc.b	1,250,248,2,6,3,3,249
	dc.b	246,1,6,3,4,249,246,1
	dc.b	4,3,6,250,246,1,2,4
	dc.b	7,250,246,1,2,4,8,251
	dc.b	246,0,1,4,9,251,246,0
	dc.b	1,4,10,252,246,255,0,4
	dc.b	10,252,246,255,255,4,11,253
	dc.b	246,255,255,4,12,254,246,255
	dc.b	253,4,12,255,248,254,252,4
	dc.b	12,255,250,254,252,3,12,255
	dc.b	250,253,250,3,12,0,250,253
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
	dc.b	5,3,0,249,251,3,5,4
	dc.b	1,249,251,2,4,4,1,249
	dc.b	250,2,4,4,2,249,250,2
	dc.b	3,5,3,250,250,1,3,5
	dc.b	4,250,250,0,2,5,4,250
	dc.b	250,255,2,6,5,251,250,255
	dc.b	1,6,5,251,250,254,1,6
	dc.b	6,252,251,254,0,6,6,252
	dc.b	251,253,255,6,6,253,251,253
	dc.b	255,6,7,254,252,252,254,6
	dc.b	7,255,252,252,254,5,7,255
	dc.b	252,251,253,5,7,0,253,251

T85014: dc.b '^',0
T85023: dc.b '*',0
T85026: dc.b '\*',0
T85020: dc.b '\/',0
T85029: dc.b '\:',0

	even

T85060:	; beware these are fast floats
	dc.l	$00000000,$8EF8593B
	dc.l	$8EF2C73C,$D65E3B3C
	dc.l	$8EDC7A3D,$B27EB53D
	dc.l	$D613053D,$F996A33D
	dc.l	$8E83653E,$A0305C3E
	dc.l	$B1D0D33E,$C3636F3E
	dc.l	$D4E6CE3E,$E659933E
	dc.l	$F7BA5E3E,$8483EE3F
	dc.l	$8D20573F,$95B1BE3F
	dc.l	$9E37793F,$A6B0DE3F
	dc.l	$AF1D443F,$B77C013F
	dc.l	$BFCC703F,$C80DE83F
	dc.l	$D03FC93F,$D8616B3F
	dc.l	$E0722E3F,$E871723F
	dc.l	$F05E943F,$F838F73F
	dc.l	$80000040,$83D98940
	dc.l	$87A8CA40,$8B6D7540
	dc.l	$8F274440,$92D5E640
	dc.l	$96791740,$9A108C40
	dc.l	$9D9BFD40,$A11B2540
	dc.l	$A48DB940,$A7F37B40
	dc.l	$AB4C2540,$AE977140
	dc.l	$B1D52040,$B504F440
	dc.l	$B826A740,$BB39FD40
	dc.l	$BE3EBE40,$C134A540
	dc.l	$C41B7B40,$C6F30740
	dc.l	$C9BB1240,$CC736140
	dc.l	$CF1BBC40,$D1B3F140
	dc.l	$D43BCE40,$D6B31A40
	dc.l	$D919AC40,$DB6F5040
	dc.l	$DDB3D740,$DFE71340
	dc.l	$E208D940,$E418FE40
	dc.l	$E6175C40,$E803C840
	dc.l	$E9DE1D40,$EBA63340
	dc.l	$ED5BEC40,$EEFF1D40
	dc.l	$F08FB240,$F20D8040
	dc.l	$F3786D40,$F4D06040
	dc.l	$F6153E40,$F746E840
	dc.l	$F8654B40,$F9704E40
	dc.l	$FA67E140,$FB4BEB40
	dc.l	$FC1C5C40,$FCD92540
	dc.l	$FD823340,$FE177E40
	dc.l	$FE98FB40,$FF069C40
	dc.l	$FF605A40,$FFA62D40
	dc.l	$FFD81340,$FFF60540
	dc.l	$80000041

rsrc_err: dc.b '[3][Can''t find LOGOHAX.RSC][EXIT]',0
init_err: dc.b '[3][I can''t initialize LOGO.][EXIT]',0

T85866:
	dc.b	'[3][Not enough windows to run LOGO][exit]',0
T85908:
	dc.b	'LOGO DIALOGUE',0
T85922:
	dc.b	'LOGO EDITOR',0
T85934:
	dc.b	'GRAPHICS DISPLAY',0
T85951:
	dc.b	'DEBUG INFO',0
T85962:
	dc.b	'LOGOHAX.RSC',0
T85972:
	dc.l	L51844
	dc.l	L52180
	dc.l	L51854
	dc.l	L52180
	dc.l	L51898
	dc.l	L52180
	dc.l	L51906
	dc.l	L52180
	dc.l	L52066
T86008:
	dc.b	'()=<>+-*/;^',0
T86020:
	dc.b	' []',9,10,0
T86026:
	dc.b	'<=>',0
T86030:
	dc.b	'<=>',0
T86034:
	dc.b	'#[]; ',0
T86040:
	dc.b	' . ',0
T86044:
	dc.l	L56720
	dc.l	L56720
	dc.l	L56926
	dc.l	L57110
	dc.l	L57196
	dc.l	L57256
T86068:
	dc.b	' "',0,0
T86072:
	dc.l	L7058
	dc.l	L60852
	dc.l	L60598
	dc.l	L60700
	dc.l	L4356
	dc.l	L3886
	dc.l	L60598
	dc.l	L60700
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
T86120:
	dc.l	L4394
	dc.l	L4018
	dc.l	L60616
	dc.l	L60726
	dc.l	L4408
	dc.l	L4110
	dc.l	L60616
	dc.l	L60726
	dc.l	L4342
	dc.l	L3802
	dc.l	L60616
	dc.l	L60726
	dc.l	L4380
	dc.l	L3934
	dc.l	L60616
	dc.l	L60726
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
T86200:
	dc.l	L3616
	dc.l	L3702
	dc.l	L60634
	dc.l	L60784
	dc.l	L3634
	dc.l	L3752
	dc.l	L60634
	dc.l	L60784
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
T86248:
	dc.l	L3042
	dc.l	L4274
	dc.l	L60652
	dc.l	L60784
	dc.l	L4324
	dc.l	L4194
	dc.l	L60652
	dc.l	L60784
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
T86296:
	dc.l	L5832
	dc.l	L5850
	dc.l	L60670
	dc.l	L60784
	dc.b	0,0,0,0,0,0,0,0
	dc.b	0,0,0,0,0,0,0,0
T86328:
	dc.b	'#1',0
T86331:
	dc.b	'#2',0
T86334:
	dc.b	'#2',0
T86337:
	dc.b	'] ',0

T86348:
	dc.b	'#3',0
T86351:
	dc.b	']|',0
T86354:
	dc.b	'!| ',0
T86358:
	dc.b	'...',0
T86362:
	dc.b	'[3][LOGO ERROR:| | ',0
T86382:
	dc.b	'|][OK]',0
T86389:
	dc.b	'[3][ERROR IN: ',0
T86404:
	dc.b	'|PROBLEM:  ',0
T86416:
	dc.b	'|IN LINE:  ',0
T86428:
	dc.b	'][OK|EDIT]',0
T86439:
	dc.b	'[1][Please be sure you have saved|your work before quittin'
	dc.b	'g.|',0
T86501:
	dc.b	'If you haven''t, cancel now|and do so.][OK|CANCEL]',0
T86551:
	dc.b	'I can''t open the buffer file',0
T86580:
	dc.b	'I can''t open picture file ',1,0
T86608:
	dc.b	'I''m having trouble with the buffer file',0
err_s_trouble:
	dc.b	'I''m having trouble with ',1,0
T86674:
	dc.b	'Can''t close buffer file. Disk full?',0
T86710:
	dc.b	1,' is not a picture or is the wrong resolution',0

T86756:
	dc.l	L70302,L70726
	dc.l	L70628,L70530
	dc.l	L70652,L70556
	dc.l	L70592,L70672
	dc.l	L70636,L70506
	dc.l	L70494,L70486
	dc.l	L70462,L70448
	dc.l	L70414,L70390
	dc.l	L70318,L70726
	dc.l	L70310,L70302
	dc.l	L70726,L70294
	dc.l	L70286,L70262
	dc.l	L70244,L70236
	dc.l	L70228
T86864:
	dc.l	19,20
	dc.l	21,23
	dc.l	24,27
	dc.l	30,31
	dc.l	34,35
	dc.l	58,59
	dc.l	0,L76486
	dc.l	L76500,L76614
	dc.l	L76586,L76600
	dc.l	L76500,L76654
	dc.l	L76446,L76628
	dc.l	L76642,L76666
	dc.l	L76694,L76746

T86968:
	dc.b	'LOAD "',0
T86975:
	dc.b	'SAVE "',0
T86982:
	dc.b	'LOADPIC "',0
T86992:
	dc.b	'SAVEPIC "',0
T87002:
	dc.b	'ERASEFILE "',0
T87014:
	dc.b	'EDALL',0
T87020:
	dc.b	'EDF "',0
T87026:
	dc.b	'NOWATCH',0
T87034:
	dc.b	'WATCH',0
T87040:
	dc.b	'NOTRACE',0
T87048:
	dc.b	'TRACE',0
T87054:
	dc.b	': ',0

	even

T87058:
	dc.l	T87366
T87062:
	dc.l	T87430
T87066:
	dc.l	T87441
err_mem:
	dc.l	err_s_mem
err_nodes:
	dc.l	err_s_nodes
err_stackgc:
	dc.l	err_s_stackgc
err_stack:
	dc.l	err_s_stack
T87086:
	dc.l	T87620
T87090:
	dc.l	T87646
T87094:
	dc.l	T87667
T87098:
	dc.l	T87682
err_nodes_low:
	dc.l	err_s_nodes_low
T87106:
	dc.l	T87719
T87110:
	dc.l	T87740
err_disk:
	dc.l	err_s_disk
T87118:
	dc.l	T87794
T87122:
	dc.l	T87807
T87126:
	dc.l	T87830
	dc.l	T87865
	dc.l	T87866
	dc.l	T87867
T87142:
	dc.l	T87868
T87146:
	dc.l	T87873
T87150:
	dc.l	T87879
	dc.l	T87884
T87158:
	dc.l	T87885
T87162:
	dc.l	T87888
T87166:
	dc.l	T87892
T87170:
	dc.l	T87895
T87174:
	dc.l	T87899
T87178:
	dc.l	T87904
T87182:
	dc.l	T87910
T87186:
	dc.l	T87918
T87190:
	dc.l	T87923
T87194:
	dc.l	T87931
T87198:
	dc.l	T87943
T87202:
	dc.l	T87955
T87206:
	dc.l	T87965
T87210:
	dc.l	T87993
	dc.l	T88006
T87218:
	dc.l	T88007
T87222:
	dc.l	T88024
T87226:
	dc.l	T88047
T87230:
	dc.l	T88078
T87234:
	dc.l	T88098
T87238:
	dc.l	T88120
T87242:
	dc.l	T88139
T87246:
	dc.l	T88162
T87250:
	dc.l	T88184
T87254:
	dc.l	T88201
T87258:
	dc.l	T88223
T87262:
	dc.l	T88238
T87266:
	dc.l	T88263
	dc.l	T88282
T87274:
	dc.l	T88283
T87278:
	dc.l	T88314
T87282:
	dc.l	T88338
T87286:
	dc.l	T88350
T87290:
	dc.l	T88357
T87294:
	dc.l	T88369
T87298:
	dc.l	T88377
T87302:
	dc.l	T88403
T87306:
	dc.l	T88424
T87310:
	dc.l	T88431
T87314:
	dc.l	T88442
temp_pic:
	dc.l	s_temp_pic
T87322:
	dc.l	T88458
T87326:
	dc.l	T88461
T87330:
	dc.l	T88464
T87334:
	dc.l	T88467

window_mode_table:
	dc.l	T88470
	dc.l	T88477
	dc.l	T88482

T87350:
	dc.l	T88488
T87354:
	dc.l	T88494
T87358:
	dc.l	T88503
T87362:
	dc.l	T88508
T87366:
	dc.b	'[3][Printer is not working.|Please turn it on.|][Now OK|Ca'
	dc.b	'ncel]',0
T87430:
	dc.b	'Pausing...',0
T87441:
	dc.b	'Stopped!',0
err_s_mem:
	dc.b	'[3][I need more memory to run LOGO][EXIT]',0
err_s_nodes:
	dc.b	'[3][I don''t have any LOGO nodes left][OK]',0
err_s_stackgc:
	dc.b	'[3][Out of LOGO stack during!garbage collection][OK]',0
err_s_stack:
	dc.b	'[3][Out of LOGO stack space][OK]',0
T87620:
	dc.b	'No pan with FENCE or WRAP',0
T87646:
	dc.b	'Turtle out of bounds',0
T87667:
	dc.b	'Number too big',0
T87682:
	dc.b	') without (',0
err_s_nodes_low:
	dc.b	'I''m running out of nodes',0
T87719:
	dc.b	'Can''t divide by zero',0
T87740:
	dc.b	'The word is too long',0
err_s_disk:
	dc.b	'I''m having trouble with the disk',0
T87794:
	dc.b	'Disk is full',0
T87807:
	dc.b	'My edit buffer is full',0
T87830:
	dc.b	'If wants [ ]''s around instructions',0
T87868:
	dc.b	'TRUE',0
T87873:
	dc.b	'FALSE',0
T87879:
	dc.b	'.LOG',0
T87885:
	dc.b	'TO',0
T87888:
	dc.b	'BYE',0
T87892:
	dc.b	'ED',0
T87895:
	dc.b	'END',0
T87899:
	dc.b	'MAKE',0
T87904:
	dc.b	'PPROP',0
T87910:
	dc.b	'PACKAGE',0
T87918:
	dc.b	'BURY',0
T87923:
	dc.b	' (NAME)',0
T87931:
	dc.b	' (PROPERTY)',0
T87943:
	dc.b	1,' is buried',0
T87955:
	dc.b	1,' defined',0
T87965:
	dc.b	1,' isn''t a name or procedure',0
T87993:
	dc.b	'Evaluating ',1,0
T88007:
	dc.b	1,' is a primitive',0
T88024:
	dc.b	'Not enough inputs to ',1
	dc.b	0
T88047:
	dc.b	'I don''t know what to do with ',1,0
T88078:
	dc.b	1,' isn''t a parameter',0
T88098:
	dc.b	'!!! LOGO system bug ',1,0
T88120:
	dc.b	'Too few items in ',1
	dc.b	0
T88139:
	dc.b	1,' is not TRUE or FALSE',0
T88162:
	dc.b	'File ',1
	dc.b	' already exists',0
T88184:
	dc.b	'File ',1
	dc.b	' not found',0
T88201:
	dc.b	'I don''t know how to ',1
	dc.b	0
T88223:
	dc.b	1,' has no value',0
T88238:
	dc.b	'I can''t find catch for ',1
	dc.b	0
T88263:
	dc.b	'Can''t find label ',1,0
T88283:
	dc.b	'I can''t ',1
	dc.b	' while loading a file',0
T88314:
	dc.b	'Can''t ',1
	dc.b	' from the editor',0
T88338:
	dc.b	'Making "',1
	dc.b	' ',2,0
T88350:
	dc.b	1,' is ',2,0
T88357:
	dc.b	1,' returns ',2
	dc.b	0
T88369:
	dc.b	'In ',1
	dc.b	', ',2,0
T88377:
	dc.b	1,' doesn''t like ',2
	dc.b	' as input',0
T88403:
	dc.b	1,' didn''t output to ',2,0
T88424:
	dc.b	1,' in ',2,0
T88431:
	dc.b	1,'''s ',2
	dc.b	' is ',3,0
T88442:
	dc.b	'.PIC',0
s_temp_pic:
	dc.b	'$TEMP$.PIC',0
T88458:
	dc.b	'PU',0
T88461:
	dc.b	'PD',0
T88464:
	dc.b	'PX',0
T88467:
	dc.b	'PE',0
T88488:
	dc.b	'GFILL',0
T88494:
	dc.b	'GRAPHICS',0
T88503:
	dc.b	'.FPT',0
T88508:
	dc.b	'.LPT'
T87865:
T87866:
T87867:
T87884:
T88006:
T88282:
	dc.b	0

	even

word_table:
	dc.l	T90222
	dc.l	word_ascii
	dc.l	T90228
	dc.l	word_butfirst
	dc.l	T90240
	dc.l	word_butlast
	dc.l	T90251
	dc.l	L6454
	dc.l	T90256
	dc.l	L6510
	dc.l	T90262
	dc.l	word_emptyp
	dc.l	T90269
	dc.l	L7058
	dc.l	T90276
	dc.l	word_first
	dc.l	T90282
	dc.l	L7144
	dc.l	T90287
	dc.l	L7252
	dc.l	T90292
	dc.l	L7374
	dc.l	T90297
	dc.l	word_list
	dc.l	T90302
	dc.l	L7502
	dc.l	T90308
	dc.l	word_lput
	dc.l	T90313
	dc.l	L7862
	dc.l	T90321
	dc.l	L8194
	dc.l	T90329
	dc.l	word_sentence
	dc.l	T90341
	dc.l	L8482
	dc.l	T90347
	dc.l	L8512
	dc.l	T90352
	dc.l	L8752
	dc.l	T90358
	dc.l	L8972
	dc.l	T90364
	dc.l	L8992
	dc.l	T90377
	dc.l	L9014
	dc.l	T90390
	dc.l	L10878
	dc.l	T90395
	dc.l	L10932
	dc.l	T90401
	dc.l	L11004
	dc.l	T90407
	dc.l	L11070
	dc.l	T90413
	dc.l	L11312
	dc.l	T90419
	dc.l	L11360
	dc.l	T90425
	dc.l	L11726
	dc.l	T90431
	dc.l	L11468
	dc.l	T90435
	dc.l	L11392
	dc.l	T90441
	dc.l	L11678
	dc.l	T90449
	dc.l	L18522
	dc.l	T90458
	dc.l	L18538
	dc.l	T90463
	dc.l	L18800
	dc.l	T90475
	dc.l	L18722
	dc.l	T90488
	dc.l	L18870
	dc.l	T90500
	dc.l	L18674
	dc.l	T90505
	dc.l	L13800
	dc.l	T90511
	dc.l	L13976
	dc.l	T90519
	dc.l	L15036
	dc.l	T90525
	dc.l	L15174
	dc.l	T90529
	dc.l	L15150
	dc.l	T90538
	dc.l	L14778
	dc.l	T90541
	dc.l	L14856
	dc.l	T90547
	dc.l	L14886
	dc.l	T90552
	dc.l	L14928
	dc.l	T90557
	dc.l	L14982
	dc.l	T90562
	dc.l	L11964
	dc.l	T90569
	dc.l	L12218
	dc.l	T90574
	dc.l	L20470
	dc.l	T90582
	dc.l	L19628
	dc.l	T90592
	dc.l	L19724
	dc.l	T90596
	dc.l	L20880
	dc.l	T90600
	dc.l	L19948
	dc.l	T90605
	dc.l	L20118
	dc.l	T90610
	dc.l	L20700
	dc.l	T90615
	dc.l	L20584
	dc.l	T90623
	dc.l	L18928
	dc.l	T90630
	dc.l	L19010
	dc.l	T90638
	dc.l	L9656
	dc.l	T90644
	dc.l	L9834
	dc.l	T90650
	dc.l	L9852
	dc.l	T90656
	dc.l	L10004
	dc.l	T90659
	dc.l	L9984
	dc.l	T90665
	dc.l	word_nodes
	dc.l	T90671
	dc.l	word_recycle
	dc.l	T90679
	dc.l	L10492
	dc.l	T90689
	dc.l	L10542
	dc.l	T90695
	dc.l	L10568
	dc.l	T90703
	dc.l	L10660
	dc.l	T90709
	dc.l	L10746
	dc.l	T90717
	dc.l	L11922
	dc.l	T90726
	dc.l	L2618
	dc.l	T90729
	dc.l	L2652
	dc.l	T90732
	dc.l	L2398
	dc.l	T90742
	dc.l	L2226
	dc.l	T90748
	dc.l	L2336
	dc.l	T90755
	dc.l	L2432
	dc.l	T90759
	dc.l	L2414
	dc.l	T90764
	dc.l	L2496
	dc.l	T90768
	dc.l	L2452
	dc.l	T90772
	dc.l	L2512
	dc.l	T90775
	dc.l	L2812
	dc.l	T90782
	dc.l	L2860
	dc.l	T90786
	dc.l	L2920
	dc.l	T90790
	dc.l	L3354
	dc.l	T90799
	dc.l	L3214
	dc.l	T90806
	dc.l	L3414
	dc.l	T90816
	dc.l	L3504
	dc.l	T90825
	dc.l	word_shuffle
	dc.l	T90833
	dc.l	L3520
	dc.l	T90839
	dc.l	L2890
	dc.l	T90843
	dc.l	word_replace
	dc.l	T90852
	dc.l	word_reptail
	dc.l	T90861
	dc.l	word_sort
	dc.l	T90866
	dc.l	L5272
	dc.l	T90871
	dc.l	L5302
	dc.l	T90883
	dc.l	L5328
	dc.l	T90894
	dc.l	L11096
	dc.l	T90899
	dc.l	L13496
	dc.l	T90907
	dc.l	L13462
	dc.l	T90918
	dc.l	L13420
	dc.l	T90927
	dc.l	L13444
	dc.l	T90936
	dc.l	L13694
	dc.l	T90943
	dc.l	L13888
	dc.l	T90948
	dc.l	L13932
	dc.l	T90953
	dc.l	L15208
	dc.l	T90958
	dc.l	L15228
	dc.l	T90963
	dc.l	L12278
	dc.l	T90970
	dc.l	word_potl
	dc.l	T90975
	dc.l	L13020
	dc.l	T90981
	dc.l	L14216
	dc.l	T90986
	dc.l	L15288
	dc.l	T90994
	dc.l	L15360
	dc.l	T91001
	dc.l	L14374
	dc.l	T91007
	dc.l	L14264
	dc.l	T91014
	dc.l	L5354
	dc.l	T91018
	dc.l	L5382
	dc.l	T91026
	dc.l	L5420
	dc.l	T91034
	dc.l	L5458
	dc.l	T91037
	dc.l	L5506
	dc.l	T91041
	dc.l	L5596
	dc.l	T91046
	dc.l	L5656
	dc.l	T91050
	dc.l	L5686
	dc.l	T91054
	dc.l	L5746
	dc.l	T91060
	dc.l	L5832
	dc.l	T91062
	dc.l	L4342
	dc.l	T91068
	dc.l	L4356
	dc.l	T91074
	dc.l	L4380
	dc.l	T91080
	dc.l	L3616
	dc.l	T91086
	dc.l	L3634
	dc.l	T91088
	dc.l	L3042
	dc.l	T91098
	dc.l	L4324
	dc.l	T91100
	dc.l	L4394
	dc.l	T91102
	dc.l	L7058
	dc.l	T91104
	dc.l	L4408
	dc.l	T91106
	dc.l	L16526
	dc.l	T91114
	dc.l	L16574
	dc.l	T91120
	dc.l	L16600
	dc.l	T91135
	dc.l	L34588
	dc.l	T91141
	dc.l	word_forward
	dc.l	T91152
	dc.l	word_hideturtle
	dc.l	T91166
	dc.l	word_home
	dc.l	T91171
	dc.l	word_left
	dc.l	T91179
	dc.l	L33212
	dc.l	T91190
	dc.l	L33252
	dc.l	T91202
	dc.l	L33276
	dc.l	T91216
	dc.l	L33238
	dc.l	T91225
	dc.l	word_right
	dc.l	T91234
	dc.l	L17030
	dc.l	T91240
	dc.l	word_setheading
	dc.l	T91256
	dc.l	L17100
	dc.l	T91262
	dc.l	L17136
	dc.l	T91269
	dc.l	L17352
	dc.l	T91276
	dc.l	word_setscrunch
	dc.l	T91287
	dc.l	L17400
	dc.l	T91292
	dc.l	L17448
	dc.l	T91297
	dc.l	L17496
	dc.l	T91311
	dc.l	L17522
	dc.l	T91319
	dc.l	L34482
	dc.l	T91326
	dc.l	L17782
	dc.l	T91331
	dc.l	L17760
	dc.l	T91336
	dc.l	L18124
	dc.l	T91345
	dc.l	L18204
	dc.l	T91354
	dc.l	L37614
	dc.l	T91368
	dc.l	L17808
	dc.l	T91381
	dc.l	word_turtlefacts
	dc.l	T91396
	dc.l	word_screenfacts
	dc.l	T91411
	dc.l	word_turtletext
	dc.l	T91425
	dc.l	word_setzoom
	dc.l	T91433
	dc.l	word_setpan
	dc.l	T91440
	dc.l	L27388
	dc.l	T91445
	dc.l	L25588
	dc.l	T91453
	dc.l	L25612
	dc.l	T91461
	dc.l	L18012
	dc.l	T91466
	dc.l	L18034
	dc.l	T91471
	dc.l	L18056
	dc.l	T91475
	dc.l	L18102
	dc.l	T91483
	dc.l	word_setpal
	dc.l	T91490
	dc.l	word_pal
	dc.l	T91494
	dc.l	L26000
	dc.l	T91498
	dc.l	L26192
	dc.l	T91502
	dc.l	L26254
	dc.l	T91509
	dc.l	L26628
	dc.l	T91517
	dc.l	L26518
	dc.l	T91522
	dc.l	L26380
	dc.l	T91530
	dc.l	L26464
	dc.l	T91539
	dc.l	L26750
	dc.l	T91547
	dc.l	L26830
	dc.l	T91556
	dc.l	L26886
	dc.l	T91564
	dc.l	L26954
	dc.l	T91572
	dc.l	word_sysfacts
	dc.l	T91581
	dc.l	L25886
	dc.l	T91587
	dc.l	L18372
	dc.l	T91597
	dc.l	L18286
	dc.l	T91607
	dc.l	L18474
	dc.l	T91612
	dc.l	L29214

string_table:
	dc.l	T91618
	dc.l	T91619
	dc.l	T91636
	dc.l	T91637
	dc.l	T91638
	dc.l	T91639
	dc.l	T91640
	dc.l	T91641
	dc.l	T91651
	dc.l	T91663
	dc.l	T91668
	dc.l	T91673
	dc.l	T91678
	dc.l	T91683
	dc.l	T91688
	dc.l	T91693
	dc.l	T91698
	dc.l	T91703
	dc.l	T91708
	dc.l	T91713
	dc.l	T91718
	dc.l	T91723
	dc.l	T91728
	dc.l	T91733
	dc.l	T91738
	dc.l	T91743
	dc.l	T91752
	dc.l	T91759
	dc.l	T91766

T90222:
	dc.b	'ASCII',0
T90228:
	dc.b	'BUTFIRST BF',0
T90240:
	dc.b	'BUTLAST BL',0
T90251:
	dc.b	'CHAR',0
T90256:
	dc.b	'COUNT',0
T90262:
	dc.b	'EMPTYP',0
T90269:
	dc.b	'EQUALP',0
T90276:
	dc.b	'FIRST',0
T90282:
	dc.b	'FPUT',0
T90287:
	dc.b	'ITEM',0
T90292:
	dc.b	'LAST',0
T90297:
	dc.b	'LIST',0
T90302:
	dc.b	'LISTP',0
T90308:
	dc.b	'LPUT',0
T90313:
	dc.b	'MEMBERP',0
T90321:
	dc.b	'NUMBERP',0
T90329:
	dc.b	'SENTENCE SE',0
T90341:
	dc.b	'WORDP',0
T90347:
	dc.b	'WORD',0
T90352:
	dc.b	'PIECE',0
T90358:
	dc.b	'WHERE',0
T90364:
	dc.b	'UPPERCASE UC',0
T90377:
	dc.b	'LOWERCASE LC',0
T90390:
	dc.b	'MAKE',0
T90395:
	dc.b	'LOCAL',0
T90401:
	dc.b	'NAMEP',0
T90407:
	dc.b	'THING',0
T90413:
	dc.b	'GPROP',0
T90419:
	dc.b	'PLIST',0
T90425:
	dc.b	'GLIST',0
T90431:
	dc.b	'PPS',0
T90435:
	dc.b	'PPROP',0
T90441:
	dc.b	'REMPROP',0
T90449:
	dc.b	'PRINT PR',0
T90458:
	dc.b	'TYPE',0
T90463:
	dc.b	'READCHAR RC',0
T90475:
	dc.b	'READQUOTE RQ',0
T90488:
	dc.b	'READLIST RL',0
T90500:
	dc.b	'SHOW',0
T90505:
	dc.b	'EDALL',0
T90511:
	dc.b	'EDIT ED',0
T90519:
	dc.b	'ERALL',0
T90525:
	dc.b	'ERN',0
T90529:
	dc.b	'ERASE ER',0
T90538:
	dc.b	'PO',0
T90541:
	dc.b	'POALL',0
T90547:
	dc.b	'POTS',0
T90552:
	dc.b	'PONS',0
T90557:
	dc.b	'POPS',0
T90562:
	dc.b	'DEFINE',0
T90569:
	dc.b	'TEXT',0
T90574:
	dc.b	'CHANGEF',0
T90582:
	dc.b	'ERASEFILE',0
T90592:
	dc.b	'EDF',0
T90596:
	dc.b	'DIR',0
T90600:
	dc.b	'LOAD',0
T90605:
	dc.b	'SAVE',0
T90610:
	dc.b	'PATH',0
T90615:
	dc.b	'SETPATH',0
T90623:
	dc.b	'COPYON',0
T90630:
	dc.b	'COPYOFF',0
T90638:
	dc.b	'CATCH',0
T90644:
	dc.b	'ERROR',0
T90650:
	dc.b	'THROW',0
T90656:
	dc.b	'GO',0
T90659:
	dc.b	'LABEL',0
T90665:
	dc.b	'NODES',0
T90671:
	dc.b	'RECYCLE',0
T90679:
	dc.b	'.CONTENTS',0
T90689:
	dc.b	'TRACE',0
T90695:
	dc.b	'NOTRACE',0
T90703:
	dc.b	'WATCH',0
T90709:
	dc.b	'NOWATCH',0
T90717:
	dc.b	'NOFORMAT',0
T90726:
	dc.b	'CO',0
T90729:
	dc.b	'IF',0
T90732:
	dc.b	'OUTPUT OP',0
T90742:
	dc.b	'PAUSE',0
T90748:
	dc.b	'REPEAT',0
T90755:
	dc.b	'RUN',0
T90759:
	dc.b	'STOP',0
T90764:
	dc.b	'AND',0
T90768:
	dc.b	'NOT',0
T90772:
	dc.b	'OR',0
T90775:
	dc.b	'ARCTAN',0
T90782:
	dc.b	'COS',0
T90786:
	dc.b	'INT',0
T90790:
	dc.b	'QUOTIENT',0
T90799:
	dc.b	'RANDOM',0
T90806:
	dc.b	'REMAINDER',0
T90816:
	dc.b	'RERANDOM',0
T90825:
	dc.b	'SHUFFLE',0
T90833:
	dc.b	'ROUND',0
T90839:
	dc.b	'SIN',0
T90843:
	dc.b	'.REPLACE',0
T90852:
	dc.b	'.REPTAIL',0
T90861:
	dc.b	'SORT',0
T90866:
	dc.b	'TEST',0
T90871:
	dc.b	'IFFALSE IFF',0
T90883:
	dc.b	'IFTRUE IFT',0
T90894:
	dc.b	'NAME',0
T90899:
	dc.b	'COPYDEF',0
T90907:
	dc.b	'PRIMITIVEP',0
T90918:
	dc.b	'DEFINEDP',0
T90927:
	dc.b	'PROCLIST',0
T90936:
	dc.b	'FOLLOW',0
T90943:
	dc.b	'EDNS',0
T90948:
	dc.b	'EDPS',0
T90953:
	dc.b	'ERNS',0
T90958:
	dc.b	'ERPS',0
T90963:
	dc.b	'POCALL',0
T90970:
	dc.b	'POTL',0
T90975:
	dc.b	'POREF',0
T90981:
	dc.b	'BURY',0
T90986:
	dc.b	'PACKAGE',0
T90994:
	dc.b	'PKGALL',0
T91001:
	dc.b	'POPKG',0
T91007:
	dc.b	'UNBURY',0
T91014:
	dc.b	'ABS',0
T91018:
	dc.b	'DEGREES',0
T91026:
	dc.b	'RADIANS',0
T91034:
	dc.b	'PI',0
T91037:
	dc.b	'TAN',0
T91041:
	dc.b	'SQRT',0
T91046:
	dc.b	'EXP',0
T91050:
	dc.b	'LOG',0
T91054:
	dc.b	'LOG10',0
T91060:
	dc.b	'^',0
T91062:
	dc.b	'<= =<',0
T91068:
	dc.b	'<> ><',0
T91074:
	dc.b	'=> >=',0
T91080:
	dc.b	'+ SUM',0
T91086:
	dc.b	'-',0
T91088:
	dc.b	'* PRODUCT',0
T91098:
	dc.b	'/',0
T91100:
	dc.b	'<',0
T91102:
	dc.b	'=',0
T91104:
	dc.b	'>',0
T91106:
	dc.b	'BACK BK',0
T91114:
	dc.b	'CLEAN',0
T91120:
	dc.b	'CLEARSCREEN CS',0
T91141:
	dc.b	'FORWARD FD',0
T91152:
	dc.b	'HIDETURTLE HT',0
T91166:
	dc.b	'HOME',0
T91171:
	dc.b	'LEFT LT',0
T91179:
	dc.b	'PENDOWN PD',0
T91190:
	dc.b	'PENERASE PE',0
T91202:
	dc.b	'PENREVERSE PX',0
T91216:
	dc.b	'PENUP PU',0
T91225:
	dc.b	'RIGHT RT',0
T91234:
	dc.b	'SETBG',0
T91240:
	dc.b	'SETHEADING SETH',0
T91256:
	dc.b	'SETPC',0
T91262:
	dc.b	'SETPEN',0
T91269:
	dc.b	'SETPOS',0
T91276:
	dc.b	'SETSCRUNCH',0
T91287:
	dc.b	'SETX',0
T91292:
	dc.b	'SETY',0
T91297:
	dc.b	'SHOWTURTLE ST',0
T91311:
	dc.b	'TOWARDS',0
T88470:
T91319:
	dc.b	'WINDOW',0
T88477:
T91326:
	dc.b	'WRAP',0
T88482:
T91135:
	dc.b	'FENCE',0
T91331:
	dc.b	'KEYP',0
T91336:
	dc.b	'.EXAMINE',0
T91345:
	dc.b	'.DEPOSIT',0
T91354:
	dc.b	'FULLSCREEN FS',0
T91368:
	dc.b	'CLEARTEXT CT',0
T91381:
	dc.b	'TURTLEFACTS TF',0
T91396:
	dc.b	'SCREENFACTS SF',0
T91411:
	dc.b	'TURTLETEXT TT',0
T91425:
	dc.b	'SETZOOM',0
T91433:
	dc.b	'SETPAN',0
T91440:
	dc.b	'FILL',0
T91445:
	dc.b	'LOADPIC',0
T91453:
	dc.b	'SAVEPIC',0
T91461:
	dc.b	'XCOR',0
T91466:
	dc.b	'YCOR',0
T91471:
	dc.b	'POS',0
T91475:
	dc.b	'HEADING',0
T91483:
	dc.b	'SETPAL',0
T91490:
	dc.b	'PAL',0
T91494:
	dc.b	'BOX',0
T91498:
	dc.b	'ARC',0
T91502:
	dc.b	'CIRCLE',0
T91509:
	dc.b	'ELLIPSE',0
T91517:
	dc.b	'POLY',0
T91522:
	dc.b	'SETFILL',0
T91530:
	dc.b	'FILLATTR',0
T91539:
	dc.b	'SETLINE',0
T91547:
	dc.b	'LINEATTR',0
T91556:
	dc.b	'SETTEXT',0
T91564:
	dc.b	'GETTEXT',0
T91572:
	dc.b	'SYSFACTS',0
T91581:
	dc.b	'SOUND',0
T91587:
	dc.b	'.WDEPOSIT',0
T91597:
	dc.b	'.WEXAMINE',0
T91607:
	dc.b	'CALL',0
T91612:
	dc.b	'MOUSE',0
T91619:
	dc.b	'DR LOGO FOR GEM!',0
T91641:
	dc.b	'LOADING: ',0
T91651:
	dc.b	'STARTUP.LOG',0
T91663:
	dc.b	'.FIL',0
T91668:
	dc.b	'.RDR',0
T91673:
	dc.b	'.WTR',0
T91678:
	dc.b	'.PRM',0
T91683:
	dc.b	'.DEF',0
T91688:
	dc.b	'.FUN',0
T91693:
	dc.b	'.APV',0
T91698:
	dc.b	'.CAT',0
T91703:
	dc.b	'.PAU',0
T91708:
	dc.b	'.SPC',0
T91713:
	dc.b	'.REM',0
T91718:
	dc.b	'.ENL',0
T91723:
	dc.b	'.FMT',0
T91728:
	dc.b	'.BUR',0
T91733:
	dc.b	'.PAK',0
T91738:
	dc.b	'.PKG',0
T91743:
	dc.b	'TOPLEVEL',0
T91752:
	dc.b	'REDEFP',0
T91759:
	dc.b	'ERRACT',0
T91766:
	dc.b	'an empty word'
T91618:
T91636:
T91637:
T91638:
T91639:
T91640:
	dc.b	0

T91780:
	dc.w	11520
T91782:
	dc.w	10240
T91784:
	dc.w	10496
T91786:
	dc.w	257,257,257,257
	dc.w	289,8449,8481,257
	dc.w	257,257,257,257
	dc.w	257,257,257,257
	dc.w	8706,514,514,514
	dc.w	514,514,514,514
	dc.w	1028,1028,1028,1028
	dc.w	1028,514,514,514
	dc.w	520,2056,2056,2056
	dc.w	2056,2056,2056,2056
	dc.w	2056,2056,2056,2056
	dc.w	2056,2050,514,514
	dc.w	528,4112,4112,4112
	dc.w	4112,4112,4112,4112
	dc.w	4112,4112,4112,4112
	dc.w	4112,4098,514,513

	bss

p_tbase: ds.l	1

U91922:
	ds.l	1
U91926:
	ds.b	2
U91928:
	ds.b	4
U91932:
	ds.b	4
U91936:
	ds.b	6
U91942:
	ds.b	4
U91950:
	ds.b	2
U91952:
	ds.b	2
U91954:
	ds.b	2
U91956:
	ds.b	2
U91958:
	ds.b	2
U91960:
	ds.b	2
U91962:
	ds.b	2
U91964:
	ds.b	2

char_w: ds.w 1
char_h: ds.w 1
	public _cell_w
_cell_w: ds.w 1
	public _cell_h
_cell_h: ds.w 1
cell_pad: ds.w 1

psrcMFDB: ds.b 20
pdesMFDB: ds.b 20

U92032:
	ds.b	2
U92034:
	ds.b	2
U92036:
	ds.b	2
U92038:
	ds.b	2
U92040:
	ds.b	2
U92042:
	ds.b	4
U92046:
	ds.b	2
U92048:
	ds.b	2
U92050:
	ds.b	2
prev_color:
	ds.w	1
U92054:
	ds.b	2
U92056:
	ds.b	2
U92058:
	ds.b	8

U92072: ds.l 1

U92076:
	ds.b	2

U92078: ds.l 1

U92082: ds.w 1

turtle_show_flag: ds.w 1

window_mode: ds.w 1

U92088:
	ds.b	4
U92092:
	ds.b	1
U92093:
	ds.b	1

U92094: ds.w 1

U92096:
	ds.b	2
U92098:
	ds.b	2
U92100:
	ds.b	2
U92102:
	ds.b	2
U92104:
	ds.b	2
U92106:
	ds.b	2
U92108:
	ds.b	2
U92110:
	ds.b	2
U92112:
	ds.b	2
U92114:
	ds.b	2
U92116:
	ds.b	2
U92118:
	ds.b	2
U92120:
	ds.b	2
U92122:
	ds.b	2
U92124:
	ds.b	4
U92128:
	ds.b	4
U92132:
	ds.b	4
U92136:
	ds.b	4
U92140:
	ds.b	2
U92142:
	ds.b	2
U92144:
	ds.b	2
U92146:
	ds.b	2
U92148:
	ds.b	2
U92150:
	ds.b	2
U92152:
	ds.b	2
U92154:
	ds.b	2
U92156:
	ds.b	2
U92158:
	ds.b	2
U92160:
	ds.b	2
U92162:
	ds.b	2
U92164:
	ds.b	2
U92166:
	ds.b	4

pblock:
p_contrl: ds.l 1
p_intin:  ds.l 1
p_ptsin:  ds.l 1
p_intout: ds.l 1
p_ptsout: ds.l 1

U92190:
	ds.b	8
U92214:
	ds.b	4
U92218:
	ds.b	4
U92222:
	ds.b	4

draw_lock_flag: ds.w 1

mouse_x: ds.w 1
mouse_y: ds.w 1

U92232:
	ds.b	2
U92234:
	ds.b	2

grph_buffer: ds.l 1

U92240:
	ds.b	2
U92242:
	ds.b	2
U92244:
	ds.b	18
U92262:
	ds.b	2
U92264:
	ds.b	2
U92266:
	ds.b	2
U92268:
	ds.b	2
U92270:
	ds.b	2000
U94270:
	ds.b	2000
U96270:
	ds.b	2000
U98280:
	ds.b	2
U98282:
	ds.b	2
U98284:
	ds.b	2
U98286:
	ds.b	2
U98288:
	ds.b	2
U98290:
	ds.b	2
U98292:
	ds.b	1
U98293:
	ds.b	1
U98294:
	ds.b	56
U98362:
	ds.b	10
U98372:
	ds.b	2
U98374:
	ds.b	2
U98376:
	ds.b	2
U98378:
	ds.b	2
U98380:
	ds.b	2
U98382:
	ds.b	2
U98384:
	ds.b	2
U98386:
	ds.b	2
U98388:
	ds.b	4
U98392:
	ds.b	6
U98398:
	ds.b	2
U98400:
	ds.b	2

intin: ds.w 132

U98674: ds.b 8

U98682:
	ds.b	4
U98686:
	ds.b	4
U98690:
	ds.b	4
U98694:
	ds.b	4
U98698:
	ds.b	4
U98702:
	ds.b	4
U98706:
	ds.b	4
U98710:
	ds.b	2
U98712:
	ds.b	2
U98714:
	ds.b	2
U98716:
	ds.b	2
U98718:
	ds.b	2

intout: ds.w	140

U99000: ds.b 8
U99008: ds.b 8

U99016: ds.b 8

U99024:
	ds.b	4
U99028:
	ds.b	4
U99032:
	ds.b	32
U99064:
	ds.b	2
U99066:
	ds.b	2
U99068:
	ds.b	2
U99070:
	ds.b	2
U99072:
	ds.b	24
U99096:
	ds.b	2
U99098:
	ds.b	2
U99100:
	ds.b	2
U99102:
	ds.b	2
U99104:
	ds.b	4
U99108:
	ds.b	36
U99144:
	ds.b	8
U99152:
	ds.b	24
U99176:
	ds.b	2
U99178:
	ds.b	2

screen_w: ds.w 1
	public _screen_h
_screen_h: ds.w 1

work_xywh:
work_x: ds.w 1
work_y: ds.w 1
	xdef _work_w
_work_w: ds.w 1
	xdef _work_h
_work_h: ds.w 1

U99188: ds.w 1

U99190:
	ds.b	2
U99192:
	ds.b	2
U99194:
	ds.b	2
U99196:
	ds.b	4
U99200:
	ds.b	2
U99202:
	ds.b	399
U99601:
	ds.b	1
U99602:
	ds.b	4
U99606:
	ds.b	200
U99808:
	ds.b	4
U99812:
	ds.b	4
U99816:
	ds.b	2
U99818:
	ds.b	2
U99820:
	ds.b	32
U99852:
	ds.b	2
U99854:
	ds.b	2
U99856:
	ds.b	4

U99860_x: ds.w 1

U99862:
	ds.b	2

U99864: ds.w 1

U99866:
	ds.b	2

ptsin:
	ds.w	147

U100162:
	ds.b	399
U100561:
	ds.b	1
U100562:
	ds.b	2

U100564_y: ds.w	1

ptsout:
	ds.w	12

U100590:
	ds.b	30

U100620: ds.w 2

U100622:
	ds.b	2
U100624:
	ds.b	2
U100626:
	ds.b	2
U100628:
	ds.b	4
U100632:
	ds.b	2
U100634:
	ds.b	2
U100636:
	ds.b	2
U100638:
	ds.b	4
U100642:
	ds.b	4
U100646:
	ds.b	2
U100648:
	ds.b	2
U100650:
	ds.b	2
U100652:
	ds.b	4
U100656:
	ds.b	12
U100668:
	ds.b	2
U100670:
	ds.b	2
U100672:
	ds.b	2
U100674:
	ds.b	2
U100676:
	ds.b	2
U100678:
	ds.b	56
U100734:
	ds.b	2
U100736:
	ds.b	2
U100738:
	ds.b	2
U100740:
	ds.b	2
U100742:
	ds.b	2
U100744:
	ds.l	1
U100748:
	ds.b	2
U100750:
	ds.b	4
U100754:
	ds.b	9
U100763:
	ds.b	52
U100815:
	ds.b	73
U100888:
	ds.b	2
U100890:
	ds.b	2
U100892:
	ds.b	2
U100894:
	ds.b	2
U100896:
	ds.b	2
U100898:
	ds.b	2
U100900:
	ds.b	4
U100904:
	ds.b	2

control: ds.w 4
int_in:  ds.w 16
	public _int_out
_int_out: ds.w 7

U100960: ds.w 1

U100962: ds.l 2

turtle_p: ds.l 1

U100970_x: ds.w 1
U100972_y: ds.w 1

U100974:
	ds.b	2
U100976:
	ds.b	2

nodes_free: ds.w 1

U100980:
	ds.b	2
U100982:
	ds.b	2
U100984:
	ds.b	2
U100986:
	ds.b	2

nodes_max: ds.w	1

U100990:
	ds.b	2
U100992:
	ds.b	2
U100994:
	ds.b	2
U100996:
	ds.b	2
U100998:
	ds.b	2
aespb:
	ds.l	1
U101004:
	ds.b	2
U101006:
	ds.b	2
U101008:
	ds.b	2
U101010:
	ds.b	2
U101012:
	ds.b	2
U101014:
	ds.b	12
U101026:
	ds.b	4

U101030: ds.l 1

U101034:
	ds.b	2
U101036:
	ds.b	4
U101040:
	ds.b	2
U101042:
	ds.b	2
U101044:
	ds.b	2

U101046: ds.w 1

U101048:
	ds.b	2
U101050:
	ds.b	2
U101052:
	ds.b	2
U101054:
	ds.b	2

	public _addr_in
_addr_in:
	ds.l	2
contrl:
	ds.w	12

U101090:
	ds.b	12
U101102:
	ds.b	4
U101106:
	ds.b	2
U101108:
	ds.b	2

U101114:
	ds.b	6
U101120:
	ds.b	2
U101122:
	ds.b	2

max_colors: ds.w 1

U101130:
	ds.b	2
U101132:
	ds.b	2
U101134:
	ds.b	2
U101136:
	ds.b	2
U101138:
	ds.b	2
U101140:
	ds.b	2
U101142:
	ds.b	2
U101146:
	ds.b	2
U101148:
	ds.b	2
U101150:
	ds.b	4
U101154:
	ds.b	2
U101156:
	ds.b	2
U101158:
	ds.b	12
U101170:
	ds.b	12
U101182:
	ds.b	2
U101184:
	ds.b	2
U101186:
	ds.b	2
U101192:
	ds.b	2
U101198:
	ds.b	2
U101200:
	ds.b	2
U101202:
	ds.b	256
U101458:
	ds.b	2
U101460:
	ds.b	2
U101462:
	ds.b	2
U101464:
	ds.b	4
U101468:
	ds.b	2
U101470:
	ds.b	4
U101474:
	ds.b	2

U101476: ds.w 1

nplanes: ds.w 1

U101480:
	ds.b	10
U101490:
	ds.b	2
U101492:
	ds.b	4
U101496:
	ds.b	2
U101498:
	ds.b	2
U101500:
	ds.b	2
