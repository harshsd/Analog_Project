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
		port (r : out std_logic_vector(7 downto 0) ; u,d,clk,reset : in std_logic);
	end component;
	component JK_FF is
		PORT( J,K,CLOCK,reset: in std_logic;
		Q, QB: out std_logic);
	end component;
	component d_two is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
	end component;
	component d_four is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
	end component;
	component CleanSwitch is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
	end component;
	component two_19 is 
	port (reset , clkin : in std_logic ; clkout : out std_logic);
	end component;
end harsh;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity d_two is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
end entity;
architecture twod of d_two is
signal q,nq : std_logic;
begin
	nq <= not(q) and not(reset);
	D_FF1 : D_FF port map ( D => nq , CLK => clkin, reset => reset , Q => q);
	clkout <= q and not(reset);
end twod	;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity d_four is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
end entity;
architecture fourd of d_four is
signal clkit : std_logic;
begin
	d1 : d_two port map ( reset => reset , clkin => clkin , clkout => clkit);
	d2 : d_two port map ( reset => reset , clkin => clkit , clkout => clkout);
end fourd;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity two_19 is 
	port (reset , clkin : in std_logic ; clkout : out std_logic);
end entity;
architecture t19 of two_19 is
signal a: std_logic_vector(23 downto 0);
begin
a(0) <= clkin;
random : for I in 0 to 22 generate
	twox: d_two port map(reset => reset, clkin => a(I), clkout => a(I+1));
	end generate;
clkout <= a(23);	
end t19;

library work;
use work.harsh.all;
library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
library std;
use std.standard.all;
entity JK_FF is
PORT( J,K,CLOCK,reset: in std_logic;
Q, QB: out std_logic);
end JK_FF;
Architecture behavioral of JK_FF is
begin
PROCESS(CLOCK,reset)
variable TMP: std_logic;
begin
if( reset = '1') then
TMP := '0';
elsif(CLOCK='1' and CLOCK'EVENT) then
if(J='0' and K='0')then
TMP:=TMP;
elsif(J='1' and K='1')then
TMP:= not TMP;
elsif(J='0' and K='1')then
TMP:='0';
else
TMP:='1';
end if;
end if;
Q<=TMP;
Q <=not TMP;
end PROCESS;
end behavioral;



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
signal aa,r1,r2,r3,r4,rl1,lr1,tb1,bt1 : std_logic;
begin
rl <= rl1;
lr <= lr1;
tb <= tb1;
bt <= bt1;
r1 <= reset or rl1;
r2 <= reset or lr1;
r3 <= reset or bt1;
r4 <= reset or tb1;
		gr1: gesturerecog port map ( i1=>i1 , i2=>i2 , clk=>clk , reset=>r1 , Q=>lr1);
		gr2: gesturerecog port map ( i1=>i2 , i2=>i1 , clk=>clk , reset=>r2 , Q=>rl1);
		gr3: gesturerecog port map ( i1=>i3 , i2=>i4 , clk=>clk , reset=>r3 , Q=>tb1);
		gr4: gesturerecog port map ( i1=>i4 , i2=>i3 , clk=>clk , reset=>r4 , Q=>bt1);
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
signal dd1,u1,q1,q0,q2,nq1,nq2,nq0,qq1,qq2,qq0,uu,clki : std_logic;
signal clkcount : std_logic;
begin
d0 : D_FF port map (D=>u , CLK => clk , reset=>reset, Q => u1);
d00 : D_FF port map (D=>d , CLK => clk , reset=>reset , Q=>dd1);
clki <= u1 xor dd1;
uu <= not(u);
qq0 <= not(q0);
qq1 <= not(q1);
qq2 <= not(q2);
d1 : D_FF port map ( D=>nq0 , reset=>reset , CLK => clki , Q => q0 );
d2 : D_FF port map ( D=>nq1 , reset=>reset , CLK => clki , Q => q1 );
d3 : D_FF port map ( D=>nq2 , reset=>reset , CLK => clki , Q => q2 );
nq0 <= (qq2 and qq1 and qq0 ) or (qq2 and q1 and qq0) or (q2 and qq1 and qq0) or (q2 and q1 and qq0);
nq1 <= (qq2 and qq1 and qq0 and uu) or (qq2 and qq1 and q0 and u) or (qq2 and q1 and qq0 and u) or (qq2 and q1 and q0 and uu) or (q2 and qq1 and qq0 and uu) or (q2 and qq1 and q0 and u) or (q2 and q1 and qq0 and u) or (q2 and q1 and q0 and uu);
nq2 <= ( qq2 and qq1 and qq0 and uu) or (qq2 and q1 and q0 and u) or (q2 and qq1 and qq0 and u) or (q2 and qq1 and q0) or (q2 and q1 and qq0) or (q2 and q1 and q0 and uu);
r(0) <= qq2 and qq1 and qq0;
r(1) <= qq2 and qq1 and q0;
r(2) <= qq2 and q1 and qq0;
r(3) <= qq2 and q1 and q0;
r(4) <= q2 and qq1 and qq0;
r(5) <= q2 and qq1 and q0;
r(6) <= q2 and q1 and qq0;
r(7) <= q2 and q1 and q0;
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
signal rl,lr,tb,bt,clki: std_logic;
signal cc : std_logic_vector(7 downto 0);
begin
tt : two_19 port map(reset=>reset, clkin=>clk, clkout=>clki);
gr1 : GestureRecognizer port map ( i1=>i1,i2=>i2,i3=>i3,i4=>i4,clk=>clki,reset=>reset,rl=>rl,lr=>lr,bt=>bt,tb=>tb);
e1  : eightbit port map ( r=>r , u=>lr , d=>rl , clk=>clki , reset=>reset);
e2  : eightbit port map ( r=>cc , u=>bt , d=>tb , clk=>clki , reset=>reset);
c <= not(cc);
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
--m1 : mario port map ( r=>r ,c=>c, i1=>i1 , i2=>i2 , i3=>i3 , i4=>i4 , clk=>clk , reset=>reset );
end raichu;				