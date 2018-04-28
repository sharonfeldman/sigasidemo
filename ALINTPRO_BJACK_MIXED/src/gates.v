// Copyright (c) Aldec, Inc.
// All rights reserved.
//
// Last modified: $Date: 2008-11-04 17:50:17 +0200 (Tue, 04 Nov 2008) $
// $Revision:  92945 $

`timescale 1ps / 1ps

// OR2 gate
module OR2 (I0, I1, O);
    input  I0;
    input  I1;
    output O;
    assign O = I0 | I1;
endmodule

// AND2 gate
module AND2 (I0, I1, O);
    input  I0;
    input  I1;
    output O;
    assign O = I0 & I1;
endmodule

// INV gate
module INV (I, O);
    input  I;
    output O;
    assign O = ~I;
endmodule
