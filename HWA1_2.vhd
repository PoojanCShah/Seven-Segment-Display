----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2023 01:10:00 PM
-- Design Name: 
-- Module Name: HWA1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HWA1 is
  port(a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,a4,b4,c4,d4,clk:in std_logic; ca,cb,cc,cd,ce,cf,cg,an0,an1,an2,an3,l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16: out std_logic);
end HWA1;

architecture Behavioral of HWA1 is
signal counter : INTEGER := 0;
signal mux_select : STD_LOGIC_VECTOR(2 downto 0);
constant ANODE_DELAY : INTEGER := 1001;
signal flag: integer := 0;
begin
process(clk)
    begin
        if rising_edge(clk) then
            if counter = ANODE_DELAY then
                counter <= 0;
                if (flag mod 4) = 0 then
                
                    an0 <= '1';
                    an1 <= '1';
                    an2 <= '1';
                    an3 <= '0';
                    
                    ca <=  (not a1 and not b1 and not c1 and d1) or (not a1 and b1 and not c1 and not d1) or (a1 and b1 and not c1 and d1) or ( a1 and not b1 and c1 and d1);
                    cb <= (b1 and c1 and not d1) or (not a1 and b1 and  not c1 and d1) or (a1 and b1 and not d1) or (a1 and c1 and d1);
                    cc <= (a1 and b1 and not c1 and not d1) or (not a1 and not b1 and c1 and not d1) or (a1 and b1 and c1);
                    cd <= (not a1 and b1 and not c1 and not d1) or (not a1 and not b1 and not c1 and d1) or (b1 and c1 and d1) or (a1 and not b1 and c1 and not d1);
                    ce <= (not a1 and d1) or (not a1 and b1 and not c1) or (not b1 and not c1 and d1);
                    cf <= ( not a1 and not b1 and d1 ) or ( not a1 and not b1 and c1 ) or ( not a1 and c1 and d1) or ( a1 and b1 and not c1 and d1 );
                    cg <=  (not a1 and not b1 and not c1) or (a1 and b1 and not c1 and not d1) or (not a1 and b1 and c1 and d1);
                    
                    
                    
                elsif (flag mod 4) = 1 then
                
                    an0 <= '1';
                    an1 <= '1';
                    an2 <= '0';
                    an3 <= '1';
                    
                    ca <=  (not a2 and not b2 and not c2 and d2) or (not a2 and b2 and not c2 and not d2) or (a2 and b2 and not c2 and d2) or ( a2 and not b2 and c2 and d2);
                    cb <= (b2 and c2 and not d2) or (not a2 and b2 and  not c2 and d2) or (a2 and b2 and not d2) or (a2 and c2 and d2);
                    cc <= (a2 and b2 and not c2 and not d2) or (not a2 and not b2 and c2 and not d2) or (a2 and b2 and c2);
                    cd <= (not a2 and b2 and not c2 and not d2) or (not a2 and not b2 and not c2 and d2) or (b2 and c2 and d2) or (a2 and not b2 and c2 and not d2);
                    ce <= (not a2 and d2) or (not a2 and b2 and not c2) or (not b2 and not c2 and d2);
                    cf <= ( not a2 and not b2 and d2 ) or ( not a2 and not b2 and c2 ) or ( not a2 and c2 and d2) or ( a2 and b2 and not c2 and d2 );
                    cg <=  (not a2 and not b2 and not c2) or (a2 and b2 and not c2 and not d2) or (not a2 and b2 and c2 and d2);
                    
                    
                    
                elsif (flag mod 4) = 2 then
                
                    an0 <= '1';
                    an1 <= '0';
                    an2 <= '1';
                    an3 <= '1';
                    
                     ca <=  (not a3 and not b3 and not c3 and d3) or (not a3 and b3 and not c3 and not d3) or (a3 and b3 and not c3 and d3) or ( a3 and not b3 and c3 and d3);
                    cb <= (b3 and c3 and not d3) or (not a3 and b3 and  not c3 and d3) or (a3 and b3 and not d3) or (a3 and c3 and d3);
                    cc <= (a3 and b3 and not c3 and not d3) or (not a3 and not b3 and c3 and not d3) or (a3 and b3 and c3);
                    cd <= (not a3 and b3 and not c3 and not d3) or (not a3 and not b3 and not c3 and d3) or (b3 and c3 and d3) or (a3 and not b3 and c3 and not d3);
                    ce <= (not a3 and d3) or (not a3 and b3 and not c3) or (not b3 and not c3 and d3);
                    cf <= ( not a3 and not b3 and d3 ) or ( not a3 and not b3 and c3 ) or ( not a3 and c3 and d3) or ( a3 and b3 and not c3 and d3 );
                    cg <=  (not a3 and not b3 and not c3) or (a3 and b3 and not c3 and not d3) or (not a3 and b3 and c3 and d3);
                    
                    
                   
                else
                
                    an0 <= '0';
                    an1 <= '1';
                    an2 <= '1';
                    an3 <= '1';
                    
                    ca <=  (not a4 and not b4 and not c4 and d4) or (not a4 and b4 and not c4 and not d4) or (a4 and b4 and not c4 and d4) or ( a4 and not b4 and c4 and d4);
                    cb <= (b4 and c4 and not d4) or (not a4 and b4 and  not c4 and d4) or (a4 and b4 and not d4) or (a4 and c4 and d4);
                    cc <= (a4 and b4 and not c4 and not d4) or (not a4 and not b4 and c4 and not d4) or (a4 and b4 and c4);
                    cd <= (not a4 and b4 and not c4 and not d4) or (not a4 and not b4 and not c4 and d4) or (b4 and c4 and d4) or (a4 and not b4 and c4 and not d4);
                    ce <= (not a4 and d4) or (not a4 and b4 and not c4) or (not b4 and not c4 and d4);
                    cf <= ( not a4 and not b4 and d4 ) or ( not a4 and not b4 and c4 ) or ( not a4 and c4 and d4) or ( a4 and b4 and not c4 and d4 );
                    cg <=  (not a4 and not b4 and not c4) or (a4 and b4 and not c4 and not d4) or (not a4 and b4 and c4 and d4);
                    
            end if;
            else
                counter <= counter + 1;
                flag <= ((flag+1) mod 4);
            end if;

--ca <=  (not a and not b and not c and d) or (not a and b and not c and not d) or (a and b and not c and d) or ( a and not b and c and d);
--cb <= (b and c and not d) or (not a and b and  not c and d) or (a and b and not d) or (a and c and d);
--cc <= (a and b and not c and not d) or (not a and not b and c and not d) or (a and b and c);
--cd <= (not a and b and not c and not d) or (not a and not b and not c and d) or (b and c and d) or (a and not b and c and not d);
--ce <= (not a and d) or (not a and b and not c) or (not b and not c and d);
--cf <= ( not a and not b and d ) or ( not a and not b and c ) or ( not a and c and d) or ( a and b and not c and d );
--cg <=  (not a and not b and not c) or (a and b and not c and not d) or (not a and b and c and d);

l1 <= a1;
l2 <= b1;
l3 <= c1;
l4 <= d1;
l5 <= a2;
l6 <= b2;
l7 <= c2;
l8 <= d2;
l9 <= a3;
l10 <= b3;
l11 <= c3;
l12 <= d3;
l13 <= a4;
l14 <= b4;
l15 <= c4;
l16 <= d4;


end if;
end process;

end Behavioral;
