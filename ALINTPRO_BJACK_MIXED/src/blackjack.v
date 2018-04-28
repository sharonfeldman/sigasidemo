// Copyright (c) Aldec, Inc.
// All rights reserved.
//
// Last modified: $Date: 2008-11-04 17:50:17 +0200 (Tue, 04 Nov 2008) $
// $Revision:  92945 $

`timescale 1ps / 1ps

//`timescale 1ps / 1ps
module MIXED_BJACK (L_L, LEDS, L_H, D_L, D_H, BUST, HOLD, NEW_CARD, GEN_RES, GEN_CLK, START, SYS_CLK);

    output [6:0]L_L;
    output [7:0]LEDS;
    output [6:0]L_H;
    output [3:0]D_L;
    output [1:0]D_H;
    output BUST;
    output HOLD;
    input  NEW_CARD;
    input  GEN_RES ;
    input  GEN_CLK ;
    input  START   ;
    input  SYS_CLK ;


    // Signals defined as wires
    wire CLK;
    wire NOT_NEW_CARD;
    wire NEXT_CARD;
    wire OFF;
    wire NEW_G;
    wire S;
    wire [3:0]DO ;
    wire [4:0]HAND;
    wire [4:0]VIS;
	wire [3:0]D_L_INT;
    wire [1:0]D_H_INT;
    wire BUST_INT;
    wire HOLD_INT;
	
	assign D_L = D_L_INT;
	assign D_H = D_H_INT;
	assign BUST = BUST_INT;
	assign HOLD = HOLD_INT;

    AND2 I1 (.I0(BUST_INT), .I1(GEN_CLK), .O(OFF));
    INV I13 (.I(START), .O(NEW_G));
    bin2bcd I14 (.BIN(VIS), .BCD_H(D_H_INT), .BCD_L(D_L_INT));
    INV I12 (.I(NEW_CARD), .O(NOT_NEW_CARD));
    INV I5 (.I(NEXT_CARD), .O(CLK));
    BJACK_C I6 (.CARD(DO), .HAND(HAND), .BUST(BUST_INT), .CLOCK(SYS_CLK), .HOLD(HOLD_INT),
        .NEW_C(NOT_NEW_CARD), .NEW_G(NEW_G), .NEXT_C(NEXT_CARD));
    johnson8 I17 (.Q(LEDS), .CLK(CLK), .RESET(NEW_G));
    OR2 I8 (.I0(HOLD_INT), .I1(BUST_INT), .O(S));
    MUX I9 (.A(DO), .B(HAND), .Y(VIS), .S(S));
    GEN I10 (.DO(DO), .CLK(GEN_CLK), .RES(GEN_RES), .ENC(NEW_CARD));
    BCD2LED I11 (.DIGIT_H(D_H_INT), .DIGIT_L(D_L_INT), .LED_H(L_H), .LED_L(L_L), .OFF(OFF));

endmodule
