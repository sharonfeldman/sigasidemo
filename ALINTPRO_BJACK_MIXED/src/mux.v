// Copyright (c) Aldec, Inc.
// All rights reserved.
//
// Last modified: $Date: 2008-11-04 17:50:17 +0200 (Tue, 04 Nov 2008) $
// $Revision:  92945 $

`timescale 1ps / 1ps

module MUX (A, B, Y, S);
    input  [3:0]A;
    input  [4:0]B;
    output [4:0]Y;
    input  S;

    assign Y = (S == 1'b1) ? B : { 1'b0, A }; // bits concatenation

endmodule
