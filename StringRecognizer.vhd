library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
package harsh is
	component D_FF is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	component gesturerecog is
		port ( i1, i2 , clk, reset : in std_logic; Q : out std_logic);
	end component;
	component GestureRecognizer is
			port ( i1,i2,i3,i4,clk,reset : in std_logic; lr,rl,tb,bt : out std_logic);
	end component;
	component mario is
			port ( r,c : out std_logic_vector(7 downto 0); clk,reset,i1,i2,i3,i4 : in std_logic);
	end component;
	component eightbit is
		port (r : out std_logic_vector(7 downto 0) ; up,down,clk,reset : in std_logic);
	end component;
end harsh;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity D_FF is
  port (D, CLK, reset: in std_logic; Q: out std_logic);
end entity; 
architecture WhatDoYouCare of D_FF is
begin 
   process (CLK , reset) 
   	begin
		if (reset = '1') then
			Q <= '0';
		elsif CLK'event and (CLK = '1') then
	    		Q <= D;
		end if;
   end process;	
end WhatDoYouCare;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity gesturerecog is
		port ( i1, i2 , clk, reset : in std_logic; Q : out std_logic);
end entity;
architecture jesture of gesturerecog is
signal qq1 , qq0 , ii1 , ii2, q1 ,q0 , nq1 , nq0 : std_logic;
begin
		d1 : D_FF port map ( D=>nq0 , CLK => clk , reset => reset , Q => q0);
		d2 : D_FF port map ( D=>nq1 , CLK => clk , reset => reset , Q => q1);
Q <= q1 and q0;
qq1 <= not(q1);
qq0 <= not(q0);
ii1 <= not(i1);
ii2 <= not(i2);
nq0 <= (qq1 and qq0 and i1 and ii2) or (qq1 and q0) or (q1 and q0 and i2);
nq1 <= ( qq1 and q0 and ii1 and i2) or (q1 and q0 and i2);
end jesture;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity GestureRecognizer is
			port ( i1,i2,i3,i4,clk,reset : in std_logic; lr,rl,tb,bt : out std_logic);
end entity;	
architecture pikachu of GestureRecognizer is
signal aa : std_logic;
begin
		gr1: gesturerecog port map ( i1=>i1 , i2=>i2 , clk=>clk , reset=>reset , Q=>lr);
		gr2: gesturerecog port map ( i1=>i2 , i2=>i1 , clk=>clk , reset=>reset , Q=>rl);
		gr3: gesturerecog port map ( i1=>i3 , i2=>i4 , clk=>clk , reset=>reset , Q=>tb);
		gr4: gesturerecog port map ( i1=>i4 , i2=>i3 , clk=>clk , reset=>reset , Q=>bt);
end pikachu;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity eightbit is
	port (r : out std_logic_vector(7 downto 0) ; u,d,clk,reset : in std_logic);
end entity;
architecture pichu of eightbit is
signal x,y,z,w,q1,q0,q2,nq1,nq2,nq0,qq1,qq2,qq0,uu,dd : std_logic;
signal clkcount : std_logic;
begin
--FInd good method
end pichu;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity mario is
			port ( r,c : out std_logic_vector(7 downto 0); i1,i2,i3,i4,clk,reset : in std_logic);
end entity;
architecture raichu of mario is
begin
end raichu;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity StringRecognizer is
			port ( r,c : out std_logic_vector(7 downto 0); i1,i2,i3,i4,clk,reset : in std_logic);
end entity;
architecture raichu of StringRecognizer is
begin
end raichu;				