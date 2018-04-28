-- Copyright (c) Aldec, Inc.
-- All rights reserved.
--
-- Last modified: $Date: 2008-11-04 17:50:17 +0200 (Tue, 04 Nov 2008) $
-- $Revision:  92945 $

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity johnson8 is
    port(
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end entity;

architecture JOHNSON8_ARCH of johnson8 is

    signal Q_I : STD_LOGIC_VECTOR(7 downto 0);

begin

    process(CLK, RESET)
    begin
        if RESET = '1' then
            -- asynchronous reset
            Q_I <= (others => '1');
        elsif rising_edge(CLK) then
            -- shifting bits with inverted feedback
            Q_I <= Q_I(6 downto 0) & not Q_I(7);
        end if;
    end process;

    Q <= Q_I;

end architecture;
