-- Copyright (c) Aldec, Inc.
-- All rights reserved.
--
-- Last modified: $Date: 2008-11-04 17:50:17 +0200 (Tue, 04 Nov 2008) $
-- $Revision:  92945 $

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity bin2bcd is
    port (
        BIN: in STD_LOGIC_VECTOR (4 downto 0);
        BCD_H: out STD_LOGIC_VECTOR (1 downto 0) ;
        BCD_L: out STD_LOGIC_VECTOR (3 downto 0)
    );
end entity;

architecture BIN2BCD_ARCH of bin2bcd is
begin

-- translate bin to bcd low
    with BIN select
        BCD_L <=    "0001" when "00001" | "01011" | "10101" | "11111",
        "0010" when "00010" | "01100" | "10110",
        "0011" when "00011" | "01101" | "10111",
        "0100" when "00100" | "01110" | "11000",
        "0101" when "00101" | "01111" | "11001",
        "0110" when "00110" | "10000" | "11010",
        "0111" when "00111" | "10001" | "11011",
        "1000" when "01000" | "10010" | "11100",
        "1001" when "01001" | "10011" | "11101",
        "0000" when others;

-- translate bin to bcd high
    BCD_H <=    "00" when (BIN < 10) else
        "01" when (BIN < 20) else
        "10" when (BIN < 30) else
        "11";

end architecture;