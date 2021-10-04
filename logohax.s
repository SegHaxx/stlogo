*	Created by TT-Digger V8.1
*	Sun Oct 03 18:43:44 2021

*	TEXT	84232 bytes, segment starts at L0+0
*	DATA	7682 bytes, segment starts at T84232
*	BSS	9588 bytes, segment starts at U91914
*	SYMBOLS	0 bytes
*	FLAGS	0000 0000



*sys_vars
hw_memconf	equ	$8001
hw_f30_mon_mem	equ	$8006
hw_f30_comp_div	equ	$8007
hw_dbasehigh	equ	$8201
hw_dbasemid	equ	$8203
hw_vcounthigh	equ	$8205
hw_vcountmid	equ	$8207
hw_vcountlow	equ	$8209
hw_syncmode	equ	$820a
hw_dbaselow	equ	$820d
hw_pal_00	equ	$8240
hw_pal_01	equ	$8242
hw_pal_02	equ	$8244
hw_pal_03	equ	$8246
hw_pal_04	equ	$8248
hw_pal_05	equ	$824a
hw_pal_06	equ	$824c
hw_pal_07	equ	$824e
hw_pal_08	equ	$8250
hw_pal_09	equ	$8252
hw_pal_10	equ	$8254
hw_pal_11	equ	$8256
hw_pal_12	equ	$8258
hw_pal_13	equ	$825a
hw_pal_14	equ	$825c
hw_pal_15	equ	$825e
hw_shiftmd	equ	$8260
hw_shift_tt	equ	$8262
hw_ste_pixoffH	equ	$8264
hw_ste_pixoff	equ	$8265
hw_stacydsp	equ	$827e
hw_pal_tt	equ	$8400
hw_dma_dskctl	equ	$8604
hw_dma_fifo	equ	$8606
hw_dma_high	equ	$8609
hw_dma_mid	equ	$860b
hw_dma_low	equ	$860d
hw_TT_scsi_dma3	equ	$8701
hw_TT_scsi_dma2	equ	$8703
hw_TT_scsi_dma1	equ	$8705
hw_TT_scsi_dma0	equ	$8707
hw_TT_scsi_cnt3	equ	$8709
hw_TT_scsi_cnt2	equ	$870b
hw_TT_scsi_cnt1	equ	$870d
hw_TT_scsi_cnt0	equ	$870f
hw_TT_scsi_rsdhigh	equ	$8710
hw_TT_scsi_rsdlow	equ	$8712
hw_TT_scsi_ctl	equ	$8714
hw_scsi_data	equ	$8781
hw_scsi_icr	equ	$8783
hw_scsi_mode	equ	$8785
hw_scsi_tcr	equ	$8787
hw_scsi_idcr	equ	$8789
hw_scsi_stsr	equ	$878b
hw_scsi_trid	equ	$878d
hw_scsi_irrs	equ	$878f
hw_psg_rd_sel	equ	$8800
hw_psg_wr	equ	$8802
hw_sdma_cont_w	equ	$8900
hw_sdma_cont	equ	$8901
hw_sdma_beg2	equ	$8903
hw_sdma_beg1	equ	$8905
hw_sdma_beg0	equ	$8907
hw_sdma_loop2	equ	$8909
hw_sdma_loop1	equ	$890b
hw_sdma_loop0	equ	$890d
hw_sdma_end2	equ	$890f
hw_sdma_end1	equ	$8911
hw_sdma_end0	equ	$8913
hw_F_dac_trk	equ	$8920
hw_sdma_mode	equ	$8921
hw_MW_data	equ	$8922
hw_MW_mask	equ	$8924
hw_F_xbar_sc	equ	$8930
hw_F_xbar_dc	equ	$8932
hw_TT_rtc_ar_w	equ	$8960
hw_TT_rtc_ar	equ	$8961
hw_TT_rtc_dr_w	equ	$8962
hw_TT_rtc_dr	equ	$8963
hw_BLIT_htone	equ	$8a00
hw_scc_dma3	equ	$8c01
hw_scc_dma2	equ	$8c03
hw_scc_dma1	equ	$8c05
hw_scc_dma0	equ	$8c07
hw_scc_cnt3	equ	$8c09
hw_scc_cnt2	equ	$8c0b
hw_scc_cnt1	equ	$8c0d
hw_scc_cnt0	equ	$8c0f
hw_scc_drr	equ	$8c10
hw_scc_cr_w	equ	$8c14
hw_scc_cr	equ	$8c15
hw_SCC_a_cr	equ	$8c81
hw_SCC_a_dr	equ	$8c83
hw_SCC_b_cr	equ	$8c85
hw_SCC_b_dr	equ	$8c87
hw_TT_sys_im	equ	$8e01
hw_TT_sys_is	equ	$8e03
hw_TT_sys_ig	equ	$8e05
hw_TT_vme_ig	equ	$8e07
hw_TT_scu_gpr1	equ	$8e09
hw_TT_scu_gpr2	equ	$8e0b
hw_TT_vme_im	equ	$8e0d
hw_TT_vme_is	equ	$8e0f
hw_switches	equ	$9200
hw_pad_fire	equ	$9201
hw_pad_direct	equ	$9202
hw_pad_0_y	equ	$9211
hw_pad_0_x	equ	$9213
hw_pad_1_y	equ	$9215
hw_pad_1_x	equ	$9217
hw_light_x	equ	$9220
hw_light_y	equ	$9222
hw_F_pal	equ	$9800
hw_dsp_ic	equ	$a200
hw_dsp_cv	equ	$a201
hw_dsp_is	equ	$a202
hw_dsp_iv	equ	$a203
hw_dsp_long	equ	$a204
hw_dsp_d2	equ	$a205
hw_dsp_d1	equ	$a206
hw_dsp_d0	equ	$a207
hw_M1_gpip	equ	$fa01
hw_M1_aer	equ	$fa03
hw_M1_ddr	equ	$fa05
hw_M1_iera	equ	$fa07
hw_M1_ierb	equ	$fa09
hw_M1_ipra	equ	$fa0b
hw_M1_iprb	equ	$fa0d
hw_M1_isra	equ	$fa0f
hw_M1_isrb	equ	$fa11
hw_M1_imra	equ	$fa13
hw_M1_imrb	equ	$fa15
hw_M1_vr	equ	$fa17
hw_M1_tacr	equ	$fa19
hw_M1_tbcr	equ	$fa1b
hw_M1_tcdcr	equ	$fa1d
hw_M1_tadr	equ	$fa1f
hw_M1_tbdr	equ	$fa21
hw_M1_tcdr	equ	$fa23
hw_M1_tddr	equ	$fa25
hw_M1_scr	equ	$fa27
hw_M1_ucr	equ	$fa29
hw_M1_rsr	equ	$fa2b
hw_M1_tsr	equ	$fa2d
hw_M1_udr	equ	$fa2f
hw_fpu_stat	equ	$fa40
hw_fpu_cont	equ	$fa42
hw_fpu_save	equ	$fa44
hw_fpu_rest	equ	$fa46
hw_fpu_comm	equ	$fa4a
hw_fpu_cond	equ	$fa4e
hw_fpu_oper	equ	$fa50
hw_fpu_rsel	equ	$fa54
hw_fpu_iadr	equ	$fa58
hw_fpu_opad	equ	$fa5c
hw_M2_gpip	equ	$fa81
hw_M2_aer	equ	$fa83
hw_M2_ddr	equ	$fa85
hw_M2_iera	equ	$fa87
hw_M2_ierb	equ	$fa89
hw_M2_ipra	equ	$fa8b
hw_M2_iprb	equ	$fa8d
hw_M2_isra	equ	$fa8f
hw_M2_isrb	equ	$fa91
hw_M2_imra	equ	$fa93
hw_M2_imrb	equ	$fa95
hw_M2_vr	equ	$fa97
hw_M2_tacr	equ	$fa99
hw_M2_tbcr	equ	$fa9b
hw_M2_tcdcr	equ	$fa9d
hw_M2_tadr	equ	$fa9f
hw_M2_tbdr	equ	$faa1
hw_M2_tcdr	equ	$faa3
hw_M2_tddr	equ	$faa5
hw_M2_scr	equ	$faa7
hw_M2_ucr	equ	$faa9
hw_M2_rsr	equ	$faab
hw_M2_tsr	equ	$faad
hw_M2_udr	equ	$faaf
hw_KB_cont	equ	$fc00
hw_KB_data	equ	$fc02
hw_MIDI_cont	equ	$fc04
hw_MIDI_data	equ	$fc06
ssp_init	equ	$0
ev_reset	equ	$4
ev_buserr	equ	$8
ev_adrerr	equ	$c
ev_illegal	equ	$10
ev_divby0	equ	$14
ev_chk_ofl	equ	$18
ev_trapv	equ	$1c
ev_priverr	equ	$20
ev_trace	equ	$24
ev_a_line	equ	$28
ev_f_line	equ	$2c
vec_Nimp_lF	equ	$34
ev_spurerr	equ	$60
ev_level1	equ	$64
ev_HBI	equ	$68
ev_level3	equ	$6c
ev_VBI	equ	$70
ev_SCC	equ	$74
ev_MFP	equ	$78
ev_level7	equ	$7c
ev_trap0	equ	$80
ev_gemdos	equ	$84
ev_xgem	equ	$88
ev_trap3	equ	$8c
ev_trap4	equ	$90
ev_trap5	equ	$94
ev_trap6	equ	$98
ev_trap7	equ	$9c
ev_trap8	equ	$a0
ev_trap9	equ	$a4
ev_trap10	equ	$a8
ev_trap11	equ	$ac
ev_trap12	equ	$b0
ev_bios	equ	$b4
ev_xbios	equ	$b8
ev_trap15	equ	$bc
iv_M1_busy	equ	$100
iv_M1_dcd_ack	equ	$104
iv_M1_cts_midi	equ	$108
iv_M1_blit_dsp	equ	$10c
iv_M1_time_d	equ	$110
iv_M1_time_c	equ	$114
iv_M1_kb_midi	equ	$118
iv_M1_disk	equ	$11c
iv_M1_time_b	equ	$120
iv_M1_terr	equ	$124
iv_M1_treq	equ	$128
iv_M1_rerr	equ	$12c
iv_M1_rreq	equ	$130
iv_M1_time_a	equ	$134
iv_M1_ring	equ	$138
iv_M1_mono_samp	equ	$13c
iv_M2_0	equ	$140
iv_M2_1	equ	$144
iv_M2_2	equ	$148
iv_M2_3	equ	$14c
iv_M2_4	equ	$150
iv_M2_5	equ	$154
iv_M2_6	equ	$158
iv_M2_7	equ	$15c
iv_M2_8	equ	$160
iv_M2_9	equ	$164
iv_M2_10	equ	$168
iv_M2_11	equ	$16c
iv_M2_12	equ	$170
iv_M2_13	equ	$174
iv_M2_14	equ	$178
iv_M2_15	equ	$17c
iv_SCC_0	equ	$180
iv_SCC_1	equ	$184
iv_SCC_2	equ	$188
iv_SCC_3	equ	$18c
iv_SCC_4	equ	$190
iv_SCC_5	equ	$194
iv_SCC_6	equ	$198
iv_SCC_7	equ	$19c
iv_SCC_8	equ	$1a0
iv_SCC_9	equ	$1a4
iv_SCC_10	equ	$1a8
iv_SCC_11	equ	$1ac
iv_SCC_12	equ	$1b0
iv_SCC_13	equ	$1b4
iv_SCC_14	equ	$1b8
iv_SCC_15	equ	$1bc
proc_lives	equ	$380
proc_dregs	equ	$384
proc_aregs	equ	$3a4
proc_enum	equ	$3c4
proc_usp	equ	$3c8
proc_stk	equ	$3cc
etv_timer	equ	$400
etv_critic	equ	$404
etv_term	equ	$408
etv_xtra	equ	$40c
memvalid	equ	$420
memcntrl	equ	$424
resvalid	equ	$426
resvector	equ	$42a
phystop	equ	$42e
_membot	equ	$432
_memtop	equ	$436
memval2	equ	$43a
flock	equ	$43e
seekrate	equ	$440
_timr_ms	equ	$442
_fverify	equ	$444
_bootdev	equ	$446
_palmode	equ	$448
defshiftmd	equ	$44a
sshiftmd	equ	$44c
_v_bas_ad	equ	$44e
_v_bas_2	equ	$44f
_v_bas_1	equ	$450
_v_bas_0	equ	$451
vblsem	equ	$452
nvbls	equ	$454
_vblqueue	equ	$456
colorptr	equ	$45a
screenpt	equ	$45e
_vbclock	equ	$462
_frclock	equ	$466
hdv_init	equ	$46a
swv_vec	equ	$46e
hdv_bpb	equ	$472
hdv_rw	equ	$476
hdv_boot	equ	$47a
hdv_mediach	equ	$47e
_cmdload	equ	$482
conterm	equ	$484
trp14ret	equ	$486
criticret	equ	$48a
themd	equ	$48e
_md	equ	$49e
savptr	equ	$4a2
_nflops	equ	$4a6
con_state	equ	$4a8
sav_row	equ	$4ac
sav_context	equ	$4ae
_bufl	equ	$4b2
_bufl_2	equ	$4b6
_hz_200	equ	$4ba
the_env	equ	$4be
_drvbits	equ	$4c2
_dskbufp	equ	$4c6
_autopath	equ	$4ca
_vbl_list	equ	$4ce
_prt_cnt	equ	$4ee
_prtabt	equ	$4f0
_sysbase	equ	$4f2
_shell_p	equ	$4f6
end_os	equ	$4fa
exec_os	equ	$4fe
scr_dump	equ	$502
prv_lsto	equ	$506
prv_lst	equ	$50a
prv_auxo	equ	$50e
prv_aux	equ	$512
pun_ptr	equ	$516
memval3	equ	$51a
xconstat	equ	$51e
xconin	equ	$53e
xcostat	equ	$55e
xconout	equ	$57e
_longframe	equ	$59e
_cookies	equ	$5a0
TT_ramtop	equ	$5a4
TT_ramvalid	equ	$5a8
bell_hook	equ	$5ac
kcl_hook	equ	$5b0
crippled_hw_sdma_cont	equ	$ff8901
*end

	text

	movea.l	4(a7),a0
	move.l	a0,d0
	addi.l	#128,d0
	move.l	d0,U91922.l
	move.l	4(a0),d0
	andi.b	#254,d0
	movea.l	d0,a7
	move.l	8(a0),U91914.l
	move.l	12(a0),d0
	add.l	20(a0),d0
	add.l	28(a0),d0
	add.l	#256,d0
	move.l	d0,-(a7)
	move.l	a0,-(a7)
	move.w	d0,-(a7)
	move.w	#74,-(a7)
L64:
	jsr	L77804.l
	tst.w	d0
	beq.s	L86
	move.l	d0,-(a7)
	jsr	L77748.l
	addq.l	#4,a7
	bra.s	L64

L86:
	trap	#1		; Gemdos
	jmp	L37058.l

L94:
	move.l	#2560,-(a7)
	jsr	L77748.l
	move.l	d0,(a7)
	jsr	L77804.l
	move.l	d0,-(a7)
	jsr	L77748.l
	addq.l	#4,a7
	move.l	d0,U91918.l
	jsr	L77830.l
	addq.l	#4,a7
	move.l	U91918.l,d0
	rts

L146:
	move.l	a7,d0
	sub.l	#1000,d0
	rts

L156:
	move.l	U91914.l,d0
	rts

L164:
	move.l	U91922.l,d0
	rts

L172:
	move.l	(a7)+,U91946.l
	trap	#13		; Bios
	move.l	U91946.l,-(a7)
	rts

L188:
	move.l	(a7)+,U91946.l
	trap	#14		; Xbios
	move.l	U91946.l,-(a7)
	rts

L204:
	movea.l	4(a7),a0
	move.l	a7,(a0)+
	move.l	a6,(a0)+
	move.l	(a7),(a0)+
	clr.l	d0
	rts

L218:
	movea.l	4(a7),a0
	move.w	8(a7),d0
	ext.l	d0
	movea.l	(a0)+,a7
	movea.l	(a0)+,a6
	move.l	(a0)+,(a7)
	rts

L236:
	move.l	iv_M1_kb_midi.l,U91928.l
	move.l	#L276,iv_M1_kb_midi.l
	move.w	#1,-(a7)
	move.w	#14,-(a7)	; Iorec
	trap	#14		; Xbios
	addq.w	#4,a7
	move.l	d0,U91932.l
	rts

L276:
	addq.w	#1,U91926.l
	move.l	U91928.l,-(a7)
	rts

L290:
	clr.l	-(a7)
	move.w	#32,-(a7)	; Super
	trap	#1		; Gemdos
	addq.w	#6,a7
	move.l	d0,U91942.l
	move.l	U91928.l,iv_M1_kb_midi.l
	move.l	U91942.l,-(a7)
	move.w	#32,-(a7)	; Super
	trap	#1		; Gemdos
	addq.w	#6,a7
	rts

L332:
	movea.l	U101194.l,a0
	clr.l	d1
	move.w	4(a7),d1
	lsl.l	#2,d1
	or.w	6(a7),d1
	clr.w	d0
	move.b	0(a0,d1.l),d0
	rts

L358:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	move.w	0(a0,d0.l),d0
	rts

L378:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	move.w	2(a0,d0.l),d0
	rts

L398:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	move.l	0(a0,d0.l),d0
	rts

L418:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	or.w	6(a7),d0
	move.b	9(a7),0(a0,d0.l)
	rts

L444:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	move.w	6(a7),0(a0,d0.l)
	rts

L466:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	move.w	6(a7),2(a0,d0.l)
	rts

L488:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	move.l	6(a7),0(a0,d0.l)
	rts

L510:
	movea.l	U101194.l,a0
	clr.l	d0
	move.w	4(a7),d0
	lsl.l	#2,d0
	clr.l	d1
	move.w	2(a0,d0.l),d1
	add.l	U91914.l,d1
	movea.l	d1,a0
	jmp	(a0)

L540:
	move.l	4(a7),d1
	move.w	#200,d0
	trap	#2		; VDI/AES
	rts

L552:
	move.l	(a7)+,U91946.l
	trap	#1		; Gemdos
	move.l	U91946.l,-(a7)
	rts

L568:
	link	a6,#-10
	move.w	8(a6),U100906.l
	move.w	8(a6),d0
	add.w	#-10,d0
	muls	#3,d0
	ext.l	d0
	add.l	#T84232,d0
	move.l	d0,-6(a6)
	move.w	#1,-2(a6)
	bra.s	L642

L612:
	movea.l	-6(a6),a0
	move.b	(a0),d0
	ext.w	d0
	movea.w	-2(a6),a1
	adda.l	a1,a1
	adda.l	#U100906,a1
	move.w	d0,(a1)
	addq.l	#1,-6(a6)
	addq.w	#1,-2(a6)
L642:
	cmpi.w	#4,-2(a6)
	blt.s	L612
	move.l	U101000.l,(a7)
	jsr	L540.l
	clr.w	d0
	move.w	U100946.l,d0
	unlk	a6
	rts

L674:
	link	a6,#-6
	move.l	#U100906,U98686.l
	move.l	#U100590,U98690.l
	move.l	#U100914,U98694.l
	move.l	#U100946,U98698.l
	move.l	#U101058,U98702.l
	move.l	#U101464,U98706.l
	move.l	#U98686,U101000.l
	move.w	#10,(a7)
	bsr  	L568
	move.w	U100946.l,U101048.l
	moveq	#1,d0
	unlk	a6
	rts

L772:
	link	a6,#-4
	move.w	#19,(a7)
	bsr  	L568
	moveq	#1,d0
	unlk	a6
	rts

L790:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	12(a6),U100918.l
	move.w	14(a6),U100920.l
	move.w	16(a6),U100922.l
	move.w	18(a6),U100924.l
	move.w	20(a6),U100926.l
	move.w	22(a6),U100928.l
	move.w	24(a6),U100930.l
	move.w	26(a6),U100932.l
	move.w	28(a6),U100934.l
	move.w	30(a6),U100936.l
	move.w	32(a6),U100938.l
	move.w	34(a6),U100940.l
	move.l	36(a6),U101058.l
	move.w	40(a6),U100942.l
	move.w	42(a6),U100944.l
	move.w	#25,(a7)
	bsr  	L568
	movea.l	60(a6),a0
	move.w	U100956.l,(a0)
	movea.l	64(a6),a0
	move.w	U100958.l,(a0)
	clr.w	d0
	move.w	U100946.l,d0
	unlk	a6
	rts

L970:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	#30,(a7)
	bsr  	L568
	unlk	a6
	rts

L1002:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	14(a6),U100916.l
	move.w	#31,(a7)
	bsr  	L568
	unlk	a6
	rts

L1042:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	14(a6),U100916.l
	move.w	#32,(a7)
	bsr  	L568
	unlk	a6
	rts

L1082:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	14(a6),U100916.l
	move.w	#33,(a7)
	bsr  	L568
	unlk	a6
	rts

	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	14(a6),U100916.l
	move.w	#40,(a7)
	bsr  	L568
	unlk	a6
	rts

	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	#41,(a7)
	bsr  	L568
	unlk	a6
	rts

L1194:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	14(a6),U100916.l
	move.w	16(a6),U100918.l
	move.w	18(a6),U100920.l
	move.w	20(a6),U100922.l
	move.w	22(a6),U100924.l
	move.w	#42,(a7)
	bsr  	L568
	unlk	a6
	rts

L1266:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	12(a6),U100914.l
	move.w	#50,(a7)
	bsr  	L568
	unlk	a6
	rts

L1298:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	12(a6),U100918.l
	move.w	14(a6),U100920.l
	move.w	16(a6),U100922.l
	move.w	18(a6),U100924.l
	move.w	20(a6),U100926.l
	move.w	22(a6),U100928.l
	move.w	24(a6),U100930.l
	move.w	#51,(a7)
	bsr  	L568
	unlk	a6
	rts

L1386:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.l	10(a6),U101058.l
	move.w	#52,(a7)
	bsr  	L568
	unlk	a6
	rts

L1418:
	link	a6,#-4
	move.w	#77,(a7)
	bsr  	L568
	movea.l	8(a6),a0
	move.w	U100948.l,(a0)
	movea.l	12(a6),a0
	move.w	U100950.l,(a0)
	movea.l	16(a6),a0
	move.w	U100952.l,(a0)
	movea.l	20(a6),a0
	move.w	U100954.l,(a0)
	clr.w	d0
	move.w	U100946.l,d0
	unlk	a6
	rts

L1482:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.l	10(a6),U101058.l
	move.w	#78,(a7)
	bsr  	L568
	unlk	a6
	rts

L1514:
	link	a6,#-4
	move.w	#79,(a7)
	bsr  	L568
	movea.l	8(a6),a0
	move.w	U100948.l,(a0)
	movea.l	12(a6),a0
	move.w	U100950.l,(a0)
	movea.l	16(a6),a0
	move.w	U100952.l,(a0)
	movea.l	20(a6),a0
	move.w	U100954.l,(a0)
	unlk	a6
	rts

L1570:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.l	12(a6),U101062.l
	move.w	#90,(a7)
	bsr  	L568
	movea.l	16(a6),a0
	move.w	U100948.l,(a0)
	clr.w	d0
	move.w	U100946.l,d0
	unlk	a6
	rts

L1620:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	12(a6),U100918.l
	move.w	14(a6),U100920.l
	move.w	16(a6),U100922.l
	move.w	#100,(a7)
	bsr  	L568
	unlk	a6
	rts

L1676:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	12(a6),U100918.l
	move.w	14(a6),U100920.l
	move.w	16(a6),U100922.l
	move.w	#101,(a7)
	bsr  	L568
	unlk	a6
	rts

L1732:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	#102,(a7)
	bsr  	L568
	unlk	a6
	rts

	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	#103,(a7)
	bsr  	L568
	unlk	a6
	rts

L1780:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	#104,(a7)
	bsr  	L568
	movea.l	12(a6),a0
	move.w	U100948.l,(a0)
	movea.l	16(a6),a0
	move.w	U100950.l,(a0)
	movea.l	20(a6),a0
	move.w	U100952.l,(a0)
	movea.l	24(a6),a0
	move.w	U100954.l,(a0)
	clr.w	d0
	move.w	U100946.l,d0
	unlk	a6
	rts

L1860:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	12(a6),U100918.l
	move.w	14(a6),U100920.l
	move.w	16(a6),U100922.l
	move.w	18(a6),U100924.l
	move.w	#105,(a7)
	bsr  	L568
	unlk	a6
	rts

L1924:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	#107,(a7)
	bsr  	L568
	unlk	a6
	rts

L1948:
	link	a6,#0
	movem.l	d7/a4-a5,-(a7)
	movea.l	12(a6),a5
	movea.l	16(a6),a4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	(a5)+,U100918.l
	move.w	(a5)+,U100920.l
	move.w	(a5)+,U100922.l
	move.w	(a5),U100924.l
	move.w	#108,(a7)
	bsr  	L568
	move.w	U100948.l,(a4)+
	move.w	U100950.l,(a4)+
	move.w	U100952.l,(a4)+
	move.w	U100954.l,(a4)
	tst.l	(a7)+
	movem.l	(a7)+,a4-a5
	unlk	a6
	rts

L2046:
	link	a6,#-4
	move.l	8(a6),U101058.l
	move.w	#110,(a7)
	bsr  	L568
	unlk	a6
	rts

L2070:
	link	a6,#-4
	move.w	8(a6),U100914.l
	move.w	10(a6),U100916.l
	move.w	#112,(a7)
	bsr  	L568
	movea.l	12(a6),a0
	move.l	U101464.l,(a0)
	clr.w	d0
	move.w	U100946.l,d0
	unlk	a6
	rts

L2120:
	link	a6,#-4
	jsr	L61904.l
	tst.w	d0
	bne.s	L2222
	clr.w	d0
	move.w	U99864.l,d0
	move.w	d0,U100626.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,U100636.l
	jsr	L60580.l
	move.w	U101156.l,U101460.l
	jsr	L61904.l
	tst.w	d0
	bne.s	L2222
	jsr	L61850.l
	tst.w	d0
	beq.s	L2206
	jsr	L59950.l
	bra.s	L2222

L2206:
	move.w	U100636.l,U101046.l
	jsr	L67028.l
L2222:
	unlk	a6
	rts

L2226:
	link	a6,#-4
	jsr	L62430.l
	move.l	T87062.l,(a7)
	jsr	L76994.l
	jsr	L66768.l
	move.w	#6,(a7)
	jsr	L64300.l
	move.w	#22,(a7)
	jsr	L64090.l
	bra.s	L2290

L2276:
	jsr	L64888.l
L2282:
	jsr	L37176.l
	bra.s	L2282

L2290:
	move.l	#U101014,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L2276
	move.w	#22,(a7)
	jsr	L68540.l
	move.w	#7,(a7)
	jsr	L64326.l
	jsr	L66800.l
	unlk	a6
	rts

L2336:
	link	a6,#-6
	bsr  	L2920
	jsr	L62226.l
	move.w	d0,-2(a6)
	bge.s	L2362
	jsr	L67118.l
L2362:
	jsr	L61312.l
	bra.s	L2376

L2370:
	jsr	L59768.l
L2376:
	move.w	-2(a6),d0
	subq.w	#1,-2(a6)
	tst.w	d0
	bne.s	L2370
	jsr	L61834.l
	unlk	a6
	rts

L2398:
	link	a6,#-4
	jsr	L61206.l
	bsr.s	L2414
	unlk	a6
	rts

L2414:
	link	a6,#-4
	move.w	#18,(a7)
	jsr	L62262.l
	unlk	a6
	rts

L2432:
	link	a6,#-4
	jsr	L61312.l
	jsr	L59848.l
	unlk	a6
	rts

L2452:
	link	a6,#-4
	jsr	L61608.l
	clr.w	d0
	move.w	U101046.l,d0
	cmp.w	U101186.l,d0
	beq.s	L2482
	clr.w	(a7)
	bra.s	L2486

L2482:
	move.w	#1,(a7)
L2486:
	jsr	L60886.l
	unlk	a6
	rts

L2496:
	link	a6,#-4
	move.w	U100984.l,(a7)
	bsr.s	L2528
	unlk	a6
	rts

L2512:
	link	a6,#-4
	move.w	U101186.l,(a7)
	bsr.s	L2528
	unlk	a6
	rts

L2528:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L64090.l
	move.w	#2,(a7)
	jsr	L61132.l
	move.w	d0,d6
	bra.s	L2588

L2562:
	jsr	L61608.l
	cmp.w	U101046.l,d7
	beq.s	L2588
	move.w	U101046.l,(a7)
	jsr	L64276.l
L2588:
	move.w	d6,(a7)
	jsr	L61098.l
	subq.w	#1,d6
	tst.w	d0
	beq.s	L2562
	jsr	L64764.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L2618:
	link	a6,#-4
	jsr	L61904.l
	tst.w	d0
	bne.s	L2638
	jsr	L61206.l
L2638:
	move.w	#22,(a7)
	jsr	L62262.l
	unlk	a6
	rts

L2652:
	link	a6,#-4
	jsr	L61608.l
	move.w	U100984.l,(a7)
	move.w	U101046.l,-(a7)
	bsr.s	L2730
	addq.l	#2,a7
	unlk	a6
	rts

L2682:
	link	a6,#-4
	jsr	L61904.l
	tst.w	d0
	bne.s	L2724
	move.w	U99864.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	bne.s	L2724
	clr.w	d0
	bra.s	L2726

L2724:
	moveq	#1,d0
L2726:
	unlk	a6
	rts

L2730:
	link	a6,#-4
	bsr.s	L2682
	tst.w	d0
	beq.s	L2746
	jsr	L67666.l
L2746:
	jsr	L61312.l
	clr.w	d0
	move.w	8(a6),d0
	cmp.w	10(a6),d0
	bne.s	L2784
	jsr	L59848.l
	bsr.s	L2682
	tst.w	d0
	bne.s	L2808
	jsr	L59950.l
	bra.s	L2808

L2784:
	jsr	L61834.l
	bsr.s	L2682
	tst.w	d0
	bne.s	L2808
	jsr	L61312.l
	jsr	L59848.l
L2808:
	unlk	a6
	rts

L2812:
	link	a6,#-4
	move.l	T85052.l,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L79448.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L2860:
	link	a6,#-4
	jsr	L61476.l
	move.l	d0,(a7)
	jsr	L37032.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L2890:
	link	a6,#-4
	jsr	L61476.l
	move.l	d0,(a7)
	jsr	L37006.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L2920:
	link	a6,#-4
	jsr	L61476.l
	move.l	d0,(a7)
	bsr  	L3592
	unlk	a6
	rts

L2940:
	link	a6,#-4
	jsr	L61374.l
	jsr	L61340.l
	movea.l	8(a6),a0
	jsr	(a0)
	unlk	a6
	rts

L2966:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	#2,(a7)
	jsr	L61132.l
	move.w	d0,d7
	jsr	L61374.l
	bra.s	L3012

L2994:
	jsr	L61340.l
	movea.l	8(a6),a0
	jsr	(a0)
	jsr	L64746.l
L3012:
	subq.w	#1,d7
	move.w	d7,(a7)
	jsr	L61098.l
	tst.w	d0
	beq.s	L2994
	jsr	L64764.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L3042:
	link	a6,#-4
	move.l	#L4274,(a7)
	bsr.s	L2966
	unlk	a6
	rts

L3058:
	link	a6,#-4
	move.l	T85048.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L3096
	move.l	8(a6),-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	bra.s	L3100

L3096:
	move.l	8(a6),d0
L3100:
	unlk	a6
	rts

L3104:
	link	a6,#-4
	movem.l	d6-d7/a5,-(a7)
	movea.l	8(a6),a5
	moveq	#1,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	move.l	(a5),-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d7
	move.l	(a5),-(a7)
	move.w	d7,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-4(a6)
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	bsr.s	L3058
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L3198
	move.l	-4(a6),d0
	bra.s	L3204

L3198:
	jsr	L66880.l
L3204:
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L3214:
	link	a6,#-8
	jsr	L61476.l
	move.l	d0,-4(a6)
	move.l	a6,(a7)
	subq.l	#4,(a7)
	bsr  	L3104
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,(a7)
	bsr  	L4614
	move.w	d0,(a7)
	jsr	L61926.l
	unlk	a6
	rts

L3264:
	link	a6,#0
	movem.l	d7/a4-a5,-(a7)
	movea.l	8(a6),a5
	movea.l	12(a6),a4
	move.l	T85048.l,-(a7)
	move.l	a4,-(a7)
	bsr  	L3104
	addq.l	#4,a7
	move.l	d0,(a4)
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L3314
	jsr	L67382.l
L3314:
	move.l	a5,(a7)
	bsr  	L3104
	move.l	d0,(a5)
	move.l	(a4),-(a7)
	move.l	(a5),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	tst.l	(a7)+
	movem.l	(a7)+,a4-a5
	unlk	a6
	rts

L3354:
	link	a6,#-12
	jsr	L61476.l
	move.l	d0,-4(a6)
	jsr	L61476.l
	move.l	d0,-8(a6)
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	bsr.s	L3264
	addq.l	#4,a7
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L3414:
	link	a6,#-12
	jsr	L61476.l
	move.l	d0,-4(a6)
	jsr	L61476.l
	move.l	d0,-8(a6)
	move.l	-8(a6),-(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	bsr  	L3264
	addq.l	#8,a7
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	-4(a6),-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L3504:
	link	a6,#-4
	move.w	#899,U100646.l
	unlk	a6
	rts

L3520:
	link	a6,#-4
	jsr	L61340.l
	move.l	T85048.l,-(a7)
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L3562
	move.l	#-2147483456,-(a7)
	bra.s	L3568

L3562:
	move.l	#-2147483584,-(a7)
L3568:
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bsr.s	L3592
	unlk	a6
	rts

L3592:
	link	a6,#-4
	move.l	a6,(a7)
	addq.l	#8,(a7)
	bsr  	L3104
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L3616:
	link	a6,#-4
	move.l	#L3702,(a7)
	bsr  	L2966
	unlk	a6
	rts

L3634:
	link	a6,#-4
	move.l	#L3752,(a7)
	bsr  	L2940
	unlk	a6
	rts

L3652:
	link	a6,#-4
	jsr	L60670.l
	move.w	U100888.l,(a7)
	jsr	L60784.l
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L3702:
	link	a6,#-4
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L3752:
	link	a6,#-4
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L3802:
	link	a6,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L3860
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L3854
	clr.w	(a7)
	bra.s	L3858

L3854:
	move.w	#1,(a7)
L3858:
	bra.s	L3876

L3860:
	bsr  	L4508
	tst.w	d0
	ble.s	L3872
	clr.w	(a7)
	bra.s	L3876

L3872:
	move.w	#1,(a7)
L3876:
	jsr	L60886.l
	unlk	a6
	rts

L3886:
	link	a6,#-4
	move.w	U101046.l,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L6590.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L3920
	clr.w	(a7)
	bra.s	L3924

L3920:
	move.w	#1,(a7)
L3924:
	jsr	L60886.l
	unlk	a6
	rts

L3934:
	link	a6,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L3992
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L3986
	clr.w	(a7)
	bra.s	L3990

L3986:
	move.w	#1,(a7)
L3990:
	bra.s	L4008

L3992:
	bsr  	L4508
	tst.w	d0
	bge.s	L4004
	clr.w	(a7)
	bra.s	L4008

L4004:
	move.w	#1,(a7)
L4008:
	jsr	L60886.l
	unlk	a6
	rts

L4018:
	link	a6,#-4
	bsr.s	L4036
	move.w	d0,(a7)
	jsr	L60886.l
	unlk	a6
	rts

L4036:
	link	a6,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L4092
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
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
	unlk	a6
	rts

L4110:
	link	a6,#-4
	bsr  	L4460
	tst.w	d0
	beq.s	L4168
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L4162
	clr.w	(a7)
	bra.s	L4166

L4162:
	move.w	#1,(a7)
L4166:
	bra.s	L4184

L4168:
	bsr  	L4508
	tst.w	d0
	bgt.s	L4180
	clr.w	(a7)
	bra.s	L4184

L4180:
	move.w	#1,(a7)
L4184:
	jsr	L60886.l
	unlk	a6
	rts

L4194:
	link	a6,#-4
	move.l	T85048.l,-(a7)
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L4228
	jsr	L67382.l
L4228:
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L4274:
	link	a6,#-4
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L4324:
	link	a6,#-4
	move.l	#L4194,(a7)
	bsr  	L2940
	unlk	a6
	rts

L4342:
	link	a6,#-4
	bsr.s	L4422
	bsr  	L3802
	unlk	a6
	rts

L4356:
	link	a6,#-4
	jsr	L61572.l
	jsr	L61190.l
	bsr  	L3886
	unlk	a6
	rts

L4380:
	link	a6,#-4
	bsr.s	L4422
	bsr  	L3934
	unlk	a6
	rts

L4394:
	link	a6,#-4
	bsr.s	L4422
	bsr  	L4018
	unlk	a6
	rts

L4408:
	link	a6,#-4
	bsr.s	L4422
	bsr  	L4110
	unlk	a6
	rts

L4422:
	link	a6,#-4
	jsr	L61572.l
	jsr	L62398.l
	jsr	L61572.l
	jsr	L62398.l
	jsr	L64764.l
	unlk	a6
	rts

L4460:
	link	a6,#-4
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L4498
	move.w	U101046.l,(a7)
	jsr	L65356.l
	tst.w	d0
	bne.s	L4502
L4498:
	clr.w	d0
	bra.s	L4504

L4502:
	moveq	#1,d0
L4504:
	unlk	a6
	rts

L4508:
	link	a6,#-4
	move.w	U101046.l,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	bsr.s	L4534
	addq.l	#2,a7
	unlk	a6
	rts

L4534:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	jsr	L9350.l
	move.w	8(a6),(a7)
	jsr	L55092.l
	clr.w	(a7)
	jsr	L74948.l
	movea.l	U101030.l,a5
	move.w	10(a6),(a7)
	jsr	L55092.l
	jsr	L9388.l
	move.l	a5,(a7)
	move.l	#U100754,-(a7)
	jsr	L83748.l
	addq.l	#4,a7
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L4614:
	link	a6,#-4
	move.l	#-65456,-(a7)
	move.w	U100646.l,d0
	muls	#899,d0
	and.w	#32767,d0
	move.w	d0,U100646.l
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	moveq	#2,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	move.w	8(a6),d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	unlk	a6
	rts

L4734:
	link	a6,#-4
	jsr	L61312.l
	move.w	U101046.l,(a7)
	bsr.s	L4762
	jsr	L64764.l
	unlk	a6
	rts

L4762:
	link	a6,#0
	movem.l	d3-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	bne.s	L4790
	jsr	L64732.l
	moveq	#1,d0
	bra  	L4914

L4790:
	jsr	L74764.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	bsr.s	L4762
	move.w	d0,d4
	move.w	d4,(a7)
	bsr  	L4614
	move.w	d0,d5
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d7
	jsr	L64160.l
	move.w	d0,d6
	tst.w	d5
	bne.s	L4862
	move.w	d6,(a7)
	move.w	d7,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64276.l
	bra.s	L4910

L4862:
	bra.s	L4874

L4864:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L4874:
	subq.w	#1,d5
	bne.s	L4864
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	d6,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
L4910:
	move.w	d4,d0
	addq.w	#1,d0
L4914:
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L4924:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	jsr	L61312.l
	tst.w	U101046.l
	beq  	L5262
	jsr	L64746.l
	jsr	L64732.l
	move.w	U101046.l,d6
	bra  	L5244

L4970:
	jsr	L75596.l
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	bne.s	L5008
	jsr	L67118.l
L5008:
	jsr	L64160.l
	tst.w	d0
	bne.s	L5042
	move.w	U101046.l,(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	jsr	L64276.l
	bra  	L5234

L5042:
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L64090.l
	bsr  	L4036
	tst.w	d0
	bne.s	L5106
	jsr	L64160.l
	move.w	d0,(a7)
	move.w	U101046.l,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64276.l
	bra  	L5234

L5106:
	jsr	L64160.l
	move.w	d0,d7
L5114:
	move.w	d7,(a7)
	jsr	L378.l
	tst.w	d0
	bne.s	L5152
	move.w	U101046.l,(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	bra.s	L5234

L5152:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L64090.l
	bsr  	L4036
	tst.w	d0
	bne.s	L5222
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	U101046.l,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	bra.s	L5234

L5222:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
	bra.s	L5114

L5234:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L5244:
	tst.w	d6
	bne  	L4970
	jsr	L64764.l
	jsr	L64180.l
L5262:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L5272:
	link	a6,#-4
	jsr	L61608.l
	move.w	U101046.l,U99816.l
	jsr	L61834.l
	unlk	a6
	rts

L5302:
	link	a6,#-4
	move.w	U101186.l,(a7)
	move.w	U99816.l,-(a7)
	bsr  	L2730
	addq.l	#2,a7
	unlk	a6
	rts

L5328:
	link	a6,#-4
	move.w	U100984.l,(a7)
	move.w	U99816.l,-(a7)
	bsr  	L2730
	addq.l	#2,a7
	unlk	a6
	rts

L5354:
	link	a6,#-4
	jsr	L61476.l
	move.l	d0,(a7)
	bsr  	L3058
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5382:
	link	a6,#-4
	move.l	T85052.l,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5420:
	link	a6,#-4
	move.l	T85052.l,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5458:
	link	a6,#-4
	move.l	T85052.l,-(a7)
	move.w	#180,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5506:
	link	a6,#-8
	move.l	T85048.l,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L37032.l
	addq.l	#4,a7
	move.l	d0,-4(a6)
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L5554
	jsr	L67118.l
L5554:
	move.l	-4(a6),-(a7)
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L37006.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5596:
	link	a6,#-4
	move.l	T85048.l,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L5630
	jsr	L67118.l
L5630:
	jsr	L62206.l
	move.l	d0,(a7)
	jsr	L81604.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5656:
	link	a6,#-4
	jsr	L61476.l
	move.l	d0,(a7)
	jsr	L81632.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5686:
	link	a6,#-4
	move.l	T85048.l,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L5720
	jsr	L67118.l
L5720:
	jsr	L62206.l
	move.l	d0,(a7)
	jsr	L81660.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5746:
	link	a6,#-4
	move.l	T85048.l,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L5780
	jsr	L67118.l
L5780:
	move.l	#-1610612668,(a7)
	jsr	L81660.l
	move.l	d0,-(a7)
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L81660.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5832:
	link	a6,#-4
	move.l	#L5850,(a7)
	bsr  	L2940
	unlk	a6
	rts

L5850:
	link	a6,#-4
	move.l	T85048.l,-(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L5920
	jsr	L64224.l
	move.w	d0,(a7)
	move.l	#T85014,-(a7)
	jsr	L62012.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	jsr	L67066.l
	addq.l	#2,a7
L5920:
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81660.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L81632.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L5984:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
	move.w	d6,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L6018
	jsr	L67118.l
L6018:
	bra.s	L6040

L6020:
	tst.w	d6
	bne.s	L6030
	jsr	L67474.l
L6030:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L6040:
	cmp.w	#1,d7
	move	sr,d0
	subq.w	#1,d7
	move	d0,ccr
	bgt.s	L6020
	clr.w	d0
	move.w	d6,d0
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L6066:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	clr.w	d6
	bra.s	L6094

L6082:
	addq.w	#1,d6
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L6094:
	tst.w	d7
	bne.s	L6082
	move.w	d6,d0
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L6110:
	link	a6,#0
	movem.l	d3-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
	tst.w	d7
	bne.s	L6132
	moveq	#-1,d7
L6132:
	move.w	d6,(a7)
	jsr	L64090.l
	clr.w	d0
	move.w	d0,U101046.l
	move.w	d0,d5
	bra.s	L6224

L6152:
	tst.w	d5
	bne.s	L6182
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,d5
	move.w	d5,U101046.l
	bra.s	L6214

L6182:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,d4
	move.w	d4,(a7)
	move.w	d5,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	move.w	d4,d5
L6214:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L6224:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	beq.s	L6236
	tst.w	d6
	bne.s	L6152
L6236:
	jsr	L64180.l
	clr.w	d0
	move.w	d5,d0
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L6256:
	link	a6,#0
	movem.l	d3-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
	move.w	12(a6),d5
	tst.w	d7
	bne.s	L6282
	moveq	#-1,d7
L6282:
	move.w	d6,(a7)
	jsr	L64090.l
	bra.s	L6334

L6292:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,d4
	move.w	d4,(a7)
	move.w	d5,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	move.w	d4,d5
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L6334:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	beq.s	L6346
	tst.w	d6
	bne.s	L6292
L6346:
	jsr	L64180.l
	clr.w	d0
	move.w	d5,d0
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L6366:
	link	a6,#-4
	jsr	L61500.l
	bsr  	L9296
	move.b	U100754.l,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L61926.l
	unlk	a6
	rts

L6400:
	link	a6,#-4
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L6432
	move.w	#1,(a7)
	bsr  	L9114
	bra.s	L6450

L6432:
	move.w	U101046.l,(a7)
	jsr	L378.l
	move.w	d0,U101046.l
L6450:
	unlk	a6
	rts

L6454:
	link	a6,#-4
	jsr	L62246.l
	movea.l	#U100754,a0
	move.l	a0,U101030.l
	move.l	a0,-(a7)
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	ext.w	d0
	movea.l	(a7)+,a0
	move.b	d0,(a0)
	jsr	L61974.l
	unlk	a6
	rts

L6510:
	link	a6,#-4
	jsr	L61294.l
	move.w	d0,(a7)
	bsr.s	L6536
	move.w	d0,(a7)
	jsr	L61926.l
	unlk	a6
	rts

L6536:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L6574
	bsr  	L9186
	clr.w	d0
	move.w	U99178.l,d0
	bra.s	L6580

L6574:
	move.w	d7,(a7)
	bsr  	L6066
L6580:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L6590:
	link	a6,#0
	movem.l	d4-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
	move.w	d7,d5
	move.w	d5,(a7)
	jsr	L65266.l
	tst.w	d0
	beq  	L6766
	move.w	d6,(a7)
	jsr	L65266.l
	tst.w	d0
	beq  	L6762
	move.w	d5,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L6702
	move.w	d6,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L6702
	move.w	d6,(a7)
	jsr	L65532.l
	move.l	d0,-(a7)
	move.w	d5,-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	beq.s	L6696
	clr.w	d0
	bra.s	L6698

L6696:
	moveq	#1,d0
L6698:
	bra  	L6848

L6702:
	move.w	d5,(a7)
	jsr	L65356.l
	tst.w	d0
	bne.s	L6726
	move.w	d6,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L6750
L6726:
	move.w	d6,(a7)
	move.w	d5,-(a7)
	jsr	L4534.l
	addq.l	#2,a7
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
	jsr	L74764.l
	move.w	d6,(a7)
	jsr	L65266.l
	tst.w	d0
	bne.s	L6846
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	move.w	d5,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr  	L6590
	addq.l	#2,a7
	tst.w	d0
	beq.s	L6846
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L378.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr  	L6590
	addq.l	#2,a7
	bra.s	L6848

L6846:
	clr.w	d0
L6848:
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L6858:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L6886
	clr.w	d0
	bra.s	L6936

L6886:
	move.w	d7,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L6926
	move.w	U101046.l,(a7)
	bsr  	L9214
	movea.l	U101030.l,a0
	tst.b	(a0)
	beq.s	L6922
	clr.w	d0
	bra.s	L6924

L6922:
	moveq	#1,d0
L6924:
	bra.s	L6936

L6926:
	tst.w	d7
	beq.s	L6934
	clr.w	d0
	bra.s	L6936

L6934:
	moveq	#1,d0
L6936:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L6946:
	link	a6,#-4
	jsr	L61294.l
	move.w	d0,(a7)
	bsr.s	L6858
	move.w	d0,(a7)
	jsr	L60886.l
	unlk	a6
	rts

L6972:
	link	a6,#-4
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L7002
	clr.w	(a7)
	bsr  	L9114
	bra.s	L7054

L7002:
	move.w	U101046.l,(a7)
	jsr	L378.l
	tst.w	d0
	bne.s	L7026
	clr.w	U101046.l
	bra.s	L7054

L7026:
	move.w	U101046.l,(a7)
	move.w	U101046.l,-(a7)
	bsr  	L6066
	addq.l	#2,a7
	move.w	d0,-(a7)
	subq.w	#1,(a7)
	bsr  	L6110
	addq.l	#2,a7
L7054:
	unlk	a6
	rts

L7058:
	link	a6,#-4
	jsr	L61572.l
	jsr	L61190.l
	jsr	L60852.l
	unlk	a6
	rts

L7084:
	link	a6,#-4
	jsr	L61550.l
	move.w	U101046.l,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L7122
	bsr  	L9296
	jsr	L61974.l
	bra.s	L7140

L7122:
	move.w	U101046.l,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
L7140:
	unlk	a6
	rts

L7144:
	link	a6,#-4
	jsr	L61572.l
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L7220
	jsr	L62398.l
	bsr  	L9350
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L55092.l
	move.w	U101046.l,(a7)
	jsr	L55092.l
	bsr  	L9388
	jsr	L61992.l
	bra.s	L7248

L7220:
	move.w	U101046.l,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,U101046.l
L7248:
	unlk	a6
	rts

L7252:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	bsr  	L8924
	move.w	d0,d7
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L7322
	bsr  	L9162
	cmp.w	U99178.l,d7
	bls.s	L7302
	jsr	L67474.l
L7302:
	move.w	d7,d0
	subq.w	#1,d0
	ext.l	d0
	add.l	d0,U101030.l
	jsr	L61974.l
	bra.s	L7364

L7322:
	move.w	U101046.l,(a7)
	bsr  	L6536
	cmp.w	d7,d0
	bge.s	L7342
	jsr	L67474.l
L7342:
	move.w	U101046.l,(a7)
	move.w	d7,-(a7)
	jsr	L65756.l
	addq.l	#2,a7
	move.w	d0,U101046.l
L7364:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L7374:
	link	a6,#-4
	jsr	L61550.l
	move.w	U101046.l,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L7434
	bsr  	L9162
	clr.w	d0
	move.w	U99178.l,d0
	subq.w	#1,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	d0,U101030.l
	jsr	L61974.l
	bra.s	L7468

L7434:
	move.w	U101046.l,(a7)
	move.w	U101046.l,-(a7)
	bsr  	L6066
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L65756.l
	addq.l	#2,a7
	move.w	d0,U101046.l
L7468:
	unlk	a6
	rts

L7472:
	link	a6,#-4
	move.w	#2,(a7)
	jsr	L61064.l
	move.w	d0,(a7)
	bsr  	L8638
	jsr	L64764.l
	unlk	a6
	rts

L7502:
	link	a6,#-4
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L7528
	clr.w	(a7)
	bra.s	L7532

L7528:
	move.w	#1,(a7)
L7532:
	jsr	L60886.l
	unlk	a6
	rts

L7542:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L61572.l
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L7622
	jsr	L62398.l
	bsr  	L9350
	move.w	U101046.l,(a7)
	jsr	L55092.l
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L55092.l
	bsr  	L9388
	jsr	L61992.l
	bra.s	L7696

L7622:
	tst.w	U101046.l
	beq.s	L7676
	move.w	U101046.l,(a7)
	clr.w	-(a7)
	bsr  	L6110
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65694.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	move.w	#1,-(a7)
	bsr  	L6256
	addq.l	#4,a7
	bra.s	L7696

L7676:
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,U101046.l
L7696:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L7706:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	bsr  	L8924
	move.w	d0,d7
	jsr	L61294.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	bsr  	L5984
	addq.l	#2,a7
	move.w	d0,d6
	jsr	L61294.l
	move.w	d0,(a7)
	move.w	d6,-(a7)
	jsr	L65186.l
	addq.l	#2,a7
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L7772:
	link	a6,#0
	movem.l	d4-d7,-(a7)
	bsr  	L8924
	move.w	d0,d5
	jsr	L61294.l
	move.w	d0,(a7)
	move.w	d5,-(a7)
	bsr  	L5984
	addq.l	#2,a7
	move.w	d0,d7
	jsr	L61294.l
	move.w	d0,d6
	move.w	d6,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L7834
	move.w	d6,(a7)
	jsr	L65694.l
	move.w	d0,d6
L7834:
	move.w	d6,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L7862:
	link	a6,#-4
	jsr	L61572.l
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L7896
	bsr.s	L7912
	move.w	d0,(a7)
	bra.s	L7902

L7896:
	bsr  	L8088
	move.w	d0,(a7)
L7902:
	jsr	L60886.l
	unlk	a6
	rts

L7912:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	jsr	L62398.l
	bsr  	L9350
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L55092.l
	move.w	U99178.l,d7
	bne.s	L7962
	bsr  	L9388
	clr.w	d0
	bra  	L8078

L7962:
	movea.l	U101030.l,a5
	move.w	U101046.l,(a7)
	jsr	L55092.l
	bsr  	L9388
	clr.w	d0
	move.w	U99178.l,d0
	sub.w	d7,d0
	move.w	d0,U91950.l
	move.w	#1,U101106.l
	bra.s	L8062

L8010:
	cmp.w	U91950.l,d7
	move	sr,d0
	subq.w	#1,U91950.l
	move	d0,ccr
	bgt.s	L8070
	move.w	d7,(a7)
	move.l	a5,-(a7)
	move.l	U101030.l,-(a7)
	jsr	L83814.l
	addq.l	#8,a7
	addq.l	#1,a5
	tst.w	d0
	bne.s	L8056
	moveq	#1,d0
	bra.s	L8078

L8056:
	addq.w	#1,U101106.l
L8062:
	tst.w	U91950.l
	bne.s	L8010
L8070:
	clr.w	U101106.l
	clr.w	d0
L8078:
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L8088:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L64224.l
	move.w	d0,d7
	move.w	#1,U101106.l
	bra.s	L8168

L8114:
	move.w	U101046.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	bsr  	L6590
	addq.l	#2,a7
	tst.w	d0
	beq.s	L8144
	moveq	#1,d0
	bra.s	L8184

L8144:
	move.w	U101046.l,(a7)
	jsr	L378.l
	move.w	d0,U101046.l
	addq.w	#1,U101106.l
L8168:
	tst.w	U101046.l
	bne.s	L8114
	clr.w	U101106.l
	clr.w	d0
L8184:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L8194:
	link	a6,#-4
	jsr	L61190.l
	move.w	U101046.l,(a7)
	jsr	L65356.l
	tst.w	d0
	bne.s	L8240
	move.w	U101046.l,(a7)
	jsr	L61390.l
	tst.w	d0
	bne.s	L8240
	clr.w	(a7)
	bra.s	L8244

L8240:
	move.w	#1,(a7)
L8244:
	jsr	L60886.l
	unlk	a6
	rts

L8254:
	link	a6,#-2
	movem.l	d5-d7,-(a7)
	move.w	#2,(a7)
	jsr	L61064.l
	move.w	d0,-2(a6)
	clr.w	(a7)
	jsr	L64090.l
	bra  	L8446

L8288:
	jsr	L61190.l
	jsr	L64160.l
	tst.w	d0
	bne.s	L8382
	tst.w	U101046.l
	beq.s	L8380
	move.w	U101046.l,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L8352
	move.w	U101046.l,(a7)
	jsr	L65694.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L64276.l
	bra.s	L8380

L8352:
	move.w	U101046.l,(a7)
	clr.w	-(a7)
	bsr  	L6110
	addq.l	#2,a7
	move.w	d0,d7
	move.w	U101046.l,(a7)
	jsr	L64276.l
L8380:
	bra.s	L8446

L8382:
	move.w	U101046.l,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L8428
	move.w	U101046.l,(a7)
	jsr	L65694.l
	move.w	d0,d6
	move.w	d6,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	move.w	d6,d7
	bra.s	L8446

L8428:
	move.w	d7,(a7)
	move.w	U101046.l,-(a7)
	clr.w	-(a7)
	bsr  	L6256
	addq.l	#4,a7
	move.w	d0,d7
L8446:
	move.w	-2(a6),(a7)
	jsr	L61098.l
	subq.w	#1,-2(a6)
	tst.w	d0
	beq  	L8288
	jsr	L64764.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L8482:
	link	a6,#-4
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65322.l
	move.w	d0,(a7)
	jsr	L60886.l
	unlk	a6
	rts

L8512:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	#2,(a7)
	jsr	L61064.l
	move.w	d0,(a7)
	bsr.s	L8638
	bsr  	L9350
	jsr	L64224.l
	move.w	d0,d7
	bra.s	L8614

L8548:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d6
	move.w	d6,(a7)
	jsr	L65322.l
	tst.w	d0
	bne.s	L8596
	move.w	d6,(a7)
	move.w	U101460.l,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L67066.l
	addq.l	#2,a7
L8596:
	move.w	d6,(a7)
	jsr	L55092.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L8614:
	tst.w	d7
	bne.s	L8548
	bsr  	L9388
	jsr	L61992.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L8638:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),(a7)
	jsr	L61098.l
	tst.w	d0
	beq.s	L8668
	jsr	L64732.l
	bra.s	L8742

L8668:
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L64090.l
	bra.s	L8724

L8694:
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,d6
	move.w	d6,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	move.w	d6,d7
L8724:
	subq.w	#1,8(a6)
	move.w	8(a6),(a7)
	jsr	L61098.l
	tst.w	d0
	beq.s	L8694
L8742:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L8752:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	bsr  	L8924
	move.w	d0,d7
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d6
	move.w	d6,d0
	cmp.w	d7,d0
	bge.s	L8796
	jsr	L67118.l
L8796:
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L8864
	bsr  	L9162
	cmp.w	U99178.l,d6
	bls.s	L8832
	jsr	L67474.l
L8832:
	move.w	d7,d0
	subq.w	#1,d0
	ext.l	d0
	add.l	d0,U101030.l
	move.w	d6,d0
	sub.w	d7,d0
	addq.w	#1,d0
	move.w	d0,U99178.l
	jsr	L61992.l
	bra.s	L8914

L8864:
	move.w	U101046.l,(a7)
	bsr  	L6066
	cmp.w	d6,d0
	bge.s	L8884
	jsr	L67474.l
L8884:
	move.w	U101046.l,(a7)
	move.w	d7,-(a7)
	bsr  	L5984
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	d6,-(a7)
	move.w	d7,d0
	sub.w	d0,(a7)
	addq.w	#1,(a7)
	bsr  	L6110
	addq.l	#2,a7
L8914:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L8924:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d7
	ble.s	L8956
	move.w	d7,d0
	bra.s	L8962

L8956:
	jsr	L67118.l
L8962:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L8972:
	link	a6,#-4
	move.w	U101106.l,(a7)
	jsr	L61926.l
	unlk	a6
	rts

L8992:
	link	a6,#-4
	move.l	#L36478,(a7)
	bsr.s	L9036
	jsr	L61992.l
	unlk	a6
	rts

L9014:
	link	a6,#-4
	move.l	#L36522,(a7)
	bsr.s	L9036
	jsr	L61992.l
	unlk	a6
	rts

L9036:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	jsr	L61500.l
	bsr  	L9186
	movea.l	U101030.l,a5
	bra.s	L9080

L9062:
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,-(a7)
	movea.l	8(a6),a0
	jsr	(a0)
	addq.l	#2,a7
	move.b	d0,(a5)
	addq.l	#1,a5
L9080:
	move.l	U101030.l,d0
	clr.l	d1
	move.w	U99178.l,d1
	add.l	d1,d0
	cmpa.l	d0,a5
	bcs.s	L9062
	bsr  	L9388
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L9114:
	link	a6,#-4
	tst.w	U101046.l
	bne.s	L9132
	jsr	L67118.l
L9132:
	bsr.s	L9162
	subq.w	#1,U99178.l
	move.w	8(a6),d0
	ext.l	d0
	add.l	d0,U101030.l
	jsr	L61992.l
	unlk	a6
	rts

L9162:
	link	a6,#-4
	bsr.s	L9186
	tst.w	U99178.l
	bne.s	L9182
	jsr	L67118.l
L9182:
	unlk	a6
	rts

L9186:
	link	a6,#-4
	bsr  	L9350
	move.w	U101046.l,(a7)
	jsr	L55092.l
	bsr  	L9388
	unlk	a6
	rts

L9214:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	movea.l	#U100754,a0
	move.l	a0,U101030.l
	move.l	a0,-(a7)
	clr.w	-(a7)
	move.w	d7,-(a7)
	jsr	L378.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L332.l
	addq.l	#4,a7
	movea.l	(a7)+,a0
	move.b	d0,(a0)
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L9296:
	link	a6,#-4
	move.w	U101046.l,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L9322
	bsr  	L9162
	bra.s	L9346

L9322:
	move.w	U101046.l,(a7)
	bsr.s	L9214
	movea.l	U101030.l,a0
	tst.b	(a0)
	bne.s	L9346
	jsr	L67118.l
L9346:
	unlk	a6
	rts

L9350:
	link	a6,#-4
	clr.w	d0
	move.w	d0,U99178.l
	movea.l	#U100754,a1
	move.l	a1,U101030.l
	move.b	d0,(a1)
	move.w	#1,U98714.l
	unlk	a6
	rts

L9388:
	link	a6,#-4
	move.l	#U100754,U101030.l
	clr.w	U98714.l
	unlk	a6
	rts

L9412:
	link	a6,#-4
	addq.l	#1,U101030.l
	unlk	a6
	rts

L9426:
	link	a6,#-4
	bra.s	L9442

L9432:
	move.w	#6,U100982.l
	bsr.s	L9412
L9442:
	movea.l	U101030.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L51120.l
	tst.w	d0
	bne.s	L9432
	unlk	a6
	rts

L9468:
	link	a6,#-4
	bsr.s	L9350
	move.w	8(a6),(a7)
	jsr	L55092.l
	bsr.s	L9388
	clr.w	U100982.l
	tst.w	U99178.l
	bne.s	L9506
	clr.w	d0
	bra  	L9652

L9506:
	movea.l	U101030.l,a0
	cmpi.b	#45,(a0)
	bne.s	L9520
	bsr.s	L9412
L9520:
	bsr.s	L9426
	movea.l	U101030.l,a0
	cmpi.b	#46,(a0)
	bne.s	L9538
	bsr.s	L9412
	bsr.s	L9426
L9538:
	tst.w	U100982.l
	bne.s	L9550
	clr.w	d0
	bra.s	L9652

L9550:
	movea.l	U101030.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L36478.l
	cmp.w	#69,d0
	bne.s	L9610
	bsr  	L9412
	movea.l	U101030.l,a0
	cmpi.b	#43,(a0)
	beq.s	L9602
	movea.l	U101030.l,a0
	cmpi.b	#45,(a0)
	bne.s	L9606
L9602:
	bsr  	L9412
L9606:
	bsr  	L9426
L9610:
	tst.w	U100982.l
	beq.s	L9628
	movea.l	U101030.l,a0
	tst.b	(a0)
	beq.s	L9632
L9628:
	clr.w	d0
	bra.s	L9652

L9632:
	move.l	#U100754,(a7)
	jsr	L80660.l
	move.l	d0,U99602.l
	moveq	#1,d0
L9652:
	unlk	a6
	rts

L9656:
	link	a6,#-4
	jsr	L61592.l
	move.l	#L9834,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L62078.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L9702
	move.w	#24,(a7)
	jsr	L64276.l
L9702:
	jsr	L61312.l
	bsr.s	L9760
	bsr.s	L9724
	jsr	L61834.l
	bsr.s	L9794
	unlk	a6
	rts

L9724:
	link	a6,#-4
	move.l	#U101014,(a7)
	jsr	L204.l
	tst.w	d0
	bne.s	L9756
	jsr	L64888.l
	jsr	L59768.l
L9756:
	unlk	a6
	rts

L9760:
	link	a6,#-4
	jsr	L66768.l
	move.w	#6,(a7)
	jsr	L64300.l
	move.w	#20,(a7)
	jsr	L64090.l
	unlk	a6
	rts

L9794:
	link	a6,#-4
	move.w	#20,(a7)
	jsr	L68540.l
	move.w	#7,(a7)
	jsr	L64326.l
	jsr	L66800.l
	jsr	L64180.l
	unlk	a6
	rts

L9834:
	link	a6,#-4
	move.w	U100890.l,U101046.l
	unlk	a6
	rts

L9852:
	link	a6,#-4
	jsr	L61500.l
L9862:
	move.w	U101046.l,(a7)
	jsr	L68570.l
	tst.w	d0
	beq.s	L9922
	clr.w	d0
	move.w	d0,U99864.l
	move.w	d0,U99818.l
	jsr	L61834.l
	jsr	L64942.l
	move.w	#1,(a7)
	move.l	#U101014,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L9922:
	jsr	L64006.l
	tst.w	d0
	bne.s	L9940
	jsr	L64028.l
	bra.s	L9862

L9940:
	clr.w	d0
	move.w	U101046.l,d0
	cmp.w	U101012.l,d0
	bne.s	L9974
	move.w	#1,(a7)
	move.l	#U101158,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L9974:
	jsr	L67768.l
	unlk	a6
	rts

L9984:
	link	a6,#-4
	jsr	L60580.l
	jsr	L61834.l
	unlk	a6
	rts

L10004:
	link	a6,#-4
	jsr	L61500.l
	bsr  	L10182
	jsr	L64006.l
	tst.w	d0
	bne  	L10172
	move.w	U98716.l,(a7)
	move.w	#9,-(a7)
	jsr	L64352.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,U99818.l
	beq.s	L10172
	bra.s	L10152

L10068:
	move.w	U99818.l,(a7)
	jsr	L358.l
	move.w	d0,U99864.l
	bra.s	L10142

L10088:
	clr.w	U100894.l
	bsr  	L10220
	clr.w	d0
	move.w	U100894.l,d0
	cmp.w	U101046.l,d0
	bne.s	L10142
	jsr	L61834.l
	jsr	L64942.l
	clr.w	(a7)
	move.l	#U101014,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L10142:
	jsr	L61904.l
	tst.w	d0
	beq.s	L10088
L10152:
	move.w	U99818.l,(a7)
	jsr	L378.l
	move.w	d0,U99818.l
	bne.s	L10068
L10172:
	jsr	L67802.l
	unlk	a6
	rts

L10182:
	link	a6,#-4
	bra.s	L10206

L10188:
	jsr	L64160.l
	cmp.w	#18,d0
	beq.s	L10216
	jsr	L64028.l
L10206:
	jsr	L64006.l
	tst.w	d0
	beq.s	L10188
L10216:
	unlk	a6
	rts

L10220:
	link	a6,#-4
	move.l	#L9984,(a7)
	move.w	U99864.l,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L62078.l
	addq.l	#2,a7
	tst.w	d0
	beq  	L10378
	jsr	L59950.l
	jsr	L61904.l
	tst.w	d0
	bne  	L10442
	move.w	U99864.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L10376
	jsr	L9350.l
	move.w	U99864.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L55092.l
	jsr	L9388.l
	tst.w	U99178.l
	beq.s	L10376
	jsr	L50570.l
	cmpi.b	#34,U100754.l
	bne.s	L10376
	jsr	L53396.l
	jsr	L64224.l
	move.w	d0,U100894.l
L10376:
	bra.s	L10436

L10378:
	move.w	U99864.l,(a7)
	jsr	L358.l
	cmp.w	U100624.l,d0
	bne.s	L10436
	jsr	L59950.l
	jsr	L61904.l
	tst.w	d0
	bne.s	L10442
	bsr  	L10220
	bra.s	L10426

L10420:
	jsr	L59950.l
L10426:
	jsr	L61884.l
	tst.w	d0
	beq.s	L10420
L10436:
	jsr	L59950.l
L10442:
	unlk	a6
	rts

L10446:
	link	a6,#-4
	clr.w	d0
	move.w	U100978.l,d0
	swap	d0
	clr.w	d0
	swap	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L64764.l
	unlk	a6
	rts

L10492:
	link	a6,#-4
	jsr	L64732.l
	jsr	L57504.l
	bra.s	L10522

L10510:
	move.w	U100668.l,(a7)
	jsr	L12242.l
L10522:
	jsr	L57542.l
	tst.w	d0
	bne.s	L10510
	jsr	L64764.l
	unlk	a6
	rts

L10542:
	link	a6,#-4
	move.w	#1,U101198.l
	move.w	#2,(a7)
	jsr	L48084.l
	unlk	a6
	rts

L10568:
	link	a6,#-4
	clr.w	U101198.l
	move.w	#2,(a7)
	jsr	L48156.l
	unlk	a6
	rts

L10592:
	link	a6,#-4
	move.w	U101046.l,(a7)
	move.w	U98398.l,-(a7)
	jsr	L66654.l
	addq.l	#2,a7
	move.w	d0,U98398.l
	unlk	a6
	rts

L10626:
	link	a6,#-4
	move.w	U98398.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,U98398.l
	unlk	a6
	rts

L10660:
	link	a6,#-4
	jsr	L61884.l
	tst.w	d0
	beq.s	L10688
	move.w	U100736.l,(a7)
	jsr	L64090.l
	bra.s	L10694

L10688:
	jsr	L15622.l
L10694:
	move.l	#L10592,(a7)
	bsr  	L10816
	move.l	#L10626,(a7)
	bsr.s	L10816
	jsr	L64180.l
	tst.w	U98398.l
	beq.s	L10736
	move.w	#1,(a7)
	jsr	L48084.l
L10736:
	jsr	L61834.l
	unlk	a6
	rts

L10746:
	link	a6,#-4
	jsr	L61884.l
	tst.w	d0
	beq.s	L10768
	clr.w	U98398.l
	bra.s	L10788

L10768:
	jsr	L15622.l
	move.l	#L10592,(a7)
	bsr.s	L10816
	jsr	L64180.l
L10788:
	tst.w	U98398.l
	bne.s	L10806
	move.w	#1,(a7)
	jsr	L48156.l
L10806:
	jsr	L61834.l
	unlk	a6
	rts

L10816:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L64160.l
	move.w	d0,d7
	bra.s	L10864

L10834:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
	movea.l	8(a6),a0
	jsr	(a0)
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L10864:
	tst.w	d7
	bne.s	L10834
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L10878:
	link	a6,#-4
	jsr	L61592.l
	jsr	L61206.l
	jsr	L64160.l
	move.w	d0,(a7)
	move.w	U101046.l,-(a7)
	bsr  	L11134
	addq.l	#2,a7
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L55654.l
	unlk	a6
	rts

L10932:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	#1,(a7)
	jsr	L61064.l
	move.w	d0,d7
	bra.s	L10974

L10954:
	jsr	L61500.l
	clr.w	(a7)
	move.w	U101046.l,-(a7)
	bsr  	L11782
	addq.l	#2,a7
L10974:
	move.w	d7,(a7)
	jsr	L61098.l
	subq.w	#1,d7
	tst.w	d0
	beq.s	L10954
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L11004:
	link	a6,#-4
	jsr	L61500.l
	move.w	U101046.l,(a7)
	bsr  	L11848
	tst.w	d0
	bne.s	L11056
	move.w	U98718.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L11056
	clr.w	(a7)
	bra.s	L11060

L11056:
	move.w	#1,(a7)
L11060:
	jsr	L60886.l
	unlk	a6
	rts

L11070:
	link	a6,#-4
	jsr	L61500.l
	move.w	U101046.l,(a7)
	jsr	L60254.l
	unlk	a6
	rts

L11096:
	link	a6,#-4
	jsr	L61572.l
	jsr	L61500.l
	move.w	U101046.l,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	bsr.s	L11134
	addq.l	#2,a7
	unlk	a6
	rts

L11134:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
	move.w	d6,(a7)
	bsr  	L11848
	move.w	d0,U91952.l
	bne.s	L11212
	move.w	d7,(a7)
	jsr	L64090.l
	move.w	d6,(a7)
	jsr	L64090.l
	move.w	d7,(a7)
	move.w	U98718.l,-(a7)
	move.w	d6,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	jsr	L64180.l
	jsr	L64180.l
	bra.s	L11228

L11212:
	move.w	d7,(a7)
	move.w	U91952.l,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
L11228:
	tst.w	U101198.l
	beq.s	L11296
	jsr	L60968.l
	move.w	d7,(a7)
	move.l	#L55354,-(a7)
	clr.l	d0
	move.w	d6,d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L54682,-(a7)
	move.l	T87282.l,-(a7)
	jsr	L54390.l
	adda.l	#16,a7
	jsr	L74840.l
	jsr	L47940.l
L11296:
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L11312:
	link	a6,#-4
	jsr	L61592.l
	jsr	L61500.l
	move.w	U101046.l,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,U101046.l
	unlk	a6
	rts

L11360:
	link	a6,#-4
	jsr	L61500.l
	move.w	U101046.l,(a7)
	jsr	L66356.l
	move.w	d0,U101046.l
	unlk	a6
	rts

L11392:
	link	a6,#-4
	jsr	L61592.l
	jsr	L61592.l
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	move.w	#1,-(a7)
	jsr	L64352.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	jsr	L64180.l
	jsr	L64180.l
	jsr	L61834.l
	unlk	a6
	rts

L11468:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L15576.l
	jsr	L64732.l
	move.w	#1,(a7)
	jsr	L57456.l
	jsr	L64160.l
	move.w	d0,d7
	bra  	L11650

L11510:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L57838.l
	bra.s	L11622

L11528:
	jsr	L57986.l
	tst.w	d0
	bne.s	L11622
	jsr	L74840.l
	move.w	U101182.l,(a7)
	move.l	#L55354,-(a7)
	clr.l	d0
	move.w	U101490.l,d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L55354,-(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L55092,-(a7)
	move.l	T87310.l,-(a7)
	jsr	L54390.l
	adda.l	#24,a7
L11622:
	jsr	L57902.l
	tst.w	d0
	bne.s	L11528
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L64276.l
L11650:
	tst.w	d7
	bne  	L11510
	jsr	L61834.l
	jsr	L64180.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L11678:
	link	a6,#-4
	jsr	L61592.l
	jsr	L61500.l
	move.w	U101046.l,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L66244.l
	addq.l	#2,a7
	jsr	L61834.l
	unlk	a6
	rts

L11726:
	link	a6,#-4
	jsr	L61592.l
	jsr	L15576.l
	jsr	L64732.l
	move.w	#2,(a7)
	jsr	L64352.l
	move.w	d0,(a7)
	jsr	L57456.l
	jsr	L64764.l
	jsr	L64180.l
	unlk	a6
	rts

L11782:
	link	a6,#-4
	move.w	10(a6),(a7)
	move.w	8(a6),-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64090.l
	move.w	U101474.l,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,U101474.l
	jsr	L64180.l
	unlk	a6
	rts

L11848:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	U101474.l,d7
	bra.s	L11906

L11864:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L358.l
	cmp.w	8(a6),d0
	bne.s	L11896
	move.w	d7,(a7)
	jsr	L358.l
	bra.s	L11912

L11896:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L11906:
	tst.w	d7
	bne.s	L11864
	clr.w	d0
L11912:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L11922:
	link	a6,#-4
	move.w	#2,(a7)
	jsr	L64300.l
	move.w	U100738.l,(a7)
	jsr	L57456.l
	move.w	U100738.l,(a7)
	jsr	L56100.l
	unlk	a6
	rts

L11964:
	link	a6,#-4
	jsr	L61534.l
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L11998
	jsr	L67118.l
L11998:
	move.w	U101046.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr.s	L12082
	move.w	U101046.l,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	bsr  	L12154
	jsr	L61804.l
	move.w	U101046.l,(a7)
	move.w	U98716.l,-(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	jsr	L64180.l
	jsr	L61834.l
	unlk	a6
	rts

L12082:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L12112
	jsr	L67118.l
L12112:
	bra.s	L12140

L12114:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L62492.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L12140:
	tst.w	d7
	bne.s	L12114
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L12154:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	bra.s	L12204

L12168:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L12194
	jsr	L67118.l
L12194:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L12204:
	tst.w	d7
	bne.s	L12168
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L12218:
	link	a6,#-4
	jsr	L61500.l
	bsr  	L13392
	move.w	d0,U101046.l
	unlk	a6
	rts

L12242:
	link	a6,#-4
	jsr	L64160.l
	move.w	d0,(a7)
	move.w	8(a6),-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64276.l
	unlk	a6
	rts

L12278:
	link	a6,#-4
	jsr	L61500.l
	jsr	L64732.l
	clr.w	(a7)
	move.w	U101046.l,-(a7)
	bsr.s	L12322
	addq.l	#2,a7
	jsr	L64180.l
	jsr	L61834.l
	unlk	a6
	rts

L12322:
	link	a6,#-2
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	U98716.l,(a7)
	move.w	d7,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,d6
	beq  	L12480
	move.w	#1,(a7)
	move.w	d7,-(a7)
	bsr  	L12576
	addq.l	#2,a7
	tst.w	d0
	bne.s	L12480
	jsr	L74840.l
	move.w	10(a6),d0
	asl.w	#1,d0
	move.w	d0,(a7)
	jsr	L76954.l
	move.w	d6,(a7)
	move.w	d7,-(a7)
	jsr	L55502.l
	addq.l	#2,a7
	jsr	L56040.l
	move.w	10(a6),(a7)
	addq.w	#1,(a7)
	move.w	d7,-(a7)
	bsr  	L12576
	addq.l	#2,a7
	move.w	d0,-2(a6)
	move.w	d7,(a7)
	bsr  	L12242
	tst.w	-2(a6)
	bne.s	L12480
	jsr	L74764.l
	jsr	L64732.l
	move.w	10(a6),(a7)
	addq.w	#1,(a7)
	move.w	d6,-(a7)
	jsr	L378.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr.s	L12490
	addq.l	#2,a7
	jsr	L64180.l
L12480:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L12490:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L12528
	move.w	10(a6),(a7)
	move.w	d7,-(a7)
	bsr  	L12322
	addq.l	#2,a7
	bra.s	L12566

L12528:
	move.w	d7,d6
	bra.s	L12562

L12532:
	move.w	10(a6),(a7)
	move.w	d6,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr.s	L12490
	addq.l	#2,a7
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L12562:
	tst.w	d6
	bne.s	L12532
L12566:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L12576:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	10(a6),d7
	bra.s	L12634

L12590:
	move.w	d7,(a7)
	jsr	L64352.l
	move.w	d0,d6
	bra.s	L12630

L12602:
	move.w	d6,(a7)
	jsr	L358.l
	cmp.w	8(a6),d0
	bne.s	L12620
	moveq	#1,d0
	bra.s	L12644

L12620:
	move.w	d6,(a7)
	jsr	L378.l
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
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L12654:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	clr.w	U100674.l
	move.w	U100736.l,d7
	bra.s	L12718

L12676:
	move.w	U100674.l,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,U100674.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L12718:
	tst.w	d7
	bne.s	L12676
	jsr	L64732.l
	move.w	U100736.l,d7
	bra.s	L12798

L12736:
	move.w	U98716.l,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr.s	L12840
	addq.l	#2,a7
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L12798:
	tst.w	d7
	bne.s	L12736
	jsr	L64180.l
	clr.w	(a7)
	move.w	U100674.l,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L12840:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	10(a6),d7
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L12956
	move.w	U98716.l,(a7)
	move.w	d7,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,d6
	beq.s	L12956
	cmp.w	8(a6),d7
	beq.s	L12912
	move.w	d7,(a7)
	move.w	U100674.l,-(a7)
	jsr	L66654.l
	addq.l	#2,a7
	move.w	d0,U100674.l
L12912:
	move.w	#1,(a7)
	move.w	d7,-(a7)
	bsr  	L12576
	addq.l	#2,a7
	tst.w	d0
	bne.s	L13010
	move.w	d7,(a7)
	bsr  	L12242
	jsr	L74764.l
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	bsr.s	L12840
	addq.l	#2,a7
L12956:
	move.w	d7,(a7)
	jsr	L65266.l
	tst.w	d0
	bne.s	L13010
	bra.s	L13006

L12970:
	jsr	L74764.l
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	move.w	8(a6),-(a7)
	bsr  	L12840
	addq.l	#2,a7
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L13006:
	tst.w	d7
	bne.s	L12970
L13010:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L13020:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	clr.w	U100674.l
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L13070
	move.w	U101046.l,(a7)
	jsr	L65694.l
	move.w	d0,U101046.l
L13070:
	jsr	L64732.l
	bra  	L13230

L13080:
	move.w	U100736.l,d7
	bra  	L13208

L13090:
	move.w	U98716.l,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	bsr  	L13278
	tst.w	d0
	beq.s	L13198
	move.w	U100674.l,(a7)
	jsr	L64090.l
	move.w	#1,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr  	L12576
	addq.l	#2,a7
	tst.w	d0
	bne.s	L13186
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L12242
L13186:
	jsr	L64224.l
	move.w	d0,U100674.l
L13198:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L13208:
	tst.w	d7
	bne.s	L13090
	move.w	U101046.l,(a7)
	jsr	L378.l
	move.w	d0,U101046.l
L13230:
	tst.w	U101046.l
	bne  	L13080
	jsr	L64180.l
	clr.w	(a7)
	move.w	U100674.l,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L13278:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L13326
	move.w	U101046.l,(a7)
	jsr	L358.l
	cmp.w	d7,d0
	beq.s	L13322
	clr.w	d0
	bra.s	L13324

L13322:
	moveq	#1,d0
L13324:
	bra.s	L13382

L13326:
	move.w	d7,(a7)
	jsr	L65266.l
	tst.w	d0
	bne.s	L13380
	bra.s	L13376

L13340:
	jsr	L74764.l
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr.s	L13278
	tst.w	d0
	beq.s	L13366
	moveq	#1,d0
	bra.s	L13382

L13366:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L13376:
	tst.w	d7
	bne.s	L13340
L13380:
	clr.w	d0
L13382:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L13392:
	link	a6,#-4
	move.w	U98716.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	unlk	a6
	rts

L13420:
	link	a6,#-4
	jsr	L61500.l
	bsr.s	L13392
	move.w	d0,(a7)
	jsr	L60886.l
	unlk	a6
	rts

L13444:
	link	a6,#-4
	move.w	U100736.l,U101046.l
	unlk	a6
	rts

L13462:
	link	a6,#-4
	jsr	L61500.l
	move.w	U101046.l,(a7)
	jsr	L65878.l
	move.w	d0,(a7)
	jsr	L60886.l
	unlk	a6
	rts

L13496:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L61534.l
	jsr	L61518.l
	move.w	U101046.l,(a7)
	jsr	L65878.l
	tst.w	d0
	beq.s	L13540
	move.w	U100742.l,d7
	bra.s	L13562

L13540:
	bsr  	L13392
	tst.w	d0
	beq.s	L13556
	move.w	U98716.l,d7
	bra.s	L13562

L13556:
	jsr	L67118.l
L13562:
	jsr	L61804.l
	move.w	U100738.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L13636
	move.w	U100738.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	U100738.l,-(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
L13636:
	move.w	d7,(a7)
	move.w	U101046.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	jsr	L64180.l
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L13694:
	link	a6,#-4
	bsr.s	L13764
	bra.s	L13744

L13702:
	jsr	L64746.l
	bsr.s	L13764
	move.w	U101046.l,(a7)
	jsr	L66626.l
	jsr	L64224.l
	move.w	d0,(a7)
	move.w	U101046.l,-(a7)
	jsr	L66394.l
	addq.l	#2,a7
L13744:
	jsr	L61884.l
	tst.w	d0
	beq.s	L13702
	jsr	L61834.l
	unlk	a6
	rts

L13764:
	link	a6,#-4
	jsr	L61190.l
	move.w	U101046.l,(a7)
	jsr	L66524.l
	tst.w	d0
	bne.s	L13796
	jsr	L67118.l
L13796:
	unlk	a6
	rts

L13800:
	link	a6,#-4
	bsr  	L15576
	jsr	L64714.l
	jsr	L56498.l
	jsr	L56230.l
	move.w	#1,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L56362.l
	move.w	#2,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L56572.l
	jsr	L56386.l
	unlk	a6
	rts

L13888:
	link	a6,#-4
	bsr  	L15576
	jsr	L56362.l
	move.w	#2,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56650.l
	addq.l	#2,a7
	jsr	L56386.l
	unlk	a6
	rts

L13932:
	link	a6,#-4
	bsr  	L15576
	jsr	L56230.l
	move.w	#1,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56650.l
	addq.l	#2,a7
	jsr	L56386.l
	unlk	a6
	rts

L13976:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L61884.l
	tst.w	d0
	beq.s	L14068
	tst.w	U100748.l
	beq.s	L14038
	move.w	#1,(a7)
	move.w	U100748.l,-(a7)
	jsr	L65694.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L56650.l
	addq.l	#2,a7
	clr.w	U100748.l
	bra.s	L14064

L14038:
	tst.w	U98712.l
	beq.s	L14058
	move.l	U101102.l,U99196.l
	bra.s	L14064

L14058:
	jsr	L69744.l
L14064:
	bra  	L14200

L14068:
	bsr  	L15526
	jsr	L64160.l
	move.w	d0,d7
	bra.s	L14144

L14082:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
	move.w	d0,(a7)
	jsr	L62492.l
	move.w	U98718.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L14134
	jsr	L61710.l
L14134:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L14144:
	tst.w	d7
	bne.s	L14082
	jsr	L56498.l
	move.w	#1,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	move.w	#2,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L56572.l
L14200:
	jsr	L56386.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L14216:
	link	a6,#-4
	bsr  	L15604
	bra.s	L14252

L14226:
	move.w	U100984.l,(a7)
	move.w	U100994.l,-(a7)
	move.w	U101046.l,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
L14252:
	bsr  	L15814
	tst.w	d0
	bne.s	L14226
	unlk	a6
	rts

L14264:
	link	a6,#-4
	bsr  	L15604
	bra.s	L14294

L14274:
	move.w	U100994.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L66244.l
	addq.l	#2,a7
L14294:
	bsr  	L15814
	tst.w	d0
	bne.s	L14274
	unlk	a6
	rts

L14306:
	link	a6,#-4
	jsr	L74840.l
	jsr	L76978.l
	jsr	L76978.l
	unlk	a6
	rts

L14332:
	link	a6,#-4
	bsr.s	L14306
	move.w	#34,(a7)
	jsr	L74948.l
	move.w	U100668.l,(a7)
	jsr	L54682.l
	move.l	8(a6),(a7)
	jsr	L74902.l
	unlk	a6
	rts

L14374:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	jsr	L61884.l
	tst.w	d0
	beq.s	L14454
	jsr	L64732.l
	jsr	L57504.l
	bra.s	L14442

L14406:
	move.w	U100648.l,(a7)
	move.w	U100668.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L14442
	move.w	U100668.l,(a7)
	jsr	L12242.l
L14442:
	jsr	L57542.l
	tst.w	d0
	bne.s	L14406
	bra.s	L14458

L14454:
	bsr  	L15604
L14458:
	bra  	L14744

L14462:
	jsr	L74840.l
	move.w	U100994.l,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,d7
	move.w	d7,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L14530
	move.w	d7,(a7)
	move.l	#L54682,-(a7)
	move.l	T87198.l,-(a7)
	jsr	L54390.l
	addq.l	#8,a7
	bra.s	L14538

L14530:
	move.w	d7,(a7)
	jsr	L54682.l
L14538:
	jsr	L57504.l
	bra  	L14710

L14548:
	move.w	U98400.l,(a7)
	move.w	U100668.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	cmp.w	d7,d0
	bne  	L14710
	move.w	U98716.l,(a7)
	move.w	U100668.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,d6
	beq.s	L14630
	bsr  	L14306
	jsr	L57364.l
	move.w	d6,(a7)
	move.w	U100668.l,-(a7)
	jsr	L55502.l
	addq.l	#2,a7
	jsr	L56040.l
L14630:
	move.w	U98718.l,(a7)
	move.w	U100668.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L14664
	move.l	T87190.l,(a7)
	bsr  	L14332
L14664:
	move.w	U100668.l,(a7)
	jsr	L57838.l
	bra.s	L14700

L14678:
	jsr	L57986.l
	tst.w	d0
	bne.s	L14700
	move.l	T87194.l,(a7)
	bsr  	L14332
	bra.s	L14710

L14700:
	jsr	L57902.l
	tst.w	d0
	bne.s	L14678
L14710:
	jsr	L57542.l
	tst.w	d0
	bne  	L14548
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L64276.l
L14744:
	jsr	L64160.l
	tst.w	d0
	bne  	L14462
	jsr	L64180.l
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L14778:
	link	a6,#-4
	bsr  	L15526
	clr.w	(a7)
	move.w	U98718.l,-(a7)
	move.w	U98716.l,-(a7)
	bsr  	L15672
	addq.l	#4,a7
	move.w	#1,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	move.w	#2,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L61834.l
	unlk	a6
	rts

L14856:
	link	a6,#-4
	bsr  	L15576
	jsr	L64714.l
	bsr  	L15002
	bsr.s	L14948
	jsr	L61834.l
	unlk	a6
	rts

L14886:
	link	a6,#-4
	bsr  	L15576
	jsr	L56230.l
	clr.w	(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L61834.l
	unlk	a6
	rts

L14928:
	link	a6,#-4
	bsr  	L15576
	bsr.s	L14948
	jsr	L61834.l
	unlk	a6
	rts

L14948:
	link	a6,#-4
	jsr	L56362.l
	move.w	#2,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	unlk	a6
	rts

L14982:
	link	a6,#-4
	bsr  	L15576
	bsr.s	L15002
	jsr	L61834.l
	unlk	a6
	rts

L15002:
	link	a6,#-4
	jsr	L56230.l
	move.w	#1,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	unlk	a6
	rts

L15036:
	link	a6,#-4
	bsr  	L15576
	jsr	L64714.l
	jsr	L64714.l
	bsr  	L15248
	bsr  	L15268
	jsr	L64160.l
	tst.w	d0
	bne.s	L15092
	jsr	L64732.l
	move.w	U100648.l,(a7)
	jsr	L57456.l
L15092:
	jsr	L64714.l
	move.w	U100648.l,(a7)
	jsr	L56100.l
	jsr	L64732.l
	move.w	U98400.l,(a7)
	jsr	L57456.l
	move.w	U98400.l,(a7)
	jsr	L56100.l
	jsr	L61834.l
	unlk	a6
	rts

L15150:
	link	a6,#-4
	bsr  	L15622
	jsr	L56070.l
	jsr	L61834.l
	unlk	a6
	rts

L15174:
	link	a6,#-4
	bsr  	L15526
	move.w	U98718.l,(a7)
	bsr  	L15640
	jsr	L56054.l
	jsr	L61834.l
	unlk	a6
	rts

L15208:
	link	a6,#-4
	bsr  	L15576
	bsr.s	L15248
	jsr	L61834.l
	unlk	a6
	rts

L15228:
	link	a6,#-4
	bsr  	L15576
	bsr.s	L15268
	jsr	L61834.l
	unlk	a6
	rts

L15248:
	link	a6,#-4
	jsr	L56362.l
	jsr	L56054.l
	unlk	a6
	rts

L15268:
	link	a6,#-4
	jsr	L56230.l
	jsr	L56070.l
	unlk	a6
	rts

L15288:
	link	a6,#-4
	jsr	L61592.l
	bsr  	L15526
	move.w	#1,(a7)
	move.w	U98718.l,-(a7)
	move.w	U98716.l,-(a7)
	bsr  	L15672
	addq.l	#4,a7
	tst.w	U101108.l
	bne.s	L15338
	clr.w	(a7)
	bsr.s	L15406
	bra.s	L15350

L15338:
	jsr	L64180.l
	jsr	L64180.l
L15350:
	jsr	L61834.l
	unlk	a6
	rts

L15360:
	link	a6,#-4
	jsr	L61592.l
	move.w	#2,(a7)
	jsr	L64300.l
	jsr	L56246.l
	move.w	#1,(a7)
	jsr	L57456.l
	move.w	#1,(a7)
	bsr.s	L15406
	unlk	a6
	rts

L15406:
	link	a6,#-4
	move.w	U100984.l,(a7)
	move.w	U100648.l,-(a7)
	move.w	#1,-(a7)
	jsr	L64352.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	bra.s	L15508

L15446:
	tst.w	8(a6)
	beq.s	L15476
	move.w	U98400.l,(a7)
	move.w	U101046.l,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L15508
L15476:
	move.w	#1,(a7)
	jsr	L64352.l
	move.w	d0,(a7)
	move.w	U98400.l,-(a7)
	move.w	U101046.l,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
L15508:
	bsr  	L15814
	tst.w	d0
	bne.s	L15446
	jsr	L64180.l
	unlk	a6
	rts

L15526:
	link	a6,#-4
	jsr	L61294.l
	move.w	d0,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L15566
	move.w	U101046.l,(a7)
	jsr	L65694.l
	move.w	d0,U101046.l
L15566:
	jsr	L64746.l
	unlk	a6
	rts

L15576:
	link	a6,#-4
	jsr	L61884.l
	tst.w	d0
	beq.s	L15598
	jsr	L64732.l
	bra.s	L15600

L15598:
	bsr.s	L15604
L15600:
	unlk	a6
	rts

L15604:
	link	a6,#-4
	bsr.s	L15526
	move.w	U100648.l,(a7)
	bsr.s	L15640
	unlk	a6
	rts

L15622:
	link	a6,#-4
	bsr.s	L15526
	move.w	U98716.l,(a7)
	bsr.s	L15640
	unlk	a6
	rts

L15640:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	clr.w	(a7)
	move.w	d7,-(a7)
	move.w	d7,-(a7)
	bsr.s	L15672
	addq.l	#4,a7
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L15672:
	link	a6,#0
	movem.l	d4-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
	jsr	L64160.l
	move.w	d0,d5
	bra.s	L15800

L15698:
	move.w	d5,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
	move.w	d0,(a7)
	jsr	L62492.l
	jsr	L64746.l
	tst.w	12(a6)
	beq.s	L15754
	move.w	U101046.l,(a7)
	jsr	L57838.l
	jsr	L57808.l
	tst.w	d0
	beq.s	L15784
L15754:
	move.w	d7,(a7)
	jsr	L57428.l
	tst.w	d0
	bne.s	L15784
	move.w	d6,(a7)
	jsr	L57428.l
	tst.w	d0
	bne.s	L15784
	jsr	L67118.l
L15784:
	jsr	L64180.l
	move.w	d5,(a7)
	jsr	L378.l
	move.w	d0,d5
L15800:
	tst.w	d5
	bne.s	L15698
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L15814:
	link	a6,#-4
	jsr	L64160.l
	tst.w	d0
	bne.s	L15844
	jsr	L64180.l
	jsr	L61834.l
	clr.w	d0
	bra.s	L15906

L15844:
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
	move.w	d0,(a7)
	jsr	L65726.l
	tst.w	d0
	bne.s	L15882
	jsr	L67118.l
L15882:
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L64276.l
	moveq	#1,d0
L15906:
	unlk	a6
	rts

L15910:
	link	a6,#-8
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.l	d0,-4(a6)
	move.l	-4(a6),d0
	unlk	a6
	rts

	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	10(a6),d7
	cmp.w	8(a6),d7
	bgt.s	L15964
	move.w	d7,d0
	bra.s	L15970

L15964:
	move.w	8(a6),d0
	addq.w	#1,d0
L15970:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L15980:
	link	a6,#-4
	move.w	U101124.l,(a7)
	jsr	L61658.l
	unlk	a6
	rts

L16000:
	link	a6,#-8
	move.l	#-130993,-(a7)
	jsr	L61476.l
	move.l	d0,-4(a6)
	move.l	d0,-(a7)
	jsr	L3058.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L16060
	jsr	L48234.l
	jsr	L61834.l
	move.l	-4(a6),d0
	bra.s	L16066

L16060:
	jsr	L67118.l
L16066:
	unlk	a6
	rts

	link	a6,#-4
	jsr	L61340.l
	jsr	L62226.l
	unlk	a6
	rts

L16090:
	link	a6,#-4
	jsr	L61312.l
	move.w	U101046.l,U100896.l
	unlk	a6
	rts

L16114:
	link	a6,#-4
	tst.w	U100896.l
	bne.s	L16132
	jsr	L67474.l
L16132:
	move.w	U100896.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L64090.l
	move.w	U100896.l,(a7)
	jsr	L378.l
	move.w	d0,U100896.l
	unlk	a6
	rts

L16174:
	link	a6,#-4
	bsr.s	L16114
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L65356.l
	tst.w	d0
	bne.s	L16236
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L61390.l
	tst.w	d0
	beq.s	L16230
	jsr	L64180.l
	jsr	L52990.l
	bra.s	L16236

L16230:
	jsr	L67118.l
L16236:
	unlk	a6
	rts

L16240:
	link	a6,#-4
	bsr  	L16090
	bsr.s	L16174
	bsr.s	L16174
	unlk	a6
	rts

L16256:
	link	a6,#-4
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L65532.l
	unlk	a6
	rts

L16278:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	bsr.s	L16174
	bsr.s	L16256
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d7
	cmp.w	8(a6),d7
	bgt.s	L16312
	tst.w	d7
	bge.s	L16318
L16312:
	jsr	L67118.l
L16318:
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L16330:
	link	a6,#-4
	move.l	T85048.l,(a7)
	move.l	T85048.l,-(a7)
	jsr	L35228.l
	addq.l	#4,a7
	move.l	T85048.l,(a7)
	jsr	L33502.l
	unlk	a6
	rts

L16370:
	link	a6,#-4
	move.w	T85006.l,(a7)
	move.l	#L33736,-(a7)
	bsr  	L17846
	addq.l	#4,a7
	unlk	a6
	rts

L16396:
	link	a6,#-12
	bsr  	L16240
	move.l	T85016.l,-(a7)
	bsr  	L16256
	move.l	d0,-4(a6)
	move.l	d0,-(a7)
	jsr	L3058.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L16516
	move.l	T85016.l,-(a7)
	bsr  	L16256
	move.l	d0,-8(a6)
	move.l	d0,-(a7)
	jsr	L3058.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L16516
	jsr	L48234.l
	jsr	L27654.l
	move.l	-4(a6),(a7)
	move.l	-8(a6),-(a7)
	jsr	L33794.l
	addq.l	#4,a7
	jsr	L27654.l
	bsr  	L18502
	bra.s	L16522

L16516:
	jsr	L67118.l
L16522:
	unlk	a6
	rts

L16526:
	link	a6,#-8
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	move.l	d0,-4(a6)
	jsr	L48234.l
	move.l	-4(a6),(a7)
	jsr	L33366.l
	bsr  	L18502
	unlk	a6
	rts

L16574:
	link	a6,#-4
	jsr	L48234.l
	jsr	L33580.l
	jsr	L47940.l
	unlk	a6
	rts

L16600:
	link	a6,#-4
	jsr	L48234.l
	jsr	L33580.l
	jsr	L33238.l
	bsr  	L16330
	jsr	L33212.l
	jsr	L47940.l
	unlk	a6
	rts

L16642:
	link	a6,#-8
	jsr	L61476.l
	move.l	d0,-4(a6)
	jsr	L48234.l
	move.l	-4(a6),(a7)
	jsr	L33366.l
	bsr  	L18502
	unlk	a6
	rts

L16680:
	link	a6,#-4
	jsr	L34018.l
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L34032.l
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L33566.l
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L33300.l
	movea.w	d0,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T87322,a1
	move.l	0(a0,a1.l),(a7)
	jsr	L62056.l
	jsr	L33352.l
	move.w	d0,(a7)
	jsr	L53070.l
	jsr	L34468.l
	move.w	d0,(a7)
	jsr	L60886.l
	jsr	L64746.l
	move.w	#6,(a7)
	jsr	L62166.l
	unlk	a6
	rts

L16802:
	link	a6,#-4
	jsr	L33160.l
	move.w	d0,(a7)
	jsr	L53070.l
	jsr	L34634.l
	movea.w	d0,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T87338,a1
	move.l	0(a0,a1.l),(a7)
	jsr	L62056.l
	jsr	L34692.l
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L33780.l
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L33882.l
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L33896.l
	move.l	d0,(a7)
	jsr	L52972.l
	move.w	#6,(a7)
	jsr	L62166.l
	unlk	a6
	rts

L16918:
	link	a6,#-4
	jsr	L48234.l
	jsr	L34414.l
	jsr	L47940.l
	unlk	a6
	rts

L16944:
	link	a6,#-4
	jsr	L48234.l
	bsr  	L16330
	jsr	L47940.l
	unlk	a6
	rts

L16968:
	link	a6,#-4
	bsr  	L16000
	move.l	d0,-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	move.l	d0,(a7)
	jsr	L33472.l
	jsr	L47940.l
	unlk	a6
	rts

L17004:
	link	a6,#-4
	bsr  	L16000
	move.l	d0,(a7)
	jsr	L33472.l
	jsr	L47940.l
	unlk	a6
	rts

L17030:
	link	a6,#-6
	move.w	U101126.l,(a7)
	jsr	L61658.l
	move.w	d0,-2(a6)
	jsr	L48234.l
	move.w	-2(a6),(a7)
	jsr	L33174.l
	bsr  	L18502
	unlk	a6
	rts

L17074:
	link	a6,#-4
	bsr  	L16000
	move.l	d0,(a7)
	jsr	L33502.l
	jsr	L47940.l
	unlk	a6
	rts

L17100:
	link	a6,#-6
	bsr  	L15980
	move.w	d0,-2(a6)
	jsr	L48234.l
	move.w	-2(a6),(a7)
	jsr	L33316.l
	bsr  	L18502
	unlk	a6
	rts

L17136:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	bsr  	L16090
	bsr  	L16114
	move.w	U101124.l,(a7)
	bsr  	L16278
	move.w	d0,d7
	jsr	L9350.l
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L55092.l
	jsr	L9388.l
	jsr	L48234.l
	move.l	T87322.l,(a7)
	move.l	#U100754,-(a7)
	jsr	L83748.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L17228
	jsr	L33238.l
	bra.s	L17330

L17228:
	move.l	T87326.l,(a7)
	move.l	#U100754,-(a7)
	jsr	L83748.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L17260
	jsr	L33212.l
	bra.s	L17330

L17260:
	move.l	T87330.l,(a7)
	move.l	#U100754,-(a7)
	jsr	L83748.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L17292
	jsr	L33276.l
	bra.s	L17330

L17292:
	move.l	T87334.l,(a7)
	move.l	#U100754,-(a7)
	jsr	L83748.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L17324
	jsr	L33252.l
	bra.s	L17330

L17324:
	jsr	L67118.l
L17330:
	move.w	d7,(a7)
	jsr	L33316.l
	bsr  	L18502
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L17352:
	link	a6,#-8
	bsr  	L16240
	jsr	L48234.l
	bsr  	L16256
	move.l	d0,-4(a6)
	move.l	-4(a6),(a7)
	bsr  	L16256
	move.l	d0,-(a7)
	jsr	L35228.l
	addq.l	#4,a7
	bsr  	L18502
	unlk	a6
	rts

L17400:
	link	a6,#-8
	jsr	L61476.l
	move.l	d0,-4(a6)
	jsr	L48234.l
	jsr	L34032.l
	move.l	d0,(a7)
	move.l	-4(a6),-(a7)
	jsr	L35228.l
	addq.l	#4,a7
	bsr  	L18502
	unlk	a6
	rts

L17448:
	link	a6,#-8
	jsr	L61476.l
	move.l	d0,-4(a6)
	jsr	L48234.l
	move.l	-4(a6),(a7)
	jsr	L34018.l
	move.l	d0,-(a7)
	jsr	L35228.l
	addq.l	#4,a7
	bsr  	L18502
	unlk	a6
	rts

L17496:
	link	a6,#-4
	jsr	L48234.l
	jsr	L34440.l
	jsr	L47940.l
	unlk	a6
	rts

L17522:
	link	a6,#-12
	bsr  	L16240
	jsr	L34032.l
	move.l	d0,-(a7)
	bsr  	L16256
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,-8(a6)
	move.l	T85048.l,-(a7)
	jsr	L34018.l
	move.l	d0,-(a7)
	bsr  	L16256
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,-4(a6)
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L17642
	move.l	T85048.l,-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L17628
	move.l	#-1275068344,(a7)
	bra.s	L17634

L17628:
	move.l	T85048.l,(a7)
L17634:
	jsr	L61950.l
	bra.s	L17756

L17642:
	move.l	T85052.l,-(a7)
	move.l	-4(a6),-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L79448.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	#-1275068345,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,-8(a6)
	move.l	T85048.l,-(a7)
	move.l	-4(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L17746
	move.l	#-1275068344,-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bra.s	L17750

L17746:
	move.l	-8(a6),(a7)
L17750:
	jsr	L61950.l
L17756:
	unlk	a6
	rts

L17760:
	link	a6,#-4
	jsr	L46108.l
	move.w	d0,(a7)
	jsr	L60886.l
	unlk	a6
	rts

L17782:
	link	a6,#-4
	jsr	L48234.l
	jsr	L34554.l
	jsr	L47940.l
	unlk	a6
	rts

L17808:
	link	a6,#-4
	jsr	L77166.l
	unlk	a6
	rts

L17822:
	link	a6,#-4
	move.w	T85002.l,(a7)
	move.l	#L34648,-(a7)
	bsr.s	L17846
	addq.l	#4,a7
	unlk	a6
	rts

L17846:
	link	a6,#-4
	move.w	12(a6),d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L61476.l
	move.l	d0,-(a7)
	move.l	#-2147483583,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L18002
	move.w	12(a6),d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L18002
	move.l	T85048.l,-(a7)
	jsr	L62206.l
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L18002
	jsr	L48234.l
	jsr	L27654.l
	jsr	L62206.l
	move.l	d0,-(a7)
	movea.l	8(a6),a0
	jsr	(a0)
	addq.l	#4,a7
	jsr	L27654.l
	bsr  	L18502
	bra.s	L18008

L18002:
	jsr	L67118.l
L18008:
	unlk	a6
	rts

L18012:
	link	a6,#-4
	jsr	L34018.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L18034:
	link	a6,#-4
	jsr	L34032.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L18056:
	link	a6,#-4
	jsr	L34018.l
	move.l	d0,(a7)
	jsr	L52972.l
	jsr	L34032.l
	move.l	d0,(a7)
	jsr	L52972.l
	move.w	#2,(a7)
	jsr	L62166.l
	unlk	a6
	rts

L18102:
	link	a6,#-4
	jsr	L33566.l
	move.l	d0,(a7)
	jsr	L61950.l
	unlk	a6
	rts

L18124:
	link	a6,#-10
	bsr  	L15910
	move.l	d0,-4(a6)
	clr.l	(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	move.l	d0,U91942.l
	movea.l	-4(a6),a0
	move.b	(a0),-6(a6)
	move.l	U91942.l,(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	move.b	-6(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	andi.w	#255,(a7)
	jsr	L61926.l
	unlk	a6
	rts

L18204:
	link	a6,#-2
	movem.l	d7/a5,-(a7)
	bsr  	L15910
	movea.l	d0,a5
	jsr	L62246.l
	move.b	d0,-2(a6)
	clr.l	(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	move.l	d0,U91942.l
	move.b	-2(a6),(a5)
	move.l	U91942.l,(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L18286:
	link	a6,#-10
	bsr  	L15910
	move.l	d0,-4(a6)
	btst	#0,-1(a6)
	beq.s	L18312
	jsr	L67118.l
L18312:
	clr.l	(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	move.l	d0,U91942.l
	movea.l	-4(a6),a0
	move.w	(a0),-6(a6)
	move.l	U91942.l,(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	move.w	-6(a6),(a7)
	jsr	L61926.l
	unlk	a6
	rts

L18372:
	link	a6,#-10
	bsr  	L15910
	move.l	d0,-4(a6)
	btst	#0,-1(a6)
	beq.s	L18398
	jsr	L67118.l
L18398:
	jsr	L61476.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,-6(a6)
	clr.l	(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	move.l	d0,U91942.l
	movea.l	-4(a6),a0
	move.w	-6(a6),(a0)
	move.l	U91942.l,(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	jsr	L61834.l
	unlk	a6
	rts

L18474:
	link	a6,#-8
	bsr  	L15910
	move.l	d0,-4(a6)
	movea.l	-4(a6),a0
	jsr	(a0)
	jsr	L61834.l
	unlk	a6
	rts

L18502:
	link	a6,#-4
	jsr	L47940.l
	jsr	L61834.l
	unlk	a6
	rts

L18522:
	link	a6,#-4
	bsr.s	L18538
	jsr	L74860.l
	unlk	a6
	rts

L18538:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	#1,(a7)
	jsr	L61064.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L61098.l
	tst.w	d0
	bne.s	L18606
L18570:
	jsr	L61206.l
	bsr.s	L18616
	subq.w	#1,d7
	move.w	d7,(a7)
	jsr	L61098.l
	tst.w	d0
	bne.s	L18600
	jsr	L76978.l
	bra.s	L18570

L18600:
	jsr	L61834.l
L18606:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L18616:
	link	a6,#-4
	tst.w	U101046.l
	beq.s	L18670
	move.w	U101046.l,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L18658
	move.w	U101046.l,(a7)
	jsr	L55092.l
	bra.s	L18670

L18658:
	move.w	U101046.l,(a7)
	jsr	L55144.l
L18670:
	unlk	a6
	rts

L18674:
	link	a6,#-4
	jsr	L61206.l
	bsr.s	L18690
	unlk	a6
	rts

L18690:
	link	a6,#-4
	move.w	U101046.l,(a7)
	jsr	L55354.l
	jsr	L74860.l
	jsr	L61834.l
	unlk	a6
	rts

L18722:
	link	a6,#-4
	jsr	L62430.l
	move.l	#U100656,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L18756
	jsr	L2226.l
	bra.s	L18796

L18756:
	clr.w	(a7)
	jsr	L50590.l
	move.l	#U100162,d0
	move.l	d0,U101030.l
	move.l	d0,(a7)
	jsr	L83914.l
	move.w	d0,U99178.l
	jsr	L61992.l
L18796:
	unlk	a6
	rts

L18800:
	link	a6,#-4
	move.l	#U100656,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L18828
	jsr	L2226.l
	bra.s	L18866

L18828:
	jsr	L75856.l
	move.b	U101150.l,U91954.l
	jsr	L75582.l
	move.l	#U91954,U101030.l
	jsr	L61974.l
L18866:
	unlk	a6
	rts

L18870:
	link	a6,#-4
	jsr	L62430.l
	move.l	#U100656,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L18904
	jsr	L2226.l
	bra.s	L18924

L18904:
	clr.w	(a7)
	jsr	L50590.l
	jsr	L53628.l
	jsr	L64764.l
L18924:
	unlk	a6
	rts

L18928:
	link	a6,#-6
	bsr.s	L19010
	bra.s	L18988

L18936:
	jsr	L48330.l
	move.l	T87058.l,(a7)
	move.w	#2,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	cmp.w	#2,d0
	beq.s	L18970
	clr.w	d0
	bra.s	L18972

L18970:
	moveq	#1,d0
L18972:
	move.w	d0,-2(a6)
	jsr	L48260.l
	tst.w	-2(a6)
	bne.s	L19006
L18988:
	jsr	L49708.l
	tst.w	d0
	beq.s	L18936
	move.w	#1,U101146.l
L19006:
	unlk	a6
	rts

L19010:
	link	a6,#-4
	clr.w	U101146.l
	unlk	a6
	rts

L19024:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	movea.l	8(a6),a5
	bra.s	L19046

L19038:
	move.b	(a5)+,d0
	ext.w	d0
	move.w	d0,(a7)
	bsr.s	L19078
L19046:
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
	tst.w	d0
	beq.s	L19038
	move.w	#10,(a7)
	bsr.s	L19078
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L19078:
	link	a6,#-4
	bra.s	L19090

L19084:
	jsr	L75596.l
L19090:
	jsr	L49708.l
	tst.w	d0
	beq.s	L19084
	cmpi.b	#10,9(a6)
	bne.s	L19118
	move.w	#13,(a7)
	jsr	L49730.l
L19118:
	move.b	9(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L49730.l
	unlk	a6
	rts

L19136:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	move.l	#L36478,(a7)
	jsr	L9036.l
	move.l	#U100754,(a7)
	move.w	#46,-(a7)
	jsr	L50940.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L19196
	move.l	8(a6),(a7)
	move.l	#U100754,-(a7)
	jsr	L83706.l
	addq.l	#4,a7
L19196:
	move.l	#U100754,(a7)
	jsr	L83914.l
	ext.l	d0
	movea.l	d0,a5
	adda.l	#U100754,a5
	bra.s	L19248

L19220:
	move.l	#T85020,(a7)
	move.b	-1(a5),d0
	ext.w	d0
	move.w	d0,-(a7)
	jsr	L50940.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L19256
	subq.l	#1,a5
L19248:
	cmpa.l	#U100754,a5
	bhi.s	L19220
L19256:
	move.l	a5,(a7)
	jsr	L83914.l
	cmp.w	#12,d0
	ble.s	L19276
	jsr	L67118.l
L19276:
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L19286:
	link	a6,#-4
	clr.w	(a7)
	move.l	U101030.l,-(a7)
	jsr	L77468.l
	addq.l	#4,a7
	move.w	d0,U101054.l
	cmp.w	#-1,d0
	bgt.s	L19324
	jsr	L67642.l
L19324:
	unlk	a6
	rts

L19328:
	link	a6,#-4
	clr.w	(a7)
	move.l	U101030.l,-(a7)
	jsr	L77664.l
	addq.l	#4,a7
	move.w	d0,U101054.l
	cmp.w	#-1,d0
	bgt.s	L19366
	jsr	L67118.l
L19366:
	unlk	a6
	rts

L19370:
	link	a6,#-4
	move.w	U101054.l,(a7)
	jsr	L77496.l
	cmp.w	#-1,d0
	bgt.s	L19398
	jsr	L67546.l
L19398:
	unlk	a6
	rts

L19402:
	link	a6,#-4
	move.w	U101054.l,(a7)
	move.w	#1,-(a7)
	move.l	a6,-(a7)
	addi.l	#9,(a7)
	jsr	L77554.l
	addq.l	#6,a7
	cmp.w	#1,d0
	beq.s	L19444
	jsr	L67570.l
L19444:
	unlk	a6
	rts

L19448:
	link	a6,#-6
	move.w	U101054.l,(a7)
	move.w	#1,-(a7)
	move.l	a6,-(a7)
	subq.l	#2,(a7)
	jsr	L77520.l
	addq.l	#6,a7
	tst.w	d0
	beq.s	L19482
	clr.w	d0
	bra.s	L19484

L19482:
	moveq	#1,d0
L19484:
	move.w	d0,U100998.l
	beq.s	L19498
	clr.b	-2(a6)
	bra.s	L19514

L19498:
	cmpi.b	#13,-2(a6)
	bne.s	L19514
	bsr.s	L19448
	move.b	#10,-2(a6)
L19514:
	move.b	-2(a6),d0
	ext.w	d0
	unlk	a6
	rts

L19524:
	link	a6,#-4
	movea.l	#U100162,a0
	movea.w	U100898.l,a1
	adda.l	a1,a0
	move.l	a0,-(a7)
	bsr.s	L19448
	movea.l	(a7)+,a0
	move.b	d0,(a0)
	addq.w	#1,U100898.l
	move.w	U100898.l,d0
	cmp.w	#400,d0
	blt.s	L19574
	jsr	L67450.l
L19574:
	movea.l	#U100162,a0
	movea.w	U100898.l,a1
	adda.l	a1,a0
	clr.b	(a0)
	unlk	a6
	rts

L19594:
	link	a6,#-4
	move.w	#2,U100986.l
	clr.w	U100898.l
	clr.w	U100998.l
	bsr.s	L19524
	bsr.s	L19524
	bsr.s	L19524
	unlk	a6
	rts

L19628:
	link	a6,#-4
	move.l	T87150.l,(a7)
	bsr  	L19136
	move.l	U101030.l,(a7)
	jsr	L77692.l
	cmp.w	#-1,d0
	bgt.s	L19666
	jsr	L67642.l
L19666:
	jsr	L61834.l
	unlk	a6
	rts

L19676:
	link	a6,#-6
	move.l	a6,d0
	add.l	#9,d0
	sub.l	U100744.l,d0
	add.l	#-1536,d0
	move.w	d0,-2(a6)
	cmp.w	#128,d0
	bge.s	L19716
	jsr	L67594.l
L19716:
	move.w	-2(a6),d0
	unlk	a6
	rts

L19724:
	link	a6,#-8
	jsr	L62468.l
	jsr	L62430.l
	move.l	T87150.l,(a7)
	bsr  	L19136
	clr.w	(a7)
	move.l	U101030.l,-(a7)
	jsr	L77468.l
	addq.l	#4,a7
	move.w	d0,U101054.l
	cmp.w	#-1,d0
	bgt.s	L19782
	bsr  	L19328
L19782:
	move.l	U100744.l,U101102.l
	bsr.s	L19676
	move.w	d0,-2(a6)
	clr.w	U100998.l
	clr.w	U101200.l
	bra.s	L19856

L19812:
	addq.l	#1,U101102.l
	move.l	U101102.l,-(a7)
	bsr  	L19448
	movea.l	(a7)+,a0
	move.b	d0,(a0)
	move.w	U101200.l,d0
	cmp.w	-2(a6),d0
	ble.s	L19850
	jsr	L67594.l
L19850:
	addq.w	#1,U101200.l
L19856:
	tst.w	U100998.l
	beq.s	L19812
	bsr  	L19370
	jsr	L56464.l
	jsr	L56572.l
	jsr	L69648.l
	jsr	L70038.l
	bsr  	L19328
	move.l	U100744.l,U101102.l
	bra.s	L19930

L19908:
	movea.l	U101102.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L19402
	addq.l	#1,U101102.l
L19930:
	movea.l	U101102.l,a0
	tst.b	(a0)
	bne.s	L19908
	bsr  	L19370
	unlk	a6
	rts

L19948:
	link	a6,#-138
	jsr	L48408.l
	jsr	L62430.l
	jsr	L62468.l
	move.l	T87150.l,(a7)
	bsr  	L19136
	bsr  	L19286
	move.l	#U100754,(a7)
	move.l	#U100678,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	jsr	L61884.l
	tst.w	d0
	bne.s	L20056
	jsr	L61500.l
	move.w	U100984.l,(a7)
	move.w	U100648.l,-(a7)
	clr.w	d0
	move.w	U101046.l,d0
	move.w	d0,U101108.l
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
L20056:
	bsr  	L19594
	jsr	L66768.l
	move.w	#1,U101476.l
	bra.s	L20082

L20076:
	jsr	L37176.l
L20082:
	tst.w	U101476.l
	bne.s	L20076
	jsr	L66800.l
	jsr	L58082.l
	jsr	L48444.l
	jsr	L61834.l
	unlk	a6
	rts

L20118:
	link	a6,#-6
	jsr	L48408.l
	jsr	L62430.l
	jsr	L62468.l
	move.w	U101044.l,-2(a6)
	move.l	T87150.l,(a7)
	bsr  	L19136
	bsr  	L20414
	tst.w	d0
	beq.s	L20172
	jsr	L67618.l
L20172:
	bsr  	L19328
	move.l	#U100754,(a7)
	move.l	#U100678,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	jsr	L15576.l
	move.w	#2,U100996.l
	jsr	L64714.l
	jsr	L64714.l
	jsr	L64714.l
	jsr	L64714.l
	jsr	L56230.l
	move.w	#1,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L56362.l
	move.w	#2,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L64732.l
	move.w	#1,(a7)
	jsr	L57456.l
	move.w	#3,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	jsr	L64732.l
	move.w	U98400.l,(a7)
	jsr	L57456.l
	move.w	#4,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	move.w	#5,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L56676.l
	addq.l	#2,a7
	bsr  	L19370
	jsr	L58068.l
	jsr	L48444.l
	move.w	-2(a6),U101044.l
	jsr	L61834.l
	unlk	a6
	rts

L20414:
	link	a6,#-6
	clr.w	(a7)
	move.l	U101030.l,-(a7)
	jsr	L77468.l
	addq.l	#4,a7
	move.w	d0,U101054.l
	cmp.w	#-1,d0
	bgt.s	L20450
	clr.w	d0
	bra.s	L20452

L20450:
	moveq	#1,d0
L20452:
	move.w	d0,-2(a6)
	beq.s	L20462
	bsr  	L19370
L20462:
	move.w	-2(a6),d0
	unlk	a6
	rts

L20470:
	link	a6,#-44
	move.l	T87150.l,(a7)
	bsr  	L19136
	bsr.s	L20414
	tst.w	d0
	beq.s	L20496
	jsr	L67118.l
L20496:
	move.l	U101030.l,(a7)
	move.l	a6,-(a7)
	addi.l	#-40,(a7)
	jsr	L83880.l
	addq.l	#4,a7
	move.l	T87150.l,(a7)
	bsr  	L19136
	bsr.s	L20414
	tst.w	d0
	bne.s	L20540
	jsr	L67118.l
L20540:
	move.l	a6,(a7)
	addi.l	#-40,(a7)
	move.l	U101030.l,-(a7)
	jsr	L77716.l
	addq.l	#4,a7
	cmp.w	#-1,d0
	bgt.s	L20574
	jsr	L67118.l
L20574:
	jsr	L61834.l
	unlk	a6
	rts

L20584:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	move.l	#L36478,(a7)
	jsr	L9036.l
	movea.l	#U100754,a5
	tst.b	(a5)
	beq.s	L20652
	cmpi.b	#58,1(a5)
	bne.s	L20652
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,(a7)
	addi.w	#-65,(a7)
	jsr	L77640.l
	cmp.w	#-1,d0
	bgt.s	L20650
	jsr	L67118.l
L20650:
	addq.l	#2,a5
L20652:
	tst.b	(a5)
	bne.s	L20664
	move.b	#92,(a5)
	clr.b	1(a5)
L20664:
	move.l	a5,(a7)
	jsr	L77588.l
	cmp.w	#-1,d0
	bgt.s	L20684
	jsr	L67118.l
L20684:
	jsr	L61834.l
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L20700:
	link	a6,#-68
	jsr	L77380.l
	add.w	#65,d0
	move.b	d0,-64(a6)
	move.b	#58,-63(a6)
	jsr	L77380.l
	move.w	d0,(a7)
	addq.w	#1,(a7)
	move.l	a6,-(a7)
	addi.l	#-62,(a7)
	jsr	L77612.l
	addq.l	#4,a7
	move.l	a6,(a7)
	addi.l	#-64,(a7)
	jsr	L62012.l
	move.w	d0,U101046.l
	unlk	a6
	rts

L20774:
	link	a6,#-54
	move.l	a6,(a7)
	addi.l	#-50,(a7)
	jsr	L77398.l
	jsr	L64732.l
	clr.w	(a7)
	move.l	U101030.l,-(a7)
	jsr	L77422.l
	addq.l	#4,a7
	cmp.w	#-1,d0
	ble.s	L20876
L20820:
	jsr	L64160.l
	move.w	d0,(a7)
	move.l	a6,-(a7)
	addi.l	#-20,(a7)
	jsr	L62012.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64276.l
	jsr	L77450.l
	cmp.w	#-1,d0
	ble.s	L20876
	bra.s	L20820

L20876:
	unlk	a6
	rts

L20880:
	link	a6,#-6
	jsr	L61884.l
	tst.w	d0
	beq.s	L20908
	jsr	L9350.l
	jsr	L9388.l
	bra.s	L20920

L20908:
	move.l	#L36478,(a7)
	jsr	L9036.l
L20920:
	movea.l	U101030.l,a0
	tst.b	(a0)
	beq.s	L20956
	movea.l	U101030.l,a0
	cmpi.b	#58,1(a0)
	bne.s	L20992
	movea.l	U101030.l,a0
	tst.b	2(a0)
	bne.s	L20992
L20956:
	move.l	T87150.l,(a7)
	move.l	#T85023,-(a7)
	move.l	U101030.l,-(a7)
	jsr	L83706.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L83706.l
	addq.l	#4,a7
L20992:
	bsr  	L20774
	jsr	L64764.l
	unlk	a6
	rts

L21006:
	link	a6,#-4
	moveq	#1,d0
	unlk	a6
	rts

L21016:
	link	a6,#-4
	movem.l	d7/a5,-(a7)
	jsr	L16174.l
	jsr	L16256.l
	move.l	d0,-4(a6)
	jsr	L16174.l
	jsr	L16256.l
	move.l	d0,(a7)
	move.l	-4(a6),-(a7)
	jsr	L33606.l
	addq.l	#4,a7
	movea.l	d0,a5
	move.w	(a5),d0
	add.w	U100970.l,d0
	movea.l	8(a6),a1
	move.w	d0,(a1)
	addq.l	#2,8(a6)
	addq.l	#2,a5
	move.w	(a5),d0
	add.w	U100972.l,d0
	movea.l	8(a6),a1
	move.w	d0,(a1)
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L21112:
	link	a6,#-4
	jsr	L16174.l
	move.l	#-1275068345,-(a7)
	jsr	L16256.l
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,(a7)
	jsr	L36300.l
	move.l	d0,-(a7)
	move.l	#-1275068343,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	moveq	#10,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	unlk	a6
	rts

L21208:
	link	a6,#-8
	jsr	L16174.l
	move.l	T85048.l,-(a7)
	jsr	L16256.l
	move.l	d0,-4(a6)
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L21252
	jsr	L67118.l
L21252:
	move.l	-4(a6),-(a7)
	movea.l	8(a6),a0
	jsr	(a0)
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	unlk	a6
	rts

L21278:
	link	a6,#-4
	move.l	#L33910,(a7)
	bsr.s	L21208
	unlk	a6
	rts

L21294:
	link	a6,#-4
	move.l	#L33964,(a7)
	bsr.s	L21208
	unlk	a6
	rts

L21310:
	link	a6,#-4
	move.w	U98718.l,(a7)
	move.l	T87350.l,-(a7)
	jsr	L62012.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	cmp.w	U100984.l,d0
	beq.s	L21356
	clr.w	d0
	bra.s	L21358

L21356:
	moveq	#1,d0
L21358:
	unlk	a6
	rts

L21362:
	link	a6,#-4
	clr.w	d0
	move.w	d0,U99882.l
	move.w	d0,U99878.l
	move.w	d0,U99876.l
	move.w	d0,U99874.l
	move.w	d0,U99872.l
	move.w	#11,U101066.l
	bsr.s	L21310
	tst.w	d0
	beq.s	L21416
	moveq	#3,d0
	bra.s	L21418

L21416:
	moveq	#2,d0
L21418:
	move.w	d0,U101076.l
	move.w	#4,U101068.l
	move.w	#2,U101072.l
	bsr  	L22312
	unlk	a6
	rts

L21448:
	link	a6,#-6
	cmpi.w	#-1,12(a6)
	beq.s	L21478
	move.w	12(a6),(a7)
	jsr	L33316.l
	move.w	12(a6),(a7)
	bsr  	L27190
L21478:
	move.w	#16,U101066.l
	move.w	#1,U101068.l
	clr.w	U101072.l
	move.w	10(a6),U99868.l
	clr.w	U99870.l
	jsr	L37312.l
	move.w	U100566.l,U91964.l
	move.w	#15,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	8(a6),U98410.l
	jsr	L37312.l
	move.w	U98720.l,d0
	move.w	d0,U91962.l
	cmp.w	U101134.l,d0
	bne.s	L21698
	move.l	T87362.l,(a7)
	jsr	L62012.l
	move.w	d0,(a7)
	move.l	T87354.l,-(a7)
	jsr	L62012.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,-2(a6)
	beq.s	L21698
	move.w	-2(a6),(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L21698
	move.w	#113,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	-2(a6),(a7)
	jsr	L65532.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,U98410.l
	jsr	L37312.l
L21698:
	unlk	a6
	rts

L21702:
	link	a6,#-6
	move.w	U92050.l,-2(a6)
	move.w	8(a6),d0
	move.w	d0,U92050.l
	move.w	d0,U98410.l
	move.w	#32,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	jsr	L37312.l
	move.w	-2(a6),d0
	unlk	a6
	rts

L21766:
	link	a6,#-6
	move.w	#25,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	8(a6),U98410.l
	jsr	L37312.l
	move.w	U92052.l,-2(a6)
	move.w	U98720.l,U92052.l
	move.w	-2(a6),d0
	unlk	a6
	rts

L21832:
	link	a6,#-6
	move.w	#23,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	8(a6),U98410.l
	jsr	L37312.l
	move.w	U92054.l,-2(a6)
	move.w	U98720.l,U92054.l
	move.w	-2(a6),d0
	unlk	a6
	rts

L21898:
	link	a6,#-6
	move.w	#24,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	8(a6),U98410.l
	jsr	L37312.l
	move.w	U92056.l,-2(a6)
	move.w	U98720.l,U92056.l
	move.w	-2(a6),d0
	unlk	a6
	rts

L21964:
	link	a6,#-4
	movem.l	d6-d7,-(a7)
	move.w	12(a6),d0
	move.w	d0,U91960.l
	move.w	d0,(a7)
	bsr  	L21766
	move.w	8(a6),d0
	move.w	d0,U91956.l
	move.w	d0,(a7)
	bsr  	L21832
	move.w	10(a6),d0
	move.w	d0,U91958.l
	move.w	d0,(a7)
	bsr.s	L21898
	cmpi.w	#4,U91956.l
	bne  	L22282
	move.l	T87358.l,(a7)
	jsr	L62012.l
	move.w	d0,(a7)
	move.l	T87354.l,-(a7)
	jsr	L62012.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,-2(a6)
	beq  	L22282
	move.w	-2(a6),(a7)
	jsr	L65322.l
	tst.w	d0
	bne  	L22282
	move.w	-2(a6),(a7)
	jsr	L6536.l
	cmp.w	#16,d0
	bne  	L22282
	clr.w	d7
	bra  	L22246

L22116:
	move.w	-2(a6),(a7)
	move.w	d7,-(a7)
	addq.w	#1,(a7)
	jsr	L65756.l
	addq.l	#2,a7
	move.w	d0,-4(a6)
	move.w	d0,(a7)
	jsr	L65356.l
	tst.w	d0
	beq  	L22282
	move.l	#0,-(a7)
	move.w	-4(a6),-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L22282
	move.l	#-65456,-(a7)
	move.w	-4(a6),-(a7)
	jsr	L65532.l
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L22282
	move.w	-4(a6),(a7)
	jsr	L65532.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U98410,a0
	move.w	(a7)+,(a0)
	addq.w	#1,d7
L22246:
	cmp.w	#16,d7
	blt  	L22116
	move.w	#112,U101066.l
	clr.w	U101068.l
	move.w	#16,U101072.l
	jsr	L37312.l
L22282:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L22292:
	link	a6,#-4
	jsr	L48260.l
	jsr	L37312.l
	unlk	a6
	rts

L22312:
	link	a6,#-4
	bsr.s	L22292
	jsr	L33100.l
	move.w	#1,U92038.l
	jsr	L47940.l
	jsr	L61834.l
	unlk	a6
	rts

L22348:
	link	a6,#-4
	jsr	L48234.l
	jsr	L33144.l
	unlk	a6
	rts

L22368:
	link	a6,#-4
	move.w	#1,(a7)
	bsr  	L21832
	move.w	#1,(a7)
	bsr  	L21702
	unlk	a6
	rts

L22392:
	link	a6,#-4
	movea.l	8(a6),a0
	move.w	(a0),U100970.l
	movea.l	8(a6),a0
	move.w	2(a0),U100972.l
	movea.l	8(a6),a0
	move.w	4(a0),d0
	cmp.w	U100974.l,d0
	bne.s	L22450
	movea.l	8(a6),a0
	move.w	6(a0),d0
	cmp.w	U100976.l,d0
	beq.s	L22482
L22450:
	movea.l	8(a6),a0
	move.w	6(a0),(a7)
	movea.l	8(a6),a0
	move.w	4(a0),-(a7)
	jsr	L32390.l
	addq.l	#2,a7
	move.w	#1,U92032.l
L22482:
	movea.l	8(a6),a0
	move.w	4(a0),U100974.l
	movea.l	8(a6),a0
	move.w	6(a0),U100976.l
	move.w	U91960.l,(a7)
	move.w	U91958.l,-(a7)
	move.w	U91956.l,-(a7)
	bsr  	L21964
	addq.l	#4,a7
	jsr	L33352.l
	move.w	d0,(a7)
	move.w	U91964.l,-(a7)
	move.w	U91962.l,-(a7)
	bsr  	L21448
	addq.l	#4,a7
	unlk	a6
	rts

L22560:
	link	a6,#-4
	tst.w	U92032.l
	beq.s	L22584
	clr.w	U92032.l
	jsr	L32596.l
L22584:
	unlk	a6
	rts

L22588:
	link	a6,#-4
	move.w	10(a6),U101154.l
	move.w	8(a6),U101044.l
	move.w	14(a6),U100672.l
	move.w	12(a6),U101498.l
	unlk	a6
	rts

L22628:
	link	a6,#-4
	move.w	U91970.l,d0
	unlk	a6
	rts

L22642:
	link	a6,#-4
	move.w	U91972.l,d0
	unlk	a6
	rts

L22656:
	link	a6,#-4
	move.w	U91980.l,d0
	unlk	a6
	rts

L22670:
	link	a6,#-8
	move.l	10(a6),-4(a6)
	cmpi.w	#1,8(a6)
	bne.s	L22712
	move.l	#U92058,(a7)
	move.l	10(a6),-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	bra.s	L22726

L22712:
	tst.w	8(a6)
	bne.s	L22726
	move.l	#U92058,-4(a6)
L22726:
	move.w	#129,U101066.l
	move.w	#2,U101068.l
	move.w	#1,U101072.l
	move.w	#1,U98410.l
	movea.l	-4(a6),a0
	move.w	(a0),U99868.l
	movea.l	-4(a6),a0
	move.w	2(a0),U99870.l
	movea.l	-4(a6),a0
	move.w	(a0),d0
	movea.l	-4(a6),a1
	move.w	4(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,U99872.l
	movea.l	-4(a6),a0
	move.w	2(a0),d0
	movea.l	-4(a6),a1
	move.w	6(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,U99874.l
	jsr	L37312.l
	unlk	a6
	rts

L22840:
	link	a6,#-4
	move.l	8(a6),(a7)
	move.w	#1,-(a7)
	bsr  	L22670
	addq.l	#2,a7
	unlk	a6
	rts

L22862:
	link	a6,#-4
	movea.l	8(a6),a0
	move.w	16(a6),d0
	move.w	d0,4(a0)
	add.w	#15,d0
	ext.l	d0
	divs	#16,d0
	movea.l	8(a6),a1
	move.w	d0,8(a1)
	movea.l	8(a6),a0
	move.w	18(a6),6(a0)
	movea.l	8(a6),a0
	clr.w	10(a0)
	movea.l	8(a6),a0
	move.w	U101478.l,12(a0)
	movea.l	8(a6),a0
	move.l	12(a6),(a0)
	unlk	a6
	rts

L22938:
	link	a6,#-6
	move.l	#U98410,(a7)
	jsr	L37408.l
	move.l	#U98720,(a7)
	jsr	L37440.l
	move.l	#U99868,(a7)
	jsr	L37392.l
	move.l	#U100566,(a7)
	jsr	L37424.l
	move.w	#1,U98410.l
	move.w	#1,U98412.l
	move.w	#1,U98414.l
	move.w	#1,U98416.l
	move.w	#1,U98418.l
	move.w	#1,U98420.l
	move.w	#1,U98422.l
	move.w	#1,U98424.l
	move.w	#1,U98426.l
	move.w	#1,U98428.l
	move.w	#2,U98430.l
	move.w	#100,U101066.l
	clr.w	U101068.l
	move.w	#11,U101072.l
	move.w	8(a6),U101078.l
	jsr	L37312.l
	move.w	U98720.l,d0
	addq.w	#1,d0
	move.w	d0,U99806.l
	move.w	U98722.l,d0
	addq.w	#1,d0
	move.w	d0,U101056.l
	move.w	U98746.l,d0
	subq.w	#1,d0
	move.w	d0,U101126.l
	move.w	d0,U101124.l
	move.w	#1000,U101128.l
	move.w	#4,U101130.l
	move.w	U98742.l,U101132.l
	move.w	U98744.l,U101142.l
	move.w	#7,U101134.l
	move.w	U98734.l,U101136.l
	bne.s	L23226
	move.w	#39,U101136.l
L23226:
	move.w	U98726.l,U101138.l
	move.w	U98728.l,U101140.l
	move.w	U101140.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	move.w	U101138.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,U100900.l
	clr.w	U101478.l
	move.w	U98746.l,-2(a6)
	bra.s	L23326

L23316:
	addq.w	#1,U101478.l
	asr	-2(a6)
L23326:
	cmpi.w	#1,-2(a6)
	bgt.s	L23316
	move.w	U100568.l,U91988.l
	move.w	#38,U101066.l
	clr.w	U101068.l
	clr.w	U101072.l
	jsr	L37312.l
	move.w	U100568.l,U91990.l
	move.l	#U91976,(a7)
	move.l	#U91974,-(a7)
	move.l	#U91984,-(a7)
	move.l	#U91982,-(a7)
	move.w	U91988.l,-(a7)
	bsr  	L23592
	adda.l	#14,a7
	move.l	#U91972,(a7)
	move.l	#U91970,-(a7)
	move.l	#U91980,-(a7)
	move.l	#U91978,-(a7)
	move.w	U91990.l,-(a7)
	bsr  	L23592
	adda.l	#14,a7
	move.w	U99806.l,d0
	ext.l	d0
	divs	U91970.l,d0
	move.w	d0,U91968.l
	move.w	U101056.l,d0
	ext.l	d0
	divs	U91972.l,d0
	move.w	d0,U91966.l
	clr.w	U92032.l
	clr.w	U92034.l
	unlk	a6
	rts

L23516:
	link	a6,#-4
	cmpi.w	#2,8(a6)
	bne.s	L23536
	move.w	U101132.l,d0
	bra.s	L23554

L23536:
	cmpi.w	#3,8(a6)
	bne.s	L23552
	move.w	U101142.l,d0
	bra.s	L23554

L23552:
	moveq	#1,d0
L23554:
	unlk	a6
	rts

L23558:
	link	a6,#-4
	move.w	#101,U101066.l
	clr.w	U101068.l
	clr.w	U101072.l
	jsr	L37312.l
	unlk	a6
	rts

L23592:
	link	a6,#-4
	move.w	#12,U101066.l
	move.w	#1,U101068.l
	clr.w	U101072.l
	clr.w	U99868.l
	move.w	8(a6),U99870.l
	jsr	L37312.l
	movea.l	10(a6),a0
	move.w	U100566.l,(a0)
	movea.l	14(a6),a0
	move.w	U100568.l,(a0)
	movea.l	18(a6),a0
	move.w	U100570.l,(a0)
	movea.l	22(a6),a0
	move.w	U100572.l,(a0)
	unlk	a6
	rts

L23682:
	link	a6,#-10
	move.w	8(a6),(a7)
	bsr  	L21702
	move.w	d0,-6(a6)
	move.w	10(a6),(a7)
	bsr  	L21832
	move.w	d0,-4(a6)
	tst.w	12(a6)
	beq.s	L23728
	move.w	12(a6),(a7)
	bsr  	L21898
	move.w	d0,-2(a6)
L23728:
	move.w	14(a6),U99868.l
	move.w	16(a6),U99870.l
	move.w	14(a6),d0
	add.w	18(a6),d0
	subq.w	#1,d0
	move.w	d0,U99872.l
	move.w	16(a6),d0
	add.w	20(a6),d0
	subq.w	#1,d0
	move.w	d0,U99874.l
	move.w	#114,U101066.l
	move.w	#2,U101068.l
	clr.w	U101072.l
	bsr  	L22292
	move.w	-6(a6),(a7)
	bsr  	L21702
	move.w	-4(a6),(a7)
	bsr  	L21832
	tst.w	12(a6)
	beq.s	L23832
	move.w	-2(a6),(a7)
	bsr  	L21898
L23832:
	unlk	a6
	rts

L23836:
	link	a6,#-4
	move.w	U101056.l,(a7)
	move.w	U99806.l,-(a7)
	clr.l	-(a7)
	move.l	#U91992,-(a7)
	bsr  	L22862
	adda.l	#10,a7
	move.w	U101056.l,(a7)
	move.w	U99806.l,-(a7)
	clr.l	-(a7)
	move.l	#U92012,-(a7)
	bsr  	L22862
	adda.l	#10,a7
	move.w	10(a6),U99868.l
	move.w	12(a6),U99870.l
	move.w	10(a6),d0
	add.w	18(a6),d0
	subq.w	#1,d0
	move.w	d0,U99872.l
	move.w	12(a6),d0
	add.w	20(a6),d0
	subq.w	#1,d0
	move.w	d0,U99874.l
	move.w	14(a6),U99876.l
	move.w	16(a6),U99878.l
	move.w	14(a6),d0
	add.w	18(a6),d0
	subq.w	#1,d0
	move.w	d0,U99880.l
	move.w	16(a6),d0
	add.w	20(a6),d0
	subq.w	#1,d0
	move.w	d0,U99882.l
	move.w	8(a6),U98410.l
	bsr  	L24230
	unlk	a6
	rts

L24012:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	movea.l	8(a6),a5
	jsr	L48260.l
	move.w	#8,U101066.l
	move.w	#1,U101068.l
	move.w	16(a6),U101072.l
	move.w	18(a6),U99868.l
	bra.s	L24128

L24064:
	move.w	14(a6),d0
	add.w	d0,20(a6)
	move.w	20(a6),U99870.l
	clr.w	d7
	bra.s	L24108

L24084:
	move.b	0(a5,d7.w),d0
	ext.w	d0
	and.w	#255,d0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#U98410,a1
	move.w	d0,(a1)
	addq.w	#1,d7
L24108:
	cmp.w	16(a6),d7
	blt.s	L24084
	jsr	L37312.l
	move.w	12(a6),d0
	ext.l	d0
	adda.l	d0,a5
L24128:
	move.w	20(a6),d0
	cmp.w	22(a6),d0
	blt.s	L24064
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L24148:
	link	a6,#-4
	jsr	L48260.l
	move.w	10(a6),U99868.l
	bsr  	L22656
	add.w	12(a6),d0
	move.w	d0,U99870.l
	move.b	9(a6),d0
	ext.w	d0
	and.w	#255,d0
	move.w	d0,U98410.l
	move.w	#8,U101066.l
	move.w	#1,U101068.l
	move.w	#1,U101072.l
	jsr	L37312.l
	unlk	a6
	rts

L24230:
	link	a6,#-4
	move.w	#109,U101066.l
	move.w	#4,U101068.l
	move.w	#1,U101072.l
	move.l	#U91992,(a7)
	jsr	L37456.l
	move.l	#U92012,(a7)
	jsr	L37472.l
	bsr  	L22292
	unlk	a6
	rts

L24290:
	link	a6,#-4
	move.l	10(a6),U92042.l
	move.w	8(a6),U92036.l
	move.w	#1,U92038.l
	clr.w	U92040.l
	unlk	a6
	rts

L24328:
	link	a6,#-12
	tst.w	U92036.l
	beq  	L24500
	tst.w	U92038.l
	beq  	L24500
	clr.w	U92038.l
	clr.w	d0
	move.w	d0,-6(a6)
	move.w	d0,-8(a6)
	move.w	U99806.l,-4(a6)
	move.w	U101056.l,-2(a6)
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	8(a6),-(a7)
	jsr	L49946.l
	addq.l	#4,a7
	tst.w	d0
	beq.s	L24500
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	#2,-(a7)
	bsr  	L22670
	addq.l	#2,a7
	jsr	L33144.l
	cmpi.w	#2,U92036.l
	bne.s	L24452
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	T87318.l,-(a7)
	bsr  	L25344
	addq.l	#4,a7
	bra.s	L24472

L24452:
	move.l	U92042.l,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.w	#1,-(a7)
	bsr  	L24620
	addq.l	#6,a7
L24472:
	move.w	-4(a6),U92046.l
	move.w	-2(a6),U92048.l
	jsr	L33100.l
	clr.w	(a7)
	bsr  	L22670
L24500:
	unlk	a6
	rts

L24504:
	link	a6,#-12
	tst.w	U92040.l
	bne.s	L24616
	jsr	L33130.l
	tst.w	U92036.l
	beq.s	L24610
	tst.w	U99190.l
	bne.s	L24610
	move.w	8(a6),-8(a6)
	move.w	10(a6),-6(a6)
	cmpi.w	#2,U92036.l
	bne.s	L24578
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	T87318.l,-(a7)
	bsr  	L24872
	addq.l	#4,a7
	bra.s	L24610

L24578:
	move.w	U92046.l,-4(a6)
	move.w	U92048.l,-2(a6)
	move.l	U92042.l,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	clr.w	-(a7)
	bsr.s	L24620
	addq.l	#6,a7
L24610:
	jsr	L33100.l
L24616:
	unlk	a6
	rts

L24620:
	link	a6,#0
	movem.l	d7/a4-a5,-(a7)
	movea.l	10(a6),a0
	move.w	6(a0),(a7)
	movea.l	10(a6),a0
	move.w	4(a0),-(a7)
	clr.l	-(a7)
	moveq	#1,d0
	sub.w	8(a6),d0
	muls	#20,d0
	add.l	#U91992,d0
	move.l	d0,-(a7)
	bsr  	L22862
	adda.l	#10,a7
	movea.l	10(a6),a0
	move.w	6(a0),(a7)
	movea.l	10(a6),a0
	move.w	4(a0),-(a7)
	move.l	14(a6),-(a7)
	move.w	8(a6),d0
	muls	#20,d0
	add.l	#U91992,d0
	move.l	d0,-(a7)
	bsr  	L22862
	adda.l	#10,a7
	move.w	8(a6),d0
	asl.w	#3,d0
	ext.l	d0
	movea.l	d0,a4
	adda.l	#U99868,a4
	moveq	#1,d0
	sub.w	8(a6),d0
	asl.w	#3,d0
	ext.l	d0
	movea.l	d0,a5
	adda.l	#U99868,a5
	movea.l	10(a6),a0
	move.w	(a0),(a5)
	movea.l	10(a6),a0
	move.w	2(a0),2(a5)
	movea.l	10(a6),a0
	move.w	(a0),d0
	movea.l	10(a6),a1
	move.w	4(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,4(a5)
	movea.l	10(a6),a0
	move.w	2(a0),d0
	movea.l	10(a6),a1
	move.w	6(a1),d1
	add.w	d1,d0
	subq.w	#1,d0
	move.w	d0,6(a5)
	clr.w	(a4)
	clr.w	2(a4)
	movea.l	10(a6),a0
	move.w	4(a0),d0
	subq.w	#1,d0
	move.w	d0,4(a4)
	movea.l	10(a6),a0
	move.w	6(a0),d0
	subq.w	#1,d0
	move.w	d0,6(a4)
	move.w	#3,U98410.l
	bsr  	L24230
	tst.l	(a7)+
	movem.l	(a7)+,a4-a5
	unlk	a6
	rts

L24872:
	link	a6,#-190
	clr.w	(a7)
	move.l	8(a6),-(a7)
	jsr	L77468.l
	addq.l	#4,a7
	move.w	d0,-184(a6)
	cmp.w	#-1,d0
	bgt.s	L24906
	jsr	L69438.l
L24906:
	move.w	-184(a6),(a7)
	move.w	#10,-(a7)
	move.l	a6,-(a7)
	addi.l	#-180,(a7)
	jsr	L77520.l
	addq.l	#6,a7
	cmp.w	#-1,d0
	bgt.s	L24942
	jsr	L69504.l
L24942:
	move.w	-180(a6),d0
	cmp.w	U101478.l,d0
	beq.s	L24960
	jsr	L69624.l
L24960:
	move.l	T87318.l,d0
	cmp.l	8(a6),d0
	beq.s	L25050
	move.l	12(a6),(a7)
	move.l	a6,-(a7)
	addi.l	#-178,(a7)
	jsr	L49856.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L25050
	move.w	#1,U92040.l
	move.l	a6,(a7)
	addi.l	#-178,(a7)
	jsr	L45542.l
	clr.w	U92040.l
	move.l	12(a6),(a7)
	move.l	a6,-(a7)
	addi.l	#-178,(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	bra.s	L25076

L25050:
	move.l	12(a6),(a7)
	addq.l	#4,(a7)
	move.l	a6,-(a7)
	addi.l	#-174,(a7)
	move.w	#4,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
L25076:
	movea.l	12(a6),a0
	tst.w	6(a0)
	beq  	L25242
	movea.l	12(a6),a0
	tst.w	4(a0)
	beq  	L25242
	movea.l	12(a6),a0
	move.w	2(a0),d0
	movea.l	12(a6),a1
	move.w	6(a1),d1
	add.w	d1,d0
	move.w	d0,-182(a6)
	movea.l	12(a6),a0
	move.w	#1,6(a0)
	movea.l	12(a6),a0
	move.w	4(a0),d0
	add.w	#15,d0
	ext.l	d0
	divs	#16,d0
	muls	U101478.l,d0
	asl.w	#1,d0
	move.w	d0,-186(a6)
	bra.s	L25228

L25164:
	move.w	-184(a6),(a7)
	move.w	-186(a6),-(a7)
	move.l	a6,-(a7)
	addi.l	#-180,(a7)
	jsr	L77520.l
	addq.l	#6,a7
	cmp.w	#-1,d0
	bgt.s	L25200
	jsr	L69504.l
L25200:
	move.l	a6,(a7)
	addi.l	#-180,(a7)
	move.l	12(a6),-(a7)
	clr.w	-(a7)
	bsr  	L24620
	addq.l	#6,a7
	movea.l	12(a6),a0
	addq.w	#1,2(a0)
L25228:
	movea.l	12(a6),a0
	move.w	2(a0),d0
	cmp.w	-182(a6),d0
	blt.s	L25164
L25242:
	move.w	-184(a6),(a7)
	jsr	L77496.l
	unlk	a6
	rts

L25256:
	link	a6,#-6
	move.w	14(a6),(a7)
	move.w	12(a6),-(a7)
	move.l	8(a6),-(a7)
	jsr	L77554.l
	addq.l	#6,a7
	move.w	d0,-2(a6)
	cmp.w	#-1,d0
	bgt.s	L25296
	jsr	L69504.l
L25296:
	move.w	-2(a6),d0
	cmp.w	12(a6),d0
	bge.s	L25340
	cmpi.w	#2,U92036.l
	bne.s	L25334
	clr.w	(a7)
	jsr	L49422.l
	clr.l	(a7)
	clr.w	-(a7)
	bsr  	L24290
	addq.l	#2,a7
L25334:
	jsr	L67570.l
L25340:
	unlk	a6
	rts

L25344:
	link	a6,#-190
	clr.w	(a7)
	move.l	8(a6),-(a7)
	jsr	L77664.l
	addq.l	#4,a7
	move.w	d0,-184(a6)
	cmp.w	#-1,d0
	bgt.s	L25378
	jsr	L69438.l
L25378:
	move.w	U101478.l,-180(a6)
	move.l	a6,(a7)
	addi.l	#-178,(a7)
	move.l	12(a6),-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	-184(a6),(a7)
	move.w	#10,-(a7)
	move.l	a6,-(a7)
	addi.l	#-180,(a7)
	bsr  	L25256
	addq.l	#6,a7
	movea.l	12(a6),a0
	move.w	6(a0),d0
	movea.l	12(a6),a1
	move.w	2(a1),d1
	add.w	d1,d0
	move.w	d0,-182(a6)
	movea.l	12(a6),a0
	move.w	#1,6(a0)
	movea.l	12(a6),a0
	move.w	4(a0),d0
	add.w	#15,d0
	ext.l	d0
	divs	#16,d0
	muls	U101478.l,d0
	asl.w	#1,d0
	move.w	d0,-186(a6)
	bra.s	L25548

L25496:
	move.l	a6,(a7)
	addi.l	#-180,(a7)
	move.l	12(a6),-(a7)
	move.w	#1,-(a7)
	bsr  	L24620
	addq.l	#6,a7
	move.w	-184(a6),(a7)
	move.w	-186(a6),-(a7)
	move.l	a6,-(a7)
	addi.l	#-180,(a7)
	bsr  	L25256
	addq.l	#6,a7
	movea.l	12(a6),a0
	addq.w	#1,2(a0)
L25548:
	movea.l	12(a6),a0
	move.w	2(a0),d0
	cmp.w	-182(a6),d0
	blt.s	L25496
	move.w	-184(a6),(a7)
	jsr	L77496.l
	cmp.w	#-1,d0
	bgt.s	L25584
	jsr	L69570.l
L25584:
	unlk	a6
	rts

L25588:
	link	a6,#-4
	move.l	#L24872,(a7)
	bsr.s	L25628
	move.w	#1,U92038.l
	unlk	a6
	rts

L25612:
	link	a6,#-4
	move.l	#L25344,(a7)
	bsr.s	L25628
	unlk	a6
	rts

L25628:
	link	a6,#-12
	move.l	T87314.l,(a7)
	jsr	L19136.l
	jsr	L48234.l
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	#U100970,-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	jsr	L33144.l
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.l	#U100754,-(a7)
	movea.l	8(a6),a0
	jsr	(a0)
	addq.l	#8,a7
	jsr	L33100.l
	jsr	L47940.l
	jsr	L61834.l
	unlk	a6
	rts

L25718:
	link	a6,#-4
	move.w	U91962.l,d0
	unlk	a6
	rts

L25732:
	link	a6,#-4
	move.w	U91964.l,d0
	unlk	a6
	rts

L25746:
	link	a6,#-4
	move.w	U91956.l,d0
	unlk	a6
	rts

L25760:
	link	a6,#-4
	move.w	U91958.l,d0
	unlk	a6
	rts

L25774:
	link	a6,#-4
	move.w	U91960.l,d0
	unlk	a6
	rts

L25788:
	link	a6,#-6
	move.w	#1,(a7)
	bsr  	L21702
	move.w	d0,-2(a6)
	jsr	L33352.l
	move.w	d0,(a7)
	bsr  	L27190
	move.w	#6,U101066.l
	move.w	#2,U101068.l
	clr.w	U101072.l
	move.w	8(a6),U99868.l
	move.w	10(a6),U99870.l
	move.w	12(a6),U99872.l
	move.w	14(a6),U99874.l
	bsr  	L22292
	move.w	-2(a6),(a7)
	bsr  	L21702
	unlk	a6
	rts

L25886:
	link	a6,#-6
L25890:
	move.w	#-1,(a7)
	move.w	#32,-(a7)
	jsr	L188.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L25890
	jsr	L16090.l
	clr.w	-2(a6)
	bra.s	L25964

L25922:
	movea.w	-2(a6),a0
	adda.l	#U99606,a0
	move.l	a0,-(a7)
	move.w	#255,-(a7)
	jsr	L16278.l
	addq.l	#2,a7
	ext.w	d0
	movea.l	(a7)+,a0
	move.b	d0,(a0)
	addq.w	#1,-2(a6)
	tst.w	U100896.l
	beq.s	L25972
L25964:
	cmpi.w	#200,-2(a6)
	blt.s	L25922
L25972:
	move.l	#U99606,(a7)
	move.w	#32,-(a7)
	jsr	L188.l
	addq.l	#2,a7
	jsr	L61834.l
	unlk	a6
	rts

L26000:
	link	a6,#-4
	jsr	L16090.l
	bsr  	L22348
	move.l	#U99868,(a7)
	bsr  	L21016
	bsr  	L21278
	add.w	U99868.l,d0
	subq.w	#1,d0
	move.w	d0,U99872.l
	bsr  	L21294
	move.w	d0,-(a7)
	move.w	U99870.l,d0
	sub.w	(a7)+,d0
	addq.w	#1,d0
	move.w	d0,U99874.l
	bsr  	L21310
	tst.w	d0
	beq.s	L26098
	move.w	#11,U101066.l
	move.w	#2,U101068.l
	move.w	#1,U101076.l
	bra.s	L26178

L26098:
	move.w	U99872.l,d0
	move.w	d0,U99880.l
	move.w	d0,U99876.l
	move.w	U99868.l,d0
	move.w	d0,U99884.l
	move.w	d0,U99872.l
	move.w	U99870.l,d0
	move.w	d0,U99886.l
	move.w	d0,U99882.l
	move.w	U99874.l,U99878.l
	move.w	#6,U101066.l
	move.w	#5,U101068.l
L26178:
	clr.w	U101072.l
	bsr  	L22312
	unlk	a6
	rts

L26192:
	link	a6,#-4
	jsr	L16090.l
	bsr  	L22348
	move.l	#U99868,(a7)
	bsr  	L21016
	bsr  	L21278
	move.w	d0,U99880.l
	bsr  	L21112
	move.w	d0,U98412.l
	bsr  	L21112
	move.w	d0,U98410.l
	bsr  	L21362
	unlk	a6
	rts

L26254:
	link	a6,#-4
	jsr	L16090.l
	bsr  	L22348
	move.l	#U99868,(a7)
	bsr  	L21016
	bsr  	L21278
	move.w	d0,U99876.l
	move.w	d0,U99880.l
	bsr  	L21310
	tst.w	d0
	beq.s	L26358
	clr.w	d0
	move.w	d0,U99878.l
	move.w	d0,U99874.l
	move.w	d0,U99872.l
	move.w	#11,U101066.l
	move.w	#3,U101068.l
	clr.w	U101072.l
	move.w	#4,U101076.l
	bsr  	L22312
	bra.s	L26376

L26358:
	clr.w	U98410.l
	move.w	#3600,U98412.l
	bsr  	L21362
L26376:
	unlk	a6
	rts

L26380:
	link	a6,#-8
	jsr	L16090.l
	move.w	U101130.l,(a7)
	jsr	L16278.l
	move.w	d0,-2(a6)
	move.w	-2(a6),(a7)
	bsr  	L23516
	move.w	d0,(a7)
	jsr	L16278.l
	move.w	d0,-4(a6)
	move.w	U101124.l,(a7)
	jsr	L16278.l
	move.w	d0,(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	bsr  	L21964
	addq.l	#4,a7
	jsr	L61834.l
	unlk	a6
	rts

L26464:
	link	a6,#-4
	move.w	U91956.l,(a7)
	jsr	L53070.l
	move.w	U91958.l,(a7)
	jsr	L53070.l
	move.w	U91960.l,(a7)
	jsr	L53070.l
	move.w	#3,(a7)
	jsr	L62166.l
	unlk	a6
	rts

L26518:
	link	a6,#-2
	movem.l	d6-d7,-(a7)
	jsr	L16090.l
	bsr  	L22348
	move.w	#73,-2(a6)
	clr.w	d7
	bra.s	L26576

L26546:
	tst.w	U100896.l
	beq.s	L26582
	move.w	d7,d0
	asl.w	#1,d0
	asl.w	#1,d0
	ext.l	d0
	add.l	#U99868,d0
	move.l	d0,(a7)
	bsr  	L21016
	addq.w	#1,d7
L26576:
	cmp.w	-2(a6),d7
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
	move.w	d0,U101066.l
	move.w	d7,U101068.l
	clr.w	U101072.l
	bsr  	L22312
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L26628:
	link	a6,#-4
	jsr	L16090.l
	bsr  	L22348
	move.l	#U99868,(a7)
	bsr  	L21016
	bsr  	L21278
	move.w	d0,U99872.l
	bsr  	L21294
	move.w	d0,U99874.l
	bsr  	L21310
	tst.w	d0
	beq.s	L26696
	clr.w	U101072.l
	move.w	#5,U101076.l
	bra.s	L26726

L26696:
	move.w	#2,U101072.l
	move.w	#6,U101076.l
	clr.w	U98410.l
	move.w	#3600,U98412.l
L26726:
	move.w	#11,U101066.l
	move.w	#2,U101068.l
	bsr  	L22312
	unlk	a6
	rts

L26750:
	link	a6,#-8
	jsr	L16090.l
	move.w	U101134.l,(a7)
	jsr	L16278.l
	move.w	d0,-2(a6)
	move.w	U101136.l,(a7)
	jsr	L16278.l
	move.w	d0,-4(a6)
	move.w	U101124.l,(a7)
	jsr	L16278.l
	move.w	d0,(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	bsr  	L21448
	addq.l	#4,a7
	jsr	L61834.l
	unlk	a6
	rts

L26830:
	link	a6,#-4
	move.w	U91962.l,(a7)
	jsr	L53070.l
	move.w	U91964.l,(a7)
	jsr	L53070.l
	jsr	L33352.l
	move.w	d0,(a7)
	jsr	L53070.l
	move.w	#3,(a7)
	jsr	L62166.l
	unlk	a6
	rts

L26886:
	link	a6,#-4
	move.w	#106,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	#63,(a7)
	jsr	L61658.l
	move.w	d0,U98410.l
	jsr	L37312.l
	move.w	U98720.l,U92034.l
	jsr	L61834.l
	unlk	a6
	rts

L26954:
	link	a6,#-4
	move.w	U92034.l,(a7)
	jsr	L61926.l
	unlk	a6
	rts

L26974:
	link	a6,#-16
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#2,(a7)
	jsr	L37552.l
	adda.l	#12,a7
	move.w	-2(a6),(a7)
	jsr	L53070.l
	move.w	-4(a6),(a7)
	jsr	L53070.l
	move.w	-6(a6),(a7)
	jsr	L53070.l
	move.w	-8(a6),(a7)
	jsr	L53070.l
	move.w	U101124.l,(a7)
	jsr	L53070.l
	jsr	L37600.l
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-12(a6)
	move.l	-12(a6),(a7)
	jsr	L52972.l
	move.l	U100900.l,(a7)
	jsr	L52972.l
	move.w	#7,(a7)
	jsr	L62166.l
	unlk	a6
	rts

L27114:
	link	a6,#-4
	move.w	8(a6),(a7)
	bsr  	L22938
	move.w	T84996.l,(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	bsr  	L21964
	addq.l	#4,a7
	move.w	#-1,(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	bsr  	L21448
	addq.l	#4,a7
	tst.w	U101078.l
	bne.s	L27176
	clr.w	d0
	bra.s	L27178

L27176:
	moveq	#1,d0
L27178:
	unlk	a6
	rts

	link	a6,#-4
	unlk	a6
	rts

L27190:
	link	a6,#-4
	move.w	#17,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	8(a6),U98410.l
	jsr	L37312.l
	unlk	a6
	rts

L27234:
	link	a6,#-10
	move.w	16(a6),(a7)
	andi.w	#255,(a7)
	bsr.s	L27190
	move.w	16(a6),d0
	asr.w	#8,d0
	cmp.w	#2,d0
	bne.s	L27266
	move.w	#3,(a7)
	bra.s	L27270

L27266:
	move.w	#1,(a7)
L27270:
	bsr  	L21702
	move.w	d0,-2(a6)
	move.w	#6,U101066.l
	move.w	#2,U101068.l
	clr.w	U101072.l
	move.w	U100970.l,d0
	add.w	8(a6),d0
	move.w	d0,U99868.l
	move.w	U100972.l,d0
	add.w	10(a6),d0
	move.w	d0,U99870.l
	move.w	U100970.l,d0
	add.w	12(a6),d0
	move.w	d0,U99872.l
	move.w	U100972.l,d0
	add.w	14(a6),d0
	move.w	d0,U99874.l
	bsr  	L22292
	move.w	#1,U92038.l
	move.w	-2(a6),(a7)
	bsr  	L21702
	unlk	a6
	rts

L27388:
	link	a6,#-4
	bsr  	L21310
	tst.w	d0
	beq.s	L27476
	bsr  	L22348
	move.w	#103,U101066.l
	move.w	#1,U101068.l
	move.w	#1,U101072.l
	move.w	#-1,U98410.l
	move.w	U100970.l,d0
	add.w	U99860.l,d0
	move.w	d0,U99868.l
	move.w	U100972.l,d0
	add.w	U100564.l,d0
	move.w	d0,U99870.l
	bsr  	L22312
L27476:
	unlk	a6
	rts

L27480:
	link	a6,#-4
	move.w	#14,U101066.l
	clr.w	U101068.l
	move.w	#4,U101072.l
	move.w	8(a6),U98410.l
	move.w	10(a6),U98412.l
	move.w	12(a6),U98414.l
	move.w	14(a6),U98416.l
	jsr	L37312.l
	unlk	a6
	rts

L27548:
	link	a6,#-4
	move.w	#26,U101066.l
	clr.w	U101068.l
	move.w	#2,U101072.l
	move.w	8(a6),U98410.l
	move.w	#1,U98412.l
	jsr	L37312.l
	move.l	#U98722,d0
	unlk	a6
	rts

L27606:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	btst	#7,d7
	beq.s	L27628
	or.w	#-256,d7
L27628:
	btst	#1,11(a6)
	beq.s	L27642
	move.w	d7,d0
	neg.w	d0
	bra.s	L27644

L27642:
	move.w	d7,d0
L27644:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L27654:
	link	a6,#-6
	movem.l	d4-d7/a5,-(a7)
	jsr	L34468.l
	tst.w	d0
	beq  	L28016
	move.w	U91962.l,-6(a6)
	move.w	U91964.l,-4(a6)
	move.w	#-1,(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	bsr  	L21448
	addq.l	#4,a7
	move.w	#3,(a7)
	bsr  	L21702
	move.w	d0,-2(a6)
	jsr	L33552.l
	move.w	d0,d5
	addq.w	#3,d5
	ext.l	d5
	divs	#6,d5
	ext.l	d5
	divs	#15,d5
	swap	d5
	jsr	L33552.l
	move.w	d0,d6
	addq.w	#3,d6
	move.w	d6,d0
	ext.l	d0
	divs	#90,d0
	move.w	d0,d6
	and.w	#1,d0
	beq.s	L27774
	eori.w	#15,d5
L27774:
	move.w	U101478.l,d0
	subq.w	#1,d0
	muls	#96,d0
	ext.l	d0
	movea.l	d0,a5
	move.w	d5,d0
	muls	#6,d0
	ext.l	d0
	adda.l	d0,a5
	adda.l	#T84610,a5
	subq.l	#1,a5
	move.w	U100970.l,d0
	add.w	U99860.l,d0
	move.w	d0,U99884.l
	move.w	d0,U99868.l
	move.w	U100972.l,d0
	add.w	U100564.l,d0
	move.w	d0,U99886.l
	move.w	d0,U99870.l
	moveq	#2,d7
	bra.s	L27958

L27860:
	move.w	d6,(a7)
	addq.l	#1,a5
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,-(a7)
	bsr  	L27606
	addq.l	#2,a7
	move.w	d0,-(a7)
	move.w	U100970.l,d0
	add.w	d0,(a7)
	move.w	U99860.l,d0
	add.w	d0,(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U99868,a0
	move.w	(a7)+,(a0)
	addq.w	#1,d7
	move.w	d6,(a7)
	addq.w	#1,(a7)
	addq.l	#1,a5
	move.b	(a5),d0
	ext.w	d0
	move.w	d0,-(a7)
	bsr  	L27606
	addq.l	#2,a7
	move.w	d0,-(a7)
	move.w	U100972.l,d0
	add.w	d0,(a7)
	move.w	U100564.l,d0
	add.w	d0,(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U99868,a0
	move.w	(a7)+,(a0)
	addq.w	#1,d7
L27958:
	cmp.w	#8,d7
	blt.s	L27860
	move.w	#6,U101066.l
	move.w	#5,U101068.l
	clr.w	U101072.l
	bsr  	L22292
	move.w	#-1,(a7)
	move.w	-4(a6),-(a7)
	move.w	-6(a6),-(a7)
	bsr  	L21448
	addq.l	#4,a7
	move.w	-2(a6),(a7)
	bsr  	L21702
L28016:
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7/a5
	unlk	a6
	rts

	link	a6,#-4
	unlk	a6
	rts

	link	a6,#-4
	unlk	a6
	rts

L28042:
	link	a6,#-4
	move.l	#U100970,(a7)
	bsr.s	L28066
	move.w	#1,U92038.l
	unlk	a6
	rts

L28066:
	link	a6,#-2
	movem.l	d7/a5,-(a7)
	movea.l	8(a6),a5
	jsr	L33160.l
	move.w	d0,(a7)
	bsr  	L21766
	move.w	d0,-2(a6)
	move.w	6(a5),(a7)
	move.w	4(a5),-(a7)
	move.w	2(a5),-(a7)
	move.w	(a5),-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	bsr  	L23682
	adda.l	#12,a7
	move.w	-2(a6),(a7)
	bsr  	L21766
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L28146:
	link	a6,#-4
	move.b	T84580.l,d0
	ext.w	d0
	unlk	a6
	rts

L28162:
	link	a6,#-4
	move.b	T84582.l,d0
	ext.w	d0
	unlk	a6
	rts

L28178:
	link	a6,#-4
	move.b	T84584.l,d0
	ext.w	d0
	unlk	a6
	rts

L28194:
	link	a6,#-4
	move.b	T84591.l,d0
	ext.w	d0
	unlk	a6
	rts

	link	a6,#-4
	move.b	T84592.l,d0
	ext.w	d0
	unlk	a6
	rts

L28226:
	link	a6,#-4
	move.b	T84597.l,d0
	ext.w	d0
	unlk	a6
	rts

L28242:
	link	a6,#-4
	move.b	T84598.l,d0
	ext.w	d0
	unlk	a6
	rts

L28258:
	link	a6,#-4
	move.b	T84599.l,d0
	ext.w	d0
	unlk	a6
	rts

L28274:
	link	a6,#-4
	move.b	T84600.l,d0
	ext.w	d0
	unlk	a6
	rts

L28290:
	link	a6,#-4
	move.b	T84601.l,d0
	ext.w	d0
	unlk	a6
	rts

L28306:
	link	a6,#-4
	move.b	T84602.l,d0
	ext.w	d0
	unlk	a6
	rts

L28322:
	link	a6,#-4
	move.b	T84603.l,d0
	ext.w	d0
	unlk	a6
	rts

L28338:
	link	a6,#-4
	move.b	T84604.l,d0
	ext.w	d0
	unlk	a6
	rts

L28354:
	link	a6,#-4
	move.b	T84605.l,d0
	ext.w	d0
	unlk	a6
	rts

L28370:
	link	a6,#-4
	move.b	T84607.l,d0
	ext.w	d0
	unlk	a6
	rts

L28386:
	link	a6,#-4
	move.b	T84586.l,d0
	ext.w	d0
	unlk	a6
	rts

L28402:
	link	a6,#-4
	move.w	#192,d0
	ext.l	d0
	divs	U101478.l,d0
	unlk	a6
	rts

L28422:
	link	a6,#-4
	bsr.s	L28402
	ext.l	d0
	divs	#2,d0
	unlk	a6
	rts

L28438:
	link	a6,#-2
	movem.l	d6-d7/a5,-(a7)
	movea.l	8(a6),a5
	jsr	L45356.l
	clr.w	(a7)
	move.l	a5,-(a7)
	jsr	L77612.l
	addq.l	#4,a7
	cmpi.w	#1,12(a6)
	bne.s	L28484
	move.l	T87150.l,(a7)
	bra.s	L28490

L28484:
	move.l	T87314.l,(a7)
L28490:
	move.l	#T85026,-(a7)
	move.l	a5,-(a7)
	jsr	L83706.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L83706.l
	addq.l	#4,a7
	clr.b	40(a5)
	jsr	L48330.l
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a5,-(a7)
	addi.l	#40,(a7)
	move.l	a5,-(a7)
	jsr	L1570.l
	addq.l	#8,a7
	move.l	a5,(a7)
	jsr	L83914.l
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
	move.l	#T85029,(a7)
	move.b	0(a5,d7.w),d0
	ext.w	d0
	move.w	d0,-(a7)
	jsr	L50940.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L28560
L28600:
	move.l	a5,(a7)
	addi.l	#40,(a7)
	move.l	a5,-(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.w	-2(a6),d0
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L28632:
	link	a6,#-4
	jsr	L15980.l
	move.w	d0,U92066.l
	jsr	L16090.l
	move.w	U101128.l,(a7)
	jsr	L16278.l
	move.w	d0,U92068.l
	move.w	U101128.l,(a7)
	jsr	L16278.l
	move.w	d0,U92070.l
	move.w	U101128.l,(a7)
	jsr	L16278.l
	move.w	d0,(a7)
	move.w	U92070.l,-(a7)
	move.w	U92068.l,-(a7)
	move.w	U92066.l,-(a7)
	jsr	L27480.l
	addq.l	#6,a7
	jsr	L61834.l
	unlk	a6
	rts

L28740:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	jsr	L15980.l
	move.w	d0,(a7)
	jsr	L27548.l
	movea.l	d0,a5
	move.w	(a5),(a7)
	jsr	L53070.l
	addq.l	#2,a5
	move.w	(a5),(a7)
	jsr	L53070.l
	addq.l	#2,a5
	move.w	(a5),(a7)
	jsr	L53070.l
	move.w	#3,(a7)
	jsr	L62166.l
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L28812:
	link	a6,#-6
	movem.l	d5-d7,-(a7)
	move.w	#1,-6(a6)
	move.w	#1,(a7)
	jsr	L61064.l
	move.w	d0,(a7)
	jsr	L8638.l
	jsr	L33352.l
	move.w	d0,-2(a6)
	move.w	#2,-4(a6)
	jsr	L33300.l
	bra.s	L28896

L28868:
	clr.w	-6(a6)
	bra.s	L28912

L28874:
	jsr	L33160.l
	move.w	d0,-2(a6)
	bra.s	L28912

L28886:
	move.w	#3,-4(a6)
	bra.s	L28912

	bra.s	L28912

L28896:
	tst.w	d0
	beq.s	L28868
	cmp.w	#2,d0
	beq.s	L28886
	cmp.w	#3,d0
	beq.s	L28874
L28912:
	jsr	L22348.l
	jsr	L9350.l
	jsr	L64224.l
	move.w	d0,d7
	bra.s	L28972

L28934:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
	jsr	L18616.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
	beq.s	L28972
	jsr	L76978.l
L28972:
	tst.w	d7
	bne.s	L28934
	jsr	L9388.l
	move.w	-4(a6),(a7)
	jsr	L21702.l
	move.w	d0,-4(a6)
	move.w	-2(a6),(a7)
	bsr  	L29170
	move.w	#8,U101066.l
	move.w	#1,U101068.l
	move.w	U99178.l,U101072.l
	move.w	U100970.l,d0
	add.w	U99860.l,d0
	move.w	d0,U99868.l
	move.w	U100972.l,d0
	add.w	U100564.l,d0
	move.w	d0,U99870.l
	clr.w	d6
	bra.s	L29104

L29070:
	movea.l	U101030.l,a0
	move.b	(a0),d0
	ext.w	d0
	and.w	#255,d0
	movea.w	d6,a1
	adda.l	a1,a1
	adda.l	#U98410,a1
	move.w	d0,(a1)
	addq.l	#1,U101030.l
	addq.w	#1,d6
L29104:
	cmp.w	U99178.l,d6
	bcs.s	L29070
	tst.w	-6(a6)
	beq.s	L29126
	jsr	L22312.l
	bra.s	L29144

L29126:
	jsr	L33100.l
	jsr	L47940.l
	jsr	L61834.l
L29144:
	move.w	-4(a6),(a7)
	jsr	L21702.l
	move.w	#1,(a7)
	bsr.s	L29170
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L29170:
	link	a6,#-4
	move.w	#22,U101066.l
	clr.w	U101068.l
	move.w	#1,U101072.l
	move.w	8(a6),U98410.l
	jsr	L37312.l
	unlk	a6
	rts

L29214:
	link	a6,#-22
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	jsr	L1514.l
	adda.l	#12,a7
	move.w	U100972.l,d0
	sub.w	d0,-6(a6)
	move.w	-6(a6),(a7)
	move.w	U100970.l,d0
	sub.w	d0,-8(a6)
	move.w	-8(a6),-(a7)
	jsr	L36410.l
	addq.l	#2,a7
	move.w	d0,-18(a6)
	beq.s	L29308
	move.l	#0,-12(a6)
	move.l	#0,-16(a6)
	bra  	L29456

L29308:
	jsr	L33882.l
	move.l	d0,-(a7)
	jsr	L33780.l
	move.l	d0,-(a7)
	move.w	-8(a6),d0
	move.w	U101120.l,d1
	asr.w	#1,d1
	sub.w	d1,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,-12(a6)
	jsr	L33896.l
	move.l	d0,-(a7)
	jsr	L34692.l
	move.l	d0,-(a7)
	jsr	L33780.l
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.w	U101122.l,d0
	asr.w	#1,d0
	sub.w	-6(a6),d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,-16(a6)
L29456:
	move.l	-12(a6),(a7)
	jsr	L52972.l
	move.l	-16(a6),(a7)
	jsr	L52972.l
	move.w	-4(a6),(a7)
	andi.w	#1,(a7)
	jsr	L60886.l
	jsr	L64746.l
	move.w	-4(a6),(a7)
	andi.w	#2,(a7)
	jsr	L60886.l
	jsr	L64746.l
	tst.w	-18(a6)
	beq.s	L29526
	clr.w	(a7)
	bra.s	L29530

L29526:
	move.w	#1,(a7)
L29530:
	jsr	L60886.l
	jsr	L64746.l
	move.w	#5,(a7)
	jsr	L62166.l
	unlk	a6
	rts

L29556:
	link	a6,#-4
	move.w	10(a6),d0
	muls	#24,d0
	add.l	U92072.l,d0
	add.l	#10,d0
	movea.l	d0,a0
	move.w	8(a6),(a0)
	unlk	a6
	rts

L29590:
	link	a6,#-6
	move.w	8(a6),d0
	muls	#24,d0
	add.l	U92072.l,d0
	add.l	#10,d0
	movea.l	d0,a0
	cmpi.w	#1,(a0)
	beq.s	L29626
	clr.w	d0
	bra.s	L29628

L29626:
	moveq	#1,d0
L29628:
	move.w	d0,-2(a6)
	move.w	8(a6),(a7)
	clr.w	-(a7)
	bsr.s	L29556
	addq.l	#2,a7
	move.w	-2(a6),d0
	unlk	a6
	rts

L29650:
	link	a6,#-4
	jsr	L9350.l
	move.l	8(a6),(a7)
	jsr	L52972.l
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L54740.l
	clr.b	U100763.l
	move.l	#U100754,(a7)
	movea.l	#ev_adrerr,a0
	move.w	12(a6),d1
	muls	#24,d1
	add.l	U92072.l,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	jsr	L9388.l
	unlk	a6
	rts

L29740:
	link	a6,#-6
	movea.l	#ev_adrerr,a0
	move.w	8(a6),d1
	muls	#24,d1
	add.l	U92072.l,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),(a7)
	move.l	U101030.l,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	move.l	U101030.l,(a7)
	jsr	L62012.l
	move.w	d0,(a7)
	jsr	L9468.l
	move.w	d0,-2(a6)
	movea.l	10(a6),a0
	move.l	U99602.l,(a0)
	move.w	-2(a6),d0
	unlk	a6
	rts

L29826:
	link	a6,#-4
	move.l	8(a6),U92072.l
	jsr	L34468.l
	tst.w	d0
	beq.s	L29854
	move.w	#8,(a7)
	bra.s	L29858

L29854:
	move.w	#9,(a7)
L29858:
	move.w	#1,-(a7)
	bsr  	L29556
	addq.l	#2,a7
	jsr	L33300.l
	move.w	d0,(a7)
	addi.w	#12,(a7)
	move.w	#1,-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#3,(a7)
	jsr	L34018.l
	move.l	d0,-(a7)
	bsr  	L29650
	addq.l	#4,a7
	move.w	#4,(a7)
	jsr	L34032.l
	move.l	d0,-(a7)
	bsr  	L29650
	addq.l	#4,a7
	move.w	#5,(a7)
	jsr	L33566.l
	move.l	d0,-(a7)
	bsr  	L29650
	addq.l	#4,a7
	unlk	a6
	rts

L29948:
	link	a6,#-12
	movem.l	d5-d7,-(a7)
	move.l	8(a6),U92072.l
	move.w	#16,(a7)
	bsr  	L29590
	tst.w	d0
	beq  	L30266
	jsr	L48374.l
	jsr	L48234.l
	jsr	L46108.l
	jsr	L48392.l
	move.w	#8,(a7)
	bsr  	L29590
	tst.w	d0
	beq.s	L30022
	jsr	L34440.l
	bra.s	L30040

L30022:
	move.w	#9,(a7)
	bsr  	L29590
	tst.w	d0
L30032:
	beq.s	L30040
	jsr	L34414.l
L30040:
	moveq	#12,d7
	bra.s	L30046

L30044:
	addq.w	#1,d7
L30046:
	move.w	d7,(a7)
	bsr  	L29590
	tst.w	d0
	beq.s	L30044
	move.w	d7,d0
	bra.s	L30094

L30060:
	jsr	L33238.l
	bra.s	L30118

L30068:
	jsr	L33212.l
	bra.s	L30118

L30076:
	jsr	L33276.l
	bra.s	L30118

L30084:
	jsr	L33252.l
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
	move.l	a6,(a7)
	subq.l	#4,(a7)
	move.w	#3,-(a7)
	bsr  	L29740
	addq.l	#2,a7
	tst.w	d0
	beq.s	L30170
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	#4,-(a7)
	bsr  	L29740
	addq.l	#2,a7
	tst.w	d0
	beq.s	L30170
	move.l	-8(a6),(a7)
	move.l	-4(a6),-(a7)
	jsr	L35228.l
	addq.l	#4,a7
L30170:
	move.l	a6,(a7)
	addi.l	#-12,(a7)
	move.w	#5,-(a7)
	bsr  	L29740
	addq.l	#2,a7
	tst.w	d0
	beq.s	L30258
	move.l	#-130993,-(a7)
	move.l	-12(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L30220
	move.l	#-130993,-12(a6)
L30220:
	move.l	#-130865,-(a7)
	move.l	-12(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L30248
	move.l	#-130865,-12(a6)
L30248:
	move.l	-12(a6),(a7)
	jsr	L33502.l
L30258:
	jsr	L47940.l
	bra.s	L30324

L30266:
	move.w	#17,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#8,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#9,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	moveq	#12,d7
	bra.s	L30318

L30306:
	move.w	d7,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	addq.w	#1,d7
L30318:
	cmp.w	#16,d7
	blt.s	L30306
L30324:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L30334:
	link	a6,#-4
	move.l	8(a6),U92072.l
	move.w	#2,(a7)
	jsr	L34692.l
	move.l	d0,-(a7)
	bsr  	L29650
	addq.l	#4,a7
	move.w	#7,(a7)
	jsr	L33780.l
	move.l	d0,-(a7)
	bsr  	L29650
	addq.l	#4,a7
	move.w	#3,(a7)
	jsr	L33882.l
	move.l	d0,-(a7)
	bsr  	L29650
	addq.l	#4,a7
	move.w	#6,(a7)
	jsr	L33896.l
	move.l	d0,-(a7)
	bsr  	L29650
	addq.l	#4,a7
	jsr	L34634.l
	move.w	d0,(a7)
	addi.w	#11,(a7)
	move.w	#1,-(a7)
	bsr  	L29556
	addq.l	#2,a7
	unlk	a6
	rts

L30444:
	link	a6,#-12
	move.l	8(a6),U92072.l
	move.w	#4,(a7)
	bsr  	L29590
	tst.w	d0
	beq  	L30650
	jsr	L48234.l
	move.w	#11,(a7)
	bsr  	L29590
	tst.w	d0
	beq.s	L30496
	jsr	L34482.l
	bra.s	L30534

L30496:
	move.w	#12,(a7)
	bsr  	L29590
	tst.w	d0
	beq.s	L30516
	jsr	L34554.l
	bra.s	L30534

L30516:
	move.w	#13,(a7)
	bsr  	L29590
	tst.w	d0
	beq.s	L30534
	jsr	L34588.l
L30534:
	move.l	a6,(a7)
	subq.l	#4,(a7)
	move.w	#2,-(a7)
	bsr  	L29740
	addq.l	#2,a7
	tst.w	d0
	beq.s	L30562
	move.l	-4(a6),(a7)
	jsr	L34648.l
L30562:
	move.l	a6,(a7)
	subq.l	#4,(a7)
	move.w	#7,-(a7)
	bsr  	L29740
	addq.l	#2,a7
	tst.w	d0
	beq.s	L30590
	move.l	-4(a6),(a7)
	jsr	L33736.l
L30590:
	move.l	a6,(a7)
	subq.l	#4,(a7)
	move.w	#3,-(a7)
	bsr  	L29740
	addq.l	#2,a7
	tst.w	d0
	beq.s	L30642
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	#6,-(a7)
	bsr  	L29740
	addq.l	#2,a7
	tst.w	d0
	beq.s	L30642
	move.l	-8(a6),(a7)
	move.l	-4(a6),-(a7)
	jsr	L33794.l
	addq.l	#4,a7
L30642:
	jsr	L47940.l
	bra.s	L30698

L30650:
	move.w	#11,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#12,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#13,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#5,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
L30698:
	unlk	a6
	rts

L30702:
	link	a6,#-16
	move.w	#8,U92076.l
	jsr	L25746.l
	move.w	d0,-2(a6)
	jsr	L25760.l
	move.w	d0,-4(a6)
	jsr	L25774.l
	move.w	d0,-6(a6)
	move.w	U101130.l,(a7)
	move.w	#8,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-8(a6)
	move.w	-8(a6),(a7)
	jsr	L23516.l
	move.w	d0,(a7)
	move.w	#10,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-10(a6)
	move.w	U101126.l,(a7)
	move.w	#11,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-12(a6)
	move.w	-12(a6),(a7)
	move.w	-10(a6),-(a7)
	move.w	-8(a6),-(a7)
	jsr	L21964.l
	addq.l	#4,a7
	move.l	8(a6),(a7)
	addi.l	#10,(a7)
	move.w	#2,-(a7)
	jsr	L22670.l
	addq.l	#2,a7
	movea.l	8(a6),a0
	move.w	16(a0),(a7)
	movea.l	8(a6),a0
	move.w	14(a0),-(a7)
	movea.l	8(a6),a0
	move.w	12(a0),-(a7)
	movea.l	8(a6),a0
	move.w	10(a0),-(a7)
	move.w	-10(a6),-(a7)
	move.w	-8(a6),-(a7)
	move.w	#1,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
	clr.w	(a7)
	jsr	L22670.l
	move.w	-6(a6),(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	jsr	L21964.l
	addq.l	#4,a7
	moveq	#16,d0
	unlk	a6
	rts

L30972:
	link	a6,#-16
	move.w	#13,U92076.l
	jsr	L25718.l
	move.w	d0,-2(a6)
	jsr	L25732.l
	move.w	d0,-4(a6)
	jsr	L33352.l
	move.w	d0,-6(a6)
	move.w	U101134.l,(a7)
	move.w	#13,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-8(a6)
	move.w	U101136.l,(a7)
	move.w	#15,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-10(a6)
	move.w	U101124.l,(a7)
	move.w	#16,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-12(a6)
	move.w	-12(a6),(a7)
	move.w	-10(a6),-(a7)
	move.w	-8(a6),-(a7)
	jsr	L21448.l
	addq.l	#4,a7
	move.l	8(a6),(a7)
	addi.l	#10,(a7)
	move.w	#2,-(a7)
	jsr	L22670.l
	addq.l	#2,a7
	movea.l	8(a6),a0
	move.w	16(a0),(a7)
	movea.l	8(a6),a0
	move.w	14(a0),-(a7)
	movea.l	8(a6),a0
	move.w	12(a0),-(a7)
	movea.l	8(a6),a0
	move.w	10(a0),-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
	movea.l	8(a6),a0
	move.w	16(a0),d0
	asr.w	#1,d0
	movea.l	8(a6),a1
	add.w	d0,12(a1)
	movea.l	8(a6),a0
	move.w	12(a0),(a7)
	movea.l	8(a6),a0
	move.w	10(a0),-(a7)
	movea.l	8(a6),a0
	move.w	14(a0),d0
	add.w	d0,(a7)
	subq.w	#1,(a7)
	movea.l	8(a6),a0
	move.w	12(a0),-(a7)
	movea.l	8(a6),a0
	move.w	10(a0),-(a7)
	jsr	L25788.l
	addq.l	#6,a7
	clr.w	(a7)
	jsr	L22670.l
	move.w	-6(a6),(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	jsr	L21448.l
	addq.l	#4,a7
	moveq	#16,d0
	unlk	a6
	rts

L31302:
	link	a6,#-6
	move.w	#17,U92076.l
	move.w	U101126.l,(a7)
	move.w	#17,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L21766.l
	move.w	d0,-2(a6)
	move.l	8(a6),(a7)
	addi.l	#10,(a7)
	move.w	#2,-(a7)
	jsr	L22670.l
	addq.l	#2,a7
	movea.l	8(a6),a0
	move.w	16(a0),(a7)
	movea.l	8(a6),a0
	move.w	14(a0),-(a7)
	movea.l	8(a6),a0
	move.w	12(a0),-(a7)
	movea.l	8(a6),a0
	move.w	10(a0),-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
	clr.w	(a7)
	jsr	L22670.l
	move.w	-2(a6),(a7)
	jsr	L21766.l
	moveq	#16,d0
	unlk	a6
	rts

L31452:
	link	a6,#-8
	move.w	8(a6),d0
	ext.l	d0
	divs	#10,d0
	add.w	#48,d0
	move.b	d0,-4(a6)
	move.w	8(a6),d0
	ext.l	d0
	divs	#10,d0
	swap	d0
	add.w	#48,d0
	move.b	d0,-3(a6)
	clr.b	-2(a6)
	move.l	a6,(a7)
	subq.l	#4,(a7)
	movea.l	#ev_adrerr,a0
	move.w	10(a6),d1
	muls	#24,d1
	add.l	U92072.l,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	unlk	a6
	rts

L31540:
	link	a6,#-8
	movea.l	#ev_adrerr,a0
	move.w	8(a6),d1
	muls	#24,d1
	add.l	U92072.l,d1
	movea.l	0(a0,d1.l),a0
	move.l	(a0),(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	jsr	L83880.l
	addq.l	#4,a7
	move.l	a6,(a7)
	subq.l	#4,(a7)
	jsr	L83596.l
	unlk	a6
	rts

L31596:
	link	a6,#-4
	move.l	8(a6),U92072.l
	move.w	#8,U92076.l
	jsr	L21310.l
	tst.w	d0
	beq.s	L31632
	move.w	#6,(a7)
	bra.s	L31636

L31632:
	move.w	#7,(a7)
L31636:
	move.w	#1,-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#8,(a7)
	jsr	L25746.l
	move.w	d0,-(a7)
	bsr  	L31452
	addq.l	#2,a7
	move.w	#10,(a7)
	jsr	L25760.l
	move.w	d0,-(a7)
	bsr  	L31452
	addq.l	#2,a7
	move.w	#11,(a7)
	jsr	L25774.l
	move.w	d0,-(a7)
	bsr  	L31452
	addq.l	#2,a7
	move.w	#13,(a7)
	jsr	L25718.l
	move.w	d0,-(a7)
	bsr  	L31452
	addq.l	#2,a7
	move.w	#15,(a7)
	jsr	L25732.l
	move.w	d0,-(a7)
	bsr  	L31452
	addq.l	#2,a7
	move.w	#16,(a7)
	jsr	L33352.l
	move.w	d0,-(a7)
	bsr  	L31452
	addq.l	#2,a7
	move.w	#17,(a7)
	jsr	L33160.l
	move.w	d0,-(a7)
	bsr  	L31452
	addq.l	#2,a7
	move.l	#L30702,U98674.l
	move.l	#L30972,U99000.l
	move.l	#L31302,U99008.l
	movea.l	U92072.l,a0
	adda.l	#222,a0
	move.w	#24,(a0)
	movea.l	U92072.l,a0
	adda.l	#342,a0
	move.w	#24,(a0)
	movea.l	U92072.l,a0
	adda.l	#438,a0
	move.w	#24,(a0)
	movea.l	U92072.l,a0
	adda.l	#228,a0
	move.l	#U98674,(a0)
	movea.l	U92072.l,a0
	adda.l	#348,a0
	move.l	#U99000,(a0)
	movea.l	U92072.l,a0
	adda.l	#444,a0
	move.l	#U99008,(a0)
	unlk	a6
	rts

L31908:
	link	a6,#-12
	move.l	8(a6),U92072.l
	tst.w	12(a6)
	beq  	L32264
	move.w	#6,(a7)
	bsr  	L29590
	tst.w	d0
	beq.s	L31948
	move.w	U100984.l,-8(a6)
L31948:
	move.w	#7,(a7)
	bsr  	L29590
	tst.w	d0
	beq.s	L31968
	move.w	U101186.l,-8(a6)
L31968:
	move.w	-8(a6),(a7)
	move.w	U98718.l,-(a7)
	move.l	T87350.l,-(a7)
	jsr	L62012.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	move.w	U101130.l,(a7)
	move.w	#8,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-2(a6)
	move.w	-2(a6),(a7)
	jsr	L23516.l
	move.w	d0,(a7)
	move.w	#10,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-4(a6)
	move.w	U101126.l,(a7)
	move.w	#11,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-6(a6)
	move.w	-6(a6),(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	jsr	L21964.l
	addq.l	#4,a7
	move.w	U101134.l,(a7)
	move.w	#13,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-2(a6)
	move.w	U101136.l,(a7)
	move.w	#15,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-4(a6)
	move.w	U101124.l,(a7)
	move.w	#16,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,-6(a6)
	move.w	-6(a6),(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	jsr	L21448.l
	addq.l	#4,a7
	move.w	U101126.l,(a7)
	move.w	#17,-(a7)
	bsr  	L31540
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L50202.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L33174.l
	bra.s	L32300

L32264:
	move.w	#3,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#6,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
	move.w	#7,(a7)
	clr.w	-(a7)
	bsr  	L29556
	addq.l	#2,a7
L32300:
	unlk	a6
	rts

L32304:
	link	a6,#-6
L32308:
	clr.l	(a7)
	move.w	#257,-(a7)
	jsr	L1482.l
	addq.l	#2,a7
	move.w	U92076.l,(a7)
	move.l	8(a6),-(a7)
	jsr	L1266.l
	addq.l	#4,a7
	clr.l	(a7)
	move.w	#256,-(a7)
	jsr	L1482.l
	addq.l	#2,a7
	move.w	#2,(a7)
	bsr  	L29590
	move.w	d0,-2(a6)
	bne.s	L32382
	move.w	#3,(a7)
	bsr  	L29590
	tst.w	d0
	bne.s	L32382
	bra.s	L32308

L32382:
	move.w	-2(a6),d0
	unlk	a6
	rts

L32390:
	link	a6,#-8
	move.w	8(a6),U101120.l
	move.w	10(a6),U101122.l
	move.w	U92100.l,-2(a6)
	move.w	U92104.l,-4(a6)
	bsr  	L32752
	tst.w	U99190.l
	bne  	L32592
	move.l	U92132.l,-(a7)
	move.l	#-2147483582,-(a7)
	move.w	-2(a6),d0
	sub.w	U92100.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	U99808.l,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,U99808.l
	move.l	U92136.l,-(a7)
	move.l	#-2147483582,-(a7)
	move.w	U92104.l,d0
	sub.w	-4(a6),d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	U99812.l,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,U99812.l
L32592:
	unlk	a6
	rts

L32596:
	link	a6,#-8
	tst.w	U99190.l
	bne  	L32748
	move.w	U99860.l,-2(a6)
	move.w	U100564.l,-4(a6)
	bsr  	L34368
	move.w	-2(a6),d0
	cmp.w	U99860.l,d0
	bne.s	L32654
	move.w	-2(a6),d0
	cmp.w	U100564.l,d0
	beq.s	L32702
L32654:
	move.w	-2(a6),U99860.l
	move.w	-4(a6),U100564.l
	jsr	L27654.l
	move.w	U92118.l,U99860.l
	move.w	U92120.l,U100564.l
	jsr	L27654.l
L32702:
	move.w	U100564.l,(a7)
	move.w	U99860.l,-(a7)
	bsr  	L36410
	addq.l	#2,a7
	tst.w	d0
	beq.s	L32748
	tst.w	U92086.l
	beq.s	L32748
	jsr	L27654.l
	bsr  	L34706
	jsr	L27654.l
L32748:
	unlk	a6
	rts

L32752:
	link	a6,#-4
	move.w	U101120.l,d0
	subq.w	#1,d0
	move.w	d0,U92100.l
	move.w	U101122.l,d0
	subq.w	#1,d0
	move.w	d0,U92104.l
	move.w	U101120.l,d0
	move.w	d0,U92106.l
	neg.w	d0
	move.w	d0,U92108.l
	move.w	U101122.l,d0
	move.w	d0,U92110.l
	neg.w	d0
	move.w	d0,U92112.l
	move.w	U101120.l,d0
	asr.w	#1,d0
	move.w	d0,U92114.l
	move.w	U101122.l,d0
	subq.w	#1,d0
	asr.w	#1,d0
	move.w	d0,U92116.l
	unlk	a6
	rts

L32858:
	link	a6,#-4
	move.w	#1,U92122.l
	move.l	T85048.l,d0
	move.l	d0,U92078.l
	move.l	d0,U99812.l
	move.l	d0,U99808.l
	clr.w	U92082.l
	clr.w	U92084.l
	clr.w	U92086.l
	move.l	T85032.l,U92088.l
	clr.w	d0
	move.w	d0,U92102.l
	move.w	d0,U92098.l
	bsr  	L32752
	move.w	U101140.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	move.w	U101138.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bsr  	L34648
	move.w	T84998.l,(a7)
	bsr  	L33174
	move.w	T84996.l,(a7)
	bsr  	L33316
	move.w	#256,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	move.w	T85004.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bsr  	L33736
	move.l	T85048.l,(a7)
	move.l	T85048.l,-(a7)
	bsr  	L33794
	addq.l	#4,a7
	bsr  	L33580
	bsr  	L33212
	bsr  	L34440
	unlk	a6
	rts

L33100:
	link	a6,#-4
	tst.w	U92122.l
	bne.s	L33126
	move.w	#1,U92122.l
	jsr	L27654.l
L33126:
	unlk	a6
	rts

L33130:
	link	a6,#-4
	clr.w	U92122.l
	unlk	a6
	rts

L33144:
	link	a6,#-4
	bsr.s	L33130
	jsr	L27654.l
	unlk	a6
	rts

L33160:
	link	a6,#-4
	move.w	U92096.l,d0
	unlk	a6
	rts

L33174:
	link	a6,#-4
	jsr	L27654.l
	move.w	8(a6),d0
	move.w	d0,U92096.l
	move.w	d0,(a7)
	jsr	L49676.l
	jsr	L27654.l
	unlk	a6
	rts

L33212:
	link	a6,#-4
	move.b	#1,U92092.l
	bsr  	L33352
	move.b	d0,U92093.l
	unlk	a6
	rts

L33238:
	link	a6,#-4
	clr.b	U92092.l
	unlk	a6
	rts

L33252:
	link	a6,#-4
	move.b	#3,U92092.l
	bsr.s	L33160
	move.b	d0,U92093.l
	unlk	a6
	rts

L33276:
	link	a6,#-4
	move.b	#2,U92092.l
	bsr.s	L33352
	move.b	d0,U92093.l
	unlk	a6
	rts

L33300:
	link	a6,#-4
	move.b	U92092.l,d0
	ext.w	d0
	unlk	a6
	rts

L33316:
	link	a6,#-4
	move.w	8(a6),U92094.l
	bsr.s	L33300
	cmp.w	#3,d0
	beq.s	L33348
	move.w	U92094.l,d0
	move.b	d0,U92093.l
L33348:
	unlk	a6
	rts

L33352:
	link	a6,#-4
	move.w	U92094.l,d0
	unlk	a6
	rts

L33366:
	link	a6,#-4
	move.l	U99812.l,-(a7)
	move.l	8(a6),-(a7)
	move.l	U92078.l,-(a7)
	jsr	L36612.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,(a7)
	move.l	U99808.l,-(a7)
	move.l	8(a6),-(a7)
	move.l	U92078.l,-(a7)
	jsr	L36642.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	bsr  	L35228
	addq.l	#4,a7
	unlk	a6
	rts

L33472:
	link	a6,#-4
	move.l	8(a6),-(a7)
	move.l	U92078.l,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bsr.s	L33502
	unlk	a6
	rts

L33502:
	link	a6,#-4
	jsr	L27654.l
	move.l	8(a6),(a7)
	bsr  	L36300
	move.l	d0,U92078.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,U92082.l
	jsr	L27654.l
	unlk	a6
	rts

L33552:
	link	a6,#-4
	move.w	U92082.l,d0
	unlk	a6
	rts

L33566:
	link	a6,#-4
	move.l	U92078.l,d0
	unlk	a6
	rts

L33580:
	link	a6,#-4
	move.w	U92096.l,(a7)
	jsr	L28042.l
	jsr	L27654.l
	unlk	a6
	rts

L33606:
	link	a6,#-4
	move.l	12(a6),(a7)
	move.l	8(a6),-(a7)
	bsr  	L34046
	addq.l	#4,a7
	move.w	U92120.l,(a7)
	move.w	U92118.l,-(a7)
	bsr  	L36258
	addq.l	#2,a7
	bsr  	L36234
	tst.w	d0
	beq.s	L33726
	move.w	U92118.l,d0
	ext.l	d0
	divs	U101120.l,d0
	swap	d0
	move.w	d0,U92118.l
	tst.w	d0
	bge.s	L33688
	move.w	U101120.l,d0
	add.w	d0,U92118.l
L33688:
	move.w	U92120.l,d0
	ext.l	d0
	divs	U101122.l,d0
	swap	d0
	move.w	d0,U92120.l
	tst.w	d0
	bge.s	L33726
	move.w	U101122.l,d0
	add.w	d0,U92120.l
L33726:
	move.l	#U92118,d0
	unlk	a6
	rts

L33736:
	link	a6,#-4
	move.l	U92088.l,-(a7)
	move.l	8(a6),d0
	move.l	d0,U92132.l
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,U92136.l
	bsr  	L34368
	unlk	a6
	rts

L33780:
	link	a6,#-4
	move.l	U92132.l,d0
	unlk	a6
	rts

L33794:
	link	a6,#-4
	tst.w	U92086.l
	beq.s	L33858
	move.l	T85048.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L33846
	move.l	T85048.l,-(a7)
	move.l	12(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	beq.s	L33858
L33846:
	jsr	L27654.l
	jsr	L66832.l
L33858:
	move.l	8(a6),U92124.l
	move.l	12(a6),U92128.l
	bsr  	L34368
	unlk	a6
	rts

L33882:
	link	a6,#-4
	move.l	U92124.l,d0
	unlk	a6
	rts

L33896:
	link	a6,#-4
	move.l	U92128.l,d0
	unlk	a6
	rts

L33910:
	link	a6,#-4
	move.l	T85032.l,-(a7)
	move.l	U92132.l,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L33942
	move.l	8(a6),d0
	bra.s	L33960

L33942:
	move.l	8(a6),-(a7)
	move.l	U92132.l,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
L33960:
	unlk	a6
	rts

L33964:
	link	a6,#-4
	move.l	T85032.l,-(a7)
	move.l	U92136.l,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L33996
	move.l	8(a6),d0
	bra.s	L34014

L33996:
	move.l	8(a6),-(a7)
	move.l	U92136.l,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
L34014:
	unlk	a6
	rts

L34018:
	link	a6,#-4
	move.l	U99808.l,d0
	unlk	a6
	rts

L34032:
	link	a6,#-4
	move.l	U99812.l,d0
	unlk	a6
	rts

L34046:
	link	a6,#-12
	move.l	U92124.l,-(a7)
	move.l	8(a6),-(a7)
	bsr  	L35168
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bsr  	L33910
	move.l	d0,-(a7)
	move.w	U92114.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	U92128.l,-(a7)
	move.l	12(a6),-(a7)
	bsr  	L35168
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bsr  	L33964
	move.l	d0,-(a7)
	move.w	U92116.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,12(a6)
	move.l	8(a6),(a7)
	jsr	L3058.l
	move.l	d0,-4(a6)
	move.l	12(a6),(a7)
	jsr	L3058.l
	move.l	d0,-8(a6)
	move.l	T85040.l,-(a7)
	move.l	-4(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L34250
	move.l	T85040.l,-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L34336
L34250:
	move.l	-8(a6),-(a7)
	move.l	-4(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L34274
	move.l	-4(a6),-(a7)
	bra.s	L34278

L34274:
	move.l	-8(a6),-(a7)
L34278:
	move.l	T85040.l,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-4(a6)
	move.l	-4(a6),-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	-4(a6),-(a7)
	move.l	12(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,12(a6)
L34336:
	move.l	8(a6),(a7)
	bsr  	L35006
	move.w	d0,U92118.l
	move.l	12(a6),(a7)
	bsr  	L35006
	move.w	d0,U92120.l
	unlk	a6
	rts

L34368:
	link	a6,#-4
	move.l	U99812.l,(a7)
	move.l	U99808.l,-(a7)
	bsr  	L34046
	addq.l	#4,a7
	move.w	U92118.l,U99860.l
	move.w	U92120.l,U100564.l
	unlk	a6
	rts

L34414:
	link	a6,#-4
	bsr.s	L34468
	tst.w	d0
	beq.s	L34436
	jsr	L27654.l
	clr.w	U92084.l
L34436:
	unlk	a6
	rts

L34440:
	link	a6,#-4
	bsr.s	L34468
	tst.w	d0
	bne.s	L34464
	move.w	#1,U92084.l
	jsr	L27654.l
L34464:
	unlk	a6
	rts

L34468:
	link	a6,#-4
	move.w	U92084.l,d0
	unlk	a6
	rts

L34482:
	link	a6,#-4
	clr.w	U92086.l
	unlk	a6
	rts

L34496:
	link	a6,#-4
	move.l	T85048.l,-(a7)
	move.l	U92124.l,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L34544
	move.l	T85048.l,-(a7)
	move.l	U92128.l,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	beq.s	L34550
L34544:
	jsr	L66832.l
L34550:
	unlk	a6
	rts

L34554:
	link	a6,#-4
	bsr.s	L34496
	jsr	L27654.l
	move.w	#1,U92086.l
	bsr  	L34706
	jsr	L27654.l
	unlk	a6
	rts

L34588:
	link	a6,#-4
	move.w	U100564.l,(a7)
	move.w	U99860.l,-(a7)
	bsr  	L36410
	addq.l	#2,a7
	tst.w	d0
	beq.s	L34620
	jsr	L66856.l
L34620:
	bsr.s	L34496
	move.w	#2,U92086.l
	unlk	a6
	rts

L34634:
	link	a6,#-4
	move.w	U92086.l,d0
	unlk	a6
	rts

L34648:
	link	a6,#-4
	move.l	U92132.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,U92136.l
	move.l	8(a6),U92088.l
	bsr  	L34368
	unlk	a6
	rts

L34692:
	link	a6,#-4
	move.l	U92088.l,d0
	unlk	a6
	rts

L34706:
	link	a6,#-4
	bra.s	L34772

L34712:
	move.l	U92132.l,-(a7)
	move.w	U101120.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	U99808.l,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,U99808.l
	bsr  	L34368
L34772:
	tst.w	U99860.l
	blt.s	L34712
	bra.s	L34842

L34782:
	move.l	U92132.l,-(a7)
	move.w	U101120.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	U99808.l,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,U99808.l
	bsr  	L34368
L34842:
	move.w	U101120.l,d0
	cmp.w	U99860.l,d0
	ble.s	L34782
	bra.s	L34918

L34858:
	move.l	U92136.l,-(a7)
	move.w	U101122.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	U99812.l,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,U99812.l
	bsr  	L34368
L34918:
	tst.w	U100564.l
	blt.s	L34858
	bra.s	L34988

L34928:
	move.l	U92136.l,-(a7)
	move.w	U101122.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	U99812.l,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,U99812.l
	bsr  	L34368
L34988:
	move.w	U101122.l,d0
	cmp.w	U100564.l,d0
	ble.s	L34928
	unlk	a6
	rts

L35006:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.l	T85048.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L35088
	move.l	T85044.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d7
	bra.s	L35156

L35088:
	move.l	T85044.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	8(a6),-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d7
	move.l	8(a6),-(a7)
	move.w	d7,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L35156
	addq.w	#1,d7
L35156:
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L35168:
	link	a6,#-4
	move.w	#16000,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	move.l	8(a6),-(a7)
	jsr	L3058.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L35220
	jsr	L66856.l
L35220:
	move.l	8(a6),d0
	unlk	a6
	rts

L35228:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.l	12(a6),(a7)
	move.l	8(a6),-(a7)
	bsr  	L34046
	addq.l	#4,a7
	move.w	U92120.l,(a7)
	move.w	U92118.l,-(a7)
	bsr  	L36258
	addq.l	#2,a7
	jsr	L27654.l
	move.w	U99860.l,U92140.l
	move.w	U100564.l,U92142.l
	move.w	U92118.l,d0
	move.w	d0,U99860.l
	move.w	d0,U92144.l
	move.w	U92120.l,d0
	move.w	d0,U100564.l
	move.w	d0,U92146.l
	move.l	8(a6),U99808.l
	move.l	12(a6),U99812.l
	bsr  	L36234
	tst.w	d0
	beq  	L35524
	bsr  	L33300
	tst.w	d0
	beq  	L35518
L35366:
	move.w	U92092.l,(a7)
	bsr  	L35556
	move.w	d0,d6
	move.w	d6,d7
	asr.w	#1,d7
	move.w	U92120.l,(a7)
	move.w	U92118.l,-(a7)
	bsr  	L36410
	addq.l	#2,a7
	tst.w	d0
	beq.s	L35518
	move.w	U92144.l,U92140.l
	move.w	U92146.l,U92142.l
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	#U92106,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#U92140,a1
	move.w	(a0),d0
	add.w	d0,(a1)
	move.w	U92118.l,U92144.l
	move.w	U92120.l,U92146.l
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	#U92106,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#U92140,a1
	move.w	(a0),d0
	add.w	d0,4(a1)
	move.w	U92144.l,U92118.l
	move.w	U92146.l,U92120.l
	bra  	L35366

L35518:
	bsr  	L34706
	bra.s	L35540

L35524:
	bsr  	L33300
	tst.w	d0
	beq.s	L35540
	move.w	U92092.l,(a7)
	bsr.s	L35556
L35540:
	jsr	L27654.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L35556:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	moveq	#-1,d0
	move.w	d0,U92152.l
	move.w	d0,U92150.l
	move.w	d0,U92154.l
	clr.w	U92148.l
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
	move.w	d0,U92156.l
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a1
	adda.l	#U92098,a1
	move.w	(a1),d1
	cmp.w	d1,d0
	bge.s	L35666
	clr.w	(a7)
	move.w	d7,-(a7)
	move.w	d6,-(a7)
	bsr  	L35836
	addq.l	#4,a7
	move.w	d0,U92154.l
	bra.s	L35710

L35666:
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#U92098,a1
	move.w	2(a0,a1.l),d0
	cmp.w	U92156.l,d0
	bge.s	L35710
	move.w	#1,(a7)
	move.w	d7,-(a7)
	move.w	d6,-(a7)
	bsr  	L35836
	addq.l	#4,a7
	move.w	d0,U92154.l
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
	tst.w	U92148.l
	bne.s	L35820
	move.w	U92142.l,(a7)
	move.w	U92140.l,-(a7)
	bsr  	L36410
	addq.l	#2,a7
	tst.w	d0
	bne.s	L35820
	move.w	U92146.l,(a7)
	move.w	U92144.l,-(a7)
	bsr  	L36410
	addq.l	#2,a7
	tst.w	d0
	bne.s	L35820
	move.w	8(a6),(a7)
	move.w	U92146.l,-(a7)
	move.w	U92144.l,-(a7)
	move.w	U92142.l,-(a7)
	move.w	U92140.l,-(a7)
	jsr	L27234.l
	addq.l	#8,a7
L35820:
	move.w	U92154.l,d0
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L35836:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	10(a6),d7
	move.w	8(a6),d6
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	12(a6),a1
	adda.l	a1,a1
	adda.l	a1,a0
	adda.l	#U92098,a0
	move.w	(a0),U92162.l
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
	move.w	d0,U92160.l
	beq  	L36122
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	#1,a1
	suba.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	adda.l	#U92140,a0
	move.l	a0,-(a7)
	move.w	U92160.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
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
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	movea.l	#U92140,a1
	move.w	0(a0,a1.l),d0
	sub.w	U92162.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	bsr  	L35006
	addq.l	#4,a7
	movea.l	(a7)+,a0
	add.w	d0,(a0)
L36122:
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	a1,a0
	adda.l	#U92140,a0
	move.w	U92162.l,(a0)
	move.w	d7,d0
	asl.w	#1,d0
	add.w	12(a6),d0
	move.w	d0,U92158.l
	cmp.w	U92150.l,d0
	bne.s	L36176
	move.w	#1,U92148.l
L36176:
	move.w	U92158.l,d0
	cmp.w	U92152.l,d0
	bne.s	L36198
	move.w	#1,U92148.l
L36198:
	move.w	U92150.l,U92152.l
	move.w	U92158.l,U92150.l
	move.w	U92158.l,d0
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L36234:
	link	a6,#-4
	cmpi.w	#1,U92086.l
	beq.s	L36252
	clr.w	d0
	bra.s	L36254

L36252:
	moveq	#1,d0
L36254:
	unlk	a6
	rts

L36258:
	link	a6,#-4
	cmpi.w	#2,U92086.l
	bne.s	L36296
	move.w	10(a6),(a7)
	move.w	8(a6),-(a7)
	bsr  	L36410
	addq.l	#2,a7
	tst.w	d0
	beq.s	L36296
	jsr	L66856.l
L36296:
	unlk	a6
	rts

L36300:
	link	a6,#-4
	bra.s	L36328

L36306:
	move.l	T85036.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,8(a6)
L36328:
	move.l	T85036.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L36306
	bra.s	L36372

L36350:
	move.l	T85036.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,8(a6)
L36372:
	move.l	8(a6),-(a7)
	clr.w	d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L36350
	move.l	8(a6),d0
	unlk	a6
	rts

L36410:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	cmp.w	U92098.l,d7
	blt.s	L36466
	cmp.w	U92100.l,d7
	bgt.s	L36466
	move.w	U92102.l,d0
	cmp.w	10(a6),d0
	bgt.s	L36466
	move.w	U92104.l,d0
	cmp.w	10(a6),d0
	blt.s	L36466
	clr.w	d0
	bra.s	L36468

L36466:
	moveq	#1,d0
L36468:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L36478:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L36522:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L36566:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L36612:
	link	a6,#-4
	move.l	T85056.l,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,(a7)
	bsr.s	L36642
	unlk	a6
	rts

L36642:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	clr.w	d7
	move.l	8(a6),U92166.l
	bra.s	L36690

L36662:
	move.l	T85056.l,-(a7)
	move.l	U92166.l,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,U92166.l
	addq.w	#1,d7
L36690:
	move.l	T85056.l,-(a7)
	move.l	U92166.l,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bgt.s	L36662
	btst	#0,d7
	beq.s	L36744
	move.l	U92166.l,-(a7)
	move.l	T85056.l,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,U92166.l
L36744:
	move.l	U92166.l,-(a7)
	move.l	U92166.l,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,U92164.l
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L36818
	movea.w	U92164.l,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T85060,a1
	move.l	0(a0,a1.l),d0
	bra  	L36962

L36818:
	move.w	U92164.l,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	move.l	U92166.l,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	movea.w	U92164.l,a0
	addq.w	#1,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T85060,a1
	move.l	0(a0,a1.l),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	U92166.l,-(a7)
	move.w	U92164.l,d0
	addq.w	#1,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	movea.w	U92164.l,a0
	adda.l	a0,a0
	adda.l	a0,a0
	movea.l	#T85060,a1
	move.l	0(a0,a1.l),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
L36962:
	move.l	d0,U92166.l
	btst	#1,d7
	beq.s	L36990
	move.l	U92166.l,-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	bra.s	L36996

L36990:
	move.l	U92166.l,d0
L36996:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L37006:
	link	a6,#-4
	move.l	8(a6),(a7)
	jsr	L36300.l
	move.l	d0,(a7)
	jsr	L36642.l
	unlk	a6
	rts

L37032:
	link	a6,#-4
	move.l	8(a6),(a7)
	jsr	L36300.l
	move.l	d0,(a7)
	jsr	L36612.l
	unlk	a6
	rts

L37058:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L77854.l
L37072:
	clr.w	U99852.l
	clr.w	U100748.l
	clr.w	U100622.l
	clr.w	U101006.l
	clr.w	U100890.l
	move.l	#U101158,(a7)
	jsr	L204.l
	move.w	d0,d7
	beq.s	L37156
	clr.w	d0
	move.w	d0,U99190.l
	move.w	d0,U101476.l
	cmp.w	#23,d7
	bne.s	L37150
	jsr	L62532.l
	jsr	L62878.l
L37150:
	jsr	L58082.l
L37156:
	jsr	L62532.l
	bsr.s	L37176
	bra.s	L37072

	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L37176:
	link	a6,#-4
	clr.w	U101470.l
	jsr	L56040.l
	move.l	#U100656,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L37222
	jsr	L2226.l
	jsr	L60948.l
	bra.s	L37308

L37222:
	move.w	#63,(a7)
	jsr	L50590.l
	move.l	T87158.l,(a7)
	jsr	L52220.l
	tst.w	d0
	beq.s	L37256
	jsr	L54122.l
	bra.s	L37308

L37256:
	move.l	T87162.l,(a7)
	jsr	L52220.l
	tst.w	d0
	beq.s	L37280
	jsr	L49652.l
	bra.s	L37308

L37280:
	move.l	T87166.l,(a7)
	jsr	L52220.l
	tst.w	d0
	bne.s	L37302
	clr.w	U98712.l
L37302:
	jsr	L58142.l
L37308:
	unlk	a6
	rts

L37312:
	move.l	#U101066,U92170.l
	move.l	#U92170,d1
	moveq	#115,d0
	trap	#2		; VDI/AES
	rts

	link	a6,#0
	move.w	10(a6),d0
	asl.w	#1,d0
	muls	8(a6),d0
	divs	12(a6),d0
	bmi.s	L37358
	addq.w	#1,d0
	bra.s	L37360

L37358:
	subq.w	#1,d0
L37360:
	asr.w	#1,d0
	unlk	a6
	rts

	link	a6,#0
	move.w	10(a6),d0
	asl.w	#1,d0
	mulu.w	8(a6),d0
	divu	12(a6),d0
	addq.w	#1,d0
	asr.w	#1,d0
	unlk	a6
	rts

L37392:
	link	a6,#0
	move.l	8(a6),U92178.l
	unlk	a6
	rts

L37408:
	link	a6,#0
	move.l	8(a6),U92174.l
	unlk	a6
	rts

L37424:
	link	a6,#0
	move.l	8(a6),U92186.l
	unlk	a6
	rts

L37440:
	link	a6,#0
	move.l	8(a6),U92182.l
	unlk	a6
	rts

L37456:
	link	a6,#0
	move.l	8(a6),U101080.l
	unlk	a6
	rts

L37472:
	link	a6,#0
	move.l	8(a6),U101084.l
	unlk	a6
	rts

	link	a6,#0
	move.l	8(a6),U101080.l
	unlk	a6
	rts

	link	a6,#0
	movea.l	8(a6),a0
	move.l	U101084.l,(a0)
	unlk	a6
	rts

L37522:
	link	a6,#-8
	move.l	a6,(a7)
	subq.l	#4,(a7)
	move.w	8(a6),-(a7)
	clr.w	-(a7)
	jsr	L2070.l
	addq.l	#4,a7
	move.l	-4(a6),d0
	unlk	a6
	rts

L37552:
	link	a6,#-4
	movea.l	8(a6),a0
	move.w	U99096.l,(a0)
	movea.l	12(a6),a0
	move.w	U99098.l,(a0)
	movea.l	16(a6),a0
	move.w	U99100.l,(a0)
	movea.l	20(a6),a0
	move.w	U99102.l,(a0)
	unlk	a6
	rts

L37600:
	link	a6,#-4
	move.l	U92236.l,d0
	unlk	a6
	rts

L37614:
	link	a6,#-12
	bsr  	L48234
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#2,(a7)
	move.w	#7,-(a7)
	move.w	U92266.l,-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	bsr  	L45356
	move.w	-8(a6),(a7)
	move.w	-6(a6),-(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	move.w	#5,-(a7)
	move.w	U92266.l,-(a7)
	jsr	L1860.l
	adda.l	#10,a7
	move.w	#2,(a7)
	bsr  	L42772
	bsr  	L48234
	bsr  	L46108
	bsr  	L47940
	jsr	L61834.l
	unlk	a6
	rts

L37732:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	move.w	8(a6),d7
	bsr  	L48260
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	addq.l	#8,a5
	move.l	a5,(a7)
	addq.l	#6,(a7)
	move.l	a5,-(a7)
	addq.l	#4,(a7)
	move.l	a5,-(a7)
	addq.l	#2,(a7)
	move.l	a5,-(a7)
	move.w	#5,-(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	#-1,16(a0)
	cmp.w	U100904.l,d7
	bne.s	L37844
	move.w	#-1,U100904.l
L37844:
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),(a7)
	jsr	L1732.l
	bsr  	L48330
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L37878:
	link	a6,#-8
	movem.l	d6-d7,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),(a7)
	bsr  	L42570
	move.w	d0,d7
	movea.l	8(a6),a0
	move.w	(a0),d0
	bra  	L39246

L37910:
	move.w	#1,(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1082.l
	addq.l	#6,a7
	movea.l	8(a6),a0
	move.w	8(a0),(a7)
	bsr  	L39630
	bra  	L39270

L37952:
	bsr  	L48260
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.w	#11,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	bra.s	L38072

L37998:
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	8(a6),-(a7)
	addq.l	#8,(a7)
	jsr	L49946.l
	addq.l	#4,a7
	tst.w	d0
	beq.s	L38032
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	d7,-(a7)
	bsr  	L45236
	addq.l	#2,a7
L38032:
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.w	#12,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
L38072:
	tst.w	-4(a6)
	beq.s	L38084
	tst.w	-2(a6)
	bne.s	L37998
L38084:
	bra  	L39270

L38088:
	clr.w	(a7)
	move.w	#10,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1860.l
	addq.l	#4,a7
	move.w	d7,U100904.l
	movea.l	8(a6),a0
	move.w	6(a0),(a7)
	bsr  	L39356
	bra  	L39270

L38132:
	bsr  	L45356
	cmp.w	#1,d7
	bne.s	L38180
	btst	#0,U98293.l
	beq.s	L38160
	move.w	#58,(a7)
	bsr  	L39630
L38160:
	btst	#1,U98293.l
	beq.s	L38178
	move.w	#59,(a7)
	bsr  	L39630
L38178:
	bra.s	L38202

L38180:
	cmp.w	#3,d7
	bne.s	L38202
	cmp.w	U101462.l,d7
	bne.s	L38202
	move.w	#36,(a7)
	bsr  	L39630
L38202:
	move.w	d7,(a7)
	bsr  	L37732
	bra  	L39270

L38212:
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.w	#5,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.l	8(a6),(a7)
	addi.l	#14,(a7)
	move.l	8(a6),-(a7)
	addi.l	#12,(a7)
	move.l	8(a6),-(a7)
	addi.l	#10,(a7)
	move.l	8(a6),-(a7)
	addq.l	#8,(a7)
	move.w	#7,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	8(a6),-(a7)
	addq.l	#8,(a7)
	jsr	L49856.l
	addq.l	#4,a7
	tst.w	d0
	beq.s	L38394
	move.l	8(a6),(a7)
	addi.l	#14,(a7)
	move.l	8(a6),-(a7)
	addi.l	#12,(a7)
	move.l	8(a6),-(a7)
	addi.l	#10,(a7)
	move.l	8(a6),-(a7)
	addq.l	#8,(a7)
	move.w	#6,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
L38394:
	bsr  	L45356
	movea.l	8(a6),a0
	move.w	14(a0),(a7)
	jsr	L28422.l
	move.w	d0,-(a7)
	jsr	L50174.l
	addq.l	#2,a7
	move.w	d0,(a7)
	movea.l	8(a6),a0
	move.w	12(a0),-(a7)
	jsr	L28402.l
	move.w	d0,-(a7)
	jsr	L50174.l
	addq.l	#4,a7
	move.w	d0,-(a7)
	movea.l	8(a6),a0
	move.w	10(a0),-(a7)
	movea.l	8(a6),a0
	move.w	8(a0),-(a7)
	move.w	#5,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1860.l
	adda.l	#10,a7
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	4(a0),-4(a6)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	6(a0),-2(a6)
	move.w	d7,(a7)
	bsr  	L42772
	cmp.w	#2,d7
	bne.s	L38556
	move.w	d7,(a7)
	bsr  	L45052
	jsr	L22560.l
	bra.s	L38568

L38556:
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	d7,-(a7)
	bsr  	L41316
	addq.l	#2,a7
L38568:
	bra  	L39270

L38572:
	cmp.w	#2,d7
	bne.s	L38658
	movea.l	8(a6),a0
	move.w	8(a0),d0
	movea.l	8(a6),a1
	move.w	12(a1),d1
	add.w	d1,d0
	move.w	U99180.l,d1
	add.w	U99182.l,d1
	cmp.w	d1,d0
	bgt.s	L38646
	movea.l	8(a6),a0
	move.w	10(a0),d0
	movea.l	8(a6),a1
	move.w	14(a1),d1
	add.w	d1,d0
	move.w	U99184.l,d1
	add.w	U101144.l,d1
	cmp.w	d1,d0
	ble.s	L38658
L38646:
	move.l	#U99096,(a7)
	jsr	L24328.l
L38658:
	movea.l	8(a6),a0
	move.w	14(a0),(a7)
	movea.l	8(a6),a0
	move.w	12(a0),-(a7)
	movea.l	8(a6),a0
	move.w	10(a0),-(a7)
	movea.l	8(a6),a0
	move.w	8(a0),-(a7)
	move.w	#5,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1860.l
	adda.l	#10,a7
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	4(a0),-4(a6)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	6(a0),-2(a6)
	move.w	d7,(a7)
	bsr  	L42772
	cmp.w	#2,d7
	bne.s	L38774
	move.w	d7,(a7)
	bsr  	L45052
	bra.s	L38850

L38774:
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	4(a0,a1.l),d0
	cmp.w	-4(a6),d0
	bne.s	L38822
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	6(a0,a1.l),d0
	cmp.w	-2(a6),d0
	beq.s	L38836
L38822:
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	d7,-(a7)
	bsr  	L41316
	addq.l	#2,a7
	bra.s	L38850

L38836:
	cmp.w	U101462.l,d7
	bne.s	L38850
	move.w	d7,(a7)
	bsr  	L45052
L38850:
	bra  	L39270

L38854:
	movea.l	8(a6),a0
	move.w	8(a0),(a7)
	move.w	#8,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1860.l
	addq.l	#4,a7
	clr.w	(a7)
	movea.l	8(a6),a0
	move.w	8(a0),-(a7)
	move.w	d7,-(a7)
	clr.w	-(a7)
	bsr  	L42636
	addq.l	#6,a7
	move.w	d0,-(a7)
	move.w	d7,-(a7)
	clr.w	-(a7)
	bsr  	L41410
	addq.l	#6,a7
	bra  	L39270

L38918:
	movea.l	8(a6),a0
	move.w	8(a0),(a7)
	move.w	#9,-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	jsr	L1860.l
	addq.l	#4,a7
	clr.w	(a7)
	movea.l	8(a6),a0
	move.w	8(a0),-(a7)
	move.w	d7,-(a7)
	move.w	#1,-(a7)
	bsr  	L42636
	addq.l	#6,a7
	move.w	d0,-(a7)
	move.w	d7,-(a7)
	move.w	#1,-(a7)
	bsr  	L41410
	addq.l	#6,a7
	bra  	L39270

L38986:
	movea.l	8(a6),a0
	move.w	8(a0),d0
	bra  	L39212

L38998:
	move.w	#1,(a7)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),-(a7)
	addq.w	#1,(a7)
	move.w	d7,-(a7)
	clr.w	-(a7)
	bsr  	L41410
	addq.l	#6,a7
	bra  	L39242

L39036:
	move.w	#1,(a7)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),-(a7)
	subq.w	#1,(a7)
	move.w	d7,-(a7)
	clr.w	-(a7)
	bsr  	L41410
	addq.l	#6,a7
	bra  	L39242

L39074:
	cmpi.w	#3,U101462.l
	bne.s	L39104
	cmp.w	#3,d7
	bne.s	L39104
	jsr	L28274.l
	move.w	d0,(a7)
	bsr  	L46448
	bra.s	L39140

L39104:
	move.w	#1,(a7)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	30(a0,a1.l),-(a7)
	subq.w	#1,(a7)
	move.w	d7,-(a7)
	move.w	#1,-(a7)
	bsr  	L41410
	addq.l	#6,a7
L39140:
	bra.s	L39242

L39142:
	cmpi.w	#3,U101462.l
	bne.s	L39172
	cmp.w	#3,d7
	bne.s	L39172
	jsr	L28290.l
	move.w	d0,(a7)
	bsr  	L46448
	bra.s	L39208

L39172:
	move.w	#1,(a7)
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	30(a0,a1.l),-(a7)
	addq.w	#1,(a7)
	move.w	d7,-(a7)
	move.w	#1,-(a7)
	bsr  	L41410
	addq.l	#6,a7
L39208:
	bra.s	L39242

	bra.s	L39242

L39212:
	cmp.w	#2,d0
	beq  	L39074
	cmp.w	#3,d0
	beq.s	L39142
	cmp.w	#6,d0
	beq  	L39036
	cmp.w	#7,d0
	beq  	L38998
L39242:
	bra.s	L39270

	bra.s	L39270

L39246:
	sub.w	#10,d0
	cmp.w	#18,d0
	bhi.s	L39270
	asl.w	#2,d0
	movea.w	d0,a0
	adda.l	#T85526,a0
	movea.l	(a0),a0
	jmp	(a0)

L39270:
	bsr  	L48330
	movea.l	8(a6),a0
	clr.w	(a0)
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L39290:
	link	a6,#-4
	move.w	8(a6),d0
	bra.s	L39326

L39300:
	moveq	#6,d0
	bra.s	L39352

L39304:
	moveq	#2,d0
	bra.s	L39352

L39308:
	moveq	#14,d0
	bra.s	L39352

L39312:
	moveq	#16,d0
	bra.s	L39352

L39316:
	moveq	#18,d0
	bra.s	L39352

L39320:
	moveq	#15,d0
	bra.s	L39352

	bra.s	L39348

L39326:
	ext.l	d0
	movea.l	#T85602,a0
	moveq	#6,d1
L39336:
	cmp.l	(a0)+,d0
	dbeq	d1,L39336
	movea.l	24(a0),a0
	jmp	(a0)

L39348:
	move.w	8(a6),d0
L39352:
	unlk	a6
	rts

L39356:
	link	a6,#-26
L39360:
	move.l	a6,(a7)
	addi.l	#-22,(a7)
	move.l	a6,-(a7)
	addi.l	#-20,(a7)
	move.l	a6,-(a7)
	addi.l	#-18,(a7)
	move.l	a6,-(a7)
	addi.l	#-16,(a7)
	move.w	#5,-(a7)
	move.w	8(a6),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	bsr  	L48330
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.l	a6,-(a7)
	addi.l	#-10,(a7)
	move.l	a6,-(a7)
	addi.l	#-12,(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.l	U101480.l,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	-22(a6),-(a7)
	move.w	-20(a6),-(a7)
	move.w	-18(a6),-(a7)
	move.w	-16(a6),-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	move.w	#21,-(a7)
	jsr	L790.l
	adda.l	#56,a7
	move.w	d0,-14(a6)
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	jsr	L22840.l
	btst	#4,-13(a6)
	beq.s	L39562
	move.l	#U99820,(a7)
	bsr  	L37878
L39562:
	btst	#0,-13(a6)
	beq.s	L39578
	move.w	-4(a6),(a7)
	bsr  	L46448
L39578:
	cmpi.w	#4,-14(a6)
	beq.s	L39598
	tst.w	U92244.l
	bne.s	L39598
	bra  	L39360

L39598:
	bsr  	L48260
	move.w	U101462.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	jsr	L22840.l
	unlk	a6
	rts

L39630:
	link	a6,#-10
	move.w	U101462.l,-6(a6)
	move.w	8(a6),d0
	bra  	L40554

L39650:
	clr.w	(a7)
	move.l	U92198.l,d0
	move.l	d0,-4(a6)
	move.l	d0,-(a7)
	move.l	#L1266,-(a7)
	bsr  	L40664
	addq.l	#8,a7
	movea.l	-4(a6),a0
	adda.l	#154,a0
	clr.w	(a0)
	bra  	L40578

L39692:
	jsr	L28242.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39708:
	jsr	L28306.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39724:
	jsr	L28258.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39740:
	jsr	L28338.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39756:
	jsr	L28226.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39772:
	jsr	L28322.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39788:
	jsr	L28194.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39804:
	jsr	L28274.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39820:
	jsr	L28290.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39836:
	jsr	L28146.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39852:
	jsr	L28178.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39868:
	jsr	L28162.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39884:
	bsr  	L49652
	bra  	L40578

L39892:
	jsr	L28386.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39908:
	jsr	L28354.l
	move.w	d0,(a7)
	bsr  	L46448
	bra  	L40578

L39924:
	move.w	U92234.l,d0
	moveq	#1,d1
	eor.w	d1,d0
	move.w	d0,(a7)
	bsr  	L49422
	move.l	U92236.l,(a7)
	move.w	U92234.l,d0
	muls	U92232.l,d0
	move.w	d0,-(a7)
	jsr	L24290.l
	addq.l	#2,a7
	tst.w	U92234.l
	beq.s	L39992
	bsr  	L48234
	move.l	#U99096,(a7)
	jsr	L24328.l
L39992:
	bra  	L40578

L39996:
	eori.w	#1,U98286.l
	move.w	U98286.l,(a7)
	move.w	#61,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1002.l
	addq.l	#6,a7
	cmpi.w	#3,U101462.l
	beq.s	L40042
	bsr  	L47962
L40042:
	bra  	L40578

L40046:
	eori.w	#1,U98288.l
	move.w	U98288.l,(a7)
	move.w	#60,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1002.l
	addq.l	#6,a7
	tst.w	U98292.l
	bne.s	L40090
	bsr  	L47994
L40090:
	bra  	L40578

L40094:
	clr.w	(a7)
	move.w	8(a6),-(a7)
	bsr  	L40590
	addq.l	#2,a7
	bra  	L40578

L40110:
	cmpi.w	#19,8(a6)
	bne.s	L40126
	move.l	U92218.l,d0
	bra.s	L40132

L40126:
	move.l	U92222.l,d0
L40132:
	move.l	d0,-4(a6)
	move.l	-4(a6),(a7)
	clr.w	-(a7)
	bsr  	L41000
	addq.l	#2,a7
	move.w	#1,(a7)
	move.l	#U100678,-(a7)
	jsr	L28438.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L40182
	move.w	#1,(a7)
	bsr  	L41000
	bra  	L40578

L40182:
	move.l	-4(a6),(a7)
	move.w	#1,-(a7)
	bsr  	L41000
	addq.l	#2,a7
L40196:
	move.l	#U100678,(a7)
	move.w	8(a6),-(a7)
	bsr  	L40590
	addq.l	#2,a7
	bra  	L40578

L40216:
	cmpi.w	#23,8(a6)
	bne.s	L40232
	move.l	U92218.l,d0
	bra.s	L40238

L40232:
	move.l	U92222.l,d0
L40238:
	move.l	d0,-4(a6)
	move.l	-4(a6),(a7)
	clr.w	-(a7)
	bsr  	L41000
	addq.l	#2,a7
	clr.w	(a7)
	move.l	#U98294,-(a7)
	jsr	L28438.l
	addq.l	#4,a7
	tst.w	d0
	beq.s	L40290
	move.l	#U98294,(a7)
	move.w	8(a6),-(a7)
	bsr  	L40590
	addq.l	#2,a7
L40290:
	move.l	-4(a6),(a7)
	move.w	#1,-(a7)
	bsr  	L41000
	addq.l	#2,a7
	bra  	L40578

L40308:
	cmpi.w	#21,8(a6)
	bne.s	L40324
	move.l	U92214.l,d0
	bra.s	L40330

L40324:
	move.l	U92218.l,d0
L40330:
	move.l	d0,-4(a6)
	move.l	-4(a6),(a7)
	clr.w	-(a7)
	bsr  	L41000
	addq.l	#2,a7
	move.w	#1,(a7)
	move.l	#U98294,-(a7)
	jsr	L28438.l
	addq.l	#4,a7
	tst.w	d0
	beq.s	L40384
	move.l	#U98294,(a7)
	move.w	8(a6),-(a7)
	bsr  	L40590
	addq.l	#2,a7
L40384:
	move.l	-4(a6),(a7)
	move.w	#1,-(a7)
	bsr  	L41000
	addq.l	#2,a7
	bra  	L40578

L40402:
	move.l	U92202.l,(a7)
	jsr	L29826.l
	move.w	#3,(a7)
	move.l	U92202.l,-(a7)
	move.l	#L1266,-(a7)
	bsr  	L40664
	addq.l	#8,a7
	move.l	U92202.l,(a7)
	jsr	L29948.l
	bra  	L40578

L40452:
	move.l	U92206.l,(a7)
	jsr	L30334.l
	move.w	#2,(a7)
	move.l	U92206.l,-(a7)
	move.l	#L1266,-(a7)
	bsr  	L40664
	addq.l	#8,a7
	move.l	U92206.l,(a7)
	jsr	L30444.l
	bra.s	L40578

L40500:
	move.l	U92210.l,(a7)
	jsr	L31596.l
	move.w	#8,(a7)
	move.l	U92210.l,-(a7)
	move.l	#L32304,-(a7)
	bsr  	L40664
	addq.l	#8,a7
	move.w	d0,(a7)
	move.l	U92210.l,-(a7)
	jsr	L31908.l
	addq.l	#4,a7
	bra.s	L40578

	bra.s	L40578

L40554:
	sub.w	#10,d0
	cmp.w	#51,d0
	bhi.s	L40578
	asl.w	#2,d0
	movea.w	d0,a0
	adda.l	#T85658,a0
	movea.l	(a0),a0
	jmp	(a0)

L40578:
	move.w	-6(a6),U101462.l
	unlk	a6
	rts

L40590:
	link	a6,#-4
	movem.l	d6-d7,-(a7)
	move.l	10(a6),-4(a6)
	jsr	L28370.l
	move.w	d0,(a7)
	bsr  	L46448
	move.w	8(a6),(a7)
	bsr  	L46448
	tst.l	-4(a6)
	beq.s	L40654
	clr.w	d7
	bra.s	L40648

L40634:
	move.b	-4(a6,d7.w),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L46448
	addq.w	#1,d7
L40648:
	cmp.w	#4,d7
	blt.s	L40634
L40654:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L40664:
	link	a6,#-4
	movem.l	d2-d7,-(a7)
	bsr  	L45356
	move.l	8(a6),d0
	cmp.l	#L1266,d0
	bne.s	L40694
	bsr  	L48330
	bra.s	L40698

L40694:
	bsr  	L48260
L40698:
	movea.l	12(a6),a0
	adda.l	#20,a0
	move.w	(a0),d7
	movea.l	12(a6),a0
	adda.l	#22,a0
	move.w	(a0),d6
	move.w	U99182.l,d3
	asr.w	#1,d3
	move.w	U101144.l,d0
	asr.w	#1,d0
	move.w	d0,-4(a6)
	move.w	U99182.l,d5
	sub.w	d7,d5
	asr.w	#1,d5
	move.w	U101144.l,d4
	sub.w	d6,d4
	asr.w	#1,d4
	movea.l	12(a6),a0
	adda.l	#16,a0
	move.w	d5,(a0)
	movea.l	12(a6),a0
	adda.l	#18,a0
	move.w	d4,(a0)
	move.w	d6,(a7)
	move.w	d7,-(a7)
	move.w	d4,-(a7)
	move.w	d5,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	-4(a6),-(a7)
	move.w	d3,-(a7)
	clr.w	-(a7)
	jsr	L1298.l
	adda.l	#16,a7
	move.w	d6,(a7)
	move.w	d7,-(a7)
	move.w	d4,-(a7)
	move.w	d5,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	-4(a6),-(a7)
	move.w	d3,-(a7)
	move.w	#1,-(a7)
	jsr	L1298.l
	adda.l	#16,a7
	move.w	U101144.l,(a7)
	move.w	U99182.l,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#8,-(a7)
	clr.w	-(a7)
	move.l	12(a6),-(a7)
	jsr	L1194.l
	adda.l	#14,a7
	move.w	16(a6),-(a7)
	move.l	12(a6),-(a7)
	movea.l	8(a6),a0
	jsr	(a0)
	addq.l	#6,a7
	move.w	d0,-2(a6)
	move.w	d6,(a7)
	move.w	d7,-(a7)
	move.w	d4,-(a7)
	move.w	d5,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	-4(a6),-(a7)
	move.w	d3,-(a7)
	move.w	#2,-(a7)
	jsr	L1298.l
	adda.l	#16,a7
	move.w	d6,(a7)
	addq.w	#4,(a7)
	move.w	d7,-(a7)
	addq.w	#4,(a7)
	move.w	d4,-(a7)
	subq.w	#3,(a7)
	move.w	d5,-(a7)
	subq.w	#3,(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	-4(a6),-(a7)
	move.w	d3,-(a7)
	move.w	#3,-(a7)
	jsr	L1298.l
	adda.l	#16,a7
	move.w	-2(a6),d0
	tst.l	(a7)+
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L41000:
	link	a6,#-10
	bsr  	L48330
	tst.w	8(a6)
	bne  	L41248
	movea.l	10(a6),a0
	adda.l	#20,a0
	move.w	(a0),U98350.l
	movea.l	10(a6),a0
	adda.l	#22,a0
	move.w	(a0),U98352.l
	move.w	U99182.l,d0
	asr.w	#1,d0
	move.w	d0,U98354.l
	move.w	U99182.l,d0
	sub.w	U98350.l,d0
	asr.w	#1,d0
	move.w	d0,U98358.l
	movea.w	U101478.l,a0
	adda.l	a0,a0
	adda.l	#T85516,a0
	move.w	(a0),U98360.l
	move.w	U98352.l,d0
	asr.w	#1,d0
	add.w	U98360.l,d0
	move.w	d0,U98356.l
	movea.l	10(a6),a0
	adda.l	#16,a0
	move.w	U98358.l,(a0)
	movea.l	10(a6),a0
	adda.l	#18,a0
	move.w	U98360.l,(a0)
	move.w	U98352.l,(a7)
	move.w	U98350.l,-(a7)
	move.w	U98360.l,-(a7)
	move.w	U98358.l,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	U98356.l,-(a7)
	move.w	U98354.l,-(a7)
	clr.w	-(a7)
	jsr	L1298.l
	adda.l	#16,a7
	move.w	U101144.l,(a7)
	move.w	U99182.l,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#8,-(a7)
	clr.w	-(a7)
	move.l	10(a6),-(a7)
	jsr	L1194.l
	adda.l	#14,a7
	bra.s	L41312

L41248:
	move.w	U98352.l,(a7)
	addq.w	#4,(a7)
	move.w	U98350.l,-(a7)
	addq.w	#4,(a7)
	move.w	U98360.l,-(a7)
	subq.w	#3,(a7)
	move.w	U98358.l,-(a7)
	subq.w	#3,(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	U98356.l,-(a7)
	move.w	U98354.l,-(a7)
	move.w	#3,-(a7)
	jsr	L1298.l
	adda.l	#16,a7
L41312:
	unlk	a6
	rts

L41316:
	link	a6,#-4
	movea.l	10(a6),a0
	move.w	4(a0),(a7)
	move.w	8(a6),-(a7)
	clr.w	-(a7)
	bsr  	L42230
	addq.l	#4,a7
	movea.l	10(a6),a0
	move.w	6(a0),(a7)
	move.w	8(a6),-(a7)
	move.w	#1,-(a7)
	bsr  	L42230
	addq.l	#4,a7
	move.w	8(a6),d0
	cmp.w	U101462.l,d0
	bne.s	L41406
	move.w	8(a6),(a7)
	bsr  	L45052
	cmpi.w	#3,8(a6)
	bne.s	L41406
	bsr  	L47278
	jsr	L28194.l
	move.w	d0,(a7)
	bsr  	L46448
L41406:
	unlk	a6
	rts

L41410:
	link	a6,#-34
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
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
	move.w	28(a0),-4(a6)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	36(a0,a1.l),(a7)
	subq.w	#1,(a7)
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
	adda.l	#U98270,a1
	divs	(a1),d0
	sub.w	d0,(a7)
	move.w	#1,-(a7)
	jsr	L50174.l
	addq.l	#2,a7
	move.w	d0,-10(a6)
	move.l	#1000,-(a7)
	movea.w	12(a6),a0
	move.l	a0,-(a7)
	jsr	L84118.l
	addq.l	#8,a7
	add.l	#500,d0
	divs	-10(a6),d0
	ext.l	d0
	move.w	d0,-8(a6)
	move.l	a6,(a7)
	addi.l	#-32,(a7)
	move.w	d6,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.l	a6,(a7)
	addi.l	#-20,(a7)
	move.l	a6,-(a7)
	addi.l	#-32,(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.l	a6,(a7)
	addi.l	#-24,(a7)
	move.l	a6,-(a7)
	addi.l	#-32,(a7)
	move.w	#4,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	12(a6),d0
	cmp.w	-4(a6),d0
	ble.s	L41748
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	move.w	12(a6),-(a7)
	move.w	-10(a6),-(a7)
	jsr	L50202.l
	addq.l	#4,a7
	movea.l	(a7)+,a0
	move.w	d0,28(a0)
	cmp.w	-10(a6),d0
	bne.s	L41742
	move.w	#1000,-8(a6)
L41742:
	clr.w	-12(a6)
	bra.s	L41818

L41748:
	move.w	12(a6),d0
	cmp.w	-4(a6),d0
	bge.s	L41814
	move.w	12(a6),(a7)
	clr.w	-(a7)
	jsr	L50174.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	(a7)+,28(a0)
	bne.s	L41806
	clr.w	-8(a6)
L41806:
	move.w	#2,-12(a6)
	bra.s	L41818

L41814:
	bra  	L42220

L41818:
	move.w	d6,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	move.w	#2,-(a7)
	jsr	L22670.l
	addq.l	#2,a7
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),d0
	cmp.w	-4(a6),d0
	beq  	L42092
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	28(a0,a1.l),(a7)
	move.w	-4(a6),d0
	sub.w	d0,(a7)
	jsr	L50344.l
	movea.w	d7,a1
	adda.l	a1,a1
	adda.l	#U98270,a1
	muls	(a1),d0
	move.w	d0,-2(a6)
	movea.w	d7,a0
	addq.w	#2,a0
	adda.l	a0,a0
	move.w	-32(a6,a0.l),d0
	sub.w	-2(a6),d0
	ble  	L42076
	move.w	-2(a6),d0
	movea.l	a6,a1
	movea.w	d7,a2
	adda.w	-12(a6),a2
	adda.l	a2,a2
	adda.l	a2,a1
	add.w	d0,-24(a1)
	move.w	-2(a6),d0
	movea.l	a6,a1
	movea.w	d7,a2
	addq.w	#4,a2
	adda.l	a2,a2
	adda.l	a2,a1
	sub.w	d0,-24(a1)
	move.w	-14(a6),(a7)
	move.w	-16(a6),-(a7)
	move.w	-18(a6),-(a7)
	move.w	-20(a6),-(a7)
	move.w	-22(a6),-(a7)
	move.w	-24(a6),-(a7)
	move.w	#3,-(a7)
	jsr	L23836.l
	adda.l	#12,a7
	tst.w	-12(a6)
	bne.s	L42060
	movea.w	d7,a0
	addq.w	#2,a0
	adda.l	a0,a0
	move.w	-32(a6,a0.l),d0
	sub.w	-2(a6),d0
	movea.l	a6,a1
	movea.w	d7,a2
	adda.l	a2,a2
	adda.l	a2,a1
	add.w	d0,-32(a1)
L42060:
	movea.l	a6,a0
	movea.w	d7,a1
	addq.w	#2,a1
	adda.l	a1,a1
	adda.l	a1,a0
	move.w	-2(a6),-32(a0)
L42076:
	move.l	a6,(a7)
	addi.l	#-32,(a7)
	move.w	d6,-(a7)
	bsr  	L44174
	addq.l	#2,a7
L42092:
	tst.w	14(a6)
	beq.s	L42212
	move.l	a6,(a7)
	addi.l	#-34,(a7)
	move.l	a6,-(a7)
	addi.l	#-34,(a7)
	move.l	a6,-(a7)
	addi.l	#-34,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.w	d7,-(a7)
	addq.w	#8,(a7)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.w	-6(a6),d0
	cmp.w	-8(a6),d0
	beq.s	L42212
	move.w	-34(a6),(a7)
	move.w	-34(a6),-(a7)
	move.w	-34(a6),-(a7)
	move.w	-8(a6),-(a7)
	move.w	d7,-(a7)
	addq.w	#8,(a7)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1860.l
	adda.l	#10,a7
L42212:
	clr.w	(a7)
	jsr	L22670.l
L42220:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L42230:
	link	a6,#-6
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
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
	cmp.w	12(a6),d0
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
	adda.l	#U98270,a1
	divs	(a1),d0
	move.w	d0,-4(a6)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	36(a0,a1.l),(a7)
	subq.w	#1,(a7)
	move.w	-4(a6),d0
	sub.w	d0,(a7)
	move.w	#1,-(a7)
	jsr	L50174.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	move.l	#1000,-(a7)
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
	move.l	d0,-(a7)
	jsr	L84118.l
	addq.l	#8,a7
	add.l	#500,d0
	divs	(a7)+,d0
	ext.l	d0
	move.w	d0,-2(a6)
	move.w	-2(a6),(a7)
	move.w	d7,-(a7)
	addq.w	#8,(a7)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1860.l
	addq.l	#4,a7
	bra.s	L42560

L42474:
	move.l	a6,(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#2,(a7)
	move.w	d7,-(a7)
	addq.w	#8,(a7)
	movea.w	d6,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.w	-2(a6),(a7)
	move.w	d6,-(a7)
	move.w	d7,-(a7)
	bsr.s	L42636
	addq.l	#4,a7
	move.w	d0,-(a7)
	move.w	d6,d0
	muls	#40,d0
	move.w	d7,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	(a7)+,28(a0)
L42560:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L42570:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	tst.w	8(a6)
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
	cmp.w	8(a6),d0
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L42636:
	link	a6,#-4
	move.l	#1000,-(a7)
	movea.w	12(a6),a0
	move.l	a0,-(a7)
	move.w	10(a6),d0
	muls	#40,d0
	move.w	8(a6),d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	36(a0,a1.l),-(a7)
	subq.w	#1,(a7)
	move.w	10(a6),d0
	muls	#40,d0
	move.w	8(a6),d1
	addq.w	#2,d1
	asl.w	#1,d1
	ext.l	d1
	add.l	d1,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	0(a0,a1.l),d0
	ext.l	d0
	movea.w	8(a6),a1
	adda.l	a1,a1
	adda.l	#U98270,a1
	divs	(a1),d0
	sub.w	d0,(a7)
	move.w	#1,-(a7)
	jsr	L50174.l
	addq.l	#4,a7
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L84118.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L83960.l
	addq.l	#8,a7
	unlk	a6
	rts

L42772:
	link	a6,#-4
	move.w	8(a6),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	addq.l	#6,(a7)
	move.w	8(a6),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	addq.l	#4,(a7)
	move.w	8(a6),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	addq.l	#2,(a7)
	move.w	8(a6),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	move.w	#4,-(a7)
	movea.w	8(a6),a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.w	8(a6),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	move.l	U98276.l,-(a7)
	jsr	L49946.l
	addq.l	#4,a7
	unlk	a6
	rts

L42912:
	link	a6,#0
	movem.l	d6-d7,-(a7)
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
	move.l	#U99024,(a7)
	move.l	8(a6),-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	U99028.l,d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,U99028.l
	movea.l	8(a6),a0
	move.w	6(a0),(a7)
	movea.l	8(a6),a0
	move.w	4(a0),-(a7)
	movea.l	8(a6),a0
	move.w	2(a0),-(a7)
	movea.l	8(a6),a0
	move.w	(a0),-(a7)
	move.w	#4079,-(a7)
	jsr	L1620.l
	addq.l	#8,a7
	move.w	d0,U92262.l
	move.l	#U99104,(a7)
	move.l	8(a6),-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	U99108.l,d0
	ext.l	d0
	divs	#2,d0
	move.w	d0,U99108.l
	addq.w	#1,d0
	add.w	d0,U99104.l
	subq.w	#1,U99108.l
	movea.l	8(a6),a0
	move.w	6(a0),(a7)
	movea.l	8(a6),a0
	move.w	4(a0),-(a7)
	movea.l	8(a6),a0
	move.w	2(a0),-(a7)
	movea.l	8(a6),a0
	move.w	(a0),-(a7)
	move.w	#47,-(a7)
	jsr	L1620.l
	addq.l	#8,a7
	move.w	d0,U92266.l
	move.l	#U99064,(a7)
	move.l	8(a6),-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	U99070.l,d0
	ext.l	d0
	divs	#2,d0
	move.w	d0,U99070.l
	addq.w	#1,d0
	add.w	d0,U99066.l
	move.w	U99068.l,d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,U99068.l
	movea.l	8(a6),a0
	move.w	6(a0),(a7)
	movea.l	8(a6),a0
	move.w	4(a0),-(a7)
	movea.l	8(a6),a0
	move.w	2(a0),-(a7)
	movea.l	8(a6),a0
	move.w	(a0),-(a7)
	move.w	#4079,-(a7)
	jsr	L1620.l
	addq.l	#8,a7
	move.w	d0,U92264.l
	move.l	#U99144,(a7)
	move.l	#U99064,-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	movea.l	8(a6),a0
	move.w	6(a0),(a7)
	movea.l	8(a6),a0
	move.w	4(a0),-(a7)
	movea.l	8(a6),a0
	move.w	2(a0),-(a7)
	movea.l	8(a6),a0
	move.w	(a0),-(a7)
	move.w	#239,-(a7)
	jsr	L1620.l
	addq.l	#8,a7
	move.w	d0,U92268.l
	clr.w	d7
	bra.s	L43362

L43336:
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U92262,a0
	tst.w	(a0)
	bge.s	L43360
	move.l	#T85866,(a7)
	bsr  	L49566
L43360:
	addq.w	#1,d7
L43362:
	cmp.w	#3,d7
	ble.s	L43336
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L43378:
	link	a6,#-8
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	clr.l	(a7)
	move.w	#2,-(a7)
	jsr	L1482.l
	addq.l	#2,a7
	clr.w	(a7)
	clr.w	-(a7)
	move.l	10(a6),-(a7)
	move.w	#2,-(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1860.l
	adda.l	#10,a7
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	addq.l	#8,(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	-2(a6),(a7)
	move.w	-4(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	-8(a6),-(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1676.l
	addq.l	#8,a7
	move.w	d7,(a7)
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
	move.w	14(a6),18(a0)
	bne  	L43790
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	20(a6),20(a0)
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
	move.l	16(a6),22(a0)
	move.w	24(a6),d0
	subq.w	#1,d0
	move.w	d7,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	d0,36(a1)
	move.w	#32,(a7)
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	22(a6),d0
	move.w	d0,38(a0)
	move.w	d7,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	24(a6),d1
	move.w	d1,36(a1)
	muls	d1,d0
	move.w	d0,-(a7)
	move.l	16(a6),-(a7)
	jsr	L50304.l
	addq.l	#6,a7
L43790:
	move.w	d7,(a7)
	bsr  	L45052
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	clr.w	16(a0)
	clr.l	(a7)
	clr.w	-(a7)
	jsr	L1482.l
	addq.l	#2,a7
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L43836:
	link	a6,#-12
	tst.w	U99032.l
	bne  	L44066
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.w	#5,-(a7)
	move.w	U92262.l,-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	8(a6),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	addq.l	#8,(a7)
	jsr	L49946.l
	addq.l	#4,a7
	tst.w	d0
	beq  	L44066
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	U98276.l,-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	-4(a6),d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,-4(a6)
	move.w	-2(a6),d0
	ext.l	d0
	divs	#2,d0
	subq.w	#1,d0
	move.w	d0,-2(a6)
	move.w	-2(a6),(a7)
	move.w	-4(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	-8(a6),-(a7)
	move.w	#5,-(a7)
	move.w	U92262.l,-(a7)
	jsr	L1860.l
	adda.l	#10,a7
	clr.w	(a7)
	bsr  	L42772
	move.w	-2(a6),d0
	addq.w	#2,d0
	add.w	d0,-6(a6)
	move.w	8(a6),d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	addq.l	#8,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
L44066:
	unlk	a6
	rts

L44070:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	10(a6)
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L44174:
	link	a6,#-8
	movem.l	d6-d7/a5,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr  	L44486
	move.w	d7,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	movea.l	10(a6),a0
	move.w	6(a0),(a7)
	movea.l	10(a6),a0
	move.w	4(a0),-(a7)
	movea.l	10(a6),a0
	move.w	2(a0),-(a7)
	movea.l	10(a6),a0
	move.w	(a0),-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
	movea.l	10(a6),a0
	move.w	4(a0),d0
	subq.w	#1,d0
	ext.l	d0
	divs	U98270.l,d0
	addq.w	#2,d0
	move.w	d0,-2(a6)
	movea.l	10(a6),a0
	move.w	(a0),d0
	movea.l	10(a6),a1
	move.w	(a1),d1
	sub.w	(a5),d1
	ext.l	d1
	divs	U98270.l,d1
	swap	d1
	sub.w	d1,d0
	move.w	d0,-4(a6)
	movea.l	10(a6),a0
	move.w	2(a0),d0
	sub.w	U98274.l,d0
	movea.l	10(a6),a1
	move.w	2(a1),d1
	sub.w	2(a5),d1
	ext.l	d1
	divs	U98272.l,d1
	swap	d1
	sub.w	d1,d0
	move.w	d0,-6(a6)
	movea.l	10(a6),a0
	move.w	2(a0),d0
	sub.w	2(a5),d0
	ext.l	d0
	divs	U98272.l,d0
	add.w	30(a5),d0
	muls	36(a5),d0
	movea.l	10(a6),a1
	move.w	(a1),d1
	sub.w	(a5),d1
	ext.l	d1
	divs	U98270.l,d1
	add.w	d1,d0
	add.w	28(a5),d0
	move.w	d0,-8(a6)
	movea.l	10(a6),a0
	move.w	2(a0),(a7)
	movea.l	10(a6),a0
	move.w	6(a0),d0
	add.w	d0,(a7)
	move.w	-6(a6),-(a7)
	move.w	-4(a6),-(a7)
	move.w	-2(a6),-(a7)
	move.w	U98272.l,-(a7)
	move.w	36(a5),-(a7)
	move.l	22(a5),d0
	move.w	-8(a6),d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,-(a7)
	jsr	L24012.l
	adda.l	#14,a7
	move.w	d7,(a7)
	bsr.s	L44486
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L44486:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	move.w	8(a6),d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	tst.w	20(a5)
	beq.s	L44598
	move.w	U98272.l,(a7)
	move.w	U98270.l,-(a7)
	move.w	34(a5),d0
	sub.w	30(a5),d0
	subq.w	#1,d0
	muls	U98272.l,d0
	move.w	d0,-(a7)
	move.w	2(a5),d0
	add.w	d0,(a7)
	move.w	32(a5),d0
	sub.w	28(a5),d0
	subq.w	#1,d0
	muls	U98270.l,d0
	move.w	d0,-(a7)
	move.w	(a5),d0
	add.w	d0,(a7)
	move.w	#2,-(a7)
	move.w	#1,-(a7)
	move.w	#3,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
L44598:
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L44608:
	link	a6,#-4
	clr.w	U92244.l
	clr.w	d0
	move.w	d0,U92240.l
	move.w	d0,U92242.l
	unlk	a6
	rts

L44636:
	link	a6,#-4
	bra.s	L44654

L44642:
	move.w	U101462.l,(a7)
	bsr.s	L44710
	bsr  	L46108
L44654:
	move.w	U101462.l,d0
	cmp.w	U100904.l,d0
	bne.s	L44642
	move.w	U101462.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	18(a0)
	bne.s	L44700
	jsr	L22368.l
	bra.s	L44706

L44700:
	jsr	L22560.l
L44706:
	unlk	a6
	rts

L44710:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	bsr  	L45356
	move.w	d7,d0
	move.w	d0,U100904.l
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	16(a0)
	bne.s	L44804
	clr.w	(a7)
	move.w	#10,-(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U92262,a1
	move.w	0(a0,a1.l),-(a7)
	jsr	L1860.l
	addq.l	#4,a7
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	jsr	L22840.l
	bra  	L45042

L44804:
	move.w	d7,d0
	bra  	L45016

L44810:
	move.w	#80,(a7)
	move.w	#25,-(a7)
	move.w	#1,-(a7)
	move.l	#U92270,-(a7)
	clr.w	-(a7)
	move.l	#T85908,-(a7)
	clr.w	-(a7)
	bsr  	L43378
	adda.l	#16,a7
	clr.w	(a7)
	move.w	#8,-(a7)
	move.w	U92262.l,-(a7)
	jsr	L1860.l
	addq.l	#4,a7
	clr.w	(a7)
	move.w	#9,-(a7)
	move.w	U92262.l,-(a7)
	jsr	L1860.l
	addq.l	#4,a7
	bra  	L45042

L44892:
	move.w	#3,(a7)
	bsr  	L43836
	move.w	#80,(a7)
	move.w	#25,-(a7)
	move.w	#1,-(a7)
	move.l	#U94270,-(a7)
	clr.w	-(a7)
	move.l	#T85922,-(a7)
	move.w	#3,-(a7)
	bsr  	L43378
	adda.l	#16,a7
	bra.s	L45042

L44942:
	move.w	#1,(a7)
	move.l	#T85934,-(a7)
	move.w	#2,-(a7)
	bsr  	L43378
	addq.l	#6,a7
	bra.s	L45042

L44964:
	move.w	#1,(a7)
	bsr  	L43836
	move.w	#80,(a7)
	move.w	#25,-(a7)
	move.w	#1,-(a7)
	move.l	#U96270,-(a7)
	clr.w	-(a7)
	move.l	#T85951,-(a7)
	move.w	#1,-(a7)
	bsr  	L43378
	adda.l	#16,a7
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L45052:
	link	a6,#-4
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,d0
	bra.s	L45142

L45068:
	move.w	#24,-2(a6)
	move.w	#79,-4(a6)
	bra.s	L45164

L45082:
	move.w	d7,(a7)
	bsr  	L45442
	move.w	d0,-2(a6)
	move.w	d7,(a7)
	bsr  	L45492
	move.w	d0,-4(a6)
	bra.s	L45164

L45104:
	move.w	#24,-2(a6)
	move.w	#79,-4(a6)
	bra.s	L45164

L45118:
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	jsr	L22392.l
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
	move.w	-2(a6),(a7)
	move.w	-4(a6),-(a7)
	move.w	d7,-(a7)
	bsr  	L45386
	addq.l	#2,a7
	move.w	d0,-(a7)
	move.w	d7,-(a7)
	bsr  	L45414
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L22588.l
	addq.l	#6,a7
L45206:
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	jsr	L22840.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L45236:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.l	10(a6),(a7)
	jsr	L22840.l
	move.w	d7,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	18(a0)
	bne.s	L45292
	move.l	10(a6),(a7)
	move.w	d7,-(a7)
	bsr  	L44174
	addq.l	#2,a7
	bra.s	L45322

L45292:
	move.l	10(a6),(a7)
	jsr	L28066.l
	move.w	U99098.l,(a7)
	move.w	U99096.l,-(a7)
	jsr	L24504.l
	addq.l	#2,a7
L45322:
	move.w	U101462.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,(a7)
	jsr	L22840.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L45356:
	link	a6,#-4
	cmpi.w	#2,U100904.l
	bne.s	L45382
	move.l	#U99096,(a7)
	jsr	L24328.l
L45382:
	unlk	a6
	rts

L45386:
	link	a6,#-4
	move.w	8(a6),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	34(a0,a1.l),d0
	unlk	a6
	rts

L45414:
	link	a6,#-4
	move.w	8(a6),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	32(a0,a1.l),d0
	unlk	a6
	rts

L45442:
	link	a6,#-4
	move.w	8(a6),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	6(a0,a1.l),d0
	ext.l	d0
	divs	U98272.l,d0
	move.w	d0,(a7)
	move.w	#1,-(a7)
	jsr	L50174.l
	addq.l	#2,a7
	unlk	a6
	rts

L45492:
	link	a6,#-4
	move.w	8(a6),d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	4(a0,a1.l),d0
	ext.l	d0
	divs	U98270.l,d0
	move.w	d0,(a7)
	move.w	#2,-(a7)
	jsr	L50174.l
	addq.l	#2,a7
	unlk	a6
	rts

L45542:
	link	a6,#-20
	move.w	#27,-16(a6)
	move.w	U92266.l,-10(a6)
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	8(a6),-(a7)
	move.w	#47,-(a7)
	clr.w	-(a7)
	jsr	L1948.l
	addq.l	#8,a7
	move.l	a6,(a7)
	addi.l	#-16,(a7)
	bsr  	L37878
	bsr  	L46108
	unlk	a6
	rts

L45602:
	link	a6,#-6
	movem.l	d7/a5,-(a7)
	movea.l	12(a6),a5
	move.w	8(a6),d0
	sub.w	28(a5),d0
	move.w	d0,-4(a6)
	move.w	10(a6),d0
	sub.w	30(a5),d0
	move.w	d0,-6(a6)
	clr.w	(a7)
	move.w	U100904.l,-(a7)
	bsr  	L44070
	addq.l	#2,a7
	move.w	U100904.l,(a7)
	bsr  	L45492
	move.w	d0,-2(a6)
	cmp.w	-4(a6),d0
	blt.s	L45678
	tst.w	-4(a6)
	bgt.s	L45712
L45678:
	move.w	#1,(a7)
	move.w	8(a6),-(a7)
	move.w	-2(a6),d0
	ext.l	d0
	divs	#2,d0
	sub.w	d0,(a7)
	move.w	U100904.l,-(a7)
	clr.w	-(a7)
	bsr  	L41410
	addq.l	#6,a7
L45712:
	move.w	U100904.l,(a7)
	bsr  	L45442
	move.w	d0,-2(a6)
	cmp.w	-6(a6),d0
	blt.s	L45738
	tst.w	-6(a6)
	bgt.s	L45774
L45738:
	move.w	#1,(a7)
	move.w	10(a6),-(a7)
	move.w	-2(a6),d0
	ext.l	d0
	divs	#2,d0
	sub.w	d0,(a7)
	move.w	U100904.l,-(a7)
	move.w	#1,-(a7)
	bsr  	L41410
	addq.l	#6,a7
L45774:
	move.w	#1,(a7)
	move.w	U100904.l,-(a7)
	bsr  	L44070
	addq.l	#2,a7
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L45800:
	link	a6,#0
	movem.l	d5-d7/a5,-(a7)
	move.w	10(a6),d7
	move.w	12(a6),d6
	bsr  	L44636
	move.w	U100904.l,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	move.w	U100904.l,(a7)
	bsr  	L44486
	addq.w	#1,32(a5)
	movea.w	d7,a0
	move.w	d6,d1
	subq.w	#1,d1
	muls	36(a5),d1
	adda.w	d1,a0
	adda.l	22(a5),a0
	move.b	9(a6),-1(a0)
	tst.w	26(a5)
	beq.s	L45924
	cmp.w	U98280.l,d6
	bge.s	L45894
	move.w	d6,U98280.l
L45894:
	cmp.w	U98282.l,d6
	ble.s	L45908
	move.w	d6,U98282.l
L45908:
	cmp.w	U98284.l,d7
	bge.s	L45922
	move.w	d7,U98284.l
L45922:
	bra.s	L46004

L45924:
	move.w	d6,d0
	sub.w	30(a5),d0
	subq.w	#1,d0
	muls	U98272.l,d0
	move.w	d0,(a7)
	move.w	2(a5),d0
	add.w	d0,(a7)
	move.w	d7,d0
	sub.w	28(a5),d0
	subq.w	#1,d0
	muls	U98270.l,d0
	move.w	d0,-(a7)
	move.w	(a5),d0
	add.w	d0,(a7)
	move.b	9(a6),d0
	ext.w	d0
	move.w	d0,-(a7)
	jsr	L24148.l
	addq.l	#4,a7
	move.l	a5,(a7)
	move.w	d6,-(a7)
	move.w	d7,-(a7)
	bsr  	L45602
	addq.l	#4,a7
	move.w	U100904.l,(a7)
	bsr  	L44486
L46004:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7/a5
	unlk	a6
	rts

L46014:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	bsr  	L44636
	move.w	U100904.l,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	move.w	U100904.l,(a7)
	bsr  	L44486
	tst.w	26(a5)
	bne.s	L46076
	move.l	a5,(a7)
	move.w	10(a6),-(a7)
	move.w	8(a6),-(a7)
	bsr  	L45602
	addq.l	#4,a7
L46076:
	move.w	8(a6),32(a5)
	move.w	10(a6),34(a5)
	move.w	U100904.l,(a7)
	bsr  	L44486
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L46108:
	link	a6,#-12
	movem.l	d5-d7/a5,-(a7)
	move.w	U100904.l,d6
	lea 	-12(a6),a5
L46126:
	tst.w	U92226.l
	beq.s	L46150
	bsr  	L48374
	bsr  	L48392
	bsr  	L48374
	bsr  	L48392
L46150:
	tst.w	U92226.l
	beq.s	L46162
	clr.w	d0
	bra.s	L46164

L46162:
	moveq	#2,d0
L46164:
	or.w	#49,d0
	move.w	d0,-2(a6)
	move.l	a5,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a5,-(a7)
	move.l	a5,-(a7)
	move.l	a5,-(a7)
	move.l	a5,-(a7)
	clr.w	-(a7)
	cmp.w	#-2,d6
	bne.s	L46200
	move.w	#40,-(a7)
	bra.s	L46202

L46200:
	clr.w	-(a7)
L46202:
	move.l	U101480.l,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	move.w	#1,-(a7)
	move.w	-2(a6),-(a7)
	jsr	L790.l
	adda.l	#56,a7
	move.w	d0,d7
	move.l	a5,(a7)
	move.l	a5,-(a7)
	move.l	a5,-(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.w	#10,-(a7)
	clr.w	-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.w	-6(a6),(a7)
	bsr  	L42570
	move.w	d0,d6
	move.l	a5,(a7)
	move.l	a5,-(a7)
	move.l	a6,-(a7)
	addi.l	#-10,(a7)
	move.l	a6,-(a7)
	subq.l	#8,(a7)
	jsr	L1514.l
	adda.l	#12,a7
	move.w	-8(a6),d0
	cmp.w	U92228.l,d0
	bne.s	L46352
	move.w	-10(a6),d0
	cmp.w	U92230.l,d0
	beq.s	L46374
L46352:
	move.w	-8(a6),U92228.l
	move.w	-10(a6),U92230.l
	bsr  	L48330
	bra.s	L46388

L46374:
	move.w	d7,d0
	and.w	#-33,d0
	bne.s	L46388
	cmp.w	#-2,d6
	bne.s	L46432
L46388:
	btst	#0,d7
	beq.s	L46412
	jsr	L28370.l
	cmp.w	-4(a6),d0
	beq.s	L46412
	move.w	-4(a6),(a7)
	bsr.s	L46448
L46412:
	btst	#4,d7
	beq.s	L46428
	move.l	#U99820,(a7)
	bsr  	L37878
L46428:
	bra  	L46126

L46432:
	move.w	U92244.l,d0
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7/a5
	unlk	a6
	rts

L46448:
	link	a6,#-6
	move.w	#1,-2(a6)
	cmpi.w	#-1,U92244.l
	beq.s	L46526
	jsr	L28386.l
	move.w	8(a6),d1
	ext.w	d1
	cmp.w	d1,d0
	beq.s	L46516
	jsr	L28354.l
	move.w	8(a6),d1
	ext.w	d1
	cmp.w	d1,d0
	beq.s	L46516
	jsr	L28370.l
	move.w	8(a6),d1
	ext.w	d1
	cmp.w	d1,d0
	bne.s	L46526
L46516:
	bsr  	L44608
	move.w	#-1,-2(a6)
L46526:
	move.w	U92240.l,d0
	cmp.w	U92242.l,d0
	bne.s	L46548
	tst.w	U92244.l
	bne.s	L46616
L46548:
	movea.w	U92240.l,a0
	adda.l	#U92240,a0
	move.l	a0,-(a7)
	move.w	8(a6),-(a7)
	bsr  	L39290
	addq.l	#2,a7
	movea.l	(a7)+,a0
	move.b	d0,6(a0)
	addq.w	#1,U92240.l
	move.w	U92240.l,d0
	ext.l	d0
	divs	#16,d0
	swap	d0
	move.w	d0,U92240.l
	clr.w	d0
	move.w	-2(a6),d0
	or.w	d0,U92244.l
L46616:
	unlk	a6
	rts

L46620:
	link	a6,#-6
L46624:
	bsr  	L46108
	tst.w	d0
	beq.s	L46698
	movea.w	U92242.l,a0
	adda.l	#U92240,a0
	move.b	6(a0),-2(a6)
	addq.w	#1,U92242.l
	move.w	U92242.l,d0
	ext.l	d0
	divs	#16,d0
	swap	d0
	move.w	d0,U92242.l
	cmp.w	U92240.l,d0
	bne.s	L46688
	clr.w	d0
	bra.s	L46690

L46688:
	moveq	#1,d0
L46690:
	move.w	d0,U92244.l
	bra.s	L46700

L46698:
	bra.s	L46624

L46700:
	move.b	-2(a6),d0
	ext.w	d0
	and.w	#255,d0
	unlk	a6
	rts

L46714:
	link	a6,#-10
	movem.l	d7/a5,-(a7)
	bsr  	L44636
	move.w	U100904.l,d0
	muls	#40,d0
	movea.l	d0,a5
	adda.l	#U99016,a5
	tst.w	26(a5)
	beq.s	L46776
	move.w	26(a5),-10(a6)
	move.w	#2,(a7)
	bsr  	L47436
	clr.w	(a7)
	bsr  	L47436
	move.w	-10(a6),26(a5)
L46776:
	move.w	U100904.l,(a7)
	bsr  	L44486
	move.l	22(a5),(a7)
	move.l	22(a5),d0
	move.w	36(a5),d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,-(a7)
	move.w	38(a5),d0
	subq.w	#1,d0
	muls	36(a5),d0
	move.w	d0,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	#32,(a7)
	move.w	36(a5),-(a7)
	move.w	38(a5),d0
	subq.w	#1,d0
	muls	36(a5),d0
	ext.l	d0
	add.l	22(a5),d0
	move.l	d0,-(a7)
	jsr	L50304.l
	addq.l	#6,a7
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	a5,-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	-2(a6),(a7)
	move.w	U98272.l,d0
	sub.w	d0,(a7)
	move.w	-4(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	-8(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	U98272.l,d0
	add.w	d0,(a7)
	move.w	-8(a6),-(a7)
	move.w	#3,-(a7)
	jsr	L23836.l
	adda.l	#12,a7
	move.w	U98272.l,(a7)
	move.w	-4(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	-2(a6),d0
	add.w	d0,(a7)
	move.w	U98272.l,d0
	sub.w	d0,(a7)
	move.w	-8(a6),-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
	move.w	U100904.l,(a7)
	bsr  	L44486
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L47004:
	link	a6,#-16
	bsr  	L44636
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-12(a6)
	move.w	U100904.l,(a7)
	bsr  	L44486
	movea.l	-12(a6),a0
	move.l	22(a0),d0
	movea.l	-12(a6),a1
	move.w	36(a1),d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,(a7)
	movea.l	-12(a6),a0
	move.l	22(a0),-(a7)
	move.w	U100904.l,-(a7)
	bsr  	L45442
	addq.l	#2,a7
	subq.w	#1,d0
	movea.l	-12(a6),a1
	muls	36(a1),d0
	move.w	d0,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	#32,(a7)
	movea.l	-12(a6),a0
	move.w	36(a0),-(a7)
	movea.l	-12(a6),a0
	move.l	22(a0),-(a7)
	jsr	L50304.l
	addq.l	#6,a7
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	-12(a6),-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	-2(a6),d0
	ext.l	d0
	divs	U98272.l,d0
	swap	d0
	sub.w	d0,-2(a6)
	move.w	-2(a6),(a7)
	move.w	U98272.l,d0
	sub.w	d0,(a7)
	move.w	-4(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	U98272.l,d0
	add.w	d0,(a7)
	move.w	-8(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	-8(a6),-(a7)
	move.w	#3,-(a7)
	jsr	L23836.l
	adda.l	#12,a7
	move.w	U98272.l,(a7)
	move.w	-4(a6),-(a7)
	move.w	-6(a6),-(a7)
	move.w	-8(a6),-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
	move.w	U100904.l,(a7)
	bsr  	L44486
	unlk	a6
	rts

L47278:
	link	a6,#-8
	move.w	U101462.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-4(a6)
	movea.l	-4(a6),a0
	tst.w	18(a0)
	bne.s	L47368
	movea.l	-4(a6),a0
	moveq	#1,d0
	move.w	d0,34(a0)
	movea.l	-4(a6),a1
	move.w	d0,32(a1)
	move.w	#32,(a7)
	movea.l	-4(a6),a0
	move.w	36(a0),d0
	movea.l	-4(a6),a1
	muls	38(a1),d0
	move.w	d0,-(a7)
	movea.l	-4(a6),a0
	move.l	22(a0),-(a7)
	jsr	L50304.l
	addq.l	#6,a7
L47368:
	bsr  	L44636
	movea.l	-4(a6),a0
	move.w	6(a0),(a7)
	movea.l	-4(a6),a0
	move.w	4(a0),-(a7)
	movea.l	-4(a6),a0
	move.w	2(a0),-(a7)
	movea.l	-4(a6),a0
	move.w	(a0),-(a7)
	clr.w	-(a7)
	clr.w	-(a7)
	move.w	#1,-(a7)
	jsr	L23682.l
	adda.l	#12,a7
	move.w	U100904.l,(a7)
	bsr  	L44486
	unlk	a6
	rts

L47436:
	link	a6,#-14
	bsr  	L44636
	move.w	8(a6),d0
	bra  	L47914

L47452:
	move.w	U100904.l,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	move.w	26(a0,a1.l),d0
	move.w	U100904.l,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	addq.w	#1,26(a1)
	tst.w	d0
	bne.s	L47584
	move.w	#-1,U98282.l
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	34(a0),U98280.l
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	32(a0),U98284.l
	move.w	U100904.l,(a7)
	bsr  	L44486
	clr.w	(a7)
	move.w	U100904.l,-(a7)
	bsr  	L44070
	addq.l	#2,a7
L47584:
	bra  	L47936

L47588:
	move.w	U100904.l,d0
	muls	#40,d0
	movea.l	d0,a0
	movea.l	#U99016,a1
	tst.w	26(a0,a1.l)
	beq  	L47936
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	move.w	#1,26(a0)
L47638:
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	tst.w	26(a0)
	ble  	L47936
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	movea.l	d0,a0
	subq.w	#1,26(a0)
	bne  	L47910
	cmpi.w	#-1,U98282.l
	beq  	L47884
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	U100904.l,d0
	muls	#40,d0
	add.l	#U99016,d0
	move.l	d0,-(a7)
	move.w	#8,-(a7)
	jsr	L50230.l
	addq.l	#6,a7
	move.w	U98280.l,d0
	move.w	U100904.l,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	30(a1),d1
	sub.w	d1,d0
	subq.w	#1,d0
	muls	U98272.l,d0
	add.w	d0,-6(a6)
	move.w	U98282.l,d0
	sub.w	U98280.l,d0
	addq.w	#1,d0
	muls	U98272.l,d0
	move.w	d0,-2(a6)
	cmp.w	U98272.l,d0
	bne.s	L47868
	move.w	U98284.l,d0
	move.w	U100904.l,d1
	muls	#40,d1
	add.l	#U99016,d1
	movea.l	d1,a1
	move.w	28(a1),d1
	sub.w	d1,d0
	subq.w	#1,d0
	muls	U98270.l,d0
	move.w	d0,-10(a6)
	move.w	-10(a6),d0
	add.w	d0,-8(a6)
	move.w	-10(a6),d0
	sub.w	d0,-4(a6)
L47868:
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.w	U100904.l,-(a7)
	bsr  	L44174
	addq.l	#2,a7
L47884:
	move.w	#1,(a7)
	move.w	U100904.l,-(a7)
	bsr  	L44070
	addq.l	#2,a7
	move.w	U100904.l,(a7)
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
	unlk	a6
	rts

L47940:
	link	a6,#-4
	clr.w	d0
	move.w	d0,U101462.l
	move.w	d0,(a7)
	bsr  	L45052
	unlk	a6
	rts

L47962:
	link	a6,#-4
	tst.w	U98286.l
	beq.s	L47990
	tst.w	U99152.l
	bne.s	L47990
	move.w	#3,(a7)
	bsr  	L37732
L47990:
	unlk	a6
	rts

L47994:
	link	a6,#-4
	tst.w	U98288.l
	beq.s	L48022
	tst.w	U99072.l
	bne.s	L48022
	move.w	#1,(a7)
	bsr  	L37732
L48022:
	unlk	a6
	rts

L48026:
	link	a6,#-4
	moveq	#3,d0
	move.w	d0,U101462.l
	move.w	d0,(a7)
	bsr  	L45052
	unlk	a6
	rts

L48048:
	link	a6,#-4
	moveq	#1,d0
	move.w	d0,U101462.l
	move.w	d0,(a7)
	bsr  	L45052
	move.w	#2,(a7)
	bsr  	L47436
	clr.w	(a7)
	bsr  	L47436
	unlk	a6
	rts

L48084:
	link	a6,#-4
	tst.w	U98292.l
	bne.s	L48106
	bsr.s	L48048
	bsr  	L47278
	bsr  	L47940
L48106:
	move.w	#1,(a7)
	cmpi.w	#1,8(a6)
	bne.s	L48124
	move.w	#58,-(a7)
	bra.s	L48128

L48124:
	move.w	#59,-(a7)
L48128:
	move.l	U92190.l,-(a7)
	jsr	L1002.l
	addq.l	#6,a7
	move.w	8(a6),d0
	or.w	d0,U98292.l
	unlk	a6
	rts

L48156:
	link	a6,#-4
	move.w	U98292.l,d0
	and.w	8(a6),d0
	beq.s	L48206
	clr.w	(a7)
	cmpi.w	#1,8(a6)
	bne.s	L48188
	move.w	#58,-(a7)
	bra.s	L48192

L48188:
	move.w	#59,-(a7)
L48192:
	move.l	U92190.l,-(a7)
	jsr	L1002.l
	addq.l	#6,a7
L48206:
	move.w	8(a6),d0
	not.w	d0
	and.w	d0,U98292.l
	tst.w	U98292.l
	bne.s	L48230
	bsr  	L47994
L48230:
	unlk	a6
	rts

L48234:
	link	a6,#-4
	moveq	#2,d0
	move.w	d0,U101462.l
	move.w	d0,(a7)
	bsr  	L45052
	bsr  	L44636
	unlk	a6
	rts

L48260:
	link	a6,#-6
	tst.w	U92226.l
	beq.s	L48326
	bsr.s	L48374
	clr.l	(a7)
	move.w	#256,-(a7)
	jsr	L1482.l
	addq.l	#2,a7
	clr.w	U92226.l
	move.l	a6,(a7)
	subq.l	#2,(a7)
	move.l	a6,-(a7)
	subq.l	#2,(a7)
	move.l	#U92230,-(a7)
	move.l	#U92228,-(a7)
	jsr	L1514.l
	adda.l	#12,a7
L48326:
	unlk	a6
	rts

L48330:
	link	a6,#-4
	tst.w	U92226.l
	bne.s	L48370
	bsr  	L45356
	clr.l	(a7)
	move.w	#257,-(a7)
	jsr	L1482.l
	addq.l	#2,a7
	move.w	#1,U92226.l
	bsr.s	L48392
L48370:
	unlk	a6
	rts

L48374:
	link	a6,#-4
	move.w	#1,(a7)
	jsr	L1924.l
	unlk	a6
	rts

L48392:
	link	a6,#-4
	clr.w	(a7)
	jsr	L1924.l
	unlk	a6
	rts

L48408:
	link	a6,#-4
	clr.w	d0
	move.w	d0,U98290.l
	move.w	d0,(a7)
	move.w	#27,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	unlk	a6
	rts

L48444:
	link	a6,#-4
	moveq	#1,d0
	move.w	d0,U98290.l
	move.w	d0,(a7)
	move.w	#27,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	unlk	a6
	rts

L48480:
	link	a6,#-4
	move.w	#1,(a7)
	bsr.s	L48506
	unlk	a6
	rts

L48494:
	link	a6,#-4
	clr.w	(a7)
	bsr.s	L48506
	unlk	a6
	rts

L48506:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	moveq	#19,d7
	bra.s	L48546

L48518:
	move.w	8(a6),d0
	moveq	#1,d1
	eor.w	d1,d0
	move.w	d0,(a7)
	move.w	d7,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	addq.w	#1,d7
L48546:
	cmp.w	#36,d7
	blt.s	L48518
	bra.s	L48576

L48554:
	move.w	8(a6),(a7)
	move.w	d7,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	addq.w	#1,d7
L48576:
	cmp.w	#48,d7
	ble.s	L48554
	moveq	#53,d7
	bra.s	L48614

L48586:
	move.w	8(a6),d0
	moveq	#1,d1
	eor.w	d1,d0
	move.w	d0,(a7)
	move.w	d7,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	addq.w	#1,d7
L48614:
	cmp.w	#61,d7
	blt.s	L48586
	clr.w	(a7)
	move.w	#22,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	clr.w	(a7)
	move.w	#25,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	clr.w	(a7)
	move.w	#56,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	clr.w	(a7)
	move.w	#38,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	clr.w	(a7)
	move.w	#43,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	tst.w	8(a6)
	bne.s	L48742
	tst.w	U98290.l
	bne.s	L48738
	bsr  	L48408
L48738:
	bsr  	L49460
L48742:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L48752:
	link	a6,#-16
	move.w	#16,(a7)
	move.w	#11,-(a7)
	jsr	L172.l
	addq.l	#2,a7
	move.w	d0,U101192.l
	move.w	#1,U92226.l
	jsr	L674.l
	tst.w	d0
	beq.s	L48836
	move.l	a6,(a7)
	subq.l	#8,(a7)
	move.l	a6,-(a7)
	subq.l	#6,(a7)
	move.l	a6,-(a7)
	subq.l	#4,(a7)
	move.l	a6,-(a7)
	subq.l	#2,(a7)
	jsr	L1418.l
	adda.l	#12,a7
	move.w	d0,(a7)
	jsr	L27114.l
	tst.w	d0
	bne.s	L48846
L48836:
	move.l	#T85456,(a7)
	bsr  	L49566
L48846:
	jsr	L22628.l
	move.w	d0,U98270.l
	jsr	L22642.l
	move.w	d0,U98272.l
	jsr	L22656.l
	move.w	d0,-(a7)
	move.w	U98272.l,d0
	sub.w	(a7)+,d0
	move.w	d0,U98274.l
	move.l	#U101144,(a7)
	move.l	#U99182,-(a7)
	move.l	#U99184,-(a7)
	move.l	#U99180,-(a7)
	move.w	#4,-(a7)
	clr.w	-(a7)
	jsr	L1780.l
	adda.l	#16,a7
	move.l	#U99820,U101480.l
	clr.l	(a7)
	clr.w	-(a7)
	jsr	L1482.l
	addq.l	#2,a7
	move.l	#T85962,(a7)
	jsr	L2046.l
	tst.w	d0
	bne.s	L48982
	move.l	#T85424,(a7)
	bsr  	L49566
L48982:
	move.w	#2,(a7)
	bsr  	L37522
	move.l	d0,U92202.l
	move.w	#3,(a7)
	bsr  	L37522
	move.l	d0,U92206.l
	move.w	#4,(a7)
	bsr  	L37522
	move.l	d0,U92198.l
	move.w	#1,(a7)
	bsr  	L37522
	move.l	d0,U92210.l
	move.w	#5,(a7)
	bsr  	L37522
	move.l	d0,U92214.l
	move.w	#6,(a7)
	bsr  	L37522
	move.l	d0,U92218.l
	move.w	#7,(a7)
	bsr  	L37522
	move.l	d0,U92222.l
	move.l	#T85492,U101188.l
	move.l	#T85508,U98276.l
	move.w	U101144.l,(a7)
	move.w	U99182.l,-(a7)
	move.w	U99184.l,-(a7)
	move.w	U99180.l,-(a7)
	move.l	U98276.l,-(a7)
	jsr	L49810.l
	adda.l	#10,a7
	move.l	U98276.l,(a7)
	bsr  	L42912
	move.w	#-2,U101462.l
	move.w	#-1,U100904.l
	jsr	L77804.l
	cmp.l	#57343,d0
	ble.s	L49210
	move.l	#32256,(a7)
	jsr	L77748.l
	move.l	d0,U92236.l
	move.w	#1,U92232.l
	bra.s	L49232

L49210:
	jsr	L21006.l
	tst.w	d0
	beq.s	L49224
	moveq	#2,d0
	bra.s	L49226

L49224:
	clr.w	d0
L49226:
	move.w	d0,U92232.l
L49232:
	cmpi.w	#1,U92232.l
	bne.s	L49246
	moveq	#1,d0
	bra.s	L49248

L49246:
	clr.w	d0
L49248:
	move.w	d0,U92234.l
	move.l	U92236.l,(a7)
	move.w	U92234.l,d0
	muls	U92232.l,d0
	move.w	d0,-(a7)
	jsr	L24290.l
	addq.l	#2,a7
	move.w	#1,U98286.l
	move.w	#1,U98288.l
	clr.w	U98292.l
	bsr  	L44608
	clr.l	(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	move.l	d0,U91942.l
	jsr	L236.l
	movea.l	U91932.l,a0
	addq.l	#6,a0
	move.l	(a0),U91936.l
	move.l	U91942.l,(a7)
	move.w	#32,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	unlk	a6
	rts

L49370:
	link	a6,#-4
	clr.w	(a7)
	bsr  	L37522
	move.l	d0,U92190.l
	move.w	#1,(a7)
	move.l	U92190.l,-(a7)
	jsr	L970.l
	addq.l	#4,a7
	move.w	U92234.l,(a7)
	bsr.s	L49422
	bsr  	L48408
	bsr.s	L49460
	unlk	a6
	rts

L49422:
	link	a6,#-4
	move.w	8(a6),d0
	move.w	d0,U92234.l
	move.w	d0,(a7)
	move.w	#57,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1002.l
	addq.l	#6,a7
	unlk	a6
	rts

L49460:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L21006.l
	tst.w	d0
	bne.s	L49556
	moveq	#19,d7
	bra.s	L49502

L49482:
	clr.w	(a7)
	move.w	d7,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	addq.w	#1,d7
L49502:
	cmp.w	#26,d7
	blt.s	L49482
	clr.w	(a7)
	move.w	#35,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
	tst.w	U92232.l
	bne.s	L49556
	clr.w	(a7)
	move.w	#57,-(a7)
	move.l	U92190.l,-(a7)
	jsr	L1042.l
	addq.l	#6,a7
L49556:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L49566:
	link	a6,#-4
	bsr  	L48330
	move.l	8(a6),(a7)
	move.w	#1,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	bsr.s	L49596
	unlk	a6
	rts

L49596:
	link	a6,#-4
	jsr	L290.l
	move.w	U101192.l,(a7)
	move.w	#11,-(a7)
	jsr	L172.l
	addq.l	#2,a7
	jsr	L23558.l
	jsr	L772.l
	clr.l	(a7)
	clr.w	-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	unlk	a6
	rts

L49652:
	link	a6,#-4
	bsr  	L48330
	jsr	L69360.l
	tst.w	d0
	beq.s	L49672
	bsr.s	L49596
L49672:
	unlk	a6
	rts

L49676:
	link	a6,#-4
	unlk	a6
	rts

L49684:
	link	a6,#-4
	move.w	#7,(a7)
	move.w	#6,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	unlk	a6
	rts

L49708:
	link	a6,#-4
	clr.l	(a7)
	move.w	#17,-(a7)
	jsr	L77356.l
	addq.l	#2,a7
	unlk	a6
	rts

L49730:
	link	a6,#-4
	move.b	9(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	andi.w	#255,(a7)
	jsr	L77332.l
	unlk	a6
	rts

	link	a6,#-4
	movea.l	12(a6),a0
	movea.l	8(a6),a1
	move.w	(a1),(a0)
	movea.l	16(a6),a0
	movea.l	8(a6),a1
	move.w	2(a1),(a0)
	movea.l	20(a6),a0
	movea.l	8(a6),a1
	move.w	4(a1),(a0)
	movea.l	24(a6),a0
	movea.l	8(a6),a1
	move.w	6(a1),(a0)
	unlk	a6
	rts

L49810:
	link	a6,#-4
	movea.l	8(a6),a0
	move.w	12(a6),(a0)
	movea.l	8(a6),a0
	move.w	14(a6),2(a0)
	movea.l	8(a6),a0
	move.w	16(a6),4(a0)
	movea.l	8(a6),a0
	move.w	18(a6),6(a0)
	unlk	a6
	rts

L49856:
	link	a6,#-4
	movea.l	8(a6),a0
	move.w	(a0),d0
	movea.l	12(a6),a1
	move.w	(a1),d1
	cmp.w	d1,d0
	bne.s	L49936
	movea.l	8(a6),a0
	move.w	2(a0),d0
	movea.l	12(a6),a1
	move.w	2(a1),d1
	cmp.w	d1,d0
	bne.s	L49936
	movea.l	8(a6),a0
	move.w	4(a0),d0
	movea.l	12(a6),a1
	move.w	4(a1),d1
	cmp.w	d1,d0
	bne.s	L49936
	movea.l	8(a6),a0
	move.w	6(a0),d0
	movea.l	12(a6),a1
	move.w	6(a1),d1
	cmp.w	d1,d0
	beq.s	L49940
L49936:
	clr.w	d0
	bra.s	L49942

L49940:
	moveq	#1,d0
L49942:
	unlk	a6
	rts

L49946:
	link	a6,#-4
	move.l	12(a6),(a7)
	addq.l	#6,(a7)
	move.l	12(a6),-(a7)
	addq.l	#4,(a7)
	move.l	12(a6),-(a7)
	addq.l	#2,(a7)
	move.l	12(a6),-(a7)
	movea.l	8(a6),a0
	move.w	6(a0),-(a7)
	movea.l	8(a6),a0
	move.w	4(a0),-(a7)
	movea.l	8(a6),a0
	move.w	2(a0),-(a7)
	movea.l	8(a6),a0
	move.w	(a0),-(a7)
	bsr.s	L50014
	adda.l	#20,a7
	unlk	a6
	rts

L50014:
	link	a6,#0
	movem.l	d3-d7,-(a7)
	movea.l	16(a6),a0
	move.w	(a0),(a7)
	movea.l	24(a6),a0
	move.w	(a0),d0
	add.w	d0,(a7)
	move.w	8(a6),-(a7)
	move.w	12(a6),d0
	add.w	d0,(a7)
	bsr  	L50202
	addq.l	#2,a7
	move.w	d0,d5
	movea.l	20(a6),a0
	move.w	(a0),(a7)
	movea.l	28(a6),a0
	move.w	(a0),d0
	add.w	d0,(a7)
	move.w	10(a6),-(a7)
	move.w	14(a6),d0
	add.w	d0,(a7)
	bsr  	L50202
	addq.l	#2,a7
	move.w	d0,d4
	move.w	8(a6),(a7)
	movea.l	16(a6),a0
	move.w	(a0),-(a7)
	bsr.s	L50174
	addq.l	#2,a7
	move.w	d0,d7
	move.w	10(a6),(a7)
	movea.l	20(a6),a0
	move.w	(a0),-(a7)
	bsr.s	L50174
	addq.l	#2,a7
	move.w	d0,d6
	movea.l	16(a6),a0
	move.w	d7,(a0)
	movea.l	20(a6),a0
	move.w	d6,(a0)
	move.w	d5,d0
	sub.w	d7,d0
	movea.l	24(a6),a1
	move.w	d0,(a1)
	move.w	d4,d0
	sub.w	d6,d0
	movea.l	28(a6),a1
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
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L50174:
	link	a6,#-4
	move.w	8(a6),d0
	cmp.w	10(a6),d0
	ble.s	L50194
	move.w	8(a6),d0
	bra.s	L50198

L50194:
	move.w	10(a6),d0
L50198:
	unlk	a6
	rts

L50202:
	link	a6,#-4
	move.w	8(a6),d0
	cmp.w	10(a6),d0
	bge.s	L50222
	move.w	8(a6),d0
	bra.s	L50226

L50222:
	move.w	10(a6),d0
L50226:
	unlk	a6
	rts

L50230:
	link	a6,#0
	movem.l	d6-d7/a4-a5,-(a7)
	movea.l	10(a6),a5
	movea.l	14(a6),a4
	moveq	#1,d7
	cmpa.l	a4,a5
	bge.s	L50274
	moveq	#-1,d7
	move.w	8(a6),d0
	subq.w	#1,d0
	ext.l	d0
	adda.l	d0,a4
	move.w	8(a6),d0
	subq.w	#1,d0
	ext.l	d0
	adda.l	d0,a5
L50274:
	bra.s	L50282

L50276:
	move.b	(a5),(a4)
	adda.w	d7,a4
	adda.w	d7,a5
L50282:
	move.w	8(a6),d0
	subq.w	#1,8(a6)
	tst.w	d0
	bne.s	L50276
	tst.l	(a7)+
	movem.l	(a7)+,d7/a4-a5
	unlk	a6
	rts

L50304:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	movea.l	8(a6),a5
	move.w	12(a6),d7
	bra.s	L50326

L50322:
	move.b	15(a6),(a5)+
L50326:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bne.s	L50322
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L50344:
	link	a6,#-4
	tst.w	8(a6)
	bge.s	L50362
	move.w	8(a6),d0
	neg.w	d0
	bra.s	L50366

L50362:
	move.w	8(a6),d0
L50366:
	unlk	a6
	rts

L50370:
	link	a6,#-4
	bra.s	L50384

L50376:
	bsr.s	L50408
	tst.w	d0
	bne.s	L50404
	bsr.s	L50456
L50384:
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L36566.l
	tst.w	d0
	bne.s	L50376
L50404:
	unlk	a6
	rts

L50408:
	link	a6,#-4
	cmpi.b	#10,U101148.l
	beq.s	L50426
	clr.w	d0
	bra.s	L50428

L50426:
	moveq	#1,d0
L50428:
	unlk	a6
	rts

L50432:
	link	a6,#-4
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
	unlk	a6
	rts

L50456:
	link	a6,#-4
	move.b	U101148.l,U101050.l
	cmpi.w	#2,U100986.l
	bne.s	L50486
	jsr	L19524.l
L50486:
	addq.l	#1,U100962.l
	movea.l	U100962.l,a0
	move.b	(a0),U101148.l
	unlk	a6
	rts

L50508:
	link	a6,#-4
	movea.l	U100962.l,a0
	tst.b	(a0)
	bne.s	L50564
	cmpi.b	#62,9(a6)
	bne.s	L50560
	move.l	T87170.l,(a7)
	move.l	#U100162,d0
	move.l	d0,U100962.l
	move.l	d0,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	bra.s	L50564

L50560:
	moveq	#1,d0
	bra.s	L50566

L50564:
	clr.w	d0
L50566:
	unlk	a6
	rts

L50570:
	link	a6,#-4
	addq.l	#1,U101030.l
	subq.w	#1,U99178.l
	unlk	a6
	rts

L50590:
	link	a6,#-4
	cmpi.w	#32,8(a6)
	ble.s	L50608
	jsr	L74840.l
L50608:
	cmpi.w	#2,U100986.l
	bne.s	L50706
	tst.w	U100998.l
	beq.s	L50684
	jsr	L19370.l
	clr.w	U101476.l
	tst.w	U99190.l
	beq.s	L50660
	jsr	L58082.l
	clr.w	U99190.l
	bra.s	L50674

L50660:
	movea.l	#U100162,a0
	move.l	a0,U100962.l
	clr.b	(a0)
L50674:
	move.w	8(a6),(a7)
	bsr  	L50508
	bra.s	L50706

L50684:
	move.w	U100898.l,d0
	ext.l	d0
	add.l	#U100162,d0
	subq.l	#3,d0
	move.l	d0,U100962.l
L50706:
	cmpi.w	#1,U100986.l
	bne.s	L50748
	bsr  	L50408
	tst.w	d0
	beq.s	L50728
	bsr  	L50456
L50728:
	move.w	8(a6),(a7)
	bsr  	L50508
	tst.w	d0
	beq.s	L50746
	jsr	L58082.l
L50746:
	bra.s	L50848

L50748:
	tst.w	U100986.l
	bne.s	L50848
	cmpi.w	#63,8(a6)
	bne.s	L50816
	tst.w	U99188.l
	beq.s	L50778
	move.w	#33,8(a6)
L50778:
	jsr	L64994.l
	bra.s	L50806

L50786:
	jsr	L65014.l
	move.w	d0,(a7)
	jsr	L55354.l
	jsr	L76978.l
L50806:
	jsr	L65102.l
	tst.w	d0
	bne.s	L50786
L50816:
	tst.w	8(a6)
	beq.s	L50832
	move.w	8(a6),(a7)
	jsr	L74948.l
L50832:
	jsr	L69798.l
	move.l	#U100162,U100962.l
L50848:
	bsr.s	L50854
	unlk	a6
	rts

L50854:
	link	a6,#-4
	clr.w	U100892.l
	movea.l	U100962.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,U100632.l
	tst.w	U101470.l
	beq.s	L50912
	bra.s	L50900

L50890:
	bsr  	L50456
	addq.w	#1,U100892.l
L50900:
	movea.l	U100962.l,a0
	cmpi.b	#32,(a0)
	beq.s	L50890
L50912:
	movea.l	U100962.l,a0
	move.b	(a0),U101148.l
	move.b	#10,U101050.l
	bsr  	L51714
	unlk	a6
	rts

L50940:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	movea.l	10(a6),a5
	bra.s	L50968

L50954:
	move.b	(a5)+,d0
	ext.w	d0
	cmp.b	9(a6),d0
	bne.s	L50968
	moveq	#1,d0
	bra.s	L50974

L50968:
	tst.b	(a5)
	bne.s	L50954
	clr.w	d0
L50974:
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L50984:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr.s	L51030
	tst.w	d0
	beq.s	L51008
	moveq	#1,d0
	bra.s	L51020

L51008:
	move.l	#T86008,(a7)
	move.w	d7,-(a7)
	bsr.s	L50940
	addq.l	#2,a7
L51020:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L51030:
	link	a6,#-4
	move.l	#T86020,(a7)
	move.b	9(a6),d0
	ext.w	d0
	move.w	d0,-(a7)
	bsr.s	L50940
	addq.l	#2,a7
	unlk	a6
	rts

L51056:
	link	a6,#-4
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
	bsr.s	L50984
	unlk	a6
	rts

L51076:
	link	a6,#-4
	tst.b	U101050.l
	beq.s	L51098
	cmpi.b	#41,U101050.l
	bne.s	L51102
L51098:
	clr.w	d0
	bra.s	L51116

L51102:
	move.b	U101050.l,d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L50984
L51116:
	unlk	a6
	rts

L51120:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.b	9(a6),d7
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L51160:
	link	a6,#-4
	bsr  	L50432
	tst.w	d0
	beq.s	L51182
	clr.w	U100982.l
	bra  	L51464

L51182:
	cmpi.b	#34,U101148.l
	bne.s	L51204
	move.w	#2,U100982.l
	bra  	L51464

L51204:
	cmpi.b	#58,U101148.l
	bne.s	L51226
	move.w	#4,U100982.l
	bra  	L51464

L51226:
	cmpi.b	#46,U101148.l
	bne.s	L51278
	bsr  	L51076
	tst.w	d0
	beq.s	L51278
	movea.l	U100962.l,a0
	move.b	1(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L51120
	tst.w	d0
	beq.s	L51278
	move.w	#6,U100982.l
	bra  	L51464

L51278:
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L51120
	tst.w	d0
	beq.s	L51308
	move.w	#6,U100982.l
	bra  	L51464

L51308:
	cmpi.b	#45,U101148.l
	bne  	L51456
	bsr  	L51076
	tst.w	d0
	beq  	L51456
	movea.l	U100962.l,a0
	move.b	1(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L51120
	tst.w	d0
	bne.s	L51388
	movea.l	U100962.l,a0
	cmpi.b	#46,1(a0)
	bne.s	L51398
	movea.l	U100962.l,a0
	move.b	2(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L51120
	tst.w	d0
	beq.s	L51398
L51388:
	move.w	#6,U100982.l
	bra.s	L51454

L51398:
	movea.l	U100962.l,a0
	cmpi.b	#40,1(a0)
	beq.s	L51438
	movea.l	U100962.l,a0
	move.b	1(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L50984
	tst.w	d0
	beq.s	L51438
	clr.w	d0
	bra.s	L51440

L51438:
	moveq	#1,d0
L51440:
	move.w	d0,U100562.l
	move.w	#8,U100982.l
L51454:
	bra.s	L51464

L51456:
	move.w	#8,U100982.l
L51464:
	unlk	a6
	rts

L51468:
	link	a6,#-4
	bsr  	L50456
	addq.w	#1,U99178.l
	unlk	a6
	rts

L51486:
	link	a6,#-4
	bra.s	L51526

L51492:
	cmpi.b	#35,U101148.l
	bne.s	L51504
	bsr.s	L51468
L51504:
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
	tst.w	d0
	bne.s	L51534
	bsr.s	L51468
L51526:
	bsr  	L51056
	tst.w	d0
	beq.s	L51492
L51534:
	unlk	a6
	rts

L51538:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	clr.w	d7
	bra.s	L51602

L51550:
	addq.w	#1,d7
	move.w	d7,d0
	cmp.w	#18,d0
	ble.s	L51598
	bsr  	L50456
	move.l	U100962.l,(a7)
	move.l	U101030.l,d0
	clr.l	d1
	move.w	U99178.l,d1
	add.l	d1,d0
	move.l	d0,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	bra.s	L51602

L51598:
	bsr  	L51468
L51602:
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L51120
	tst.w	d0
	bne.s	L51550
	tst.w	d7
	beq.s	L51704
	tst.w	8(a6)
	beq.s	L51704
	bra.s	L51674

L51632:
	move.l	U100962.l,(a7)
	subq.w	#1,U99178.l
	clr.w	d0
	move.w	U99178.l,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	U101030.l,d0
	move.l	d0,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
L51674:
	suba.w	a0,a0
	movea.w	U99178.l,a0
	adda.l	U101030.l,a0
	cmpi.b	#48,-1(a0)
	bne.s	L51704
	tst.w	U99178.l
	bne.s	L51632
L51704:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L51714:
	link	a6,#-4
	bsr  	L50370
	cmpi.w	#2,U100986.l
	bne.s	L51806
	movea.w	U100898.l,a0
	adda.l	#U100162,a0
	cmpi.b	#10,-3(a0)
	bne.s	L51758
	jsr	L19524.l
L51758:
	move.w	U100898.l,d0
	ext.l	d0
	add.l	#U100162,d0
	move.l	d0,(a7)
	subq.l	#3,(a7)
	move.l	#U100162,d0
	move.l	d0,U100962.l
	move.l	d0,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	move.w	#3,U100898.l
L51806:
	move.l	U100962.l,U101030.l
	clr.w	U99178.l
	clr.w	U100562.l
	bsr  	L51160
	clr.w	d0
	move.w	U100982.l,d0
	bra  	L52160

L51844:
	clr.w	U99178.l
	bra  	L52186

L51854:
	bsr  	L51468
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
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
	cmpi.b	#45,U101148.l
	bne.s	L51920
	bsr  	L51468
L51920:
	clr.w	(a7)
	bsr  	L51538
	cmpi.b	#46,U101148.l
	bne.s	L51948
	bsr  	L51468
	move.w	#1,(a7)
	bsr  	L51538
L51948:
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L36478.l
	cmp.w	#69,d0
	bne.s	L52004
	bsr  	L51468
	cmpi.b	#43,U101148.l
	beq.s	L51994
	cmpi.b	#45,U101148.l
	bne.s	L51998
L51994:
	bsr  	L51468
L51998:
	clr.w	(a7)
	bsr  	L51538
L52004:
	movea.l	U101030.l,a0
	suba.l	a1,a1
	movea.w	U99178.l,a1
	adda.l	a1,a0
	clr.b	(a0)
	move.l	U101030.l,(a7)
	jsr	L80660.l
	move.l	d0,U99602.l
	movea.l	U101030.l,a0
	suba.l	a1,a1
	movea.w	U99178.l,a1
	adda.l	a1,a0
	move.b	U101148.l,(a0)
	bra  	L52186

L52066:
	bsr  	L51056
	tst.w	d0
	beq.s	L52152
	bsr  	L51468
	move.l	#T86026,(a7)
	move.b	U101050.l,d0
	ext.w	d0
	move.w	d0,-(a7)
	bsr  	L50940
	addq.l	#2,a7
	tst.w	d0
	beq.s	L52150
	move.l	#T86030,(a7)
	move.b	U101148.l,d0
	ext.w	d0
	move.w	d0,-(a7)
	bsr  	L50940
	addq.l	#2,a7
	tst.w	d0
	beq.s	L52150
	move.b	U101050.l,d0
	ext.w	d0
	cmp.b	U101148.l,d0
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
	clr.b	U101050.l
L52186:
	unlk	a6
	rts

L52190:
	link	a6,#-4
	bra.s	L52200

L52196:
	bsr  	L51468
L52200:
	bsr  	L50432
	tst.w	d0
	beq.s	L52196
	move.w	#8,U100982.l
	unlk	a6
	rts

L52220:
	link	a6,#0
	movem.l	d6-d7/a4-a5,-(a7)
	movea.l	8(a6),a5
	cmpi.w	#8,U100982.l
	beq.s	L52246
	clr.w	d0
	bra.s	L52294

L52246:
	move.w	U99178.l,d7
	movea.l	U101030.l,a4
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
	tst.l	(a7)+
	movem.l	(a7)+,d7/a4-a5
	unlk	a6
	rts

L52304:
	link	a6,#-4
	clr.w	d0
	move.w	U99178.l,d0
	subq.w	#1,d0
	beq.s	L52324
	clr.w	d0
	bra.s	L52334

L52324:
	move.b	9(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr.s	L52352
L52334:
	unlk	a6
	rts

L52338:
	link	a6,#-4
	move.w	#59,(a7)
	bsr.s	L52352
	unlk	a6
	rts

L52352:
	link	a6,#-4
	cmpi.w	#8,U100982.l
	bne.s	L52382
	movea.l	U101030.l,a0
	move.b	(a0),d0
	ext.w	d0
	cmp.b	9(a6),d0
	beq.s	L52386
L52382:
	clr.w	d0
	bra.s	L52388

L52386:
	moveq	#1,d0
L52388:
	unlk	a6
	rts

L52392:
	link	a6,#0
	movem.l	d2-d7/a5,-(a7)
	move.w	8(a6),d7
	move.w	U99178.l,d4
	movea.l	U101030.l,a5
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,d7
	bra  	L52542

L52438:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d3
	moveq	#-1,d6
	bra.s	L52522

L52452:
	cmpi.b	#35,(a5)
	bne.s	L52468
	cmp.w	#1,d4
	ble.s	L52468
	addq.l	#1,a5
	subq.w	#1,d4
L52468:
	move.w	d6,(a7)
	move.w	d3,-(a7)
	jsr	L332.l
	addq.l	#2,a7
	move.w	d0,d5
	tst.w	d5
	bne.s	L52498
	tst.w	d4
	beq.s	L52494
	clr.w	d0
	bra.s	L52496

L52494:
	moveq	#1,d0
L52496:
	bra.s	L52556

L52498:
	move.w	d4,d0
	subq.w	#1,d4
	tst.w	d0
	bne.s	L52510
	clr.w	d0
	bra.s	L52556

L52510:
	move.b	(a5)+,d0
	ext.w	d0
	cmp.w	d0,d5
	beq.s	L52522
	clr.w	d0
	bra.s	L52556

L52522:
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#4,d0
	blt.s	L52452
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L52542:
	tst.w	d7
	bne.s	L52438
	tst.w	d4
	beq.s	L52554
	clr.w	d0
	bra.s	L52556

L52554:
	moveq	#1,d0
L52556:
	tst.l	(a7)+
	movem.l	(a7)+,d3-d7/a5
	unlk	a6
	rts

L52566:
	link	a6,#0
	movem.l	d3-d7,-(a7)
	jsr	L62588.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L64090.l
	jsr	L62588.l
	move.w	d0,d4
	move.w	d4,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	jsr	L62588.l
	move.w	d0,d5
	move.w	d5,(a7)
	move.w	d4,-(a7)
	jsr	L65186.l
	addq.l	#2,a7
	jsr	L62588.l
	move.w	d0,(a7)
	move.w	d5,-(a7)
	jsr	L65186.l
	addq.l	#2,a7
	move.w	#8,(a7)
	move.w	d7,-(a7)
	jsr	L65186.l
	addq.l	#2,a7
L52662:
	move.w	d5,(a7)
	jsr	L358.l
	move.w	d0,d7
	moveq	#-1,d6
	bra  	L52794

L52678:
	tst.w	U99178.l
	bne.s	L52704
	clr.w	(a7)
	clr.w	-(a7)
	move.w	d7,-(a7)
	jsr	L418.l
	addq.l	#4,a7
	bra  	L52872

L52704:
	movea.l	U101030.l,a0
	cmpi.b	#35,(a0)
	bne.s	L52730
	cmpi.w	#1,U99178.l
	bls.s	L52730
	bsr  	L50570
L52730:
	movea.l	U101030.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	move.w	d6,-(a7)
	move.w	d7,-(a7)
	jsr	L418.l
	addq.l	#4,a7
	addq.l	#1,U101030.l
	subq.w	#1,U99178.l
	bne.s	L52794
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#4,d0
	bge.s	L52792
	clr.w	(a7)
	move.w	d6,-(a7)
	move.w	d7,-(a7)
	jsr	L418.l
	addq.l	#4,a7
L52792:
	bra.s	L52872

L52794:
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#4,d0
	blt.s	L52678
	clr.w	(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	jsr	L64090.l
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	jsr	L64276.l
	jsr	L64160.l
	move.w	d0,(a7)
	move.w	d5,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	jsr	L64224.l
	move.w	d0,d5
	bra  	L52662

L52872:
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L52882:
	link	a6,#-4
	bsr  	L52566
	clr.w	(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64090.l
	movea.w	U101184.l,a0
	adda.l	a0,a0
	movea.l	#U101202,a1
	move.w	0(a0,a1.l),(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	movea.w	U101184.l,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(a7)+,(a0)
	unlk	a6
	rts

L52972:
	link	a6,#-4
	move.l	8(a6),U99602.l
	bsr.s	L52990
	unlk	a6
	rts

L52990:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.l	U99602.l,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d7
	move.l	U99602.l,-(a7)
	move.w	d7,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L53052
	move.w	d7,(a7)
	bsr.s	L53070
	bra.s	L53060

L53052:
	move.l	U99602.l,(a7)
	bsr.s	L53102
L53060:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L53070:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	#10,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64090.l
	unlk	a6
	rts

L53102:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.l	8(a6),U100628.l
	jsr	L62588.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L64090.l
	jsr	L62588.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	move.w	#16,(a7)
	move.w	d7,-(a7)
	jsr	L65186.l
	addq.l	#2,a7
	move.l	U100628.l,(a7)
	move.w	d7,-(a7)
	jsr	L378.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L488.l
	addq.l	#2,a7
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L53202:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	tst.w	U100562.l
	beq.s	L53232
	move.w	U100888.l,(a7)
	jsr	L64090.l
	bra.s	L53308

L53232:
	bsr.s	L53318
	movea.w	U101184.l,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(a0),d7
	bra.s	L53298

L53252:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L52392
	tst.w	d0
	beq.s	L53288
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L64090.l
	bra.s	L53308

L53288:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L53298:
	tst.w	d7
	bne.s	L53252
	jsr	L64732.l
L53308:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L53318:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	clr.w	U101184.l
	movea.l	U101030.l,a5
L53338:
	cmpi.b	#35,(a5)
	bne.s	L53346
	addq.l	#1,a5
L53346:
	move.l	U101030.l,d0
	clr.l	d1
	move.w	U99178.l,d1
	add.l	d1,d0
	cmpa.l	d0,a5
	bcc.s	L53378
	move.b	(a5)+,d0
	ext.w	d0
	add.w	d0,U101184.l
	bra.s	L53338

L53378:
	andi.w	#127,U101184.l
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L53396:
	link	a6,#-4
	bsr  	L53202
	jsr	L64160.l
	tst.w	d0
	bne.s	L53424
	jsr	L64180.l
	bsr  	L52882
L53424:
	unlk	a6
	rts

L53428:
	link	a6,#-4
	cmpi.w	#6,U100982.l
	bne.s	L53448
	bsr  	L52990
	bra.s	L53450

L53448:
	bsr.s	L53396
L53450:
	bsr  	L53858
	bsr  	L51714
	unlk	a6
	rts

L53462:
	link	a6,#-4
	bsr  	L53644
	tst.w	d0
	beq.s	L53486
	jsr	L64732.l
	bsr  	L53858
	bra.s	L53530

L53486:
	move.w	#93,(a7)
	bsr  	L52304
	tst.w	d0
	beq.s	L53514
	bsr  	L51714
	jsr	L64732.l
	bsr  	L53858
	bra.s	L53530

L53514:
	jsr	L74764.l
	bsr.s	L53534
	bsr.s	L53462
	jsr	L64470.l
L53530:
	unlk	a6
	rts

L53534:
	link	a6,#-4
	move.w	#91,(a7)
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
	unlk	a6
	rts

L53572:
	link	a6,#-4
	bra.s	L53582

L53578:
	bsr  	L51714
L53582:
	move.w	#93,(a7)
	bsr  	L52304
	tst.w	d0
	bne.s	L53578
	bsr.s	L53644
	tst.w	d0
	beq.s	L53608
	jsr	L64732.l
	bra.s	L53624

L53608:
	jsr	L74764.l
	bsr.s	L53534
	bsr.s	L53572
	jsr	L64470.l
L53624:
	unlk	a6
	rts

L53628:
	link	a6,#-4
	clr.w	U101008.l
	bsr.s	L53572
	unlk	a6
	rts

L53644:
	link	a6,#-4
	tst.w	U101008.l
	beq.s	L53662
	moveq	#1,d0
	bra  	L53854

L53662:
	tst.w	U100982.l
	beq.s	L53758
	tst.w	U101470.l
	beq.s	L53754
	bsr  	L52338
	tst.w	d0
	beq.s	L53754
	bsr  	L52190
	move.w	U101042.l,(a7)
	bsr  	L53070
	cmpi.w	#59,U100632.l
	bne.s	L53718
	move.w	U100676.l,(a7)
	bra.s	L53724

L53718:
	move.w	U100634.l,(a7)
L53724:
	jsr	L64090.l
	bsr  	L53396
	bsr  	L53872
	bsr  	L51714
	jsr	L74764.l
	bsr.s	L53644
	bra  	L53854

L53754:
	clr.w	d0
	bra.s	L53854

L53758:
	tst.w	U101470.l
	bne.s	L53770
	moveq	#1,d0
	bra.s	L53854

L53770:
	move.w	#62,(a7)
	bsr  	L50590
	tst.w	U100892.l
	beq.s	L53790
	clr.w	d0
	bra.s	L53792

L53790:
	moveq	#1,d0
L53792:
	move.w	d0,U101008.l
	beq.s	L53804
	moveq	#1,d0
	bra.s	L53854

L53804:
	move.w	U101042.l,(a7)
	bsr  	L53070
	move.w	U100740.l,(a7)
	jsr	L64090.l
	move.w	U100892.l,(a7)
	bsr  	L53070
	bsr.s	L53872
	clr.w	U100892.l
	jsr	L74764.l
	bsr  	L53644
L53854:
	unlk	a6
	rts

L53858:
	link	a6,#-4
	addq.w	#1,U101042.l
	unlk	a6
	rts

L53872:
	link	a6,#-4
	jsr	L64470.l
	jsr	L64470.l
	tst.w	U101034.l
	bne.s	L53924
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,U101010.l
	move.w	d0,U101034.l
	bra.s	L53972

L53924:
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	move.w	U101010.l,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	move.w	U101010.l,(a7)
	jsr	L378.l
	move.w	d0,U101010.l
L53970	equ	*-2
L53972:
	jsr	L64180.l
	unlk	a6
	rts

L53982:
	link	a6,#-4
	tst.w	U100982.l
	beq.s	L54044
	bsr  	L52338
	tst.w	d0
	bne.s	L54044
	cmpi.w	#4,U100982.l
	bne.s	L54018
	bsr  	L50570
	bra.s	L54030

L54018:
	move.l	U101030.l,(a7)
	jsr	L67208.l
L54030:
	bsr  	L53428
	bsr.s	L53982
	jsr	L64470.l
	bra.s	L54050

L54044:
	jsr	L64732.l
L54050:
	unlk	a6
	rts

L54054:
	link	a6,#-4
	move.l	T87170.l,(a7)
	bsr  	L52220
	tst.w	d0
	beq.s	L54080
	jsr	L64732.l
	bra.s	L54118

L54080:
	bsr  	L53628
	jsr	L74764.l
	jsr	L64160.l
	tst.w	d0
	bne.s	L54110
	jsr	L64180.l
	bsr.s	L54054
	bra.s	L54118

L54110:
	bsr.s	L54054
	jsr	L64470.l
L54118:
	unlk	a6
	rts

L54122:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	bsr  	L51714
	cmpi.w	#2,U100982.l
	bne.s	L54150
	bsr  	L50570
	bra.s	L54170

L54150:
	cmpi.w	#8,U100982.l
	beq.s	L54170
	jsr	L58102.l
	bra  	L54380

L54170:
	bsr  	L53428
	jsr	L64160.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L65878.l
	tst.w	d0
	beq.s	L54220
	jsr	L61762.l
	tst.w	d0
	beq.s	L54212
	jsr	L61804.l
	bra.s	L54220

L54212:
	move.w	d7,(a7)
	jsr	L66904.l
L54220:
	bsr  	L53982
	move.w	#1,U101470.l
	clr.w	U101042.l
	bsr  	L53644
	bsr  	L54054
	jsr	L64470.l
	tst.w	U101034.l
	bne.s	L54278
	move.w	U100738.l,(a7)
	move.w	d7,-(a7)
	jsr	L66244.l
	addq.l	#2,a7
	bra.s	L54300

L54278:
	move.w	U101034.l,(a7)
	move.w	U100738.l,-(a7)
	move.w	d7,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
L54300:
	move.w	d7,(a7)
	jsr	L55654.l
	jsr	L64160.l
	move.w	d0,(a7)
	move.w	U98716.l,-(a7)
	move.w	d7,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	jsr	L64180.l
	tst.w	U99190.l
	bne.s	L54374
	move.w	d7,(a7)
	move.l	#L54682,-(a7)
	move.l	T87202.l,-(a7)
	jsr	L54390.l
	addq.l	#8,a7
	jsr	L74840.l
L54374:
	jsr	L64180.l
L54380:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L54390:
	link	a6,#-4
	movem.l	d6-d7/a5,-(a7)
	movea.l	8(a6),a5
	bra.s	L54470

L54404:
	cmpi.b	#8,(a5)
	blt.s	L54424
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74948.l
	bra.s	L54468

L54424:
	move.l	a6,d0
	move.b	d7,d1
	ext.w	d1
	subq.w	#1,d1
	move.b	d1,d7
	asl.w	#3,d1
	ext.l	d1
	add.l	d1,d0
	add.l	#12,d0
	move.l	d0,-4(a6)
	movea.l	-4(a6),a0
	move.l	4(a0),-(a7)
	movea.l	-4(a6),a0
	movea.l	(a0),a0
	jsr	(a0)
	addq.l	#4,a7
L54468:
	addq.l	#1,a5
L54470:
	move.b	(a5),d7
	bne.s	L54404
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L54484:
	link	a6,#0
	movem.l	d2-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,d7
	beq.s	L54542
	move.w	#1,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L332.l
	addq.l	#2,a7
	move.w	d0,d3
L54542:
	bra  	L54668

L54546:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d6
	moveq	#-1,d5
	bra.s	L54648

L54560:
	move.w	d5,(a7)
	move.w	d6,-(a7)
	jsr	L332.l
	addq.l	#2,a7
	move.b	d0,d4
	beq.s	L54672
	tst.w	10(a6)
	beq.s	L54636
	move.l	#T86034,(a7)
	move.b	d4,d0
	ext.w	d0
	move.w	d0,-(a7)
	jsr	L50940.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L54626
	move.b	d4,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L50984.l
	tst.w	d0
	beq.s	L54636
	tst.w	d3
	beq.s	L54636
L54626:
	move.w	#35,(a7)
	jsr	L74948.l
L54636:
	move.b	d4,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74948.l
L54648:
	addq.w	#1,d5
	move.w	d5,d0
	cmp.w	#4,d0
	blt.s	L54560
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L54668:
	tst.w	d7
	bne.s	L54546
L54672:
	tst.l	(a7)+
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L54682:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	U100996.l
	beq.s	L54714
	move.w	d7,(a7)
	jsr	L65878.l
	tst.w	d0
	beq.s	L54718
L54714:
	clr.w	(a7)
	bra.s	L54722

L54718:
	move.w	#1,(a7)
L54722:
	move.w	d7,-(a7)
	bsr  	L54484
	addq.l	#2,a7
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L54740:
	link	a6,#-36
	movem.l	d4-d7/a4-a5,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65532.l
	move.l	d0,d6
	move.l	d6,(a7)
	jsr	L3058.l
	move.l	d0,d5
	move.l	d6,-(a7)
	move.l	d6,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.l	d0,-36(a6)
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L54822
	move.l	-36(a6),(a7)
	bsr  	L54980
	bra  	L54970

L54822:
	move.l	#-2095944137,-(a7)
	move.l	d5,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L54858
	move.l	#-1734967208,-(a7)
	move.l	d5,-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L54884
L54858:
	move.w	#6,(a7)
	move.l	a6,-(a7)
	addi.l	#-32,(a7)
	move.l	d6,-(a7)
	jsr	L80128.l
	addq.l	#8,a7
	movea.l	d0,a4
	bra.s	L54962

L54884:
	move.w	#6,(a7)
	move.l	a6,-(a7)
	addi.l	#-32,(a7)
	move.l	d6,-(a7)
	jsr	L79618.l
	addq.l	#8,a7
	movea.l	d0,a4
	move.l	a4,(a7)
	jsr	L83914.l
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
	move.l	a4,(a7)
	jsr	L74902.l
L54970:
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7/a4-a5
	unlk	a6
	rts

L54980:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.l	8(a6),d7
	tst.l	d7
	bge.s	L55012
	move.w	#45,(a7)
	jsr	L74948.l
	move.l	d7,d0
	neg.l	d0
	move.l	d0,d7
L55012:
	move.l	#10,-(a7)
	move.l	d7,-(a7)
	jsr	L83960.l
	addq.l	#8,a7
	move.l	d0,d6
	beq.s	L55036
	move.l	d6,(a7)
	bsr.s	L54980
L55036:
	move.l	#10,-(a7)
	move.l	d7,-(a7)
	jsr	L84202.l
	addq.l	#8,a7
	ext.w	d0
	move.w	d0,(a7)
	addi.w	#48,(a7)
	jsr	L74948.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L55076:
	link	a6,#-4
	movea.w	8(a6),a0
	move.l	a0,(a7)
	bsr.s	L54980
	unlk	a6
	rts

L55092:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	bsr  	L55694
	move.w	d7,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L55128
	move.w	d7,(a7)
	bsr  	L54740
	bra.s	L55134

L55128:
	move.w	d7,(a7)
	bsr  	L54682
L55134:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L55144:
	link	a6,#-4
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	beq  	L55328
L55162:
	bsr  	L55694
	jsr	L58044.l
	tst.w	d0
	beq.s	L55204
	cmp.w	U101006.l,d7
	bne.s	L55204
	move.w	U101044.l,U98710.l
	move.w	U100990.l,U99194.l
L55204:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,-2(a6)
	move.w	d0,(a7)
	bsr  	L55354
	jsr	L53858.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
	beq.s	L55328
	move.w	d7,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L55274
	move.l	#T86040,(a7)
	jsr	L74902.l
	move.w	d7,(a7)
	bsr  	L55092
	clr.w	d0
	bra.s	L55344

L55274:
	clr.w	d0
	move.w	-2(a6),d0
	cmp.w	U100624.l,d0
	beq.s	L55324
	clr.w	d0
	move.w	-2(a6),d0
	cmp.w	U100888.l,d0
	beq.s	L55324
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	U100652.l,d0
	beq.s	L55324
	jsr	L76978.l
L55324:
	bra  	L55162

L55328:
	bsr  	L55826
	move.w	d0,-4(a6)
	bsr  	L55694
	move.w	-4(a6),d0
L55344:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L55354:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	beq.s	L55390
	move.w	d7,(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L55390
	move.w	d7,(a7)
	bsr  	L55092
	bra.s	L55428

L55390:
	move.w	#91,(a7)
	jsr	L74948.l
	jsr	L74764.l
	jsr	L53858.l
	move.w	d7,(a7)
	bsr  	L55144
	move.w	#93,(a7)
	jsr	L74948.l
L55428:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L55438:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	jsr	L76978.l
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L55486
	move.w	#34,(a7)
	jsr	L74948.l
	move.w	d7,(a7)
	bsr  	L54682
	bra.s	L55492

L55486:
	move.w	d7,(a7)
	bsr  	L55354
L55492:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L55502:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),(a7)
	bsr  	L55092
	move.w	10(a6),d7
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d7
	bra.s	L55574

L55534:
	jsr	L76978.l
	move.w	#58,(a7)
	jsr	L74948.l
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L55092
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L55574:
	tst.w	d7
	bne.s	L55534
	move.w	U100738.l,(a7)
	move.w	8(a6),-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,U101034.l
	clr.w	U101042.l
	bsr  	L55826
	tst.w	d0
	beq.s	L55644
	bsr  	L55898
	tst.w	d0
	beq.s	L55644
	jsr	L76978.l
	bsr  	L55994
	bsr  	L56014
	jsr	L74840.l
L55644:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L55654:
	link	a6,#-4
	tst.w	U101108.l
	beq.s	L55690
	move.w	U101108.l,(a7)
	move.w	U98400.l,-(a7)
	move.w	8(a6),-(a7)
	jsr	L66062.l
	addq.l	#4,a7
L55690:
	unlk	a6
	rts

L55694:
	link	a6,#-6
	bra  	L55816

L55702:
	bsr  	L55922
	cmp.w	U100740.l,d0
	bne.s	L55780
	bsr  	L55958
	move.w	d0,(a7)
	jsr	L65532.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,-2(a6)
	bsr  	L56014
	jsr	L74840.l
	bsr.s	L55826
	tst.w	d0
	beq.s	L55768
	bsr  	L55898
	tst.w	d0
	beq.s	L55768
	subq.w	#1,-2(a6)
L55768:
	move.w	-2(a6),(a7)
	jsr	L76954.l
	bra.s	L55816

L55780:
	bsr  	L55898
	tst.w	d0
	beq.s	L55796
	jsr	L76978.l
	bra.s	L55802

L55796:
	jsr	L74840.l
L55802:
	bsr  	L55994
	bsr  	L56014
	jsr	L74840.l
L55816:
	bsr.s	L55826
	tst.w	d0
	bne.s	L55702
	unlk	a6
	rts

L55826:
	link	a6,#-4
	tst.w	U101034.l
	bne.s	L55842
	clr.w	d0
	bra.s	L55894

L55842:
	move.w	U101034.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65532.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	cmp.w	U101042.l,d0
	beq.s	L55892
	clr.w	d0
	bra.s	L55894

L55892:
	moveq	#1,d0
L55894:
	unlk	a6
	rts

L55898:
	link	a6,#-4
	bsr.s	L55922
	cmp.w	U100634.l,d0
	beq.s	L55916
	clr.w	d0
	bra.s	L55918

L55916:
	moveq	#1,d0
L55918:
	unlk	a6
	rts

L55922:
	link	a6,#-4
	move.w	U101034.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L358.l
	unlk	a6
	rts

L55958:
	link	a6,#-4
	move.w	U101034.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L378.l
	unlk	a6
	rts

L55994:
	link	a6,#-4
	clr.w	(a7)
	bsr.s	L55958
	move.w	d0,-(a7)
	bsr  	L54484
	addq.l	#2,a7
	unlk	a6
	rts

L56014:
	link	a6,#-4
	move.w	U101034.l,(a7)
	jsr	L378.l
	move.w	d0,U101034.l
	unlk	a6
	rts

L56040:
	link	a6,#-4
	clr.w	U101034.l
	unlk	a6
	rts

L56054:
	link	a6,#-4
	move.w	U98718.l,(a7)
	bsr.s	L56100
	unlk	a6
	rts

L56070:
	link	a6,#-4
	jsr	L64714.l
	move.w	U98716.l,(a7)
	bsr.s	L56100
	move.w	U100738.l,(a7)
	bsr.s	L56100
	unlk	a6
	rts

L56100:
	link	a6,#0
	movem.l	d4-d7,-(a7)
	move.w	8(a6),d7
	bra.s	L56204

L56114:
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,d6
	move.w	d6,(a7)
	bsr  	L57862
	tst.w	d0
	bne.s	L56182
	move.w	U98400.l,(a7)
	move.w	d6,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,d5
	beq.s	L56170
	move.w	d5,(a7)
	bsr  	L57862
	tst.w	d0
	bne.s	L56182
L56170:
	move.w	d7,(a7)
	move.w	d6,-(a7)
	jsr	L66244.l
	addq.l	#2,a7
L56182:
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L64276.l
L56204:
	jsr	L64160.l
	tst.w	d0
	bne.s	L56114
	jsr	L64180.l
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L56230:
	link	a6,#-4
	jsr	L64732.l
	bsr.s	L56264
	unlk	a6
	rts

L56246:
	link	a6,#-4
	jsr	L64714.l
	bsr.s	L56362
	bsr.s	L56264
	unlk	a6
	rts

L56264:
	link	a6,#-4
	move.w	U100736.l,(a7)
	bsr.s	L56294
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L64276.l
	unlk	a6
	rts

L56294:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	beq.s	L56352
	jsr	L74764.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	bsr.s	L56294
	move.w	U98716.l,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr  	L57652
	addq.l	#2,a7
L56352:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L56362:
	link	a6,#-4
	jsr	L64732.l
	move.w	U98718.l,(a7)
	bsr  	L57456
	unlk	a6
	rts

L56386:
	link	a6,#-4
	jsr	L69648.l
	clr.w	U98712.l
	move.w	#1,U100986.l
	move.l	U100744.l,d0
	subq.l	#1,d0
	move.l	d0,U100962.l
	move.b	#10,U101148.l
	jsr	L66768.l
L56438:
	jsr	L37176.l
	tst.w	U100986.l
	beq.s	L56454
	bra.s	L56438

L56454:
	jsr	L66800.l
	unlk	a6
	rts

L56464:
	link	a6,#-4
	moveq	#1,d0
	move.w	d0,U100990.l
	move.w	d0,U98710.l
	move.w	d0,U99194.l
	jsr	L61834.l
	unlk	a6
	rts

L56498:
	link	a6,#-4
	bsr.s	L56464
	move.l	#U101090,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L56526
	jsr	L67594.l
L56526:
	move.w	#1,U100996.l
	jsr	L69744.l
	jsr	L77150.l
	clr.w	d0
	move.w	d0,U101200.l
	movea.l	U100744.l,a1
	move.l	a1,U101102.l
	move.b	d0,(a1)
	unlk	a6
	rts

L56572:
	link	a6,#-4
	jsr	L77150.l
	bsr  	L58068
	jsr	L69744.l
	bra.s	L56620

L56594:
	subq.l	#1,U99196.l
	movea.l	U99196.l,a0
	movea.l	U101102.l,a1
	move.b	(a1),(a0)
	subq.l	#1,U101102.l
L56620:
	move.w	U101200.l,d0
	subq.w	#1,U101200.l
	tst.w	d0
	bne.s	L56594
	move.l	U99196.l,U101102.l
	unlk	a6
	rts

L56650:
	link	a6,#-4
	bsr  	L56498
	move.w	10(a6),(a7)
	move.w	8(a6),-(a7)
	bsr.s	L56676
	addq.l	#2,a7
	bsr.s	L56572
	unlk	a6
	rts

L56676:
	link	a6,#-2
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	bra  	L57342

L56692:
	jsr	L56040.l
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,U98372.l
	move.w	10(a6),d0
	bra  	L57312

L56720:
	move.w	U98716.l,(a7)
	move.w	U98372.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,d6
	beq  	L56878
	bsr  	L57364
	move.w	d6,(a7)
	move.w	U98372.l,-(a7)
	jsr	L55502.l
	addq.l	#2,a7
	cmpi.w	#1,10(a6)
	bne.s	L56870
	clr.w	-2(a6)
	bra.s	L56830

L56780:
	tst.w	-2(a6)
	bne.s	L56792
	jsr	L74840.l
L56792:
	cmp.w	U100622.l,d6
	bne.s	L56810
	move.w	U100990.l,U99194.l
L56810:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L55144.l
	move.w	d0,-2(a6)
L56830:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
	bne.s	L56780
	jsr	L55694.l
	tst.w	U101006.l
	bne.s	L56866
	move.w	U101498.l,U98710.l
L56866:
	bsr  	L57390
L56870:
	jsr	L74840.l
	bra.s	L56922

L56878:
	move.w	U98718.l,(a7)
	move.w	U98372.l,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	tst.w	d0
	bne.s	L56922
	bsr  	L57364
	move.w	U98372.l,(a7)
	jsr	L55092.l
	bsr  	L57390
L56922:
	bra  	L57332

L56926:
	move.w	U98718.l,(a7)
	move.w	U98372.l,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	move.w	d0,d6
	beq  	L57106
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,d6
	bsr  	L58022
	tst.w	d0
	beq.s	L57054
	move.l	T87174.l,(a7)
	jsr	L74902.l
	move.l	#T86068,(a7)
	jsr	L74902.l
	move.w	U98372.l,(a7)
	jsr	L55092.l
	jsr	L76978.l
	move.w	d6,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L57044
	move.w	#34,(a7)
	jsr	L74948.l
	move.w	d6,(a7)
	jsr	L55092.l
	bra.s	L57052

L57044:
	move.w	d6,(a7)
	jsr	L55354.l
L57052:
	bra.s	L57100

L57054:
	move.w	d6,(a7)
	move.l	#L55354,-(a7)
	clr.l	d0
	move.w	U98372.l,d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L55092,-(a7)
	move.l	T87286.l,-(a7)
	jsr	L54390.l
	adda.l	#16,a7
L57100:
	jsr	L74840.l
L57106:
	bra  	L57332

L57110:
	move.w	U98372.l,(a7)
	bsr  	L57838
	bra.s	L57184

L57122:
	bsr  	L57986
	tst.w	d0
	bne.s	L57184
	move.l	T87178.l,(a7)
	jsr	L74902.l
	move.w	U98372.l,(a7)
	jsr	L55438.l
	move.w	U101490.l,(a7)
	jsr	L55438.l
	move.w	U101182.l,(a7)
	jsr	L55438.l
	jsr	L74840.l
L57184:
	bsr  	L57902
	tst.w	d0
	bne.s	L57122
	bra  	L57332

L57196:
	move.l	T87182.l,(a7)
	jsr	L74902.l
	move.w	U98400.l,(a7)
	move.w	U98372.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L55438.l
	move.w	U98372.l,(a7)
	jsr	L55438.l
	jsr	L74840.l
	bra.s	L57332

L57256:
	move.w	U100994.l,(a7)
	move.w	U98372.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L57310
	move.l	T87186.l,(a7)
	jsr	L74902.l
	move.w	U98372.l,(a7)
	jsr	L55438.l
	jsr	L74840.l
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
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L57342:
	tst.w	d7
	bne  	L56692
	jsr	L56040.l
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L57364:
	link	a6,#-4
	move.l	T87158.l,(a7)
	jsr	L74902.l
	jsr	L76978.l
	unlk	a6
	rts

L57390:
	link	a6,#-4
	jsr	L74840.l
	move.l	T87170.l,(a7)
	jsr	L74902.l
	jsr	L74860.l
	jsr	L74860.l
	unlk	a6
	rts

L57428:
	link	a6,#-4
	move.w	8(a6),(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	unlk	a6
	rts

L57456:
	link	a6,#-4
	bsr.s	L57504
	bra.s	L57480

L57464:
	move.w	8(a6),(a7)
	move.w	U100668.l,-(a7)
	bsr  	L57652
	addq.l	#2,a7
L57480:
	bsr.s	L57542
	tst.w	d0
	bne.s	L57464
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L64276.l
	unlk	a6
	rts

L57504:
	link	a6,#-4
	clr.w	d0
	move.w	d0,U99854.l
	lsl.w	#1,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	#U101202,d0
	movea.l	d0,a0
	move.w	(a0),U100960.l
	unlk	a6
	rts

L57542:
	link	a6,#-4
	bra.s	L57602

L57548:
	addq.w	#1,U99854.l
	clr.w	d0
	move.w	U99854.l,d0
	cmp.w	#128,d0
	bcs.s	L57572
	clr.w	d0
	bra.s	L57648

L57572:
	clr.w	d0
	move.w	U99854.l,d0
	lsl.w	#1,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	#U101202,d0
	movea.l	d0,a0
	move.w	(a0),U100960.l
L57602:
	tst.w	U100960.l
	beq.s	L57548
	move.w	U100960.l,(a7)
	jsr	L358.l
	move.w	d0,U100668.l
	move.w	U100960.l,(a7)
	jsr	L378.l
	move.w	d0,U100960.l
	moveq	#1,d0
L57648:
	unlk	a6
	rts

L57652:
	link	a6,#0
	movem.l	d4-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),d6
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	beq  	L57798
	cmp.w	#1,d6
	bne.s	L57704
	move.w	d7,(a7)
	bsr  	L57838
	bsr  	L57808
	tst.w	d0
	bne.s	L57798
	bra.s	L57720

L57704:
	move.w	d6,(a7)
	move.w	d7,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L57798
L57720:
	move.w	U98400.l,(a7)
	move.w	d7,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,d5
	move.w	#1,(a7)
	jsr	L64352.l
	move.w	d0,U98374.l
	bne.s	L57770
	tst.w	d5
	beq.s	L57768
	move.w	d5,(a7)
	bsr.s	L57862
	tst.w	d0
	bne.s	L57798
L57768:
	bra.s	L57790

L57770:
	move.w	d5,(a7)
	move.w	U98374.l,-(a7)
	jsr	L66568.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L57798
L57790:
	move.w	d7,(a7)
	jsr	L12242.l
L57798:
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L57808:
	link	a6,#-4
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
	unlk	a6
	rts

L57838:
	link	a6,#-4
	move.w	8(a6),(a7)
	jsr	L66356.l
	move.w	d0,U100670.l
	unlk	a6
	rts

L57862:
	link	a6,#-4
	move.w	U100994.l,(a7)
	move.w	8(a6),-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	cmp.w	U100984.l,d0
	beq.s	L57896
	clr.w	d0
	bra.s	L57898

L57896:
	moveq	#1,d0
L57898:
	unlk	a6
	rts

L57902:
	link	a6,#-4
	tst.w	U100670.l
	bne.s	L57918
	clr.w	d0
	bra.s	L57982

L57918:
	move.w	U100670.l,(a7)
	jsr	L358.l
	move.w	d0,U101490.l
	move.w	U100670.l,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L358.l
	move.w	d0,U101182.l
	move.w	U100670.l,(a7)
	jsr	L66356.l
	move.w	d0,U100670.l
	moveq	#1,d0
L57982:
	unlk	a6
	rts

L57986:
	link	a6,#-4
	move.w	U101490.l,(a7)
	jsr	L9214.l
	cmpi.b	#46,U100754.l
	beq.s	L58016
	clr.w	d0
	bra.s	L58018

L58016:
	moveq	#1,d0
L58018:
	unlk	a6
	rts

L58022:
	link	a6,#-4
	tst.w	U100996.l
	bne.s	L58038
	clr.w	d0
	bra.s	L58040

L58038:
	moveq	#1,d0
L58040:
	unlk	a6
	rts

L58044:
	link	a6,#-4
	cmpi.w	#1,U100996.l
	beq.s	L58062
	clr.w	d0
	bra.s	L58064

L58062:
	moveq	#1,d0
L58064:
	unlk	a6
	rts

L58068:
	link	a6,#-4
	clr.w	U100996.l
	unlk	a6
	rts

L58082:
	link	a6,#-4
	clr.w	U101108.l
	clr.w	U100986.l
	unlk	a6
	rts

L58102:
	link	a6,#-4
	jsr	L74840.l
	move.l	U101030.l,(a7)
	move.l	#L74902,-(a7)
	move.l	T87206.l,-(a7)
	jsr	L54390.l
	addq.l	#8,a7
	unlk	a6
	rts

L58142:
	link	a6,#-4
	jsr	L53628.l
	jsr	L64160.l
	move.w	d0,U99864.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,U99818.l
	move.w	d0,(a7)
	jsr	L64276.l
	bra.s	L58212

L58188:
	bsr  	L60580
	bsr  	L60924
	tst.w	d0
	beq.s	L58212
	jsr	L47940.l
	jsr	L18690.l
L58212:
	jsr	L61904.l
	tst.w	d0
	beq.s	L58188
	jsr	L64180.l
	unlk	a6
	rts

L58232:
	link	a6,#-4
	move.w	U98716.l,(a7)
	move.w	U100636.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,U98376.l
	bne.s	L58270
	jsr	L67690.l
L58270:
	move.w	U101474.l,(a7)
	jsr	L64090.l
	move.w	U100636.l,(a7)
	jsr	L64090.l
	move.w	U99818.l,(a7)
	jsr	L64090.l
	move.w	U98376.l,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L64090.l
	move.w	#6,(a7)
	jsr	L64300.l
	move.w	#18,(a7)
	jsr	L64090.l
	bsr  	L59950
	move.l	#U101014,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L58380
	jsr	L61834.l
	bsr  	L58830
	bra  	L58606

L58380:
	jsr	L64888.l
	jsr	L64732.l
	move.w	U98376.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L59090
	jsr	L64180.l
	move.w	#18,(a7)
	jsr	L68540.l
	jsr	L61834.l
	bsr  	L58610
	tst.w	d0
	bne  	L58606
	move.w	#7,(a7)
	jsr	L64352.l
	move.w	d0,U99818.l
	move.w	U99864.l,(a7)
	move.w	#7,-(a7)
	jsr	L64408.l
	addq.l	#2,a7
	tst.w	U99818.l
	beq.s	L58506
	move.w	U99818.l,(a7)
	jsr	L358.l
	move.w	d0,U99864.l
	bsr  	L58878
L58506:
	move.w	#18,(a7)
	jsr	L68540.l
	tst.w	U101198.l
	beq.s	L58602
	bsr  	L60924
	tst.w	d0
	beq.s	L58602
	bsr  	L60968
	move.w	U101046.l,(a7)
	move.l	#L55354,-(a7)
	jsr	L64994.l
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L54682,-(a7)
	move.l	T87290.l,-(a7)
	jsr	L54390.l
	adda.l	#16,a7
	jsr	L74840.l
	jsr	L47940.l
L58602:
	bsr  	L58830
L58606:
	unlk	a6
	rts

L58610:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	U99818.l,(a7)
	jsr	L378.l
	tst.w	d0
	bne  	L58818
	tst.w	U99864.l
	bne  	L58818
	move.w	#11,(a7)
	jsr	L64352.l
	cmp.w	#18,d0
	bne  	L58818
	jsr	L64994.l
	jsr	L65148.l
	move.w	#9,(a7)
	jsr	L64352.l
	move.w	d0,U100636.l
	move.w	d0,-(a7)
	jsr	L65014.l
	cmp.w	(a7)+,d0
	bne.s	L58818
	move.w	U98716.l,(a7)
	clr.w	d0
	move.w	U100636.l,d0
	move.w	d0,U101156.l
	move.w	d0,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	move.w	d0,d7
	beq.s	L58818
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,U99818.l
	beq.s	L58818
	move.w	#10,(a7)
	jsr	L64326.l
	move.w	U99818.l,(a7)
	jsr	L358.l
	move.w	d0,U99864.l
	move.w	#11,(a7)
	jsr	L64352.l
	move.w	d0,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	bsr  	L60088
	addq.l	#2,a7
	jsr	L64180.l
	moveq	#1,d0
	bra.s	L58820

L58818:
	clr.w	d0
L58820:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L58830:
	link	a6,#-4
	move.w	#7,(a7)
	jsr	L64326.l
	jsr	L66800.l
	jsr	L64224.l
	move.w	d0,U101156.l
	jsr	L64224.l
	move.w	d0,(a7)
	bsr  	L59986
	unlk	a6
	rts

L58878:
	link	a6,#-4
	move.l	#U101014,(a7)
	jsr	L204.l
	tst.w	d0
	bne  	L59086
	jsr	L64888.l
L58906:
	bsr  	L60948
	bra.s	L58944

L58912:
	bsr  	L59916
	tst.w	U99818.l
	beq  	L59086
	move.w	U99818.l,(a7)
	jsr	L358.l
	move.w	d0,U99864.l
L58944:
	jsr	L61904.l
	tst.w	d0
	bne.s	L58912
	tst.w	U98398.l
	beq.s	L59078
	jsr	L64994.l
	move.w	d0,(a7)
	jsr	L66546.l
	tst.w	d0
	beq.s	L59078
	jsr	L66768.l
L58986:
	jsr	L58082.l
	bsr  	L60968
	jsr	L64160.l
	move.w	d0,(a7)
	move.l	#L65620,-(a7)
	jsr	L64994.l
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L55354,-(a7)
	move.l	T87294.l,-(a7)
	jsr	L54390.l
	adda.l	#16,a7
	bra.s	L59056

	bra.s	L58986

L59056:
	jsr	L66800.l
	move.w	#2,(a7)
	jsr	L47436.l
	jsr	L47940.l
L59078:
	bsr  	L59366
	bra  	L58906

L59086:
	unlk	a6
	rts

L59090:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	bne.s	L59162
	tst.w	U101198.l
	beq.s	L59158
	bsr  	L60968
	jsr	L64994.l
	move.w	d0,(a7)
	move.l	#L54682,-(a7)
	move.l	T87210.l,-(a7)
	jsr	L54390.l
	addq.l	#8,a7
	jsr	L74840.l
	jsr	L47940.l
L59158:
	bra  	L59356

L59162:
	jsr	L61884.l
	tst.w	d0
	beq.s	L59186
	jsr	L64994.l
	move.w	d0,(a7)
	jsr	L66942.l
L59186:
	bsr  	L60616
	bsr  	L60924
	tst.w	d0
	bne.s	L59212
	jsr	L64994.l
	move.w	d0,(a7)
	jsr	L67152.l
L59212:
	jsr	L64746.l
	jsr	L74764.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	bsr  	L59090
	jsr	L64160.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	jsr	L11782.l
	addq.l	#2,a7
	tst.w	U101198.l
	beq.s	L59350
	bsr  	L60968
	jsr	L64160.l
	move.w	d0,(a7)
	move.l	#L55354,-(a7)
	move.w	d7,-(a7)
	jsr	L358.l
	addq.l	#2,a7
	swap	d0
	clr.w	d0
	swap	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L54682,-(a7)
	move.l	T87286.l,-(a7)
	jsr	L54390.l
	adda.l	#16,a7
	jsr	L74840.l
	jsr	L47940.l
L59350:
	jsr	L64180.l
L59356:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L59366:
	link	a6,#-4
	jsr	L61834.l
	jsr	L75710.l
	jsr	L61904.l
	tst.w	d0
	bne  	L59726
	move.w	U99864.l,(a7)
	jsr	L358.l
	move.w	d0,U100636.l
	move.w	d0,(a7)
	jsr	L65266.l
	tst.w	d0
	beq  	L59724
	tst.w	U100636.l
	bne.s	L59448
	clr.w	U101046.l
	bsr  	L59950
	bra  	L59722

L59448:
	move.w	U100636.l,(a7)
	jsr	L65356.l
	tst.w	d0
	beq.s	L59472
	bsr  	L59730
	bra  	L59722

L59472:
	move.w	U100636.l,(a7)
	jsr	L65726.l
	tst.w	d0
	beq  	L59710
	move.w	U100996.l,U98380.l
	move.w	#-1,U100996.l
	move.w	U100636.l,(a7)
	jsr	L9468.l
	move.w	d0,U98382.l
	move.w	U98380.l,U100996.l
	tst.w	U98382.l
	beq.s	L59552
	bsr  	L59730
	bra  	L59726

L59552:
	tst.w	U99178.l
	beq.s	L59622
	jsr	L50570.l
	cmpi.b	#34,U100754.l
	bne.s	L59590
	jsr	L61992.l
	bsr  	L59950
	bra  	L59726

L59590:
	cmpi.b	#58,U100754.l
	bne.s	L59622
	jsr	L61992.l
	move.w	U101046.l,(a7)
	bsr  	L60254
	bsr  	L59950
	bra.s	L59726

L59622:
	move.w	U100636.l,(a7)
	jsr	L65878.l
	move.w	d0,U98378.l
	bne.s	L59648
	bsr  	L58232
	bra.s	L59726

L59648:
	move.w	U101460.l,(a7)
	jsr	L64090.l
	move.w	U99864.l,U101460.l
	bsr  	L59950
	move.w	U98378.l,(a7)
	jsr	L510.l
	move.w	U101460.l,U101156.l
	jsr	L64224.l
	move.w	d0,U101460.l
	bra.s	L59722

L59710:
	move.l	#T86328,(a7)
	jsr	L67406.l
L59722:
	bra.s	L59726

L59724:
	bsr.s	L59730
L59726:
	unlk	a6
	rts

L59730:
	link	a6,#-4
	move.w	U100636.l,U101046.l
	bsr  	L59950
	unlk	a6
	rts

L59752:
	link	a6,#-4
	bsr  	L59366
	bsr  	L60948
	unlk	a6
	rts

L59768:
	link	a6,#-4
	move.w	U99864.l,(a7)
	jsr	L64090.l
	clr.w	d0
	move.w	U101046.l,d0
	move.w	d0,U99864.l
	move.w	d0,(a7)
	jsr	L64090.l
	jsr	L75710.l
	bra.s	L59816

L59814:
	bsr.s	L59752
L59816:
	jsr	L61904.l
	tst.w	d0
	beq.s	L59814
	jsr	L64764.l
	jsr	L64224.l
	move.w	d0,U99864.l
	unlk	a6
	rts

L59848:
	link	a6,#-4
	move.w	U99864.l,(a7)
	jsr	L64090.l
	move.w	U101046.l,U99864.l
	jsr	L61834.l
	bra.s	L59890

L59882:
	bsr  	L60948
	bsr  	L60580
L59890:
	jsr	L61904.l
	tst.w	d0
	beq.s	L59882
	jsr	L64224.l
	move.w	d0,U99864.l
	unlk	a6
	rts

L59916:
	link	a6,#-4
	tst.w	U99818.l
	beq.s	L59946
	move.w	U99818.l,(a7)
	jsr	L378.l
	move.w	d0,U99818.l
L59946:
	unlk	a6
	rts

L59950:
	link	a6,#-4
	jsr	L61904.l
	tst.w	d0
	bne.s	L59982
	move.w	U99864.l,(a7)
	jsr	L378.l
	move.w	d0,U99864.l
L59982:
	unlk	a6
	rts

L59986:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	bra.s	L60064

L59996:
	tst.w	U101474.l
	bne.s	L60016
	move.l	#T86331,(a7)
	jsr	L67406.l
L60016:
	move.w	U101474.l,d7
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L62820.l
	move.w	U101474.l,(a7)
	jsr	L378.l
	move.w	d0,U101474.l
	move.w	d7,(a7)
	jsr	L62820.l
L60064:
	clr.w	d0
	move.w	U101474.l,d0
	cmp.w	8(a6),d0
	bne.s	L59996
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L60088:
	link	a6,#-2
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	U101474.l,d6
	cmp.w	10(a6),d6
	beq  	L60244
	clr.w	d0
	move.w	d7,d0
	move.w	d0,-2(a6)
	cmp.w	d0,d6
	bne.s	L60136
	move.w	10(a6),(a7)
	bsr  	L59986
	bra.s	L60244

L60136:
	tst.w	d7
	bne.s	L60152
	move.l	#T86334,(a7)
	jsr	L67406.l
L60152:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L64090.l
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L62820.l
	move.w	d7,(a7)
	jsr	L62820.l
	move.w	d6,(a7)
	jsr	L378.l
	cmp.w	-2(a6),d0
	beq.s	L60216
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L60216:
	jsr	L64224.l
	move.w	d0,d7
	cmp.w	10(a6),d7
	beq.s	L60232
	bra.s	L60136

L60232:
	move.w	d7,(a7)
	move.w	d6,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
L60244:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L60254:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L11848.l
	move.w	d0,d6
	bne.s	L60334
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L60310
	move.w	U98718.l,(a7)
	move.w	d7,-(a7)
	jsr	L65948.l
	addq.l	#2,a7
	move.w	d0,d6
	bne.s	L60318
L60310:
	move.w	d7,(a7)
	jsr	L67730.l
L60318:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,U101046.l
	bra.s	L60348

L60334:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,U101046.l
L60348:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L60358:
	link	a6,#-6
	movea.l	8(a6),a0
	movea.l	8(a0),a0
	jsr	(a0)
	bra  	L60564

L60376:
	clr.w	-2(a6)
	bra  	L60526

L60384:
	movea.l	8(a6),a0
	move.w	-2(a6),d1
	asl.w	#4,d1
	ext.l	d1
	move.l	0(a0,d1.l),(a7)
	move.w	U100636.l,-(a7)
	jsr	L62078.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L60522
	move.w	U100636.l,(a7)
	jsr	L64090.l
	bsr  	L59950
	jsr	L64160.l
	move.w	d0,-(a7)
	movea.l	8(a6),a0
	movea.l	12(a0),a0
	jsr	(a0)
	addq.l	#2,a7
	jsr	L64746.l
	movea.l	8(a6),a0
	movea.l	8(a0),a0
	jsr	(a0)
	move.w	#1,-(a7)
	jsr	L64352.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	movea.l	8(a6),a0
	movea.l	12(a0),a0
	jsr	(a0)
	addq.l	#2,a7
	movea.l	8(a6),a0
	move.w	-2(a6),d1
	asl.w	#4,d1
	ext.l	d1
	movea.l	4(a0,d1.l),a0
	jsr	(a0)
	jsr	L64180.l
	bra.s	L60546

L60522:
	addq.w	#1,-2(a6)
L60526:
	movea.l	8(a6),a0
	move.w	-2(a6),d1
	asl.w	#4,d1
	ext.l	d1
	tst.l	0(a0,d1.l)
	bne  	L60384
L60546:
	movea.l	8(a6),a0
	move.w	-2(a6),d1
	asl.w	#4,d1
	ext.l	d1
	tst.l	0(a0,d1.l)
	beq.s	L60576
L60564:
	jsr	L61904.l
	tst.w	d0
	beq  	L60376
L60576:
	unlk	a6
	rts

L60580:
	link	a6,#-4
	move.l	#T86072,(a7)
	bsr  	L60358
	unlk	a6
	rts

L60598:
	link	a6,#-4
	move.l	#T86120,(a7)
	bsr  	L60358
	unlk	a6
	rts

L60616:
	link	a6,#-4
	move.l	#T86200,(a7)
	bsr  	L60358
	unlk	a6
	rts

L60634:
	link	a6,#-4
	move.l	#T86248,(a7)
	bsr  	L60358
	unlk	a6
	rts

L60652:
	link	a6,#-4
	move.l	#T86296,(a7)
	bsr  	L60358
	unlk	a6
	rts

L60670:
	link	a6,#-4
	bsr  	L59366
	move.w	U99864.l,(a7)
	jsr	L65840.l
	move.w	d0,U100636.l
	unlk	a6
	rts

L60700:
	link	a6,#-4
	bsr  	L60924
	tst.w	d0
	bne.s	L60722
	move.w	8(a6),(a7)
	jsr	L66942.l
L60722:
	unlk	a6
	rts

L60726:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr.s	L60700
	move.w	U101046.l,(a7)
	jsr	L65322.l
	tst.w	d0
	bne.s	L60774
	move.w	U101046.l,(a7)
	move.w	d7,-(a7)
	jsr	L67066.l
	addq.l	#2,a7
L60774:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L60784:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr.s	L60700
	move.w	U101046.l,(a7)
	jsr	L65356.l
	tst.w	d0
	bne.s	L60842
	jsr	L61432.l
	tst.w	d0
	bne.s	L60842
	move.w	U101046.l,(a7)
	move.w	d7,-(a7)
	jsr	L67066.l
	addq.l	#2,a7
L60842:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L60852:
	link	a6,#-4
	move.w	U101046.l,(a7)
	jsr	L64224.l
	move.w	d0,-(a7)
	jsr	L6590.l
	addq.l	#2,a7
	move.w	d0,(a7)
	bsr.s	L60886
	unlk	a6
	rts

L60886:
	link	a6,#-4
	tst.w	8(a6)
	beq.s	L60906
	clr.w	d0
	move.w	U100984.l,d0
	bra.s	L60914

L60906:
	clr.w	d0
	move.w	U101186.l,d0
L60914:
	move.w	d0,U101046.l
	unlk	a6
	rts

L60924:
	link	a6,#-4
	cmpi.w	#1,U101046.l
	bne.s	L60942
	clr.w	d0
	bra.s	L60944

L60942:
	moveq	#1,d0
L60944:
	unlk	a6
	rts

L60948:
	link	a6,#-4
	bsr.s	L60924
	tst.w	d0
	beq.s	L60964
	jsr	L67028.l
L60964:
	unlk	a6
	rts

L60968:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L48048.l
	jsr	L74840.l
	jsr	L64994.l
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
	jsr	L65148.l
	jsr	L65014.l
	tst.w	d0
	bne.s	L61006
L61024:
	move.w	#91,(a7)
	jsr	L74948.l
	move.w	d7,(a7)
	jsr	L55076.l
	move.l	#T86337,(a7)
	jsr	L74902.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L61064:
	link	a6,#-4
	clr.w	d0
	move.w	U100626.l,d0
	cmp.w	U101460.l,d0
	bne.s	L61090
	move.w	#32767,d0
	bra.s	L61094

L61090:
	move.w	8(a6),d0
L61094:
	unlk	a6
	rts

L61098:
	link	a6,#-4
	cmpi.w	#2,8(a6)
	ble.s	L61116
	bsr  	L61884
	bra.s	L61128

L61116:
	tst.w	8(a6)
	beq.s	L61126
	clr.w	d0
	bra.s	L61128

L61126:
	moveq	#1,d0
L61128:
	unlk	a6
	rts

L61132:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr.s	L61064
	move.w	d0,d7
	move.w	d7,(a7)
	bsr.s	L61098
	tst.w	d0
	beq.s	L61178
	move.w	U101460.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L66942.l
L61178:
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L61190:
	link	a6,#-4
	move.l	#L60616,(a7)
	bsr.s	L61222
	unlk	a6
	rts

L61206:
	link	a6,#-4
	move.l	#L60580,(a7)
	bsr.s	L61222
	unlk	a6
	rts

L61222:
	link	a6,#-4
	bsr  	L61904
	tst.w	d0
	beq.s	L61254
	move.w	U101460.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L66942.l
L61254:
	movea.l	8(a6),a0
	jsr	(a0)
	jsr	L60924.l
	tst.w	d0
	bne.s	L61290
	move.w	U101460.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L67152.l
L61290:
	unlk	a6
	rts

L61294:
	link	a6,#-4
	bsr.s	L61190
	clr.w	d0
	move.w	U101046.l,d0
	unlk	a6
	rts

L61312:
	link	a6,#-4
	bsr.s	L61294
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L61336
	jsr	L67118.l
L61336:
	unlk	a6
	rts

L61340:
	link	a6,#-4
	bsr.s	L61294
	move.w	d0,(a7)
	jsr	L65356.l
	tst.w	d0
	bne.s	L61370
	bsr.s	L61432
	tst.w	d0
	bne.s	L61370
	jsr	L67118.l
L61370:
	unlk	a6
	rts

L61374:
	link	a6,#-4
	bsr.s	L61340
	jsr	L64746.l
	unlk	a6
	rts

L61390:
	link	a6,#-4
	move.w	8(a6),(a7)
	jsr	L65266.l
	tst.w	d0
	beq.s	L61422
	move.w	8(a6),(a7)
	jsr	L9468.l
	tst.w	d0
	bne.s	L61426
L61422:
	clr.w	d0
	bra.s	L61428

L61426:
	moveq	#1,d0
L61428:
	unlk	a6
	rts

L61432:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	U101046.l,(a7)
	bsr.s	L61390
	move.w	d0,d7
	beq.s	L61464
	jsr	L52990.l
	jsr	L64764.l
L61464:
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L61476:
	link	a6,#-4
	bsr  	L61340
	move.w	U101046.l,(a7)
	jsr	L65532.l
	unlk	a6
	rts

L61500:
	link	a6,#-4
	bsr  	L61294
	move.w	d0,(a7)
	bsr  	L62492
	unlk	a6
	rts

L61518:
	link	a6,#-4
	bsr  	L61190
	bsr  	L61710
	unlk	a6
	rts

L61534:
	link	a6,#-4
	bsr.s	L61518
	jsr	L64746.l
	unlk	a6
	rts

L61550:
	link	a6,#-4
	bsr  	L61294
	tst.w	d0
	bne.s	L61568
	jsr	L67118.l
L61568:
	unlk	a6
	rts

L61572:
	link	a6,#-4
	bsr  	L61294
	move.w	d0,(a7)
	jsr	L64090.l
	unlk	a6
	rts

L61592:
	link	a6,#-4
	bsr.s	L61500
	jsr	L64746.l
	unlk	a6
	rts

L61608:
	link	a6,#-4
	bsr  	L61206
	clr.w	d0
	move.w	U101046.l,d0
	cmp.w	U100984.l,d0
	beq.s	L61654
	clr.w	d0
	move.w	U101046.l,d0
	cmp.w	U101186.l,d0
	beq.s	L61654
	jsr	L67508.l
L61654:
	unlk	a6
	rts

L61658:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	bsr  	L61476
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d7
	blt.s	L61694
	cmp.w	8(a6),d7
	bgt.s	L61694
	move.w	d7,d0
	bra.s	L61700

L61694:
	jsr	L67118.l
L61700:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L61710:
	link	a6,#-4
	move.w	U101046.l,(a7)
	bsr  	L62492
	move.w	U101046.l,(a7)
	jsr	L65878.l
	tst.w	d0
	beq.s	L61758
	bsr.s	L61762
	tst.w	d0
	bne.s	L61758
	move.w	U101046.l,(a7)
	jsr	L66904.l
L61758:
	unlk	a6
	rts

L61762:
	link	a6,#-4
	move.w	U98718.l,(a7)
	move.w	U101114.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	cmp.w	U100984.l,d0
	beq.s	L61798
	clr.w	d0
	bra.s	L61800

L61798:
	moveq	#1,d0
L61800:
	unlk	a6
	rts

L61804:
	link	a6,#-4
	move.w	U100742.l,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L66244.l
	addq.l	#2,a7
	unlk	a6
	rts

L61834:
	link	a6,#-4
	move.w	#1,U101046.l
	unlk	a6
	rts

L61850:
	link	a6,#-4
	move.w	U99864.l,(a7)
	jsr	L358.l
	cmp.w	U100652.l,d0
	beq.s	L61878
	clr.w	d0
	bra.s	L61880

L61878:
	moveq	#1,d0
L61880:
	unlk	a6
	rts

L61884:
	link	a6,#-4
	bsr.s	L61904
	tst.w	d0
	beq.s	L61898
	moveq	#1,d0
	bra.s	L61900

L61898:
	bsr.s	L61850
L61900:
	unlk	a6
	rts

L61904:
	link	a6,#-4
	tst.w	U99864.l
	beq.s	L61920
	clr.w	d0
	bra.s	L61922

L61920:
	moveq	#1,d0
L61922:
	unlk	a6
	rts

L61926:
	link	a6,#-4
	move.w	8(a6),(a7)
	jsr	L53070.l
	jsr	L64764.l
	unlk	a6
	rts

L61950:
	link	a6,#-4
	move.l	8(a6),(a7)
	jsr	L52972.l
	jsr	L64764.l
	unlk	a6
	rts

L61974:
	link	a6,#-4
	move.w	#1,U99178.l
	bsr.s	L61992
	unlk	a6
	rts

L61992:
	link	a6,#-4
	jsr	L53396.l
	jsr	L64764.l
	unlk	a6
	rts

L62012:
	link	a6,#-4
	move.l	8(a6),d0
	move.l	d0,U101030.l
	move.l	d0,(a7)
	jsr	L83914.l
	move.w	d0,U99178.l
	jsr	L53396.l
	jsr	L64224.l
	unlk	a6
	rts

L62056:
	link	a6,#-4
	move.l	8(a6),(a7)
	bsr.s	L62012
	move.w	d0,(a7)
	jsr	L64090.l
	unlk	a6
	rts

L62078:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L62154
	move.w	d7,(a7)
	jsr	L65878.l
	move.w	d0,d7
	beq.s	L62154
	jsr	L156.l
	move.l	d0,-(a7)
	move.w	d7,-(a7)
	jsr	L378.l
	addq.l	#2,a7
	swap	d0
	clr.w	d0
	swap	d0
	add.l	(a7)+,d0
	cmp.l	10(a6),d0
	beq.s	L62150
	clr.w	d0
	bra.s	L62152

L62150:
	moveq	#1,d0
L62152:
	bra.s	L62156

L62154:
	clr.w	d0
L62156:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L62166:
	link	a6,#-4
	jsr	L64732.l
	bra.s	L62184

L62178:
	jsr	L64470.l
L62184:
	move.w	8(a6),d0
	subq.w	#1,8(a6)
	tst.w	d0
	bne.s	L62178
	jsr	L64764.l
	unlk	a6
	rts

L62206:
	link	a6,#-4
	move.w	U101046.l,(a7)
	jsr	L65532.l
	unlk	a6
	rts

L62226:
	link	a6,#-4
	bsr.s	L62206
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	unlk	a6
	rts

L62246:
	link	a6,#-4
	move.w	#255,(a7)
	bsr  	L61658
	unlk	a6
	rts

L62262:
	link	a6,#-4
	move.w	#1,(a7)
	move.w	8(a6),-(a7)
	bsr.s	L62282
	addq.l	#2,a7
	unlk	a6
	rts

L62282:
	link	a6,#-4
	clr.w	d0
	move.w	d0,U99864.l
	move.w	d0,U99818.l
	bra.s	L62344

L62302:
	jsr	L64160.l
	cmp.w	8(a6),d0
	bne.s	L62338
	jsr	L64942.l
	move.w	10(a6),(a7)
	move.l	#U101014,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L62338:
	jsr	L64028.l
L62344:
	jsr	L64006.l
	tst.w	d0
	beq.s	L62302
	tst.w	10(a6)
	beq.s	L62376
	jsr	L60924.l
	tst.w	d0
	beq.s	L62376
	jsr	L67028.l
L62376:
	move.w	10(a6),(a7)
	move.l	#U101158,-(a7)
	jsr	L218.l
	addq.l	#4,a7
	unlk	a6
	rts

L62398:
	link	a6,#-4
	jsr	L64160.l
	move.w	d0,(a7)
	jsr	L65322.l
	tst.w	d0
	bne.s	L62426
	jsr	L67118.l
L62426:
	unlk	a6
	rts

L62430:
	link	a6,#-4
	tst.w	U101476.l
	beq.s	L62464
	tst.w	U100998.l
	beq.s	L62458
	clr.w	U99190.l
	bra.s	L62464

L62458:
	jsr	L67286.l
L62464:
	unlk	a6
	rts

L62468:
	link	a6,#-4
	cmpi.w	#1,U100986.l
	bne.s	L62488
	jsr	L67334.l
L62488:
	unlk	a6
	rts

L62492:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	bne.s	L62522
	jsr	L67118.l
L62522:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L62532:
	link	a6,#-4
	clr.w	U101460.l
	clr.w	U101156.l
	clr.w	U98402.l
	clr.w	U101474.l
	clr.w	U99818.l
	clr.w	U99864.l
	clr.w	U100674.l
	jsr	L61834.l
	unlk	a6
	rts

L62588:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	cmpi.w	#100,U100978.l
	bhi.s	L62672
	jsr	L76064.l
	tst.w	d0
	beq.s	L62630
	move.l	T87070.l,(a7)
	jsr	L49566.l
	bra.s	L62672

L62630:
	tst.w	U99188.l
	bne.s	L62672
	move.w	#1,U99188.l
	bsr  	L62878
	tst.w	U99188.l
	beq.s	L62672
	bsr.s	L62588
	move.w	d0,U101004.l
	jsr	L67254.l
L62672:
	tst.w	U99186.l
	bne.s	L62770
	clr.w	d0
	move.w	U100620.l,d0
	cmp.w	U100988.l,d0
	bcc.s	L62732
	clr.w	(a7)
	move.w	U99176.l,d7
	move.w	d7,-(a7)
	bsr  	L65186
	addq.l	#2,a7
	addq.w	#1,U99176.l
	move.w	d7,(a7)
	bsr  	L63932
	addq.w	#1,U100620.l
	bra.s	L62768

L62732:
	move.l	T87074.l,(a7)
	move.w	#1,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	move.w	#23,(a7)
	move.l	#U101158,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L62768:
	bra.s	L62790

L62770:
	move.w	U99186.l,d7
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,U99186.l
L62790:
	clr.w	(a7)
	move.w	d7,-(a7)
	bsr  	L65226
	addq.l	#2,a7
	subq.w	#1,U100978.l
	clr.w	d0
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L62820:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	clr.w	(a7)
	move.w	d7,-(a7)
	bsr  	L65186
	addq.l	#2,a7
	move.w	U99186.l,(a7)
	move.w	d7,-(a7)
	bsr  	L65226
	addq.l	#2,a7
	move.w	d0,U99186.l
	addq.w	#1,U100978.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L62878:
	link	a6,#-4
	clr.w	U99186.l
	bsr  	L63344
	bsr  	L64782
	move.w	U99864.l,(a7)
	bsr  	L63544
	move.w	U99818.l,(a7)
	bsr  	L63544
	move.w	U98398.l,(a7)
	bsr  	L63544
	move.w	U100736.l,(a7)
	bsr  	L63544
	move.w	U100674.l,(a7)
	bsr  	L63544
	move.w	U101034.l,(a7)
	bsr  	L63544
	move.w	U99862.l,(a7)
	bsr  	L63544
	move.w	U101474.l,(a7)
	bsr  	L63544
	move.w	U100890.l,(a7)
	bsr  	L63544
	move.w	U100888.l,(a7)
	bsr  	L63444
	move.w	U100888.l,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	bsr  	L63544
	jsr	L60924.l
	tst.w	d0
	beq.s	L63042
	move.w	U101046.l,(a7)
	bsr  	L63544
L63042:
	move.w	U101004.l,(a7)
	bsr  	L63792
	bsr.s	L63074
	cmpi.w	#100,U100978.l
	bcs.s	L63070
	clr.w	U99188.l
L63070:
	unlk	a6
	rts

L63074:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	#-1,U98384.l
	bra  	L63228

L63094:
	movea.w	U98384.l,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(a0),d6
	bra.s	L63140

L63112:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L63864
	tst.w	d0
	bne.s	L63144
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L63140:
	tst.w	d6
	bne.s	L63112
L63144:
	movea.w	U98384.l,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	d6,(a0)
	beq.s	L63228
	bra.s	L63210

L63164:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L63864
	tst.w	d0
	beq.s	L63192
	move.w	d6,(a7)
	bsr  	L63792
	move.w	d7,d6
	bra.s	L63210

L63192:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	d6,-(a7)
	bsr  	L65226
	addq.l	#2,a7
L63210:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d7
	bne.s	L63164
	move.w	d6,(a7)
	bsr  	L63792
L63228:
	addq.w	#1,U98384.l
	move.w	U98384.l,d0
	cmp.w	#128,d0
	blt  	L63094
	clr.w	d0
	move.w	U100988.l,d0
	sub.w	U100620.l,d0
	move.w	d0,U100978.l
	move.w	#-1,U98384.l
	bra.s	L63314

L63278:
	move.w	U100734.l,d6
	add.w	U98384.l,d6
	move.w	d6,(a7)
	bsr  	L63864
	tst.w	d0
	beq.s	L63308
	move.w	d6,(a7)
	bsr  	L63932
	bra.s	L63314

L63308:
	move.w	d6,(a7)
	bsr  	L62820
L63314:
	addq.w	#1,U98384.l
	move.w	U98384.l,d0
	cmp.w	U100620.l,d0
	bcs.s	L63278
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L63344:
	link	a6,#0
	movem.l	d3-d7,-(a7)
	moveq	#-1,d6
	bra.s	L63424

L63356:
	movea.w	d6,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	move.w	(a0),d7
	bra.s	L63420

L63370:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d5
	move.w	d5,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,d4
	beq.s	L63410
	move.w	d5,(a7)
	bsr.s	L63444
	move.w	d4,(a7)
	bsr  	L63544
L63410:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L63420:
	tst.w	d7
	bne.s	L63370
L63424:
	addq.w	#1,d6
	move.w	d6,d0
	cmp.w	#128,d0
	blt.s	L63356
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L63444:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr  	L63864
	tst.w	d0
	bne.s	L63534
	move.w	d7,(a7)
	bsr  	L63792
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d6
	move.w	d7,(a7)
	bsr  	L63792
	bra.s	L63530

L63500:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L63792
	move.w	d6,(a7)
	bsr  	L63792
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d6
L63530:
	tst.w	d6
	bne.s	L63500
L63534:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L63544:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	bra  	L63690

L63560:
	move.w	d7,(a7)
	bsr  	L63864
	tst.w	d0
	bne  	L63696
	cmp.w	#32,d7
	bcc.s	L63586
	cmp.w	#18,d7
	bcc  	L63696
L63586:
	move.w	d7,(a7)
	bsr  	L65266
	tst.w	d0
	beq.s	L63648
	move.w	d7,(a7)
	bsr  	L65356
	tst.w	d0
	beq.s	L63638
	move.w	d7,(a7)
	bsr  	L65454
	tst.w	d0
	beq.s	L63630
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	bsr  	L63792
L63630:
	move.w	d7,(a7)
	bsr  	L63792
	bra.s	L63644

L63638:
	move.w	d7,(a7)
	bsr  	L63444
L63644:
	bra.s	L63696

	bra.s	L63680

L63648:
	move.w	d7,(a7)
	bsr  	L63792
	jsr	L75962.l
	tst.w	d0
	beq.s	L63666
	bsr.s	L63706
L63666:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr  	L63544
L63680:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L63690:
	tst.w	d7
	bne  	L63560
L63696:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L63706:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.l	T87078.l,(a7)
	move.w	#1,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	moveq	#-1,d7
	bra.s	L63752

L63736:
	move.w	d7,(a7)
	clr.w	d0
	move.w	U100734.l,d0
	add.w	d0,(a7)
	bsr  	L63932
L63752:
	addq.w	#1,d7
	move.w	d7,d0
	cmp.w	U100620.l,d0
	bcs.s	L63736
	move.w	#1,(a7)
	move.l	#U101158,-(a7)
	jsr	L218.l
	addq.l	#4,a7
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L63792:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	clr.w	d0
	move.w	d7,d0
	and.w	#7,d0
	movea.w	d0,a0
	movea.l	#T86340,a1
	move.b	0(a0,a1.l),d0
	ext.w	d0
	move.w	d0,-(a7)
	clr.w	d0
	move.w	d7,d0
	lsr.w	#3,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	U101036.l,d0
	movea.l	d0,a0
	move.b	(a0),d0
	or.w	(a7)+,d0
	move.b	d0,(a0)
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L63864:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	movea.l	U101036.l,a0
	clr.w	d1
	move.w	d7,d1
	lsr.w	#3,d1
	move.b	0(a0,d1.w),d0
	ext.w	d0
	clr.w	d1
	move.w	d7,d1
	and.w	#7,d1
	swap	d1
	clr.w	d1
	swap	d1
	add.l	#T86340,d1
	movea.l	d1,a1
	move.b	(a1),d1
	ext.w	d1
	and.w	d1,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L63932:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	clr.w	d0
	move.w	d7,d0
	and.w	#7,d0
	movea.w	d0,a0
	movea.l	#T86340,a1
	move.b	0(a0,a1.l),d0
	ext.w	d0
	not.w	d0
	move.w	d0,-(a7)
	clr.w	d0
	move.w	d7,d0
	lsr.w	#3,d0
	swap	d0
	clr.w	d0
	swap	d0
	add.l	U101036.l,d0
	movea.l	d0,a0
	move.b	(a0),d0
	and.w	(a7)+,d0
	move.b	d0,(a0)
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64006:
	link	a6,#-4
	tst.w	U98402.l
	beq.s	L64022
	clr.w	d0
	bra.s	L64024

L64022:
	moveq	#1,d0
L64024:
	unlk	a6
	rts

L64028:
	link	a6,#-4
	bsr  	L64160
	cmp.w	#18,d0
	bne.s	L64056
	move.w	#10,(a7)
	bsr  	L64352
	move.w	d0,U101474.l
L64056:
	move.w	U98402.l,(a7)
	bsr  	L64594
	move.w	d0,(a7)
	move.w	U98402.l,-(a7)
	bsr  	L64544
	addq.l	#2,a7
	move.w	d0,U98402.l
	unlk	a6
	rts

L64090:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	move.w	U101004.l,-(a7)
	bsr  	L65226
	addq.l	#2,a7
	move.w	U98402.l,(a7)
	move.w	U101004.l,-(a7)
	bsr  	L65186
	addq.l	#2,a7
	move.w	d0,U98402.l
	bsr  	L62588
	move.w	d0,U101004.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64160:
	link	a6,#-4
	move.w	U98402.l,(a7)
	jsr	L378.l
	unlk	a6
	rts

L64180:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	U98402.l,d7
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,U98402.l
	move.w	d7,(a7)
	bsr  	L62820
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64224:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	bsr.s	L64160
	move.w	d0,d7
	move.w	U98402.l,d6
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,U98402.l
	move.w	d6,(a7)
	bsr  	L62820
	clr.w	d0
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L64276:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	U98402.l,-(a7)
	bsr  	L65226
	addq.l	#2,a7
	unlk	a6
	rts

L64300:
	link	a6,#-4
	bra.s	L64310

L64306:
	bsr  	L64732
L64310:
	move.w	8(a6),d0
L64312	equ	*-2
	subq.w	#1,8(a6)
	tst.w	d0
	bne.s	L64306
	unlk	a6
	rts

L64326:
	link	a6,#-4
	bra.s	L64336

L64332:
	bsr  	L64180
L64336:
	move.w	8(a6),d0
	subq.w	#1,8(a6)
	tst.w	d0
	bne.s	L64332
	unlk	a6
	rts

L64352:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	U98402.l,d7
	bra.s	L64378

L64368:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d7
L64378:
	move.w	8(a6),d0
	subq.w	#1,8(a6)
	tst.w	d0
	bne.s	L64368
	move.w	d7,(a7)
	jsr	L378.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64408:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	10(a6),d7
	move.w	U98402.l,d6
	bra.s	L64438

L64428:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,d6
L64438:
	move.w	8(a6),d0
L64440	equ	*-2
	subq.w	#1,8(a6)
	tst.w	d0
	bne.s	L64428
	move.w	d7,(a7)
	move.w	d6,-(a7)
	bsr  	L65226
	addq.l	#2,a7
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L64470:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	U98402.l,(a7)
	jsr	L358.l
	move.w	d0,d7
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	U98402.l,-(a7)
	bsr  	L65186
	addq.l	#2,a7
	move.w	U98402.l,(a7)
	move.w	d7,-(a7)
	bsr  	L65226
	addq.l	#2,a7
	move.w	d7,U98402.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64544:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	bra.s	L64568

L64558:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d7
L64568:
	move.w	10(a6),d0
	subq.w	#1,10(a6)
	tst.w	d0
	bne.s	L64558
	clr.w	d0
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64594:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L378.l
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64658:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	beq.s	L64692
	move.w	d7,(a7)
	move.w	U98402.l,-(a7)
	bsr  	L64544
	addq.l	#2,a7
	move.w	d0,(a7)
	bra.s	L64698

L64692:
	move.w	U98402.l,(a7)
L64698:
	jsr	L378.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64714:
	link	a6,#-4
	bsr  	L64160
	move.w	d0,(a7)
	bsr  	L64090
	unlk	a6
	rts

L64732:
	link	a6,#-4
	clr.w	(a7)
	bsr  	L64090
	unlk	a6
	rts

L64746:
	link	a6,#-4
	move.w	U101046.l,(a7)
	bsr  	L64090
	unlk	a6
	rts

L64764:
	link	a6,#-4
	bsr  	L64224
	move.w	d0,U101046.l
	unlk	a6
	rts

L64782:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	U98402.l,d6
	bra.s	L64874

L64798:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d7
	move.w	d7,(a7)
	bsr  	L63544
	cmp.w	#22,d7
	bhi.s	L64830
	cmp.w	#18,d7
	bcs.s	L64830
	moveq	#7,d0
	bra.s	L64832

L64830:
	moveq	#1,d0
L64832:
	move.w	d0,U98386.l
	bra.s	L64858

L64840:
	move.w	d6,(a7)
	jsr	L358.l
	move.w	d0,d7
	move.w	d6,(a7)
	bsr  	L63792
	move.w	d7,d6
L64858:
	move.w	U98386.l,d0
	subq.w	#1,U98386.l
	tst.w	d0
	bne.s	L64840
L64874:
	tst.w	d6
	bne.s	L64798
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L64888:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	clr.w	d7
	bra.s	L64926

L64900:
	movea.w	d7,a0
	adda.l	a0,a0
	movea.l	#U101014,a1
	move.w	0(a0,a1.l),(a7)
	move.w	d7,-(a7)
	addq.w	#1,(a7)
	bsr  	L64408
	addq.l	#2,a7
	addq.w	#1,d7
L64926:
	cmp.w	#6,d7
	blt.s	L64900
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64942:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	clr.w	d7
	bra.s	L64978

L64954:
	move.w	d7,(a7)
	addq.w	#1,(a7)
	bsr  	L64658
	move.w	d0,-(a7)
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U101014,a0
	move.w	(a7)+,(a0)
	addq.w	#1,d7
L64978:
	cmp.w	#6,d7
	blt.s	L64954
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L64994:
	link	a6,#-4
	move.w	U98402.l,U99866.l
	bsr.s	L65014
	unlk	a6
	rts

L65014:
	link	a6,#-4
	bra.s	L65088

L65020:
	move.w	U99866.l,(a7)
	jsr	L378.l
	cmp.w	#22,d0
	bne.s	L65042
	clr.w	d0
	bra.s	L65098

L65042:
	move.w	U99866.l,(a7)
	jsr	L378.l
	cmp.w	#18,d0
	bne.s	L65086
	move.w	#9,(a7)
	move.w	U99866.l,-(a7)
	bsr  	L64544
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L378.l
	bra.s	L65098

L65086:
	bsr.s	L65148
L65088:
	tst.w	U99866.l
	bne.s	L65020
	clr.w	d0
L65098:
	unlk	a6
	rts

L65102:
	link	a6,#-4
	bra.s	L65134

L65108:
	move.w	U99866.l,(a7)
	jsr	L378.l
	cmp.w	#22,d0
	bne.s	L65132
	bsr.s	L65148
	moveq	#1,d0
	bra.s	L65144

L65132:
	bsr.s	L65148
L65134:
	tst.w	U99866.l
	bne.s	L65108
	clr.w	d0
L65144:
	unlk	a6
	rts

L65148:
	link	a6,#-4
	move.w	U99866.l,(a7)
	bsr  	L64594
	move.w	d0,(a7)
	move.w	U99866.l,-(a7)
	bsr  	L64544
	addq.l	#2,a7
	move.w	d0,U99866.l
	unlk	a6
	rts

L65186:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),(a7)
	move.w	d7,-(a7)
	jsr	L444.l
	addq.l	#2,a7
	clr.w	d0
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65226:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	10(a6),(a7)
	move.w	d7,-(a7)
	jsr	L466.l
	addq.l	#2,a7
	clr.w	d0
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65266:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	bne.s	L65286
	moveq	#1,d0
	bra.s	L65312

L65286:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,d7
	tst.w	d7
	bls.s	L65306
	cmp.w	#32,d7
	bcs.s	L65310
L65306:
	clr.w	d0
	bra.s	L65312

L65310:
	moveq	#1,d0
L65312:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65322:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	bne.s	L65342
	clr.w	d0
	bra.s	L65346

L65342:
	move.w	d7,(a7)
	bsr.s	L65266
L65346:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65356:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	#16,d0
	bhi.s	L65396
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	#10,d0
	bcc.s	L65400
L65396:
	clr.w	d0
	bra.s	L65402

L65400:
	moveq	#1,d0
L65402:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65412:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	#10,d0
	beq.s	L65442
	clr.w	d0
	bra.s	L65444

L65442:
	moveq	#1,d0
L65444:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65454:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	#16,d0
	beq.s	L65484
	clr.w	d0
	bra.s	L65486

L65484:
	moveq	#1,d0
L65486:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65496:
	link	a6,#-4
	move.w	10(a6),(a7)
	move.w	8(a6),-(a7)
	bsr  	L62588
	move.w	d0,-(a7)
	bsr  	L65186
	addq.l	#4,a7
	move.w	d0,-(a7)
	bsr  	L65226
	addq.l	#2,a7
	unlk	a6
	rts

L65532:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr  	L65412
	tst.w	d0
	beq.s	L65582
	move.w	d7,(a7)
	jsr	L378.l
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,U100628.l
	bra.s	L65604

L65582:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L398.l
	move.l	d0,U100628.l
L65604:
	move.l	U100628.l,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65620:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	bsr  	L65266
	tst.w	d0
	bne.s	L65684
	jsr	L56040.l
L65648:
	move.w	d7,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L55354.l
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
	beq.s	L65684
	jsr	L76978.l
	bra.s	L65648

L65684:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65694:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	clr.w	(a7)
	move.w	d7,-(a7)
	bsr  	L65496
	addq.l	#2,a7
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65726:
	link	a6,#-4
	move.w	8(a6),(a7)
	jsr	L65840.l
	cmp.w	#8,d0
	beq.s	L65750
	clr.w	d0
	bra.s	L65752

L65750:
	moveq	#1,d0
L65752:
	unlk	a6
	rts

L65756:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	10(a6),d7
	move.w	d7,(a7)
	bsr  	L65266
	tst.w	d0
	beq.s	L65782
	clr.w	d0
	bra.s	L65830

L65782:
	bra.s	L65806

L65784:
	tst.w	d7
	bne.s	L65796
	clr.w	d0
	move.w	d7,d0
	bra.s	L65830

	bra.s	L65806

L65796:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L65806:
	cmpi.w	#1,8(a6)
	move	sr,d0
	subq.w	#1,8(a6)
	move	d0,ccr
	bgt.s	L65784
	move.w	d7,(a7)
	jsr	L358.l
L65830:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65840:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	bne.s	L65860
	clr.w	d0
	bra.s	L65868

L65860:
	move.w	d7,(a7)
	jsr	L358.l
L65868:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65878:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	bra.s	L65926

L65892:
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	U100742.l,d0
	bne.s	L65926
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L358.l
	bra.s	L65938

L65926:
	move.w	d7,(a7)
	bsr  	L66356
	move.w	d0,d7
	bne.s	L65892
	clr.w	d0
L65938:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L65948:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	bra.s	L65986

L65962:
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	10(a6),d0
	bne.s	L65986
	move.w	d7,(a7)
	jsr	L378.l
	bra.s	L65998

L65986:
	move.w	d7,(a7)
	bsr  	L66356
	move.w	d0,d7
	bne.s	L65962
	clr.w	d0
L65998:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L66008:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	beq.s	L66050
	move.w	10(a6),(a7)
	move.w	d7,-(a7)
	bsr.s	L65948
	addq.l	#2,a7
	move.w	d0,(a7)
	bsr  	L65840
	bra.s	L66052

L66050:
	clr.w	d0
L66052:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L66062:
	link	a6,#0
	movem.l	d3-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65726.l
	tst.w	d0
	bne.s	L66092
	clr.w	d0
	bra  	L66234

L66092:
	move.w	10(a6),d6
	cmp.w	U98716.l,d6
	bne.s	L66124
	move.w	d7,(a7)
	bsr  	L66524
	tst.w	d0
	bne.s	L66124
	clr.w	(a7)
	move.w	d7,-(a7)
	bsr  	L66394
	addq.l	#2,a7
L66124:
	move.w	d6,(a7)
	move.w	d7,-(a7)
	bsr  	L65948
	addq.l	#2,a7
	move.w	d0,d5
	bne.s	L66216
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d4
	move.w	d4,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	12(a6),-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	jsr	L64090.l
	jsr	L64160.l
	move.w	d0,(a7)
	move.w	d6,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	d4,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	jsr	L64180.l
	bra.s	L66230

L66216:
	move.w	12(a6),(a7)
	move.w	d5,-(a7)
	jsr	L65186.l
	addq.l	#2,a7
L66230:
	clr.w	d0
	move.w	d7,d0
L66234:
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L66244:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),d7
	clr.w	d0
	move.w	10(a6),d0
	cmp.w	U98716.l,d0
	bne.s	L66276
	move.w	d7,(a7)
	bsr  	L66626
L66276:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d6
	bra.s	L66334

L66288:
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	10(a6),d0
	bne.s	L66332
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	d6,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	bra.s	L66346

L66332:
	move.w	d7,d6
L66334:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d7
	bne.s	L66288
L66346:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L66356:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	jsr	L378.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L66394:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	move.w	8(a6),(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	jsr	L64090.l
	tst.w	U100736.l
	bne.s	L66442
	jsr	L64224.l
	move.w	d0,U100736.l
	bra.s	L66514

L66442:
	move.w	U100736.l,d7
	bra.s	L66466

L66450:
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	10(a6),d0
	beq.s	L66478
	move.w	d6,d7
L66466:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d6
	bne.s	L66450
L66478:
	move.w	d6,(a7)
	jsr	L64160.l
	move.w	d0,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	jsr	L64224.l
	move.w	d0,(a7)
	move.w	d7,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
L66514:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L66524:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	U100736.l,-(a7)
	bsr.s	L66568
	addq.l	#2,a7
	unlk	a6
	rts

L66546:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	U98398.l,-(a7)
	bsr.s	L66568
	addq.l	#2,a7
	unlk	a6
	rts

L66568:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	bra.s	L66610

L66582:
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	10(a6),d0
	bne.s	L66600
	moveq	#1,d0
	bra.s	L66616

L66600:
	move.w	d7,(a7)
	jsr	L378.l
	move.w	d0,d7
L66610:
	tst.w	d7
	bne.s	L66582
	clr.w	d0
L66616:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L66626:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	U100736.l,-(a7)
	bsr.s	L66654
	addq.l	#2,a7
	move.w	d0,U100736.l
	unlk	a6
	rts

L66654:
	link	a6,#0
	movem.l	d4-d7,-(a7)
	move.w	8(a6),d7
	tst.w	d7
	bne.s	L66674
	clr.w	d0
	bra.s	L66758

L66674:
	move.w	d7,(a7)
	jsr	L358.l
	cmp.w	10(a6),d0
	bne.s	L66698
	move.w	d7,(a7)
	jsr	L378.l
	bra.s	L66758

L66698:
	move.w	d7,d6
	bra.s	L66750

L66702:
	move.w	d6,(a7)
	jsr	L378.l
	move.w	d0,d5
	move.w	d5,(a7)
	jsr	L358.l
	cmp.w	10(a6),d0
	bne.s	L66748
	move.w	d5,(a7)
	jsr	L378.l
	move.w	d0,(a7)
	move.w	d6,-(a7)
	jsr	L65226.l
	addq.l	#2,a7
	bra.s	L66754

L66748:
	move.w	d5,d6
L66750:
	tst.w	d6
	bne.s	L66702
L66754:
	clr.w	d0
	move.w	d7,d0
L66758:
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L66768:
	link	a6,#-4
	move.w	U99818.l,(a7)
	jsr	L64090.l
	move.w	U99864.l,(a7)
	jsr	L64090.l
	unlk	a6
	rts

L66800:
	link	a6,#-4
	jsr	L64224.l
	move.w	d0,U99864.l
	jsr	L64224.l
	move.w	d0,U99818.l
	unlk	a6
	rts

L66832:
	link	a6,#-4
	move.l	T87086.l,(a7)
	move.w	#54,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L66856:
	link	a6,#-4
	move.l	T87090.l,(a7)
	move.w	#34,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L66880:
	link	a6,#-4
	move.l	T87094.l,(a7)
	move.w	#2,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L66904:
	link	a6,#-4
	move.w	#6,(a7)
	jsr	L53070.l
	move.w	8(a6),(a7)
	jsr	L64090.l
	move.l	T87218.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L66942:
	link	a6,#-4
	move.w	#29,(a7)
	jsr	L53070.l
	move.w	8(a6),(a7)
	jsr	L64090.l
	move.l	T87222.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

	link	a6,#-4
	move.w	U101460.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	bsr.s	L66942
	unlk	a6
	rts

L67004:
	link	a6,#-4
	move.l	T87098.l,(a7)
	move.w	#37,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67028:
	link	a6,#-4
	move.w	#38,(a7)
	jsr	L53070.l
	move.w	U101046.l,(a7)
	bsr  	L67866
	move.l	T87226.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67066:
	link	a6,#-4
	move.w	#41,(a7)
	jsr	L53070.l
	move.w	8(a6),(a7)
	jsr	L64090.l
	move.w	10(a6),(a7)
	bsr  	L67866
	move.l	T87298.l,(a7)
	move.w	#2,-(a7)
	bsr  	L67976
	addq.l	#2,a7
	unlk	a6
	rts

L67118:
	link	a6,#-4
	move.w	U101046.l,(a7)
	move.w	U101460.l,-(a7)
	jsr	L65840.l
	addq.l	#2,a7
	move.w	d0,-(a7)
	bsr.s	L67066
	addq.l	#2,a7
	unlk	a6
	rts

L67152:
	link	a6,#-4
	move.w	#42,(a7)
	jsr	L53070.l
	move.w	U101156.l,(a7)
	jsr	L64090.l
	move.w	8(a6),(a7)
	jsr	L64090.l
	move.l	T87302.l,(a7)
	move.w	#2,-(a7)
	bsr  	L67976
	addq.l	#2,a7
	unlk	a6
	rts

L67208:
	link	a6,#-4
	move.w	#49,(a7)
	jsr	L53070.l
	move.l	8(a6),(a7)
	jsr	L62012.l
	move.w	d0,(a7)
	jsr	L64090.l
	move.l	T87230.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67254:
	link	a6,#-4
	move.w	#1,U99188.l
	move.l	T87102.l,(a7)
	move.w	#23,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67286:
	link	a6,#-4
	move.w	#50,(a7)
	jsr	L53070.l
	move.w	U101460.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L64090.l
	move.l	T87274.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67334:
	link	a6,#-4
	move.w	#8,(a7)
	jsr	L53070.l
	move.w	U101460.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L64090.l
	move.l	T87278.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67382:
	link	a6,#-4
	move.l	T87106.l,(a7)
	move.w	#13,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67406:
	link	a6,#-4
	jsr	L47940.l
	move.l	8(a6),(a7)
	move.l	#L74902,-(a7)
	move.l	T87234.l,-(a7)
	jsr	L54390.l
	addq.l	#8,a7
	jsr	L49652.l
	unlk	a6
	rts

L67450:
	link	a6,#-4
	move.l	T87110.l,(a7)
	move.w	#45,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67474:
	link	a6,#-4
	move.w	#32,(a7)
	jsr	L53070.l
	jsr	L64746.l
	move.l	T87238.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67508:
	link	a6,#-4
	move.w	#25,(a7)
	jsr	L53070.l
	move.w	U101046.l,(a7)
	bsr  	L67866
	move.l	T87242.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67546:
	link	a6,#-4
	move.l	T87114.l,(a7)
	move.w	#11,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67570:
	link	a6,#-4
	move.l	T87118.l,(a7)
	move.w	#12,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67594:
	link	a6,#-4
	move.l	T87122.l,(a7)
	move.w	#46,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67618:
	link	a6,#-4
	move.l	T87246.l,(a7)
	move.w	#15,-(a7)
	bsr  	L67836
	addq.l	#2,a7
	unlk	a6
	rts

L67642:
	link	a6,#-4
	move.l	T87250.l,(a7)
	move.w	#17,-(a7)
	bsr  	L67836
	addq.l	#2,a7
	unlk	a6
	rts

L67666:
	link	a6,#-4
	move.l	T87126.l,(a7)
	move.w	#47,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	unlk	a6
	rts

L67690:
	link	a6,#-4
	move.w	#35,(a7)
	jsr	L53070.l
	move.w	U100636.l,(a7)
	jsr	L64090.l
	move.l	T87254.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67730:
	link	a6,#-4
	move.w	#36,(a7)
	jsr	L53070.l
	move.w	8(a6),(a7)
	jsr	L64090.l
	move.l	T87258.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67768:
	link	a6,#-4
	move.w	#21,(a7)
	jsr	L53070.l
	jsr	L64746.l
	move.l	T87262.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67802:
	link	a6,#-4
	move.w	#7,(a7)
	jsr	L53070.l
	jsr	L64746.l
	move.l	T87266.l,(a7)
	bsr  	L67956
	unlk	a6
	rts

L67836:
	link	a6,#-4
	move.w	8(a6),(a7)
	jsr	L53070.l
	jsr	L64746.l
	move.l	10(a6),(a7)
	bsr.s	L67956
	unlk	a6
	rts

L67866:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	move.w	d7,(a7)
	jsr	L65322.l
	tst.w	d0
	beq.s	L67910
	move.w	d7,(a7)
	jsr	L6858.l
	tst.w	d0
	beq.s	L67910
	move.w	U100650.l,(a7)
	bra.s	L67912

L67910:
	move.w	d7,(a7)
L67912:
	jsr	L64090.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L67928:
	link	a6,#-4
	move.w	8(a6),(a7)
	jsr	L53070.l
	move.l	10(a6),(a7)
	clr.w	-(a7)
	bsr.s	L67976
	addq.l	#2,a7
	unlk	a6
	rts

L67956:
	link	a6,#-4
	move.l	8(a6),(a7)
	move.w	#1,-(a7)
	bsr.s	L67976
	addq.l	#2,a7
	unlk	a6
	rts

L67976:
	link	a6,#-2
	movem.l	d6-d7,-(a7)
	jsr	L33100.l
	jsr	L47940.l
	jsr	L58068.l
	jsr	L58082.l
	clr.w	U101476.l
	jsr	L9350.l
	move.w	8(a6),d0
	bra.s	L68124

L68026:
	move.l	10(a6),(a7)
	jsr	L74902.l
	bra.s	L68140

L68038:
	jsr	L64224.l
	move.w	d0,(a7)
	move.l	#L55354,-(a7)
	move.l	10(a6),-(a7)
	jsr	L54390.l
	addq.l	#8,a7
	bra.s	L68140

L68066:
	jsr	L64224.l
	move.w	d0,-2(a6)
	move.w	-2(a6),(a7)
	move.l	#L55354,-(a7)
	jsr	L64224.l
	ext.l	d0
	moveq	#16,d1
	asl.l	d1,d0
	move.l	d0,-(a7)
	move.l	#L55354,-(a7)
	move.l	10(a6),-(a7)
	jsr	L54390.l
	adda.l	#16,a7
	bra.s	L68140

L68124:
	tst.w	d0
	beq.s	L68026
	cmp.w	#1,d0
	beq.s	L68038
	cmp.w	#2,d0
	beq.s	L68066
L68140:
	jsr	L9388.l
	move.w	#2,U100982.l
	jsr	L53396.l
	jsr	L64224.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	jsr	L64090.l
	jsr	L64994.l
	move.w	d0,U100748.l
	move.w	d0,(a7)
	jsr	L64090.l
	clr.w	d0
	move.w	U99818.l,d0
	move.w	d0,U100622.l
	move.w	d0,(a7)
	jsr	L65840.l
	move.w	d0,(a7)
	jsr	L64090.l
	move.w	U101460.l,(a7)
	jsr	L65840.l
	move.w	d0,(a7)
	jsr	L64090.l
	clr.w	d0
	move.w	U99864.l,d0
	move.w	d0,U101006.l
	move.w	d0,(a7)
	jsr	L65840.l
	move.w	d0,(a7)
	jsr	L65694.l
	move.w	d0,(a7)
	jsr	L64090.l
	jsr	L64470.l
	jsr	L64470.l
	jsr	L64470.l
	jsr	L64470.l
	jsr	L64470.l
	jsr	L64224.l
	move.w	d0,U100890.l
	move.w	U98718.l,(a7)
	move.w	U101500.l,-(a7)
	jsr	L66008.l
	addq.l	#2,a7
	cmp.w	U100984.l,d0
	beq.s	L68364
	clr.w	d0
	bra.s	L68366

L68364:
	moveq	#1,d0
L68366:
	move.w	d0,d7
	beq.s	L68376
	jsr	L2226.l
L68376:
	move.w	#24,(a7)
	bsr  	L68570
	tst.w	d0
	beq.s	L68414
	jsr	L64942.l
	move.w	#1,(a7)
	move.l	#U101014,-(a7)
	jsr	L218.l
	addq.l	#4,a7
	bra.s	L68422

L68414:
	tst.w	d7
	bne.s	L68422
	bsr  	L68942
L68422:
	bsr.s	L68434
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L68434:
	link	a6,#-4
	jsr	L64006.l
	tst.w	d0
	beq.s	L68508
	tst.w	U100890.l
	bne.s	L68462
	move.w	#1,(a7)
	bra.s	L68494

L68462:
	move.w	U100890.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L65532.l
	move.l	d0,-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,(a7)
L68494:
	move.l	#U101158,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L68508:
	move.w	#22,(a7)
	bsr.s	L68540
	jsr	L64942.l
	clr.w	(a7)
	move.l	#U101014,-(a7)
	jsr	L218.l
	addq.l	#4,a7
	unlk	a6
	rts

L68540:
	link	a6,#-4
	jsr	L64160.l
	cmp.w	8(a6),d0
	beq.s	L68566
	move.l	#T86348,(a7)
	bsr  	L67406
L68566:
	unlk	a6
	rts

L68570:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	bra.s	L68646

L68580:
	jsr	L64160.l
	cmp.w	#22,d0
	beq.s	L68656
	jsr	L64160.l
	cmp.w	#20,d0
	bne.s	L68640
	move.w	#9,(a7)
	jsr	L64658.l
	move.w	d0,d7
	cmp.w	8(a6),d7
	beq.s	L68636
	cmp.w	U100984.l,d7
	beq.s	L68636
	cmp.w	#26,d7
	bne.s	L68640
L68636:
	moveq	#1,d0
	bra.s	L68658

L68640:
	jsr	L64028.l
L68646:
	jsr	L64006.l
	tst.w	d0
	beq.s	L68580
L68656:
	clr.w	d0
L68658:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L68668:
	link	a6,#-4
	move.l	#U100754,d0
	move.l	d0,U101030.l
	move.l	d0,(a7)
	jsr	L83914.l
	move.w	d0,U99178.l
	unlk	a6
	rts

L68702:
	link	a6,#0
	movem.l	d6-d7/a4-a5,-(a7)
	movea.l	8(a6),a4
	movea.l	12(a6),a5
	move.l	a4,(a7)
	jsr	L83914.l
	ext.l	d0
	adda.l	d0,a4
	bra.s	L68760

L68732:
	move.l	#T86351,(a7)
	move.b	d7,d0
	ext.w	d0
	move.w	d0,-(a7)
	jsr	L50940.l
	addq.l	#2,a7
	tst.w	d0
	beq.s	L68758
	move.b	d7,(a4)+
L68758:
	move.b	d7,(a4)+
L68760:
	move.w	16(a6),d0
	subq.w	#1,16(a6)
	tst.w	d0
	beq.s	L68776
	move.b	(a5)+,d7
	bne.s	L68732
L68776:
	clr.b	(a4)
	tst.l	(a7)+
	movem.l	(a7)+,d7/a4-a5
	unlk	a6
	rts

L68788:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	movea.l	#U100754,a5
	bsr  	L68668
	cmp.w	12(a6),d0
	blt.s	L68862
	move.w	12(a6),(a7)
	move.l	a5,-(a7)
	move.l	8(a6),-(a7)
	bsr.s	L68702
	addq.l	#8,a7
	move.l	#T86354,(a7)
	move.l	8(a6),-(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.w	12(a6),d0
	ext.l	d0
	adda.l	d0,a5
	move.w	12(a6),(a7)
	addi.w	#28,(a7)
	bsr.s	L68894
L68862:
	move.l	a5,(a7)
	jsr	L83914.l
	move.w	d0,(a7)
	move.l	a5,-(a7)
	move.l	8(a6),-(a7)
	bsr  	L68702
	addq.l	#8,a7
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L68894:
	link	a6,#-4
	bsr  	L68668
	cmp.w	8(a6),d0
	ble.s	L68938
	move.l	#T86358,(a7)
	move.w	8(a6),d0
	ext.l	d0
	add.l	#U100754,d0
	move.l	d0,-(a7)
	subq.l	#3,(a7)
	jsr	L83880.l
	addq.l	#4,a7
L68938:
	unlk	a6
	rts

L68942:
	link	a6,#-218
	jsr	L48330.l
	tst.w	U100748.l
	bne.s	L69040
	move.l	#T86362,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	jsr	L83880.l
	addq.l	#4,a7
	move.w	#27,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	bsr  	L68788
	addq.l	#4,a7
	move.l	#T86382,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.l	d0,(a7)
	move.w	#1,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	bra  	L69344

L69040:
	move.l	#T86389,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	jsr	L83880.l
	addq.l	#4,a7
	clr.b	U100815.l
	move.l	#U100754,(a7)
	move.l	a6,-(a7)
	addi.l	#-214,(a7)
	jsr	L83880.l
	addq.l	#4,a7
	jsr	L9350.l
	move.w	U100748.l,(a7)
	jsr	L55354.l
	jsr	L9388.l
	move.w	#19,(a7)
	bsr  	L68894
	move.l	#U100754,(a7)
	jsr	L83914.l
	move.w	d0,(a7)
	move.l	#U100754,-(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	bsr  	L68702
	addq.l	#8,a7
	move.l	#T86404,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.l	a6,(a7)
	addi.l	#-214,(a7)
	move.l	#U100754,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	move.w	#18,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	bsr  	L68788
	addq.l	#4,a7
	move.l	#T86416,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	jsr	L83706.l
	addq.l	#4,a7
	jsr	L9350.l
	move.w	U100622.l,(a7)
	jsr	L65840.l
	move.w	d0,(a7)
	jsr	L65620.l
	jsr	L9388.l
	move.w	#18,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	bsr  	L68788
	addq.l	#4,a7
	move.l	#T86428,(a7)
	move.l	a6,-(a7)
	addi.l	#-152,(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.l	d0,(a7)
	move.w	#1,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	cmp.w	#2,d0
	bne.s	L69344
	move.l	T87166.l,(a7)
	jsr	L76856.l
L69344:
	jsr	L48260.l
	jsr	L74840.l
	unlk	a6
	rts

L69360:
	link	a6,#-132
	move.l	#T86501,(a7)
	move.l	#T86439,-(a7)
	move.l	a6,-(a7)
	addi.l	#-128,(a7)
	jsr	L83880.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.l	a6,(a7)
	addi.l	#-128,(a7)
	move.w	#1,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	cmp.w	#1,d0
	beq.s	L69432
	clr.w	d0
	bra.s	L69434

L69432:
	moveq	#1,d0
L69434:
	unlk	a6
	rts

L69438:
	link	a6,#-4
	move.l	T87318.l,(a7)
	move.l	U101030.l,-(a7)
	jsr	L83748.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L69484
	move.l	#T86551,(a7)
	move.w	#100,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	bra.s	L69500

L69484:
	move.l	#T86580,(a7)
	move.w	#100,-(a7)
	bsr  	L67836
	addq.l	#2,a7
L69500:
	unlk	a6
	rts

L69504:
	link	a6,#-4
	move.l	T87318.l,(a7)
	move.l	U101030.l,-(a7)
	jsr	L83748.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L69550
	move.l	#T86608,(a7)
	move.w	#101,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	bra.s	L69566

L69550:
	move.l	#T86648,(a7)
	move.w	#101,-(a7)
	bsr  	L67836
	addq.l	#2,a7
L69566:
	unlk	a6
	rts

L69570:
	link	a6,#-4
	move.l	T87318.l,(a7)
	move.l	U101030.l,-(a7)
	jsr	L83814.l
	addq.l	#4,a7
	tst.w	d0
	bne.s	L69616
	move.l	#T86674,(a7)
	move.w	#102,-(a7)
	bsr  	L67928
	addq.l	#2,a7
	bra.s	L69620

L69616:
	bsr  	L67570
L69620:
	unlk	a6
	rts

L69624:
	link	a6,#-4
	move.l	#T86710,(a7)
	move.w	#103,-(a7)
	bsr  	L67836
	addq.l	#2,a7
	unlk	a6
	rts

L69648:
	link	a6,#-4
	jsr	L62430.l
	move.w	#2,(a7)
	jsr	L47436.l
	jsr	L48026.l
	jsr	L48480.l
	moveq	#1,d0
	move.w	d0,U100980.l
	move.w	d0,U98712.l
	jsr	L77166.l
	move.l	U100744.l,U99856.l
	clr.w	d0
	ext.l	d0
	move.l	d0,U100642.l
	move.l	d0,U100638.l
	move.l	U100744.l,(a7)
	bsr  	L69934
	bsr  	L70038
	unlk	a6
	rts

L69744:
	link	a6,#-4
	move.l	a6,d0
	add.l	#-1527,d0
	move.l	d0,U99196.l
	sub.l	U100744.l,d0
	move.w	d0,U101468.l
	cmp.w	#512,d0
	bge.s	L69786
	jsr	L67594.l
L69786:
	movea.l	U99196.l,a0
	clr.b	(a0)
	unlk	a6
	rts

L69798:
	link	a6,#-4
	movea.l	#U100561,a0
	move.l	a0,U99196.l
	clr.b	(a0)
	move.w	#2,(a7)
	jsr	L47436.l
	move.w	#1,U99200.l
	move.l	#U100162,d0
	move.l	d0,U99856.l
	move.l	d0,(a7)
	bsr.s	L69934
	tst.w	U101146.l
	beq.s	L69870
	move.l	#U100162,(a7)
	jsr	L19024.l
L69870:
	tst.b	U100162.l
	beq.s	L69928
	clr.w	(a7)
	bsr  	L74214
	move.l	#U100162,U99856.l
	bra.s	L69918

L69896:
	movea.l	U99856.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L74214
	addq.l	#1,U99856.l
L69918:
	movea.l	U99856.l,a0
	tst.b	(a0)
	bne.s	L69896
L69928:
	bsr.s	L70006
	unlk	a6
	rts

L69934:
	link	a6,#-6
	move.w	U101146.l,-2(a6)
	clr.w	U101146.l
	bsr  	L70106
L69956:
	movea.l	U99196.l,a0
	move.b	(a0),d0
	ext.w	d0
	movea.l	8(a6),a1
	move.b	d0,(a1)
	addq.l	#1,U99196.l
	addq.l	#1,8(a6)
	tst.w	d0
	bne.s	L69956
	move.l	8(a6),U99196.l
	move.w	-2(a6),U101146.l
	unlk	a6
	rts

L70006:
	link	a6,#-4
	move.l	#U101040,U99856.l
	clr.w	U99200.l
	clr.w	(a7)
	jsr	L47436.l
	unlk	a6
	rts

L70038:
	link	a6,#-4
	clr.w	U100980.l
	jsr	L48494.l
	jsr	L47962.l
	jsr	L47940.l
	clr.w	(a7)
	jsr	L47436.l
	unlk	a6
	rts

L70078:
	link	a6,#-4
	tst.w	U99200.l
	beq.s	L70096
	jsr	L49684.l
L70096:
	move.w	U99200.l,d0
	unlk	a6
	rts

L70106:
	link	a6,#-10
	clr.w	d0
	move.w	d0,U101496.l
	move.w	d0,U101200.l
	move.w	#1,U100990.l
	move.w	U101044.l,U100992.l
	tst.w	U99200.l
	bne.s	L70186
	move.w	U99194.l,(a7)
	subq.w	#1,(a7)
	clr.w	-(a7)
	bsr  	L72198
	addq.l	#2,a7
	bsr  	L73126
	bsr  	L72348
	move.w	U98710.l,(a7)
	subq.w	#1,(a7)
	bsr  	L71062
L70186:
	move.l	#U101090,(a7)
	jsr	L204.l
	tst.w	d0
	beq.s	L70208
	jsr	L75582.l
L70208:
	bsr  	L73126
	jsr	L75856.l
	move.w	U101458.l,d0
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
	addq.l	#1,U101492.l
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
	clr.w	(a7)
	bsr  	L74214
L70324:
	movea.l	U101492.l,a0
	move.b	(a0),-2(a6)
	beq.s	L70354
	addq.l	#1,U101492.l
	move.b	-2(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L74214
L70354:
	move.b	-2(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
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
	tst.w	U99200.l
	beq.s	L70436
	bsr  	L70792
	jsr	L74860.l
	bra  	L70788

L70436:
	move.w	#10,(a7)
	bsr  	L71636
	bra  	L70778

L70448:
	move.w	U101044.l,(a7)
	bsr  	L71832
	bra  	L70778

L70462:
	bsr  	L70078
	tst.w	d0
	bne.s	L70482
	move.w	#10,(a7)
	bsr  	L71636
	bsr  	L71138
L70482:
	bra  	L70778

L70486:
	bsr  	L71730
	bra  	L70778

L70494:
	move.w	#35,(a7)
	bsr  	L71636
	bra  	L70778

L70506:
	bsr  	L70078
	tst.w	d0
	bne.s	L70526
	move.w	#-1,(a7)
	clr.w	-(a7)
	bsr  	L72378
	addq.l	#2,a7
L70526:
	bra  	L70778

L70530:
	bsr  	L70078
	tst.w	d0
	bne.s	L70552
	move.w	#-1,(a7)
	move.w	#1,-(a7)
	bsr  	L72198
	addq.l	#2,a7
L70552:
	bra  	L70778

L70556:
	bsr  	L70078
	tst.w	d0
	bne.s	L70588
	move.w	U100672.l,(a7)
	move.w	U101154.l,d0
	sub.w	d0,(a7)
	move.w	#1,-(a7)
	bsr  	L72198
	addq.l	#2,a7
L70588:
	bra  	L70778

L70592:
	bsr  	L70078
	tst.w	d0
	bne.s	L70624
	move.w	U101154.l,(a7)
	move.w	U100672.l,d0
	add.w	d0,(a7)
	subq.w	#1,(a7)
	clr.w	-(a7)
	bsr  	L72378
	addq.l	#2,a7
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
	move.w	#1,(a7)
	bsr  	L74392
L70668:
	bra  	L70778

L70672:
	bsr  	L70078
	tst.w	d0
	bne.s	L70724
	clr.w	(a7)
	jsr	L47436.l
	move.l	U99196.l,-6(a6)
	clr.w	(a7)
	bsr  	L74392
	move.l	-6(a6),(a7)
	bsr  	L74566
	bsr  	L74326
	move.w	#1,(a7)
	jsr	L47436.l
L70724:
	bra.s	L70778

L70726:
	tst.w	U101458.l
	ble.s	L70746
	move.w	U101458.l,(a7)
	bsr  	L71636
	bra.s	L70752

L70746:
	jsr	L49684.l
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
	jsr	L75582.l
	bra  	L70208

L70788:
	unlk	a6
	rts

L70792:
	link	a6,#-4
	jsr	L75582.l
L70802:
	bsr  	L72596
	bsr  	L73010
	tst.w	d0
	bne.s	L70820
	bsr  	L72870
	bra.s	L70802

L70820:
	unlk	a6
	rts

L70824:
	link	a6,#-4
	bra.s	L70872

L70830:
	bsr  	L72958
	tst.w	d0
	bne.s	L70862
	clr.w	(a7)
	bsr  	L73072
	add.w	U101496.l,d0
	cmp.w	U101498.l,d0
	blt.s	L70862
	bsr  	L72808
L70862:
	bsr  	L72710
	addq.l	#1,U99196.l
L70872:
	move.l	U99196.l,d0
	cmp.l	U101492.l,d0
	bne.s	L70830
	unlk	a6
	rts

L70890:
	link	a6,#-4
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
	unlk	a6
	rts

L70952:
	link	a6,#-4
	bsr  	L72596
	clr.w	(a7)
	bsr  	L73072
	move.w	d0,(a7)
	move.w	U101154.l,-(a7)
	jsr	L77222.l
	addq.l	#2,a7
	unlk	a6
	rts

L70986:
	link	a6,#-4
	move.w	#-1,(a7)
	bsr.s	L71062
	unlk	a6
	rts

L71000:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	clr.w	(a7)
	jsr	L47436.l
	jsr	L75548.l
	move.w	d0,d7
	bra.s	L71034

L71026:
	move.w	#32,(a7)
	bsr  	L71636
L71034:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bgt.s	L71026
	move.w	#1,(a7)
	jsr	L47436.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L71062:
	link	a6,#-4
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
	move.w	8(a6),d0
	subq.w	#1,8(a6)
	tst.w	d0
	bne.s	L71068
L71100:
	move.w	U101044.l,(a7)
	move.w	U101154.l,-(a7)
	jsr	L77222.l
	addq.l	#2,a7
	unlk	a6
	rts

L71124:
	link	a6,#-4
	bsr.s	L71138
	bsr  	L71274
	unlk	a6
	rts

L71138:
	link	a6,#-4
	tst.w	U101200.l
	beq  	L71270
	tst.w	U101496.l
	beq.s	L71192
	bsr  	L72616
	move.w	U101154.l,(a7)
	subq.w	#1,U101044.l
	move.w	U101044.l,-(a7)
	jsr	L46014.l
	addq.l	#2,a7
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
	move.w	#-1,(a7)
	bsr  	L73072
	move.w	d0,(a7)
	move.w	U101496.l,d0
	add.w	d0,(a7)
	bra.s	L71254

L71246:
	move.w	U101498.l,(a7)
	subq.w	#1,(a7)
L71254:
	move.w	U101154.l,-(a7)
	subq.w	#1,(a7)
	jsr	L77222.l
	addq.l	#2,a7
L71270:
	unlk	a6
	rts

L71274:
	link	a6,#-4
	bsr  	L73250
	move.l	U100638.l,d0
	cmp.l	U99196.l,d0
	bcs.s	L71320
	move.l	U100638.l,d0
	cmp.l	U101492.l,d0
	bhi.s	L71320
	move.l	U101492.l,U100638.l
L71320:
	move.l	U100642.l,d0
	cmp.l	U99196.l,d0
	bcs.s	L71358
	move.l	U100642.l,d0
	cmp.l	U101492.l,d0
	bhi.s	L71358
	move.l	U101492.l,U100642.l
L71358:
	move.l	U101492.l,U99196.l
	bsr.s	L71374
	unlk	a6
	rts

L71374:
	link	a6,#-4
	tst.w	U101496.l
	bne  	L71536
	bsr  	L72984
	tst.w	d0
	beq  	L71536
	bsr  	L73010
	tst.w	d0
	bne  	L71536
	bsr  	L72870
	movea.l	U99856.l,a0
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
	movea.l	U101492.l,a0
	tst.b	(a0)
	beq.s	L71470
	addq.l	#1,U101492.l
	bsr  	L73250
L71470:
	move.w	U101498.l,(a7)
	move.w	U101154.l,-(a7)
	subq.w	#1,(a7)
	jsr	L77222.l
	addq.l	#2,a7
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	move.w	#32,-(a7)
	jsr	L45800.l
	addq.l	#4,a7
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	jsr	L46014.l
	addq.l	#2,a7
L71536:
	unlk	a6
	rts

L71540:
	link	a6,#-4
	bsr  	L72870
	bsr.s	L71554
	unlk	a6
	rts

L71554:
	link	a6,#-8
	move.w	U101154.l,-2(a6)
	move.w	U101044.l,-4(a6)
	bsr  	L72596
	move.l	U99196.l,U101026.l
	jsr	L47004.l
	clr.w	(a7)
	jsr	L47436.l
	bsr  	L73832
	move.w	-4(a6),(a7)
	move.w	-2(a6),-(a7)
	jsr	L77222.l
	addq.l	#2,a7
	move.w	#1,(a7)
	jsr	L47436.l
	unlk	a6
	rts

L71636:
	link	a6,#-4
	bsr  	L72470
	bsr  	L73106
	tst.w	d0
	beq.s	L71664
	cmpi.w	#10,8(a6)
	beq.s	L71664
	bsr  	L71818
L71664:
	subq.l	#1,U99196.l
	move.w	8(a6),d0
	movea.l	U99196.l,a1
	move.b	d0,(a1)
	movea.l	U101492.l,a0
	tst.b	(a0)
	beq.s	L71696
	bsr  	L73220
L71696:
	bsr  	L73126
	bsr  	L71374
	cmpi.w	#10,8(a6)
	bne.s	L71718
	bsr  	L71818
	bra.s	L71722

L71718:
	bsr  	L72098
L71722:
	bsr  	L73126
	unlk	a6
	rts

L71730:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	U101044.l,d7
	clr.w	(a7)
	jsr	L47436.l
	bsr  	L70952
	tst.w	U101200.l
	beq.s	L71792
	bsr  	L73032
	tst.w	d0
	beq.s	L71778
	bsr  	L71540
	bra.s	L71792

L71778:
	bsr  	L72870
	subq.w	#1,U101154.l
	bsr  	L70952
L71792:
	move.w	d7,(a7)
	bsr  	L72050
	move.w	#1,(a7)
	jsr	L47436.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L71818:
	link	a6,#-4
	move.w	#1,(a7)
	bsr.s	L71832
	unlk	a6
	rts

L71832:
	link	a6,#-4
	bsr  	L72906
	tst.w	d0
	bne  	L72046
	clr.w	(a7)
	jsr	L47436.l
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
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	move.w	#33,-(a7)
	jsr	L45800.l
	addq.l	#4,a7
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	jsr	L46014.l
	addq.l	#2,a7
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
	tst.w	U99200.l
	beq.s	L71986
	move.w	#2,(a7)
	jsr	L47436.l
L71986:
	move.w	#1,(a7)
	addq.w	#1,U101154.l
	move.w	U101154.l,-(a7)
	jsr	L77222.l
	addq.l	#2,a7
	tst.w	U99200.l
	beq.s	L72026
	clr.w	(a7)
	jsr	L47436.l
L72026:
	bsr  	L70952
	move.w	8(a6),(a7)
	bsr.s	L72050
	move.w	#1,(a7)
	jsr	L47436.l
L72046:
	unlk	a6
	rts

L72050:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	cmp.w	U101044.l,d7
	ble.s	L72082
	move.w	d7,(a7)
	move.w	U101044.l,d0
	sub.w	d0,(a7)
	bra.s	L72084

L72082:
	clr.w	(a7)
L72084:
	bsr  	L71062
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L72098:
	link	a6,#-6
	bsr  	L72930
	tst.w	d0
	beq.s	L72114
	bsr  	L72470
L72114:
	movea.l	U99196.l,a0
	move.b	(a0),-2(a6)
	bsr.s	L72160
	move.b	-2(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74948.l
	unlk	a6
	rts

L72144:
	link	a6,#-4
	bsr.s	L72160
	addq.w	#1,U101044.l
	unlk	a6
	rts

L72160:
	link	a6,#-4
	bsr  	L72958
	tst.w	d0
	bne.s	L72184
	bsr  	L73144
	tst.w	d0
	beq.s	L72184
	bsr  	L72808
L72184:
	bsr  	L72710
	addq.l	#1,U99196.l
	unlk	a6
	rts

L72198:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	10(a6),d7
	bra.s	L72290

L72212:
	bsr  	L72906
	tst.w	d0
	bne.s	L72294
	bsr  	L72518
	tst.w	d0
	beq.s	L72236
	jsr	L49684.l
	bra.s	L72294

L72236:
	bsr  	L72958
	tst.w	d0
	bne.s	L72270
	clr.w	(a7)
	bsr  	L73072
	add.w	U101496.l,d0
	cmp.w	U101498.l,d0
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
	addq.l	#1,U99196.l
L72290:
	tst.w	d7
	bne.s	L72212
L72294:
	tst.w	8(a6)
	beq.s	L72338
	bsr  	L72906
	tst.w	d0
	beq.s	L72316
	bsr  	L73010
	tst.w	d0
	bne.s	L72338
L72316:
	bsr  	L72596
	jsr	L77166.l
	bsr  	L73200
	tst.w	d7
	bge.s	L72338
	bsr  	L70986
L72338:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L72348:
	link	a6,#-4
	move.w	U100672.l,d0
	ext.l	d0
	divs	#2,d0
	move.w	d0,(a7)
	move.w	#1,-(a7)
	bsr.s	L72378
	addq.l	#2,a7
	unlk	a6
	rts

L72378:
	link	a6,#-8
L72382:
	bsr  	L72596
	subq.w	#1,10(a6)
	beq.s	L72406
	bsr  	L73010
	tst.w	d0
	bne.s	L72406
	bsr  	L72870
	bra.s	L72382

L72406:
	jsr	L77166.l
	clr.w	(a7)
	jsr	L47436.l
	move.l	U101492.l,-4(a6)
	bsr  	L73200
	tst.w	8(a6)
	beq.s	L72456
	bra.s	L72444

L72440:
	bsr  	L70890
L72444:
	move.l	-4(a6),d0
	cmp.l	U99196.l,d0
	bne.s	L72440
L72456:
	move.w	#1,(a7)
	jsr	L47436.l
	unlk	a6
	rts

L72470:
	link	a6,#-4
	bsr.s	L72518
	tst.w	d0
	beq.s	L72514
	jsr	L49684.l
	move.w	#2,(a7)
	jsr	L47436.l
	move.w	#1,(a7)
	move.l	#U101090,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L72514:
	unlk	a6
	rts

L72518:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	tst.w	U99200.l
	beq.s	L72538
	moveq	#6,d0
	bra.s	L72542

L72538:
	move.w	#250,d0
L72542:
	move.w	d0,d7
	sub.w	U100990.l,d7
	move.l	U99196.l,d0
	sub.l	U99856.l,d0
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
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L72596:
	link	a6,#-4
	bra.s	L72604

L72602:
	bsr.s	L72616
L72604:
	tst.w	U101496.l
	bne.s	L72602
	unlk	a6
	rts

L72616:
	link	a6,#-4
	subq.w	#1,U101200.l
	subq.w	#1,U101496.l
	subq.l	#1,U99196.l
	subq.l	#1,U99856.l
	movea.l	U99196.l,a0
	movea.l	U99856.l,a1
	move.b	(a1),(a0)
	move.l	U100638.l,d0
	cmp.l	U99856.l,d0
	bne.s	L72682
	move.l	U99196.l,U100638.l
L72682:
	move.l	U100642.l,d0
	cmp.l	U99856.l,d0
	bne.s	L72706
	move.l	U99196.l,U100642.l
L72706:
	unlk	a6
	rts

L72710:
	link	a6,#-4
	addq.w	#1,U101496.l
	addq.w	#1,U101200.l
	move.l	U100638.l,d0
	cmp.l	U99196.l,d0
	bne.s	L72750
	move.l	U99856.l,U100638.l
L72750:
	move.l	U100642.l,d0
	cmp.l	U99196.l,d0
	bne.s	L72774
	move.l	U99856.l,U100642.l
L72774:
	movea.l	U99856.l,a0
	movea.l	U99196.l,a1
	move.b	(a1),(a0)
	addq.l	#1,U99856.l
	bsr  	L72958
	tst.w	d0
	beq.s	L72804
	bsr.s	L72808
L72804:
	unlk	a6
	rts

L72808:
	link	a6,#-4
	move.w	U101496.l,d0
	movea.l	U99856.l,a1
	move.b	d0,(a1)
	addq.l	#1,U99856.l
	clr.w	U101496.l
	addq.w	#1,U100990.l
	move.w	U100990.l,d0
	cmp.w	U100672.l,d0
	ble.s	L72866
	move.w	#1,U100992.l
L72866:
	unlk	a6
	rts

L72870:
	link	a6,#-4
	subq.w	#1,U100990.l
	subq.l	#1,U99856.l
	movea.l	U99856.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,U101496.l
	unlk	a6
	rts

L72906:
	link	a6,#-4
	movea.l	U99196.l,a0
	tst.b	(a0)
	beq.s	L72924
	clr.w	d0
	bra.s	L72926

L72924:
	moveq	#1,d0
L72926:
	unlk	a6
	rts

L72930:
	link	a6,#-4
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
	unlk	a6
	rts

L72958:
	link	a6,#-4
	movea.l	U99196.l,a0
	cmpi.b	#10,(a0)
	beq.s	L72978
	clr.w	d0
	bra.s	L72980

L72978:
	moveq	#1,d0
L72980:
	unlk	a6
	rts

L72984:
	link	a6,#-4
	movea.l	U101492.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
	unlk	a6
	rts

L73010:
	link	a6,#-4
	tst.w	U101200.l
	beq.s	L73026
	clr.w	d0
	bra.s	L73028

L73026:
	moveq	#1,d0
L73028:
	unlk	a6
	rts

L73032:
	link	a6,#-4
	cmpi.w	#1,U101154.l
	bne.s	L73066
	clr.w	(a7)
	bsr.s	L73072
	cmp.w	U101044.l,d0
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
	unlk	a6
	rts

L73072:
	link	a6,#-4
	move.w	U100990.l,d0
	add.w	8(a6),d0
	cmp.w	#1,d0
	bgt.s	L73100
	move.w	U100992.l,d0
	bra.s	L73102

L73100:
	moveq	#1,d0
L73102:
	unlk	a6
	rts

L73106:
	link	a6,#-4
	bsr.s	L73172
	tst.w	d0
	beq.s	L73120
	bsr.s	L73144
	bra.s	L73122

L73120:
	clr.w	d0
L73122:
	unlk	a6
	rts

L73126:
	link	a6,#-4
	move.l	U99196.l,U101492.l
	unlk	a6
	rts

L73144:
	link	a6,#-4
	move.w	U101044.l,d0
	cmp.w	U101498.l,d0
	bge.s	L73166
	clr.w	d0
	bra.s	L73168

L73166:
	moveq	#1,d0
L73168:
	unlk	a6
	rts

L73172:
	link	a6,#-4
	move.w	U101154.l,d0
	cmp.w	U100672.l,d0
	bge.s	L73194
	clr.w	d0
	bra.s	L73196

L73194:
	moveq	#1,d0
L73196:
	unlk	a6
	rts

L73200:
	link	a6,#-4
	move.l	#U101040,U101492.l
	bsr.s	L73220
	unlk	a6
	rts

L73220:
	link	a6,#-4
	move.l	U99196.l,U101026.l
	move.l	U101492.l,U100750.l
	bsr.s	L73280
	unlk	a6
	rts

L73250:
	link	a6,#-4
	move.l	U101492.l,U101026.l
	move.l	U99196.l,U100750.l
	bsr.s	L73280
	unlk	a6
	rts

L73280:
	link	a6,#-8
	clr.w	(a7)
	jsr	L47436.l
	move.w	U101154.l,d0
	move.w	d0,-2(a6)
	move.w	d0,U101052.l
	move.w	U101044.l,-4(a6)
	bsr.s	L73348
	move.w	-4(a6),(a7)
	move.w	-2(a6),-(a7)
	jsr	L77222.l
	addq.l	#2,a7
	move.w	#1,(a7)
	jsr	L47436.l
	unlk	a6
	rts

L73348:
	link	a6,#-4
	move.l	#U101170,(a7)
	jsr	L204.l
	tst.w	d0
	bne  	L73540
L73370:
	movea.l	U101026.l,a0
	tst.b	(a0)
	beq.s	L73450
	move.l	U101026.l,d0
	cmp.l	U100750.l,d0
	bne.s	L73412
	move.w	U101154.l,d0
	cmp.w	U101052.l,d0
	bne.s	L73412
	bra  	L73540

L73412:
	movea.l	U100750.l,a0
	tst.b	(a0)
	beq.s	L73428
	bsr  	L73686
	bra.s	L73432

L73428:
	bsr  	L73832
L73432:
	movea.l	U101026.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L73544
	bra.s	L73492

L73450:
	movea.l	U100750.l,a0
	tst.b	(a0)
	beq.s	L73490
	bsr  	L74120
	bsr  	L74054
	tst.w	d0
	beq.s	L73482
	bsr  	L74080
	addq.l	#1,U100750.l
L73482:
	move.w	#1,(a7)
	bsr.s	L73544
	bra.s	L73492

L73490:
	bra.s	L73540

L73492:
	movea.l	U101026.l,a0
	tst.b	(a0)
	beq.s	L73522
	bsr  	L74054
	tst.w	d0
	beq.s	L73522
	addq.l	#1,U100750.l
	addq.w	#1,U101052.l
L73522:
	bsr  	L74028
	tst.w	d0
	beq.s	L73536
	addq.l	#1,U101026.l
L73536:
	bra  	L73370

L73540:
	unlk	a6
	rts

L73544:
	link	a6,#-4
	bsr  	L73144
	tst.w	d0
	beq  	L73670
	bsr  	L73976
	tst.w	d0
	beq.s	L73620
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	move.w	#32,-(a7)
	jsr	L45800.l
	addq.l	#4,a7
	addq.w	#1,U101044.l
	tst.w	8(a6)
	bne.s	L73618
	bsr  	L74054
	tst.w	d0
	beq.s	L73618
	jsr	L77150.l
	bra.s	L73682

L73618:
	bra.s	L73650

L73620:
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	move.w	#33,-(a7)
	jsr	L45800.l
	addq.l	#4,a7
	addq.w	#1,U101044.l
L73650:
	bsr  	L74054
	tst.w	d0
	bne.s	L73664
	addq.w	#1,U101052.l
L73664:
	bsr  	L74080
	bra.s	L73682

L73670:
	bsr  	L74028
	tst.w	d0
	beq.s	L73682
	bsr  	L74080
L73682:
	unlk	a6
	rts

L73686:
	link	a6,#0
	movem.l	d6-d7,-(a7)
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
	add.l	d0,U100750.l
	move.w	d7,d0
	ext.l	d0
	add.l	d0,U101026.l
	move.w	d7,(a7)
	move.w	U101044.l,d0
	add.w	d0,(a7)
	move.w	U101154.l,-(a7)
	jsr	L77222.l
	addq.l	#2,a7
	bra.s	L73820

L73784:
	bsr  	L73144
	tst.w	d0
	bne.s	L73822
	movea.l	U101026.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L74158
	addq.l	#1,U101026.l
	addq.l	#1,U100750.l
L73820:
	bra.s	L73694

L73822:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L73832:
	link	a6,#-4
	bra.s	L73868

L73838:
	bsr  	L73144
	tst.w	d0
	bne.s	L73874
	movea.l	U101026.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L74158
	addq.l	#1,U101026.l
L73868:
	bsr.s	L73976
	tst.w	d0
	beq.s	L73838
L73874:
	unlk	a6
	rts

L73878:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	movea.l	U101026.l,a5
	move.l	U100750.l,U98388.l
	clr.w	d7
	bra.s	L73940

L73906:
	move.w	d7,d0
	add.w	U101044.l,d0
	cmp.w	U101498.l,d0
	bge.s	L73964
	move.b	(a5)+,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
	tst.w	d0
	bne.s	L73964
	addq.w	#1,d7
L73940:
	movea.l	U98388.l,a0
	move.b	(a0),d0
	ext.w	d0
	cmp.b	(a5),d0
	move	sr,d0
	addq.l	#1,U98388.l
	move	d0,ccr
	beq.s	L73906
L73964:
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L73976:
	link	a6,#-4
	movea.l	U101026.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
	unlk	a6
	rts

L74002:
	link	a6,#-4
	movea.l	U100750.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74802.l
	unlk	a6
	rts

L74028:
	link	a6,#-4
	movea.l	U101026.l,a0
	cmpi.b	#10,(a0)
	beq.s	L74048
	clr.w	d0
	bra.s	L74050

L74048:
	moveq	#1,d0
L74050:
	unlk	a6
	rts

L74054:
	link	a6,#-4
	movea.l	U100750.l,a0
	cmpi.b	#10,(a0)
	beq.s	L74074
	clr.w	d0
	bra.s	L74076

L74074:
	moveq	#1,d0
L74076:
	unlk	a6
	rts

L74080:
	link	a6,#-4
	bsr  	L73172
	tst.w	d0
	beq.s	L74110
	move.w	#1,(a7)
	move.l	#U101170,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L74110:
	jsr	L74860.l
	unlk	a6
	rts

L74120:
	link	a6,#-4
	bra.s	L74146

L74126:
	bsr  	L73144
	tst.w	d0
	bne.s	L74154
	move.w	#32,(a7)
	bsr.s	L74158
	addq.l	#1,U100750.l
L74146:
	bsr  	L74002
	tst.w	d0
	beq.s	L74126
L74154:
	unlk	a6
	rts

L74158:
	link	a6,#-4
	bsr  	L73172
	tst.w	d0
	beq.s	L74196
	bsr  	L73144
	tst.w	d0
	beq.s	L74196
	move.w	#1,(a7)
	move.l	#U101170,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L74196:
	move.b	9(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L74948.l
	unlk	a6
	rts

L74214:
	link	a6,#-4
	tst.b	9(a6)
	bne.s	L74236
	move.l	#U99202,U98392.l
	bra.s	L74272

L74236:
	move.l	#U99601,d0
	cmp.l	U98392.l,d0
	bhi.s	L74256
	bsr  	L74702
	bra.s	L74272

L74256:
	movea.l	U98392.l,a0
	move.b	9(a6),(a0)
	addq.l	#1,U98392.l
L74272:
	movea.l	U98392.l,a0
	clr.b	(a0)
	unlk	a6
	rts

L74284:
	link	a6,#-4
	move.l	#U99202,d0
	unlk	a6
	rts

L74298:
	link	a6,#-4
	move.l	U100638.l,U100642.l
	move.l	U99196.l,U100638.l
	unlk	a6
	rts

L74326:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	clr.w	(a7)
	jsr	L47436.l
	move.l	U99856.l,U100638.l
	bsr.s	L74284
	movea.l	d0,a5
	bra.s	L74364

L74358:
	move.w	d7,(a7)
	bsr  	L71636
L74364:
	move.b	(a5)+,d7
	ext.w	d7
	bne.s	L74358
	bsr.s	L74298
	move.w	#1,(a7)
	jsr	L47436.l
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L74392:
	link	a6,#-8
	tst.l	U100638.l
	beq  	L74562
	tst.l	U100642.l
	beq  	L74562
	move.l	U100638.l,d0
	cmp.l	U100642.l,d0
	bls.s	L74456
	move.l	U100638.l,-4(a6)
	move.l	U100642.l,U100638.l
	move.l	-4(a6),U100642.l
L74456:
	move.l	U100638.l,d0
	cmp.l	U100642.l,d0
	beq.s	L74546
	move.l	U100638.l,(a7)
	bsr.s	L74566
	clr.w	(a7)
	bsr  	L74214
	bra.s	L74508

L74486:
	movea.l	U100638.l,a0
	move.b	(a0),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr  	L74214
	addq.l	#1,U100638.l
L74508:
	move.l	U100638.l,d0
	cmp.l	U100642.l,d0
	bcs.s	L74486
	tst.w	8(a6)
	beq.s	L74542
	move.l	U100642.l,U99196.l
	bsr  	L73126
L74542:
	bsr  	L72348
L74546:
	clr.w	d0
	ext.l	d0
	move.l	d0,U100642.l
	move.l	d0,U100638.l
L74562:
	unlk	a6
	rts

L74566:
	link	a6,#-4
	move.l	8(a6),d0
	cmp.l	U99856.l,d0
	bcc.s	L74624
L74582:
	bsr  	L73010
	tst.w	d0
	bne.s	L74622
	move.l	8(a6),d0
	cmp.l	U99856.l,d0
	bcc.s	L74622
	tst.w	U101496.l
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
	move.l	8(a6),d0
	cmp.l	U99196.l,d0
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
	clr.w	(a7)
	bsr  	L73072
	add.w	U101496.l,d0
	cmp.w	U101498.l,d0
	blt.s	L74686
	bsr  	L72808
L74686:
	bsr  	L72710
	addq.l	#1,U99196.l
	bra.s	L74624

L74698:
	unlk	a6
	rts

L74702:
	link	a6,#-4
	jsr	L49684.l
	tst.w	U99200.l
	bne.s	L74742
	move.w	#2,(a7)
	jsr	L47436.l
	move.w	#-1,(a7)
	clr.w	-(a7)
	bsr  	L72378
	addq.l	#2,a7
L74742:
	move.w	#1,(a7)
	move.l	#U101090,-(a7)
	jsr	L218.l
	addq.l	#4,a7
	unlk	a6
	rts

L74764:
	link	a6,#-4
	addq.w	#1,U99852.l
	clr.w	d0
	move.w	U99852.l,d0
	cmp.w	#20,d0
	bls.s	L74798
	clr.w	U99852.l
	bsr  	L75710
L74798:
	unlk	a6
	rts

L74802:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.w	8(a6),d7
	cmp.w	#10,d7
	beq.s	L74828
	tst.w	d7
	beq.s	L74828
	clr.w	d0
	bra.s	L74830

L74828:
	moveq	#1,d0
L74830:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L74840:
	link	a6,#-4
	cmpi.w	#1,U101044.l
	ble.s	L74856
	bsr.s	L74860
L74856:
	unlk	a6
	rts

L74860:
	link	a6,#-4
	move.w	#10,(a7)
	bsr.s	L74948
	unlk	a6
	rts

L74874:
	link	a6,#-4
	jsr	L58068.l
	jsr	L47940.l
	bsr.s	L74860
	move.l	8(a6),(a7)
	bsr.s	L74902
	unlk	a6
	rts

L74902:
	link	a6,#-6
	bra.s	L74918

L74908:
	move.b	-2(a6),d0
	ext.w	d0
	move.w	d0,(a7)
	bsr.s	L74948
L74918:
	movea.l	8(a6),a0
	move.b	(a0),d0
	ext.w	d0
	move.b	d0,-2(a6)
	move.w	d0,(a7)
	bsr  	L74802
	addq.l	#1,8(a6)
	tst.w	d0
	beq.s	L74908
	unlk	a6
	rts

L74948:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	move.b	9(a6),d7
	tst.w	U98714.l
	beq.s	L75020
	addq.w	#1,U99178.l
	clr.w	d0
	move.w	U99178.l,d0
	cmp.w	#134,d0
	bcs.s	L74994
	jsr	L67450.l
L74994:
	movea.l	U101030.l,a0
	move.b	d7,(a0)
	addq.l	#1,U101030.l
	movea.l	U101030.l,a0
	clr.b	(a0)
	bra  	L75538

L75020:
	cmpi.w	#2,U100996.l
	bne.s	L75090
	cmp.b	#10,d7
	bne.s	L75068
	bsr  	L77150
	move.w	#13,(a7)
	jsr	L19402.l
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L19402.l
	bsr  	L75596
	bra.s	L75086

L75068:
	addq.w	#1,U101044.l
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L19402.l
L75086:
	bra  	L75538

L75090:
	jsr	L58044.l
	tst.w	d0
	beq  	L75244
	move.w	U101200.l,d0
	move.w	U101468.l,d1
	add.w	#-250,d1
	cmp.w	d1,d0
	move	sr,d0
	addq.w	#1,U101200.l
	move	d0,ccr
	blt.s	L75150
	move.w	#1,(a7)
	move.l	#U101090,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L75150:
	cmp.b	#9,d7
	bne.s	L75170
	bsr  	L75548
	move.w	d0,(a7)
	bsr  	L76954
	bra  	L75538

L75170:
	cmp.b	#10,d7
	bne.s	L75188
	addq.w	#1,U100990.l
	bsr  	L77150
	bra.s	L75226

L75188:
	move.w	U101044.l,d0
	cmp.w	U101498.l,d0
	move	sr,d0
	addq.w	#1,U101044.l
	move	d0,ccr
	blt.s	L75226
	addq.w	#1,U100990.l
	move.w	#2,U101044.l
L75226:
	addq.l	#1,U101102.l
	movea.l	U101102.l,a0
	move.b	d7,(a0)
	bra  	L75538

L75244:
	tst.w	U101146.l
	beq.s	L75264
	move.b	d7,d0
	ext.w	d0
	move.w	d0,(a7)
	jsr	L19078.l
L75264:
	move.b	d7,d0
	ext.w	d0
	bra  	L75506

L75272:
	move.w	U101154.l,(a7)
	move.w	#1,-(a7)
	jsr	L46014.l
	addq.l	#2,a7
	bsr  	L77262
	tst.w	d0
	beq.s	L75308
	move.w	#2,(a7)
	jsr	L47436.l
L75308:
	jsr	L73172.l
	tst.w	d0
	beq.s	L75326
	jsr	L46714.l
	bra.s	L75332

L75326:
	addq.w	#1,U101154.l
L75332:
	move.w	U101154.l,(a7)
	moveq	#1,d0
	move.w	d0,U101044.l
	move.w	d0,-(a7)
	jsr	L46014.l
	addq.l	#2,a7
	bsr  	L77262
	tst.w	d0
	beq.s	L75376
	clr.w	(a7)
	jsr	L47436.l
	bsr  	L75596
L75376:
	bra  	L75538

L75380:
	cmpi.w	#1,U101044.l
	ble.s	L75416
	move.w	U101154.l,(a7)
	subq.w	#1,U101044.l
	move.w	U101044.l,-(a7)
	jsr	L46014.l
	addq.l	#2,a7
L75416:
	bra  	L75538

L75420:
	bsr  	L75548
	move.w	d0,(a7)
	bsr  	L76954
	bra.s	L75538

L75432:
	jsr	L73144.l
	tst.w	d0
	beq.s	L75470
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	move.w	#33,-(a7)
	jsr	L45800.l
	addq.l	#4,a7
	bsr  	L74840
L75470:
	move.w	U101154.l,(a7)
	move.w	U101044.l,-(a7)
	move.b	d7,d0
	ext.w	d0
	move.w	d0,-(a7)
	jsr	L45800.l
	addq.l	#4,a7
	addq.w	#1,U101044.l
	bra.s	L75538

	bra.s	L75538

L75506:
	cmp.w	#8,d0
	beq  	L75380
	cmp.w	#9,d0
	beq.s	L75420
	cmp.w	#10,d0
	beq  	L75272
	cmp.w	#13,d0
	beq  	L75332
	bra.s	L75432

L75538:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L75548:
	link	a6,#-4
	move.w	T84994.l,d0
	move.w	U101044.l,d1
	subq.w	#1,d1
	move.w	T84994.l,d2
	subq.w	#1,d2
	and.w	d2,d1
	sub.w	d1,d0
	unlk	a6
	rts

L75582:
	link	a6,#-4
	clr.w	U101458.l
	unlk	a6
	rts

L75596:
	link	a6,#-4
	movea.l	#6,a0
	movea.l	U91932.l,a1
	move.l	0(a0,a1.l),d0
	cmp.l	U91936.l,d0
	bne.s	L75632
	tst.w	U91926.l
	beq.s	L75666
L75632:
	movea.l	U91932.l,a0
	addq.l	#6,a0
	move.l	(a0),U91936.l
	clr.w	U91926.l
	jsr	L46108.l
	cmp.w	#-1,d0
	bne.s	L75666
	bsr.s	L75670
L75666:
	unlk	a6
	rts

L75670:
	link	a6,#-4
	jsr	L46620.l
	and.w	#255,d0
	move.b	d0,U101150.l
	move.w	d0,(a7)
	bsr  	L75910
	move.w	d0,U101458.l
	bsr  	L76094
	unlk	a6
	rts

L75710:
	link	a6,#-4
	bsr  	L75962
	tst.w	d0
	beq.s	L75758
	move.l	T87082.l,(a7)
	move.w	#1,-(a7)
	jsr	L1386.l
	addq.l	#2,a7
	move.w	#1,(a7)
	move.l	#U101158,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L75758:
	bsr  	L75596
	bsr.s	L75788
	tst.w	d0
	beq.s	L75780
	bsr  	L75582
	jsr	L2226.l
	bra.s	L75784

L75780:
	bsr  	L76400
L75784:
	unlk	a6
	rts

L75788:
	link	a6,#-4
	cmpi.w	#-26,U101458.l
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
	unlk	a6
	rts

L75818:
	link	a6,#-4
	tst.w	U101470.l
	bne.s	L75846
	tst.w	U101476.l
	bne.s	L75846
	tst.w	U100980.l
	beq.s	L75850
L75846:
	clr.w	d0
	bra.s	L75852

L75850:
	moveq	#1,d0
L75852:
	unlk	a6
	rts

L75856:
	link	a6,#-4
	tst.w	U101458.l
	bne.s	L75872
	bsr  	L75670
L75872:
	bsr.s	L75788
	tst.w	d0
	beq.s	L75902
	bsr  	L75582
	move.w	#1,(a7)
	move.l	#U100656,-(a7)
	jsr	L218.l
	addq.l	#4,a7
	bra.s	L75906

L75902:
	bsr  	L76400
L75906:
	unlk	a6
	rts

L75910:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	moveq	#-1,d7
	movea.l	#T84580,a5
	bra.s	L75944

L75928:
	move.w	8(a6),d0
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
	move.w	8(a6),d0
L75952:
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L75962:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	cmpi.w	#1,U100986.l
	beq.s	L75990
	cmpi.w	#1,U100996.l
	bne.s	L76008
L75990:
	move.l	U100744.l,d0
	move.w	U101468.l,d1
	ext.l	d1
	add.l	d1,d0
	bra.s	L76014

L76008:
	move.l	U100744.l,d0
L76014:
	move.l	d0,d7
	move.l	a6,d0
	add.l	#-1719,d0
	cmp.l	d0,d7
	bls.s	L76036
	move.w	#19,U99852.l
L76036:
	move.l	a6,d0
	add.l	#-503,d0
	cmp.l	d0,d7
	bhi.s	L76052
	clr.w	d0
	bra.s	L76054

L76052:
	moveq	#1,d0
L76054:
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L76064:
	link	a6,#-4
	tst.w	U99190.l
	beq.s	L76084
	tst.w	U101476.l
	beq.s	L76088
L76084:
	clr.w	d0
	bra.s	L76090

L76088:
	moveq	#1,d0
L76090:
	unlk	a6
	rts

L76094:
	link	a6,#-4
	cmpi.w	#-7,U101458.l
	bne  	L76344
	bsr.s	L76064
	tst.w	d0
	bne  	L76344
	bsr  	L75582
	move.w	#2,(a7)
	jsr	L47436.l
	tst.w	U101146.l
	beq.s	L76156
	jsr	L49708.l
	tst.w	d0
	bne.s	L76156
	clr.w	U101146.l
L76156:
	tst.w	U100980.l
	beq.s	L76206
	move.w	U100990.l,U99194.l
	move.w	U101044.l,U98710.l
	jsr	L70792.l
	move.l	U99196.l,U101102.l
	jsr	L70038.l
L76206:
	jsr	L70006.l
	move.l	T87066.l,(a7)
	bsr  	L76994
	bra.s	L76316

L76224:
	jsr	L64160.l
	cmp.w	#20,d0
	bne.s	L76276
	move.w	#9,(a7)
	jsr	L64658.l
	cmp.w	#26,d0
	bne.s	L76276
	jsr	L64942.l
	move.w	#2,(a7)
	move.l	#U101014,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L76276:
	jsr	L64160.l
	cmp.w	#22,d0
	bne.s	L76310
	jsr	L64942.l
	clr.w	(a7)
	move.l	#U101014,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L76310:
	jsr	L64028.l
L76316:
	jsr	L64006.l
	tst.w	d0
	beq.s	L76224
	move.w	#1,(a7)
	move.l	#U101158,-(a7)
	jsr	L218.l
	addq.l	#4,a7
L76344:
	unlk	a6
	rts

L76348:
	link	a6,#-14
	clr.w	-6(a6)
	bra.s	L76384

L76358:
	movea.l	a6,a0
	movea.w	-6(a6),a1
	adda.l	a1,a0
	move.l	a0,-(a7)
	jsr	L46620.l
	movea.l	(a7)+,a0
	move.b	d0,-10(a0)
	addq.w	#1,-6(a6)
L76384:
	cmpi.w	#4,-6(a6)
	blt.s	L76358
	move.l	-10(a6),d0
	unlk	a6
	rts

L76400:
	link	a6,#-4
	cmpi.w	#-28,U101458.l
	bne  	L76800
	bsr  	L75818
	tst.w	d0
	beq  	L76800
L76426:
	bsr  	L75582
	clr.w	U99200.l
	jsr	L46620.l
	bra  	L76724

L76446:
	jsr	L64006.l
	tst.w	d0
	bne.s	L76482
	jsr	L64160.l
	cmp.w	#22,d0
	bne.s	L76482
	bsr  	L74840
	move.w	#22,(a7)
	jsr	L62262.l
L76482:
	bra  	L76746

L76486:
	move.l	#T86968,(a7)
	bsr  	L76804
	bra  	L76746

L76500:
	bsr  	L76348
	move.l	d0,(a7)
	move.l	#U100754,d0
	move.l	d0,U101030.l
	move.l	d0,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	move.l	d0,(a7)
	jsr	L77692.l
	move.l	U101030.l,(a7)
	move.l	#T86975,-(a7)
	move.l	#U100162,-(a7)
	jsr	L83880.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.l	#U100162,(a7)
	bsr  	L76856
	bra  	L76746

L76586:
	move.l	#T86982,(a7)
	bsr  	L76804
	bra  	L76746

L76600:
	move.l	#T86992,(a7)
	bsr  	L76804
	bra  	L76746

L76614:
	move.l	#T87002,(a7)
	bsr  	L76804
	bra  	L76746

L76628:
	move.l	#T87014,(a7)
	bsr  	L76856
	bra  	L76746

L76642:
	move.l	#T87020,(a7)
	bsr  	L76804
	bra.s	L76746

L76654:
	move.l	#U99202,(a7)
	bsr  	L76856
	bra.s	L76746

L76666:
	tst.w	U98398.l
	beq.s	L76682
	move.l	#T87026,(a7)
	bra.s	L76688

L76682:
	move.l	#T87034,(a7)
L76688:
	bsr  	L76856
	bra.s	L76746

L76694:
	tst.w	U101198.l
	beq.s	L76710
	move.l	#T87040,(a7)
	bra.s	L76716

L76710:
	move.l	#T87048,(a7)
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
	cmpi.w	#-28,U101458.l
	bne.s	L76764
	bra  	L76426

L76764:
	jsr	L64006.l
	tst.w	d0
	bne.s	L76786
	jsr	L64160.l
	cmp.w	#22,d0
	bne.s	L76800
L76786:
	clr.w	(a7)
	move.w	#22,-(a7)
	jsr	L62282.l
	addq.l	#2,a7
L76800:
	unlk	a6
	rts

L76804:
	link	a6,#-4
	bsr  	L76348
	move.l	d0,(a7)
	move.l	8(a6),-(a7)
	move.l	#U100162,-(a7)
	jsr	L83880.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	jsr	L83706.l
	addq.l	#4,a7
	move.l	d0,(a7)
	bsr.s	L76856
	clr.b	U100162.l
	unlk	a6
	rts

L76856:
	link	a6,#-4
	move.w	#26,(a7)
	jsr	L64090.l
	jsr	L9760.l
	move.l	#U101014,(a7)
	jsr	L204.l
	bra.s	L76932

L76890:
	clr.w	U100748.l
	jsr	L68942.l
	bra.s	L76944

L76904:
	jsr	L64888.l
	move.l	8(a6),U100962.l
	jsr	L50854.l
	jsr	L58142.l
L76930:
	bra.s	L76944

L76932:
	tst.w	d0
	beq.s	L76904
	cmp.w	#1,d0
	beq.s	L76890
	bra.s	L76930

L76944:
	jsr	L9794.l
	unlk	a6
	rts

L76954:
	link	a6,#-4
	bra.s	L76962

L76960:
	bsr.s	L76978
L76962:
	move.w	8(a6),d0
	subq.w	#1,8(a6)
	tst.w	d0
	bgt.s	L76960
	unlk	a6
	rts

L76978:
	link	a6,#-4
	move.w	#32,(a7)
	bsr  	L74948
	unlk	a6
	rts

L76994:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L47940.l
	jsr	L64994.l
	move.w	d0,d7
	beq.s	L77128
	bsr  	L74840
	move.w	d7,(a7)
	move.l	#L55354,-(a7)
	move.l	8(a6),-(a7)
	move.l	#L74902,-(a7)
	move.l	T87306.l,-(a7)
	jsr	L54390.l
	adda.l	#16,a7
	move.l	#T87054,(a7)
	bsr  	L74902
	tst.w	U99864.l
	beq.s	L77098
	move.w	U99864.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L55354.l
	bra.s	L77126

L77098:
	tst.w	U99818.l
	beq.s	L77126
	move.w	U99818.l,(a7)
	jsr	L358.l
	move.w	d0,(a7)
	jsr	L55354.l
L77126:
	bra.s	L77136

L77128:
	move.l	8(a6),(a7)
	bsr  	L74874
L77136:
	bsr  	L74840
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L77150:
	link	a6,#-4
	move.w	#1,U101044.l
	unlk	a6
	rts

L77166:
	link	a6,#-4
	bsr.s	L77262
	tst.w	d0
	beq.s	L77186
	move.w	#2,(a7)
	jsr	L47436.l
L77186:
	jsr	L47278.l
	move.w	#1,(a7)
	move.w	#1,-(a7)
	bsr.s	L77222
	addq.l	#2,a7
	bsr.s	L77262
	tst.w	d0
	beq.s	L77218
	clr.w	(a7)
	jsr	L47436.l
L77218:
	unlk	a6
	rts

L77222:
	link	a6,#-4
	move.w	8(a6),d0
	move.w	d0,U101154.l
	move.w	d0,(a7)
	move.w	10(a6),d0
	move.w	d0,U101044.l
	move.w	d0,-(a7)
	jsr	L46014.l
	addq.l	#2,a7
	unlk	a6
	rts

L77262:
	link	a6,#-4
	tst.w	U100980.l
	bne.s	L77282
	tst.w	U99200.l
	beq.s	L77286
L77282:
	clr.w	d0
	bra.s	L77288

L77286:
	moveq	#1,d0
L77288:
	unlk	a6
	rts

L77292:
	link	a6,#-4
	move.w	#199,d0
	unlk	a6
	rts

L77304:
	link	a6,#-4
	move.l	#T88514,d0
	unlk	a6
	rts

L77318:
	link	a6,#-4
	move.l	#T90106,d0
	unlk	a6
	rts

L77332:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	#5,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77356:
	link	a6,#-4
	move.l	10(a6),(a7)
	move.w	8(a6),-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77380:
	link	a6,#-4
	move.w	#25,(a7)
	jsr	L552.l
	unlk	a6
	rts

L77398:
	link	a6,#-4
	move.l	8(a6),(a7)
	move.w	#26,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77422:
	link	a6,#-4
	move.w	12(a6),(a7)
	move.l	8(a6),-(a7)
	move.w	#78,-(a7)
	jsr	L552.l
	addq.l	#6,a7
	unlk	a6
	rts

L77450:
	link	a6,#-6
	move.w	#79,(a7)
	jsr	L552.l
	unlk	a6
	rts

L77468:
	link	a6,#-8
	move.w	12(a6),(a7)
	move.l	8(a6),-(a7)
	move.w	#61,-(a7)
	jsr	L552.l
	addq.l	#6,a7
	unlk	a6
	rts

L77496:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	#62,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77520:
	link	a6,#-4
	move.l	8(a6),(a7)
	movea.w	12(a6),a0
	move.l	a0,-(a7)
	move.w	14(a6),-(a7)
	move.w	#63,-(a7)
	jsr	L552.l
	addq.l	#8,a7
	unlk	a6
	rts

L77554:
	link	a6,#-4
	move.l	8(a6),(a7)
	movea.w	12(a6),a0
	move.l	a0,-(a7)
	move.w	14(a6),-(a7)
	move.w	#64,-(a7)
	jsr	L552.l
	addq.l	#8,a7
	unlk	a6
	rts

L77588:
	link	a6,#-4
	move.l	8(a6),(a7)
	move.w	#59,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77612:
	link	a6,#-4
	move.w	12(a6),(a7)
	move.l	8(a6),-(a7)
	move.w	#71,-(a7)
	jsr	L552.l
	addq.l	#6,a7
	unlk	a6
	rts

L77640:
	link	a6,#-4
	move.w	8(a6),(a7)
	move.w	#14,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77664:
	link	a6,#-4
	move.w	12(a6),(a7)
	move.l	8(a6),-(a7)
	move.w	#60,-(a7)
	jsr	L552.l
	addq.l	#6,a7
	unlk	a6
	rts

L77692:
	link	a6,#-4
	move.l	8(a6),(a7)
	move.w	#65,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77716:
	link	a6,#-6
	move.l	12(a6),(a7)
	move.l	8(a6),-(a7)
	move.w	-2(a6),-(a7)
	move.w	#86,-(a7)
	jsr	L552.l
	addq.l	#8,a7
	unlk	a6
	rts

L77748:
	link	a6,#-8
	addq.l	#1,8(a6)
	andi.l	#-2,8(a6)
	move.l	8(a6),(a7)
	move.w	#72,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	move.l	d0,-4(a6)
	addq.l	#1,-4(a6)
	andi.l	#-2,-4(a6)
	move.l	-4(a6),d0
	unlk	a6
	rts

L77804:
	link	a6,#-4
	move.l	#-1,(a7)
	move.w	#72,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77830:
	link	a6,#-4
	move.l	8(a6),(a7)
	move.w	#73,-(a7)
	jsr	L552.l
	addq.l	#2,a7
	unlk	a6
	rts

L77854:
	link	a6,#-2
	movem.l	d7/a5,-(a7)
	jsr	L48752.l
	move.w	#1,U99190.l
	jsr	L77318.l
	move.l	d0,U101110.l
	jsr	L47940.l
	bsr  	L78342
	clr.w	d0
	move.w	d0,U98714.l
	move.w	d0,U99192.l
	move.w	d0,U101146.l
	move.w	d0,U101198.l
	move.w	d0,U100980.l
	clr.w	d0
	move.w	d0,U100626.l
	move.w	d0,U98398.l
	move.w	d0,U100736.l
	clr.w	d0
	move.b	d0,U101040.l
	move.b	d0,U99202.l
	clr.b	U101148.l
	clr.w	U101106.l
	move.w	#899,U100646.l
	jsr	L58082.l
	jsr	L58068.l
	jsr	L70006.l
	jsr	L77166.l
	jsr	L75582.l
	movea.l	U101110.l,a0
	move.l	4(a0),(a7)
	jsr	L74902.l
	jsr	L74860.l
	bsr  	L78494
	jsr	L48234.l
	jsr	L32858.l
	jsr	L47940.l
	move.w	U100984.l,U99816.l
	jsr	L164.l
	movea.l	d0,a0
	tst.b	(a0)
	beq.s	L78092
	jsr	L164.l
	move.l	d0,(a7)
	addq.l	#1,(a7)
	bra.s	L78102

L78092:
	movea.l	U101110.l,a0
	move.l	32(a0),(a7)
L78102:
	move.l	#U100754,d0
	move.l	d0,U101030.l
	move.l	d0,-(a7)
	jsr	L83880.l
	addq.l	#4,a7
	jsr	L20414.l
	tst.w	d0
	beq.s	L78154
	move.l	U101030.l,(a7)
	move.l	T87150.l,-(a7)
	bsr.s	L78238
	addq.l	#4,a7
	tst.w	d0
	bne.s	L78158
L78154:
	clr.w	d0
	bra.s	L78160

L78158:
	moveq	#1,d0
L78160:
	move.w	d0,U101476.l
	beq.s	L78216
	movea.l	U101110.l,a0
	move.l	28(a0),(a7)
	jsr	L74902.l
	move.l	#U100754,(a7)
	jsr	L74902.l
	jsr	L74860.l
	jsr	L19286.l
	jsr	L19594.l
	bra.s	L78222

L78216:
	clr.w	U99190.l
L78222:
	jsr	L49370.l
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L78238:
	link	a6,#0
	movem.l	d4-d7/a4-a5,-(a7)
	movea.l	8(a6),a5
	movea.l	12(a6),a4
	clr.w	d5
	move.l	a4,(a7)
	jsr	L83914.l
	move.w	d0,d7
	move.l	a5,(a7)
	jsr	L83914.l
	sub.w	d0,d7
	clr.w	d6
	bra.s	L78326

L78280:
	move.l	a5,(a7)
	jsr	L83914.l
	move.w	d0,(a7)
	move.l	a5,-(a7)
	move.l	a4,d0
	move.w	d6,d1
	ext.l	d1
	add.l	d1,d0
	move.l	d0,-(a7)
	jsr	L83814.l
	addq.l	#8,a7
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
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7/a4-a5
	unlk	a6
	rts

L78342:
	link	a6,#-4
	movem.l	d6-d7,-(a7)
	jsr	L94.l
	move.l	d0,-4(a6)
	jsr	L146.l
	add.l	#-7680,d0
	move.l	d0,U100744.l
	move.l	#33,-(a7)
	move.l	U100744.l,d0
	sub.l	-4(a6),d0
	move.l	d0,-(a7)
	subq.l	#1,(a7)
	jsr	L83960.l
	addq.l	#8,a7
	add.l	-4(a6),d0
	addq.l	#2,d0
	and.l	#$00FFFFFE,d0
	move.l	d0,U101194.l
	move.l	U100744.l,d7
	sub.l	U101194.l,d7
	asr.l	#2,d7
	move.l	d7,d0
	cmp.l	#65535,d0
	ble.s	L78458
	move.w	#-1,U100988.l
	bra.s	L78464

L78458:
	move.w	d7,U100988.l
L78464:
	move.l	-4(a6),d0
	subq.l	#4,d0
	move.l	d0,U101036.l
	move.w	#32,U100734.l
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L78494:
	link	a6,#0
	movem.l	d6-d7,-(a7)
	jsr	L75582.l
	jsr	L74840.l
	clr.w	d7
	bra.s	L78532

L78518:
	movea.w	d7,a0
	adda.l	a0,a0
	adda.l	#U101202,a0
	clr.w	(a0)
	addq.w	#1,d7
L78532:
	cmp.w	#128,d7
	blt.s	L78518
	clr.w	d0
	move.w	d0,U99186.l
	move.w	d0,U99862.l
	clr.w	U99188.l
	clr.w	U100620.l
	move.w	U100734.l,U99176.l
	move.w	U100988.l,U100978.l
	jsr	L62588.l
	move.w	d0,U101004.l
	movea.l	U101110.l,a0
	move.l	48(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100742.l
	move.w	d0,(a7)
	bsr  	L79296
	bsr.s	L78646
	bsr  	L79392
	bsr  	L79328
	bsr.s	L78738
	tst.l	(a7)+
	movem.l	(a7)+,d7
	unlk	a6
	rts

L78646:
	link	a6,#-4
	move.l	#T91780,U101030.l
	move.w	#1,U99178.l
	jsr	L52566.l
	jsr	L156.l
	move.l	d0,-(a7)
	move.l	#L3652,d0
	sub.l	(a7)+,d0
	move.w	d0,(a7)
	move.w	#10,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	U100742.l,-(a7)
	jsr	L64224.l
	move.w	d0,U100888.l
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	unlk	a6
	rts

L78738:
	link	a6,#-4
	move.l	T87142.l,(a7)
	jsr	L62012.l
	move.w	d0,U100984.l
	move.w	d0,(a7)
	bsr  	L79296
	move.l	T87146.l,(a7)
	jsr	L62012.l
	move.w	d0,U101186.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	52(a0),(a7)
	jsr	L62012.l
	move.w	d0,U98716.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	60(a0),(a7)
	jsr	L62012.l
	move.w	d0,U98718.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	84(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100738.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	72(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100740.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	76(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100676.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	80(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100634.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	88(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100994.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	92(a0),(a7)
	jsr	L62012.l
	move.w	d0,U98400.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	96(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100648.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	100(a0),(a7)
	jsr	L62012.l
	move.w	d0,U101012.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	104(a0),(a7)
	jsr	L62012.l
	move.w	d0,U101114.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	108(a0),(a7)
	jsr	L62012.l
	move.w	d0,U101500.l
	move.w	d0,(a7)
	bsr  	L79296
	movea.l	U101110.l,a0
	move.l	112(a0),(a7)
	jsr	L62012.l
	move.w	d0,U100650.l
	move.w	d0,(a7)
	bsr  	L79296
	unlk	a6
	rts

L79158:
	link	a6,#0
	movem.l	d7/a5,-(a7)
	movea.l	8(a6),a5
L79170:
	move.l	a5,U101030.l
	clr.w	U99178.l
	bra.s	L79192

L79184:
	addq.w	#1,U99178.l
	addq.l	#1,a5
L79192:
	tst.b	(a5)
	beq.s	L79202
	cmpi.b	#32,(a5)
	bne.s	L79184
L79202:
	jsr	L53318.l
	jsr	L52882.l
	jsr	L156.l
	move.l	d0,-(a7)
	move.l	12(a6),d0
	sub.l	(a7)+,d0
	move.w	d0,(a7)
	move.w	#10,-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,(a7)
	move.w	U100742.l,-(a7)
	jsr	L64224.l
	move.w	d0,U101046.l
	move.w	d0,-(a7)
	jsr	L66062.l
	addq.l	#4,a7
	tst.b	(a5)+
	beq.s	L79278
	bra.s	L79170

L79278:
	clr.w	d0
	move.w	U101046.l,d0
	tst.l	(a7)+
	movem.l	(a7)+,a5
	unlk	a6
	rts

L79296:
	link	a6,#-4
	move.w	U99862.l,(a7)
	move.w	8(a6),-(a7)
	jsr	L65496.l
	addq.l	#2,a7
	move.w	d0,U99862.l
	unlk	a6
	rts

L79328:
	link	a6,#0
	movem.l	d6-d7/a5,-(a7)
	jsr	L77304.l
	movea.l	d0,a5
	jsr	L77292.l
	move.w	d0,d7
	bra.s	L79374

L79354:
	tst.l	4(a5)
	beq.s	L79372
	move.l	4(a5),(a7)
	move.l	(a5),-(a7)
	bsr  	L79158
	addq.l	#4,a7
L79372:
	addq.l	#8,a5
L79374:
	move.w	d7,d0
	subq.w	#1,d7
	tst.w	d0
	bne.s	L79354
	tst.l	(a7)+
	movem.l	(a7)+,d7/a5
	unlk	a6
	rts

L79392:
	link	a6,#-4
	move.l	#L2120,(a7)
	move.l	#T91782,-(a7)
	bsr  	L79158
	addq.l	#4,a7
	move.w	d0,U100624.l
	move.l	#L67004,(a7)
	move.l	#T91784,-(a7)
	bsr  	L79158
	addq.l	#4,a7
	move.w	d0,U100652.l
	unlk	a6
	rts

L79448:
	link	a6,#-4
	move.l	d7,-(a7)
	move.l	8(a6),d7
	jsr	L79472.l
	move.l	d7,d0
	move.l	(a7)+,d7
	unlk	a6
	rts

L79472:
	movem.l	d1-d6/a0,-(a7)
	move.b	d7,-(a7)
	and.b	#127,d7
	move.l	#-2147483583,d6
	clr.b	-(a7)
	cmp.b	d6,d7
	bcs.s	L79510
	bhi.s	L79500
	cmp.l	d6,d7
	bls.s	L79510
L79500:
	not.b	(a7)
	exg	d6,d7
	jsr	L82558.l
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
	lea 	X83274.l,a0
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
	jsr	L83378.l
L79582:
	move.l	d6,d7
	tst.b	(a7)+
	beq.s	L79600
	move.l	#-921707711,d7
	jsr	L82294.l
L79600:
	move.b	(a7)+,d6
	tst.b	d7
	beq.s	L79612
	and.b	#128,d6
	or.b	d6,d7
L79612:
	movem.l	(a7)+,d1-d6/a0
	rts

L79618:
	link	a6,#-8
	movem.l	d3-d7,-(a7)
	move.l	12(a6),-4(a6)
	tst.w	16(a6)
	bgt.s	L79642
	moveq	#1,d0
	bra.s	L79660

L79642:
	cmpi.w	#22,16(a6)
	ble.s	L79654
	moveq	#23,d0
	bra.s	L79660

L79654:
	move.w	16(a6),d0
	addq.w	#1,d0
L79660:
	move.w	d0,d4
	clr.w	d7
	clr.l	-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L79708
	movea.l	12(a6),a0
	move.b	#45,(a0)
	addq.l	#1,12(a6)
	move.l	8(a6),-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	move.l	d0,8(a6)
L79708:
	clr.l	-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L79770
	bra.s	L79750

L79726:
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	subq.w	#1,d7
L79750:
	move.l	#-2147483583,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L79726
L79770:
	bra.s	L79796

L79772:
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	addq.w	#1,d7
L79796:
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L79772
	add.w	d7,d4
	moveq	#1,d6
	move.w	d6,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-8(a6)
	bra.s	L79864

L79840:
	move.l	#-1610612668,-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-8(a6)
	addq.w	#1,d6
L79864:
	cmp.w	d4,d6
	blt.s	L79840
	move.l	#-2147483582,-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L79934
	move.l	#-2147483583,8(a6)
	addq.w	#1,d7
L79934:
	tst.w	d7
	bge.s	L79990
	movea.l	12(a6),a0
	move.b	#48,(a0)
	addq.l	#1,12(a6)
	movea.l	12(a6),a0
	move.b	#46,(a0)
	addq.l	#1,12(a6)
	tst.w	d4
	bge.s	L79968
	sub.w	d4,d7
L79968:
	moveq	#-1,d6
	bra.s	L79986

L79972:
	movea.l	12(a6),a0
	move.b	#48,(a0)
	addq.l	#1,12(a6)
	subq.w	#1,d6
L79986:
	cmp.w	d7,d6
	bgt.s	L79972
L79990:
	clr.w	d6
	bra.s	L80100

L79994:
	move.l	8(a6),-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d5
	move.w	d5,d0
	add.w	#48,d0
	movea.l	12(a6),a1
	move.b	d0,(a1)
	addq.l	#1,12(a6)
	cmp.w	d7,d6
	bne.s	L80040
	movea.l	12(a6),a0
	move.b	#46,(a0)
	addq.l	#1,12(a6)
L80040:
	move.w	d5,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-8(a6)
	move.l	d0,-(a7)
	move.l	8(a6),-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	addq.w	#1,d6
L80100:
	cmp.w	d4,d6
	blt.s	L79994
	movea.l	12(a6),a0
	clr.b	(a0)
	addq.l	#1,12(a6)
	move.l	-4(a6),d0
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L80128:
	link	a6,#-8
	movem.l	d3-d7,-(a7)
	move.l	12(a6),-4(a6)
	tst.w	16(a6)
	bgt.s	L80152
	moveq	#1,d0
	bra.s	L80170

L80152:
	cmpi.w	#22,16(a6)
	ble.s	L80164
	moveq	#23,d0
	bra.s	L80170

L80164:
	move.w	16(a6),d0
	addq.w	#1,d0
L80170:
	move.w	d0,d4
	clr.w	d7
	clr.l	-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L80218
	movea.l	12(a6),a0
	move.b	#45,(a0)
	addq.l	#1,12(a6)
	move.l	8(a6),-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	move.l	d0,8(a6)
L80218:
	clr.l	-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	ble.s	L80280
	bra.s	L80260

L80236:
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	subq.w	#1,d7
L80260:
	move.l	#-2147483583,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L80236
L80280:
	bra.s	L80306

L80282:
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	addq.w	#1,d7
L80306:
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L80282
	moveq	#1,d6
	move.w	d6,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-8(a6)
	bra.s	L80372

L80348:
	move.l	#-1610612668,-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-8(a6)
	addq.w	#1,d6
L80372:
	cmp.w	d4,d6
	blt.s	L80348
	move.l	#-2147483582,-(a7)
	move.l	-8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L80442
	move.l	#-2147483583,8(a6)
	addq.w	#1,d7
L80442:
	clr.w	d6
	bra.s	L80552

L80446:
	move.l	8(a6),-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.w	d0,d5
	move.w	d5,d0
	add.w	#48,d0
	movea.l	12(a6),a1
	move.b	d0,(a1)
	addq.l	#1,12(a6)
	tst.w	d6
	bne.s	L80492
	movea.l	12(a6),a0
	move.b	#46,(a0)
	addq.l	#1,12(a6)
L80492:
	move.w	d5,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-8(a6)
	move.l	d0,-(a7)
	move.l	8(a6),-(a7)
	jsr	L82028.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	#-1610612668,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	addq.w	#1,d6
L80552:
	cmp.w	d4,d6
	blt.s	L80446
	movea.l	12(a6),a0
	move.b	#69,(a0)
	addq.l	#1,12(a6)
	tst.w	d7
	bge.s	L80590
	move.w	d7,d0
	neg.w	d0
	move.w	d0,d7
	movea.l	12(a6),a0
	move.b	#45,(a0)
	addq.l	#1,12(a6)
L80590:
	move.w	d7,d0
	ext.l	d0
	divs	#10,d0
	add.w	#48,d0
	movea.l	12(a6),a1
	move.b	d0,(a1)
	addq.l	#1,12(a6)
	move.w	d7,d0
	ext.l	d0
	divs	#10,d0
	swap	d0
	add.w	#48,d0
	movea.l	12(a6),a1
	move.b	d0,(a1)
	addq.l	#1,12(a6)
	movea.l	12(a6),a0
	clr.b	(a0)
	addq.l	#1,12(a6)
	move.l	-4(a6),d0
	tst.l	(a7)+
	movem.l	(a7)+,d4-d7
	unlk	a6
	rts

L80660:
	link	a6,#-46
	movem.l	d7/a4-a5,-(a7)
	lea 	-20(a6),a5
	lea 	-24(a6),a4
	clr.w	-30(a6)
	clr.w	-38(a6)
	bra.s	L80690

L80686:
	addq.l	#1,8(a6)
L80690:
	movea.l	8(a6),a0
	cmpi.b	#32,(a0)
	beq.s	L80686
	movea.l	8(a6),a0
	cmpi.b	#9,(a0)
	beq.s	L80686
	movea.l	8(a6),a0
	cmpi.b	#45,(a0)
	beq.s	L80724
	clr.w	d0
	bra.s	L80726

L80724:
	moveq	#1,d0
L80726:
	move.w	d0,-34(a6)
	movea.l	8(a6),a0
	cmpi.b	#45,(a0)
	beq.s	L80750
	movea.l	8(a6),a0
	cmpi.b	#43,(a0)
	bne.s	L80754
L80750:
	addq.l	#1,8(a6)
L80754:
	bra.s	L80792

L80756:
	movea.l	8(a6),a0
	cmpi.b	#46,(a0)
	bne.s	L80772
	addq.w	#1,-30(a6)
	bra.s	L80788

L80772:
	movea.l	8(a6),a0
	move.b	(a0),(a5)+
	tst.w	-30(a6)
	beq.s	L80788
	addq.w	#1,-38(a6)
L80788:
	addq.l	#1,8(a6)
L80792:
	movea.l	8(a6),a0
	tst.b	(a0)
	beq.s	L80820
	movea.l	8(a6),a0
	cmpi.b	#101,(a0)
	beq.s	L80820
	movea.l	8(a6),a0
	cmpi.b	#69,(a0)
	bne.s	L80756
L80820:
	clr.b	(a5)
	movea.l	8(a6),a0
	cmpi.b	#101,(a0)
	beq.s	L80842
	movea.l	8(a6),a0
	cmpi.b	#69,(a0)
	bne.s	L80910
L80842:
	addq.l	#1,8(a6)
	movea.l	8(a6),a0
	cmpi.b	#45,(a0)
	beq.s	L80860
	clr.w	d0
	bra.s	L80862

L80860:
	moveq	#1,d0
L80862:
	move.w	d0,-32(a6)
	movea.l	8(a6),a0
	cmpi.b	#45,(a0)
	beq.s	L80886
	movea.l	8(a6),a0
	cmpi.b	#43,(a0)
	bne.s	L80890
L80886:
	addq.l	#1,8(a6)
L80890:
	bra.s	L80902

L80892:
	movea.l	8(a6),a0
	move.b	(a0),(a4)+
	addq.l	#1,8(a6)
L80902:
	movea.l	8(a6),a0
	tst.b	(a0)
	bne.s	L80892
L80910:
	clr.b	(a4)
	move.l	a6,(a7)
	addi.l	#-20,(a7)
	bsr  	L81148
	move.l	d0,-42(a6)
	move.l	a6,(a7)
	addi.l	#-24,(a7)
	jsr	L83596.l
	move.w	d0,-36(a6)
	tst.w	-32(a6)
	beq.s	L80964
	move.w	-36(a6),d0
	neg.w	d0
	sub.w	-38(a6),d0
	bra.s	L80972

L80964:
	move.w	-36(a6),d0
	sub.w	-38(a6),d0
L80972:
	move.w	d0,-38(a6)
	move.l	-42(a6),-(a7)
	move.w	-38(a6),-(a7)
	bsr.s	L81044
	addq.l	#2,a7
	move.l	d0,-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-46(a6)
	move.l	-46(a6),(a7)
	jsr	L81258.l
	move.l	d0,-28(a6)
	tst.w	-34(a6)
	beq.s	L81030
	ori.l	#128,-28(a6)
L81030:
	move.l	-28(a6),d0
	tst.l	(a7)+
	movem.l	(a7)+,a4-a5
	unlk	a6
	rts

L81044:
	link	a6,#-8
	tst.w	8(a6)
	bge.s	L81098
	move.l	#-2147483583,-4(a6)
	bra.s	L81090

L81064:
	move.l	#-1610612668,-(a7)
	move.l	-4(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,-4(a6)
	addq.w	#1,8(a6)
L81090:
	tst.w	8(a6)
	blt.s	L81064
	bra.s	L81140

L81098:
	move.l	#-2147483583,-4(a6)
	bra.s	L81134

L81108:
	move.l	#-1610612668,-(a7)
	move.l	-4(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-4(a6)
	subq.w	#1,8(a6)
L81134:
	tst.w	8(a6)
	bgt.s	L81108
L81140:
	move.l	-4(a6),d0
	unlk	a6
	rts

L81148:
	link	a6,#-8
	move.l	#0,-4(a6)
	bra.s	L81230

L81162:
	move.l	#-1610612668,-(a7)
	move.l	-4(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,-4(a6)
	move.l	-4(a6),-(a7)
	movea.l	8(a6),a0
	move.b	(a0),d0
	ext.w	d0
	add.w	#-48,d0
	ext.l	d0
	move.l	d0,-(a7)
	jsr	L81688.l
	addq.l	#4,a7
	move.l	d0,-(a7)
	jsr	L81510.l
	addq.l	#8,a7
	move.l	d0,-4(a6)
	addq.l	#1,8(a6)
L81230:
	movea.l	8(a6),a0
	cmpi.b	#48,(a0)
	blt.s	L81250
	movea.l	8(a6),a0
	cmpi.b	#57,(a0)
	ble.s	L81162
L81250:
	move.l	-4(a6),d0
	unlk	a6
	rts

L81258:
	link	a6,#-4
	movem.l	d4-d7,-(a7)
	clr.l	-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bne.s	L81288
	clr.l	d0
	bra  	L81500

L81288:
	clr.l	-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L81324
	move.l	8(a6),-(a7)
	jsr	L82000.l
	addq.l	#4,a7
	move.l	d0,8(a6)
	moveq	#1,d5
	bra.s	L81326

L81324:
	clr.w	d5
L81326:
	clr.w	d7
	bra.s	L81354

L81330:
	addq.w	#1,d7
	move.l	#-2147483582,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81572.l
	addq.l	#8,a7
	move.l	d0,8(a6)
L81354:
	move.l	#-2147483583,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	bge.s	L81330
	bra.s	L81400

L81376:
	subq.w	#1,d7
	move.l	#-2147483582,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,8(a6)
L81400:
	move.l	#-2147483584,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81542.l
	addq.l	#8,a7
	blt.s	L81376
	move.l	#-2147483559,-(a7)
	move.l	8(a6),-(a7)
	jsr	L81968.l
	addq.l	#8,a7
	move.l	d0,8(a6)
	move.l	8(a6),-(a7)
	jsr	L81832.l
	addq.l	#4,a7
	move.l	d0,-4(a6)
	move.l	-4(a6),d0
	asl.l	#8,d0
	move.l	d0,-4(a6)
	add.w	#64,d7
	move.w	d7,d0
	and.w	#127,d0
	ext.l	d0
	or.l	d0,-4(a6)
	tst.w	d5
	beq.s	L81496
	ori.l	#128,-4(a6)
L81496:
	move.l	-4(a6),d0
L81500:
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L81510:
	link	a6,#-4
	movem.l	d3-d7,-(a7)
	move.l	8(a6),d7
	move.l	12(a6),d6
	jsr	L82312.l
	move.l	d7,d0
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L81542:
	link	a6,#-4
	movem.l	d3-d7,-(a7)
	move.l	8(a6),d7
	move.l	12(a6),d6
	jsr	L82060.l
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L81572:
	link	a6,#-4
	movem.l	d3-d7,-(a7)
	move.l	8(a6),d7
	move.l	12(a6),d6
	jsr	L82558.l
	move.l	d7,d0
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L81604:
	link	a6,#-4
	movem.l	d3-d7,-(a7)
	move.l	8(a6),d7
	jsr	L82100.l
	move.l	d7,d0
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L81632:
	link	a6,#-4
	movem.l	d7,-(a7)
	move.l	8(a6),d7
	jsr	L82710.l
	move.l	d7,d0
	movem.l	(a7)+,d7
	unlk	a6
	rts

L81660:
	link	a6,#-4
	movem.l	d7,-(a7)
	move.l	8(a6),d7
	jsr	L82928.l
	move.l	d7,d0
	movem.l	(a7)+,d7
	unlk	a6
	rts

L81688:
	link	a6,#0
	movem.l	d5-d7,-(a7)
	tst.l	8(a6)
	bge.s	L81716
	moveq	#1,d6
	move.l	8(a6),d0
	neg.l	d0
	move.l	d0,8(a6)
	bra.s	L81718

L81716:
	clr.w	d6
L81718:
	tst.l	8(a6)
	bne.s	L81728
	clr.l	d0
	bra.s	L81822

L81728:
	moveq	#24,d7
	bra.s	L81744

L81732:
	move.l	8(a6),d0
	asr.l	#1,d0
	move.l	d0,8(a6)
	addq.l	#1,d7
L81744:
	move.l	8(a6),d0
	and.l	#$7F000000,d0
	bne.s	L81732
	bra.s	L81770

L81758:
	move.l	8(a6),d0
	asl.l	#1,d0
	move.l	d0,8(a6)
	subq.l	#1,d7
L81770:
	btst	#7,9(a6)
	beq.s	L81758
	move.l	8(a6),d0
	asl.l	#8,d0
	move.l	d0,8(a6)
	add.l	#64,d7
	move.l	d7,d0
	and.l	#127,d0
	or.l	d0,8(a6)
	tst.w	d6
	beq.s	L81818
	ori.l	#128,8(a6)
L81818:
	move.l	8(a6),d0
L81822:
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7
	unlk	a6
	rts

L81832:
	link	a6,#0
	movem.l	d4-d7,-(a7)
	move.l	8(a6),d0
	and.l	#127,d0
	add.l	#-64,d0
	move.w	d0,d6
	tst.l	8(a6)
	beq.s	L81868
	tst.w	d6
	bge.s	L81872
L81868:
	clr.l	d0
	bra.s	L81958

L81872:
	move.l	8(a6),d0
	and.l	#128,d0
	move.w	d0,d5
	cmp.w	#31,d6
	ble.s	L81910
	tst.w	d5
	beq.s	L81902
	move.l	#-2147483648,d0
	bra.s	L81908

L81902:
	move.l	#$7FFFFFFF,d0
L81908:
	bra.s	L81958

L81910:
	move.l	8(a6),d7
	asr.l	#8,d7
	and.l	#$00FFFFFF,d7
	sub.w	#24,d6
	bra.s	L81932

L81928:
	asr.l	#1,d7
	addq.w	#1,d6
L81932:
	tst.w	d6
	blt.s	L81928
	bra.s	L81942

L81938:
	asl.l	#1,d7
	subq.w	#1,d6
L81942:
	tst.w	d6
	bgt.s	L81938
	tst.w	d5
	beq.s	L81956
	move.l	d7,d0
	neg.l	d0
	move.l	d0,d7
L81956:
	move.l	d7,d0
L81958:
	tst.l	(a7)+
	movem.l	(a7)+,d5-d7
	unlk	a6
	rts

L81968:
	link	a6,#-4
	movem.l	d3-d7,-(a7)
	move.l	8(a6),d7
	move.l	12(a6),d6
	jsr	L83136.l
	move.l	d7,d0
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L82000:
	link	a6,#-4
	movem.l	d3-d7,-(a7)
	move.l	8(a6),d7
	jsr	L82284.l
	move.l	d7,d0
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L82028:
	link	a6,#-4
	movem.l	d3-d7,-(a7)
	move.l	8(a6),d7
	move.l	12(a6),d6
	jsr	L82294.l
	move.l	d7,d0
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L82060:
	tst.b	d6
	bpl.s	L82076
	tst.b	d7
	bpl.s	L82076
	cmp.b	d7,d6
	bne.s	L82082
	cmp.l	d7,d6
	rts

L82076:
	cmp.b	d6,d7
	bne.s	L82082
	cmp.l	d6,d7
L82082:
	rts

	tst.b	d7
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
	move.l	#$00800000,d7
	sub.l	d7,d4
	sub.l	#$01200000,d5
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
	dc.l	1048576,524288
	dc.l	262144,131072
	dc.l	65536,32768
	dc.l	16384,8192
	dc.l	4096,2048
	dc.l	1024,512
	dc.l	256,128
	dc.l	64,32
	dc.l	16,8
	dc.l	4,2
	dc.l	1,0
	dc.l	0,-834928513

	rts

L82284:
	tst.b	d7
	beq.s	L82292
	eori.b	#128,d7
L82292:
	rts

L82294:
	move.b	d6,d4
	beq.s	L82380
	eori.b	#128,d4
	bmi.s	L82410
	move.b	d7,d5
	bmi.s	L82416
	bne.s	L82324
	bra.s	L82374

L82312:
	move.b	d6,d4
	bmi.s	L82410
	beq.s	L82380
	move.b	d7,d5
	bmi.s	L82416
	beq.s	L82374
L82324:
	sub.b	d4,d5
	bmi.s	L82384
	move.b	d7,d4
	cmp.b	#24,d5
	bcc.s	L82380
	move.l	d6,d3
	clr.b	d3
	lsr.l	d5,d3
	move.b	#128,d7
	add.l	d3,d7
	bcs.s	L82354
L82350:
	move.b	d4,d7
	rts

L82354:
	roxr.l	#1,d7
	addq.b	#1,d4
	bvs.s	L82362
	bcc.s	L82350
L82362:
	moveq	#-1,d7
	subq.b	#1,d4
	move.b	d4,d7
	ori	#2,ccr
	rts

L82374:
	move.l	d6,d7
	move.b	d4,d7
	rts

L82380:
	tst.b	d7
	rts

L82384:
	cmp.b	#-24,d5 ;!! #$FFE8.W
	ble.s	L82374
	neg.b	d5
	move.l	d6,d3
	clr.b	d7
	lsr.l	d5,d7
	move.b	#128,d3
	add.l	d3,d7
	bcs.s	L82354
	move.b	d4,d7
	rts

L82410:
	move.b	d7,d5
	bmi.s	L82324
	beq.s	L82374
L82416:
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
	bmi.s	L82350
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
	ble.s	L82374
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

L82522:
	divu	#0,d7
	tst.l	d6
	bne.s	L82558
L82530:
	or.l	#-129,d7
	tst.b	d7
	ori	#2,ccr
L82542:
	rts

L82544:
	swap	d6
	swap	d7
L82548:
	eor.b	d6,d7
	bra.s	L82530

L82552:
	bmi.s	L82548
L82554:
	moveq	#0,d7
	rts

L82558:
	move.b	d6,d5
	beq.s	L82522
	move.l	d7,d4
	beq.s	L82542
	moveq	#-128,d3
	add.w	d5,d5
	add.w	d4,d4
	eor.b	d3,d5
	eor.b	d3,d4
	sub.b	d5,d4
	bvs.s	L82552
	clr.b	d7
	swap	d7
	swap	d6
	cmp.w	d6,d7
	bmi.s	L82596
	addq.b	#2,d4
	bvs.s	L82544
	ror.l	#1,d7
L82596:
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
	bcc.s	L82636
	move.l	d6,d3
	clr.b	d3
	add.l	d3,d7
	subq.w	#1,d5
L82636:
	move.l	d6,d3
	swap	d3
	clr.w	d7
	divu	d3,d7
	swap	d5
	bmi.s	L82656
	move.w	d7,d5
	add.l	d5,d5
	subq.b	#1,d4
	move.w	d5,d7
L82656:
	move.w	d7,d5
	add.l	#128,d5
	move.l	d5,d7
	move.b	d4,d7
	beq.s	L82554
	rts

L82672:
	move.w	(a7)+,d6
	tst.b	d6
	bpl.s	L82682
	moveq	#0,d7
	bra.s	L82690

L82682:
	moveq	#-1,d7
	lsr.b	#1,d7
	ori	#2,ccr
L82690:
	movem.l	(a7)+,d1-d6/a0
	rts

L82696:
	move.l	#-2147483583,d7
	lea 	30(a7),a7
	tst.b	d7
	rts

L82710:
	movem.l	d1-d6/a0,-(a7)
	move.w	d7,-(a7)
	beq.s	L82696
	and.b	#127,d7
	move.l	d7,d2
	move.l	#-1196803263,d6
	jsr	L83136.l
	bvs.s	L82672
	move.b	d7,d5
	move.b	d7,d6
	sub.b	#96,d5
	neg.b	d5
	cmp.b	#24,d5
	ble.s	L82672
	cmp.b	#32,d5
	bge.s	L82794
	lsr.l	d5,d7
	move.b	d7,(a7)
	lsl.l	d5,d7
	move.b	d6,d7
	move.l	#-1317922752,d6
	jsr	L83136.l
	move.l	d7,d6
	move.l	d2,d7
	jsr	L82294.l
	move.l	d7,d2
	bra.s	L82798

L82794:
	clr.b	(a7)
	move.l	d2,d7
L82798:
	clr.b	d7
	sub.b	#67,d2
	neg.b	d2
	cmp.b	#31,d2
	bls.s	L82814
	moveq	#0,d7
L82814:
	lsr.l	d2,d7
	moveq	#0,d5
	move.l	#$26A3D100,d6
	lea 	X83432.l,a0
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
	tst.b	1(a7)
	bpl.s	L82862
	neg.l	d5
	neg.b	(a7)
L82862:
	add.l	d5,d6
	jsr	L83378.l
	move.l	d6,d7
	add.b	(a7),d7
	bmi  	L82672
	beq  	L82672
	addq.l	#2,a7
	movem.l	(a7)+,d1-d6/a0
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

L82928:
	tst.b	d7
	beq.s	L82946
	bpl.s	L82954
	and.b	#127,d7
	bsr.s	L82954
L82940:
	ori	#2,ccr
	rts

L82946:
	moveq	#-1,d7
	jmp	L82940.l

L82954:
	movem.l	d1-d6/a0,-(a7)
	move.b	d7,-(a7)
	move.b	#65,d7
	move.l	#-2147483583,d6
	move.l	d7,d2
	jsr	L82312.l
	exg	d7,d2
	jsr	L82294.l
	move.l	d2,d6
	jsr	L82558.l
	beq.s	L83074
	sub.b	#67,d7
	neg.b	d7
	cmp.b	#31,d7
	bls.s	L83010
	moveq	#0,d7
L83010:
	lsr.l	d7,d7
	moveq	#0,d6
	move.l	#$20000000,d5
	lea 	X83432.l,a0
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
	jsr	L83378.l
	beq.s	L83074
	addq.b	#1,d6
	move.l	d6,d7
L83074:
	move.l	d7,d2
	moveq	#0,d6
	move.b	(a7)+,d6
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
	jsr	L83136.l
	move.l	d2,d6
	jsr	L82312.l
L83130:
	movem.l	(a7)+,d1-d6/a0
	rts

L83136:
	move.b	d7,d5
	beq.s	L83222
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
L83222:
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

X83432:
	dc.l	$1193EA7A,$082C577D
	dc.l	$04056247,$0200AB11
	dc.l	$01001558,$008002AA
	dc.l	4194389,2097162
	dc.l	1048577,524288
	dc.l	262144,131072
	dc.l	65536,32768
	dc.l	16384,8192
	dc.l	4096,2048
	dc.l	1024,512
	dc.l	256,128
	dc.l	64,32
	dc.b	'mc68343 floating point firmware (c) copyright 1981 by moto'
	dc.b	'rola inc.',0

L83596:
	link	a6,#0
	movem.l	d5-d7/a5,-(a7)
	movea.l	8(a6),a5
	clr.w	d7
	clr.w	d6
	bra.s	L83616

L83614:
	addq.l	#1,a5
L83616:
	move.b	(a5),d0
	ext.w	d0
	ext.l	d0
	add.l	#T91786,d0
	movea.l	d0,a0
	btst	#5,(a0)
	bne.s	L83614
	cmpi.b	#43,(a5)
	bne.s	L83646
	addq.l	#1,a5
	bra.s	L83656

L83646:
	cmpi.b	#45,(a5)
	bne.s	L83656
	addq.l	#1,a5
	addq.w	#1,d6
L83656:
	bra.s	L83672

L83658:
	muls	#10,d7
	move.b	(a5)+,d0
	ext.w	d0
	add.w	d0,d7
	add.w	#-48,d7
L83672:
	cmpi.b	#48,(a5)
	blt.s	L83684
	cmpi.b	#57,(a5)
	ble.s	L83658
L83684:
	tst.w	d6
	beq.s	L83694
	move.w	d7,d0
	neg.w	d0
	move.w	d0,d7
L83694:
	move.w	d7,d0
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7/a5
	unlk	a6
	rts

L83706:
	link	a6,#0
	movem.l	d7/a4-a5,-(a7)
	movea.l	12(a6),a5
	movea.l	8(a6),a4
	bra.s	L83726

L83724:
	addq.l	#1,a4
L83726:
	tst.b	(a4)
	bne.s	L83724
L83730:
	move.b	(a5)+,(a4)+
	bne.s	L83730
	move.l	8(a6),d0
	tst.l	(a7)+
	movem.l	(a7)+,a4-a5
	unlk	a6
	rts

L83748:
	link	a6,#0
	movem.l	d5-d7/a4-a5,-(a7)
	movea.l	8(a6),a5
	movea.l	12(a6),a4
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
	tst.l	(a7)+
	movem.l	(a7)+,d6-d7/a4-a5
	unlk	a6
	rts

L83814:
	link	a6,#0
	movem.l	d6-d7/a4-a5,-(a7)
	movea.l	8(a6),a5
	movea.l	12(a6),a4
	move.w	16(a6),d7
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
	tst.l	(a7)+
	movem.l	(a7)+,d7/a4-a5
	unlk	a6
	rts

L83880:
	link	a6,#0
	movem.l	d7/a4-a5,-(a7)
	movea.l	12(a6),a5
	movea.l	8(a6),a4
L83896:
	move.b	(a5)+,(a4)+
	bne.s	L83896
	move.l	8(a6),d0
	tst.l	(a7)+
	movem.l	(a7)+,a4-a5
	unlk	a6
	rts

L83914:
	link	a6,#0
	movem.l	d7/a4-a5,-(a7)
	movea.l	8(a6),a5
	movea.l	a5,a4
	bra.s	L83932

L83930:
	addq.l	#1,a4
L83932:
	tst.b	(a4)
	bne.s	L83930
	move.l	a4,d0
	ext.l	d0
	sub.l	a5,d0
	tst.l	(a7)+
	movem.l	(a7)+,a4-a5
	unlk	a6
	rts

	link	a6,#-4
	unlk	a6
	rts

L83960:
	link	a6,#-2
	movem.l	d2-d7,-(a7)
	clr.w	d3
	clr.l	d5
	move.l	8(a6),d7
	move.l	12(a6),d6
	bne.s	L84006
	move.l	#-2147483648,U98682.l
	move.l	#-2147483648,d0
	divs	#0,d0
	bra  	L84108

L84006:
	bge.s	L84012
	neg.l	d6
	addq.w	#1,d3
L84012:
	tst.l	d7
	bge.s	L84020
	neg.l	d7
	addq.w	#1,d3
L84020:
	cmp.l	d7,d6
	bgt.s	L84080
	bne.s	L84032
	moveq	#1,d5
	clr.l	d7
	bra.s	L84080

L84032:
	cmp.l	#65536,d7
	bge.s	L84050
	divu	d6,d7
	move.w	d7,d5
	swap	d7
	ext.l	d7
	bra.s	L84080

L84050:
	moveq	#1,d4
L84052:
	cmp.l	d6,d7
	bcs.s	L84062
	asl.l	#1,d6
	asl.l	#1,d4
	bra.s	L84052

L84062:
	tst.l	d4
	beq.s	L84080
	cmp.l	d6,d7
	bcs.s	L84074
	or.l	d4,d5
	sub.l	d6,d7
L84074:
	lsr.l	#1,d4
	lsr.l	#1,d6
	bra.s	L84062

L84080:
	cmp.w	#1,d3
	bne.s	L84100
	neg.l	d7
	move.l	d7,U98682.l
	move.l	d5,d0
	neg.l	d0
	bra.s	L84108

L84100:
	move.l	d7,U98682.l
	move.l	d5,d0
L84108:
	tst.l	(a7)+
	movem.l	(a7)+,d3-d7
	unlk	a6
	rts

L84118:
	link	a6,#-4
	clr.w	d2
	tst.l	8(a6)
	bge.s	L84136
	neg.l	8(a6)
	addq.w	#1,d2
L84136:
	tst.l	12(a6)
	bge.s	L84148
	neg.l	12(a6)
	addq.w	#1,d2
L84148:
	move.w	10(a6),d0
	mulu.w	14(a6),d0
	move.l	d0,-4(a6)
	move.w	8(a6),d0
	mulu.w	14(a6),d0
	move.w	12(a6),d1
	mulu.w	10(a6),d1
	add.w	d1,d0
	add.w	-4(a6),d0
	move.w	d0,-4(a6)
	move.l	-4(a6),d0
	btst	#0,d2
	beq.s	L84198
	neg.l	d0
L84198:
	unlk	a6
	rts

L84202:
	link	a6,#-2
	move.l	12(a6),-(a7)
	move.l	8(a6),-(a7)
	jsr	L83960.l
	cmpm.l	(a7)+,(a7)+
	move.l	U98682.l,d0
	unlk	a6
	rts

	data

T84232:
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
T84610:
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
T84994:
	dc.w	4
T84996:
	dc.w	1
T84998:
	dc.w	0,115
T85002:
	dc.w	10
T85004:
	dc.w	256
T85006:
	dc.w	16,1,49,16
T85014:
	dc.b	'^',0
T85016:
	dc.l	-100663218
T85020:
	dc.b	'\/',0
T85023:
	dc.b	'*',0,0
T85026:
	dc.b	'\*',0
T85029:
	dc.b	'\:',0
T85032:
	dc.l	-2147483583
T85036:
	dc.l	-1275068343
T85040:
	dc.l	-100663217
T85044:
	dc.l	-2147483584
T85048:
	dc.l	0
T85052:
	dc.l	-449912250
T85056:
	dc.l	-1275068345
T85060:
	dc.l	0,-1896326853
	dc.l	-1896691908,-698467524
	dc.l	-1898153411,-1300318915
	dc.l	-703396547,-107568323
	dc.l	-1903991490,-1607443394
	dc.l	-1311714498,-1016893634
	dc.l	-723071426,-430337218
	dc.l	-138781122,-2071728577
	dc.l	-1927260353,-1783513537
	dc.l	-1640531649,-1498358209
	dc.l	-1357036481,-1216609985
	dc.l	-1077120961,-938612673
	dc.l	-801126081,-664704193
	dc.l	-529387969,-395218369
	dc.l	-262237121,-130484417
	dc.l	-2147483584,-2082895552
	dc.l	-2018981312,-1955760832
	dc.l	-1893252032,-1831475648
	dc.l	-1770449088,-1710191552
	dc.l	-1650721472,-1592056512
	dc.l	-1534215872,-1477215424
	dc.l	-1421073088,-1365806784
	dc.l	-1311432640,-1257966528
	dc.l	-1205426368,-1153827520
	dc.l	-1103184320,-1053514432
	dc.l	-1004831936,-957151424
	dc.l	-910486976,-864853696
	dc.l	-820265920,-776736448
	dc.l	-734278080,-692905408
	dc.l	-652628928,-613461952
	dc.l	-575416512,-538504384
	dc.l	-502736576,-468124096
	dc.l	-434676672,-402405312
	dc.l	-371319488,-341429440
	dc.l	-312742848,-285270720
	dc.l	-259018176,-233996224
	dc.l	-210211520,-187670464
	dc.l	-166379968,-146347968
	dc.l	-127579328,-110080448
	dc.l	-93855424,-78910656
	dc.l	-65250240,-52878016
	dc.l	-41798848,-32014784
	dc.l	-23528640,-16344000
	dc.l	-10462656,-5886656
	dc.l	-2616512,-654016
	dc.l	-2147483583
T85424:
	dc.b	'[3][Can''t find logo.rsc][EXIT]',0,0
T85456:
	dc.b	'[3][I can''t initialize LOGO.][EXIT]',0
T85492:
	dc.b	255,255,255,255,255,255,0,20
	dc.b	0,0,0,0,0,0,17,'C'
T85508:
	dc.w	0,0,0,0
T85516:
	dc.w	100,35,16,100
	dc.w	16
T85526:
	dc.l	L37910,L39270
	dc.l	L39270,L39270
	dc.l	L39270,L39270
	dc.l	L39270,L39270
	dc.l	L39270,L39270
	dc.l	L37952,L38088
	dc.l	L38132,L38212
	dc.l	L38986,L38854
	dc.l	L38918,L38394
	dc.l	L38572
T85602:
	dc.l	18176,18432
	dc.l	19200,19712
	dc.l	20480,20992
	dc.l	0,L39316
	dc.l	L39312,L39304
	dc.l	L39300,L39308
	dc.l	L39320,L39348
T85658:
	dc.l	L39650,L40578
	dc.l	L40578,L40578
	dc.l	L40578,L40578
	dc.l	L40578,L40578
	dc.l	L40578,L40110
	dc.l	L40110,L40308
	dc.l	L40578,L40216
	dc.l	L40216,L40578
	dc.l	L39884,L40196
	dc.l	L40578,L39892
	dc.l	L40094,L40094
	dc.l	L39908,L40578
	dc.l	L40094,L40308
	dc.l	L39868,L39892
	dc.l	L40578,L39692
	dc.l	L39708,L39724
	dc.l	L39740,L40578
	dc.l	L39756,L39772
	dc.l	L39788,L39804
	dc.l	L39820,L40578
	dc.l	L39836,L39852
	dc.l	L40578,L40500
	dc.l	L40402,L40452
	dc.l	L40578,L39924
	dc.l	L40094,L40094
	dc.l	L40046,L39996
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
	dc.b	'LOGO.RSC',0,0
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
T86340:
	dc.b	1,2,4,8,16,' @',128
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
T86648:
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
	dc.b	': ',0,0
T87058:
	dc.l	T87366
T87062:
	dc.l	T87430
T87066:
	dc.l	T87441
T87070:
	dc.l	T87450
T87074:
	dc.l	T87492
T87078:
	dc.l	T87534
T87082:
	dc.l	T87587
T87086:
	dc.l	T87620
T87090:
	dc.l	T87646
T87094:
	dc.l	T87667
T87098:
	dc.l	T87682
T87102:
	dc.l	T87694
T87106:
	dc.l	T87719
T87110:
	dc.l	T87740
T87114:
	dc.l	T87761
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
T87318:
	dc.l	T88447
T87322:
	dc.l	T88458
T87326:
	dc.l	T88461
T87330:
	dc.l	T88464
T87334:
	dc.l	T88467
T87338:
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
T87450:
	dc.b	'[3][I need more memory to run LOGO][EXIT]',0
T87492:
	dc.b	'[3][I don''t have any LOGO nodes left][OK]',0
T87534:
	dc.b	'[3][Out of LOGO stack during!garbage collection][OK]',0
T87587:
	dc.b	'[3][Out of LOGO stack space][OK]',0
T87620:
	dc.b	'No pan with FENCE or WRAP',0
T87646:
	dc.b	'Turtle out of bounds',0
T87667:
	dc.b	'Number too big',0
T87682:
	dc.b	') without (',0
T87694:
	dc.b	'I''m running out of nodes',0
T87719:
	dc.b	'Can''t divide by zero',0
T87740:
	dc.b	'The word is too long',0
T87761:
	dc.b	'I''m having trouble with the disk',0
T87794:
	dc.b	'Disk is full',0
T87807:
	dc.b	'My edit buffer is full',0
T87830:
	dc.b	'If wants [ ]''s around instructions',0
T87865:
	dc.b	0
T87866:
	dc.b	0
T87867:
	dc.b	0
T87868:
	dc.b	'TRUE',0
T87873:
	dc.b	'FALSE',0
T87879:
	dc.b	'.LOG',0
T87884:
	dc.b	0
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
T88006:
	dc.b	0
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
T88282:
	dc.b	0
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
T88447:
	dc.b	'$TEMP$.PIC',0
T88458:
	dc.b	'PU',0
T88461:
	dc.b	'PD',0
T88464:
	dc.b	'PX',0
T88467:
	dc.b	'PE',0
T88470:
	dc.b	'WINDOW',0
T88477:
	dc.b	'WRAP',0
T88482:
	dc.b	'FENCE',0
T88488:
	dc.b	'GFILL',0
T88494:
	dc.b	'GRAPHICS',0
T88503:
	dc.b	'.FPT',0
T88508:
	dc.b	'.LPT',0,0
T88514:
	dc.l	T90222
	dc.l	L6366
	dc.l	T90228
	dc.l	L6400
	dc.l	T90240
	dc.l	L6972
	dc.l	T90251
	dc.l	L6454
	dc.l	T90256
	dc.l	L6510
	dc.l	T90262
	dc.l	L6946
	dc.l	T90269
	dc.l	L7058
	dc.l	T90276
	dc.l	L7084
	dc.l	T90282
	dc.l	L7144
	dc.l	T90287
	dc.l	L7252
	dc.l	T90292
	dc.l	L7374
	dc.l	T90297
	dc.l	L7472
	dc.l	T90302
	dc.l	L7502
	dc.l	T90308
	dc.l	L7542
	dc.l	T90313
	dc.l	L7862
	dc.l	T90321
	dc.l	L8194
	dc.l	T90329
	dc.l	L8254
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
	dc.l	L10446
	dc.l	T90671
	dc.l	L62878
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
	dc.l	L4734
	dc.l	T90833
	dc.l	L3520
	dc.l	T90839
	dc.l	L2890
	dc.l	T90843
	dc.l	L7706
	dc.l	T90852
	dc.l	L7772
	dc.l	T90861
	dc.l	L4924
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
	dc.l	L12654
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
	dc.l	L16642
	dc.l	T91152
	dc.l	L16918
	dc.l	T91166
	dc.l	L16944
	dc.l	T91171
	dc.l	L16968
	dc.l	T91179
	dc.l	L33212
	dc.l	T91190
	dc.l	L33252
	dc.l	T91202
	dc.l	L33276
	dc.l	T91216
	dc.l	L33238
	dc.l	T91225
	dc.l	L17004
	dc.l	T91234
	dc.l	L17030
	dc.l	T91240
	dc.l	L17074
	dc.l	T91256
	dc.l	L17100
	dc.l	T91262
	dc.l	L17136
	dc.l	T91269
	dc.l	L17352
	dc.l	T91276
	dc.l	L17822
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
	dc.l	L16680
	dc.l	T91396
	dc.l	L16802
	dc.l	T91411
	dc.l	L28812
	dc.l	T91425
	dc.l	L16370
	dc.l	T91433
	dc.l	L16396
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
	dc.l	L28632
	dc.l	T91490
	dc.l	L28740
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
	dc.l	L26974
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
T90106:
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
T91135:
	dc.b	'FENCE',0
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
T91319:
	dc.b	'WINDOW',0
T91326:
	dc.b	'WRAP',0
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
T91618:
	dc.b	0
T91619:
	dc.b	'DR LOGO FOR GEM!',0
T91636:
	dc.b	0
T91637:
	dc.b	0
T91638:
	dc.b	0
T91639:
	dc.b	0
T91640:
	dc.b	0
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
	dc.b	'an empty word',0
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

U91914:
	ds.b	4
U91918:
	ds.b	4
U91922:
	ds.b	4
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
U91946:
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
U91966:
	ds.b	2
U91968:
	ds.b	2
U91970:
	ds.b	2
U91972:
	ds.b	2
U91974:
	ds.b	2
U91976:
	ds.b	2
U91978:
	ds.b	2
U91980:
	ds.b	2
U91982:
	ds.b	2
U91984:
	ds.b	4
U91988:
	ds.b	2
U91990:
	ds.b	2
U91992:
	ds.b	20
U92012:
	ds.b	20
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
U92052:
	ds.b	2
U92054:
	ds.b	2
U92056:
	ds.b	2
U92058:
	ds.b	8
U92066:
	ds.b	2
U92068:
	ds.b	2
U92070:
	ds.b	2
U92072:
	ds.b	4
U92076:
	ds.b	2
U92078:
	ds.b	4
U92082:
	ds.b	2
U92084:
	ds.b	2
U92086:
	ds.b	2
U92088:
	ds.b	4
U92092:
	ds.b	1
U92093:
	ds.b	1
U92094:
	ds.b	2
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
U92170:
	ds.b	4
U92174:
	ds.b	4
U92178:
	ds.b	4
U92182:
	ds.b	4
U92186:
	ds.b	4
U92190:
	ds.b	8
U92198:
	ds.b	4
U92202:
	ds.b	4
U92206:
	ds.b	4
U92210:
	ds.b	4
U92214:
	ds.b	4
U92218:
	ds.b	4
U92222:
	ds.b	4
U92226:
	ds.b	2
U92228:
	ds.b	2
U92230:
	ds.b	2
U92232:
	ds.b	2
U92234:
	ds.b	2
U92236:
	ds.b	4
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
U98270:
	ds.b	2
U98272:
	ds.b	2
U98274:
	ds.b	2
U98276:
	ds.b	4
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
U98350:
	ds.b	2
U98352:
	ds.b	2
U98354:
	ds.b	2
U98356:
	ds.b	2
U98358:
	ds.b	2
U98360:
	ds.b	2
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
U98402:
	ds.b	8
U98410:
	ds.b	2
U98412:
	ds.b	2
U98414:
	ds.b	2
U98416:
	ds.b	2
U98418:
	ds.b	2
U98420:
	ds.b	2
U98422:
	ds.b	2
U98424:
	ds.b	2
U98426:
	ds.b	2
U98428:
	ds.b	2
U98430:
	ds.b	244
U98674:
	ds.b	8
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
U98720:
	ds.b	2
U98722:
	ds.b	4
U98726:
	ds.b	2
U98728:
	ds.b	6
U98734:
	ds.b	8
U98742:
	ds.b	2
U98744:
	ds.b	2
U98746:
	ds.b	254
U99000:
	ds.b	8
U99008:
	ds.b	8
U99016:
	ds.b	8
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
U99180:
	ds.b	2
U99182:
	ds.b	2
U99184:
	ds.b	2
U99186:
	ds.b	2
U99188:
	ds.b	2
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
U99806:
	ds.b	2
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
U99860:
	ds.b	2
U99862:
	ds.b	2
U99864:
	ds.b	2
U99866:
	ds.b	2
U99868:
	ds.b	2
U99870:
	ds.b	2
U99872:
	ds.b	2
U99874:
	ds.b	2
U99876:
	ds.b	2
U99878:
	ds.b	2
U99880:
	ds.b	2
U99882:
	ds.b	2
U99884:
	ds.b	2
U99886:
	ds.b	276
U100162:
	ds.b	399
U100561:
	ds.b	1
U100562:
	ds.b	2
U100564:
	ds.b	2
U100566:
	ds.b	2
U100568:
	ds.b	2
U100570:
	ds.b	2
U100572:
	ds.b	18
U100590:
	ds.b	30
U100620:
	ds.b	2
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
	ds.b	4
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
U100906:
	ds.b	8
U100914:
	ds.b	2
U100916:
	ds.b	2
U100918:
	ds.b	2
U100920:
	ds.b	2
U100922:
	ds.b	2
U100924:
	ds.b	2
U100926:
	ds.b	2
U100928:
	ds.b	2
U100930:
	ds.b	2
U100932:
	ds.b	2
U100934:
	ds.b	2
U100936:
	ds.b	2
U100938:
	ds.b	2
U100940:
	ds.b	2
U100942:
	ds.b	2
U100944:
	ds.b	2
U100946:
	ds.b	2
U100948:
	ds.b	2
U100950:
	ds.b	2
U100952:
	ds.b	2
U100954:
	ds.b	2
U100956:
	ds.b	2
U100958:
	ds.b	2
U100960:
	ds.b	2
U100962:
	ds.b	8
U100970:
	ds.b	2
U100972:
	ds.b	2
U100974:
	ds.b	2
U100976:
	ds.b	2
U100978:
	ds.b	2
U100980:
	ds.b	2
U100982:
	ds.b	2
U100984:
	ds.b	2
U100986:
	ds.b	2
U100988:
	ds.b	2
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
U101000:
	ds.b	4
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
U101030:
	ds.b	4
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
U101046:
	ds.b	2
U101048:
	ds.b	2
U101050:
	ds.b	2
U101052:
	ds.b	2
U101054:
	ds.b	2
U101056:
	ds.b	2
U101058:
	ds.b	4
U101062:
	ds.b	4
U101066:
	ds.b	2
U101068:
	ds.b	4
U101072:
	ds.b	4
U101076:
	ds.b	2
U101078:
	ds.b	2
U101080:
	ds.b	4
U101084:
	ds.b	6
U101090:
	ds.b	12
U101102:
	ds.b	4
U101106:
	ds.b	2
U101108:
	ds.b	2
U101110:
	ds.b	4
U101114:
	ds.b	6
U101120:
	ds.b	2
U101122:
	ds.b	2
U101124:
	ds.b	2
U101126:
	ds.b	2
U101128:
	ds.b	2
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
U101144:
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
U101188:
	ds.b	4
U101192:
	ds.b	2
U101194:
	ds.b	4
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
U101476:
	ds.b	2
U101478:
	ds.b	2
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
U101502:
	end	
