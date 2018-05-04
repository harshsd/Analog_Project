library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
package lab is
	component D_FF is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	component taala is
			port ( i1, i2, i3, i4, clk, reset : in std_logic; Q, led0, led1, led2 : out std_logic);
	end component;
	component dbtwo is
  	        port (inclk, reset: in std_logic; outclk: out std_logic);
	end component;
	component db is
  	        port (inclk, reset: in std_logic; outclk: out std_logic);
	end component;
	component Debouncer is
	port (x, clk, reset: in std_logic; y, z, i: out std_logic);
	end component;
	
end lab;

library work;
use work.lab.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity dbtwo is
  port (inclk, reset: in std_logic; outclk: out std_logic);
end entity;
architecture struct of dbtwo is

signal nq, q: std_logic;
begin
nq<=(not(q) and not (reset));
D_FF1 : D_FF port map ( D => nq, CLK => inclk, reset=>reset, Q => q);
outclk<= q and not(reset);
end struct;

library work;
use work.lab.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity db is
port (inclk, reset: in std_logic; outclk: out std_logic);
end entity;
architecture struct of db is
signal Z: std_logic_vector(23 downto 0);
begin
Z(0)<=inclk;
Q1: for I in 0 to 22 generate
dbtwox : dbtwo port map(inclk => Z(I),reset => reset,outclk => Z(I+1));
end generate;
outclk<=Z(23);
end struct;

library work;
use work.lab.all;
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
use work.lab.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity taala is
		port (i1, i2, i3, i4, clk, reset : in std_logic; Q, led0, led1, led2 : out std_logic);
end entity;
architecture LOCK of taala is
signal qq2,qq1,qq0,nq,qq,ledd,nq2, nq1, nq0 , q2, q1, q0,led : std_logic;
begin
qq2 <= not(q2);
qq1 <= not(q1);
qq0 <= not(q0);
nq2 <= (((not(q2) and q1 and q0 and i4) or (q2 and not(q1) and not(q0) and (i2 or i4)) or (not(i4) and not(i3) and not(i2) and not(i1) and q2) or (q2 and not(q1) and q0 and i1) or (q2 and qq1 and q0 and i2)) and not(reset));
nq1 <= (((not(q2) and not(q1) and q0 and i2) or (not(q2) and q1 and not(q0) and (i3 or i2)) or (not(i4) and not(i3) and not(i2) and not(i1) and q1) or (q2 and not(q1) and q0 and i1) or (qq2 and q1 and qq0 and i2) or (qq2 and q1 and q0 and i3) ) and not(reset));
nq0 <= (((not(q2) and not(q1) and not(q0) and i1) or (not(q2) and not(q1) and q0 and i1)or (not(q2) and q1 and not(q0) and i3) or(q2 and not(q1) and not(q0) and i2) or (not(i4) and not(i3) and not(i2) and not(i1) and q0) or (not(q2) and not(q1) and q0 and i1) or (q2 and qq1 and q0 and i2) or (qq2 and q1 and q0 and i3) )and not(reset));
ledd<= (q2 and not(q1) and q0 and i1) or (q2 and q1 and not(q0));
	D_FF2 : D_FF port map ( D => nq2, CLK => clk, reset => reset, Q => q2); 
	D_FF1 : D_FF port map ( D => nq1, CLK => clk, reset => reset, Q => q1);
	D_FF0 : D_FF port map ( D => nq0, CLK => clk, reset => reset, Q => q0); 
	--D_FF3 : D_FF port map ( D => nq , CLK => ledd , reset => reset , Q => qq);
--Q <= qq;	
--nq <= not(qq);
Q<=ledd;
led1<=q1;
led0<=q0;
led2<=q2;
end LOCK;

library work;
use work.lab.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity lock is
	port (i1, i2, i3, i4, clk, reset : in std_logic; Q, led0, led1, led2 : out std_logic);
end entity;
architecture chaabi of lock is
signal clki,Q1,Q2,nq,qq : std_logic;
begin
tt: db port map(reset=>reset, inclk=>clk, outclk=>clki);
key : taala port map ( i1=>i1, i2=>i2, i3=>i3, i4=>i4, clk=>clki, reset=>reset, Q=>Q1, led0=>led0, led1=>led1, led2=>led2);
dff : D_FF port map (D => nq, CLK =>Q1 , reset=>reset , Q=>qq);
Q <= qq;
nq <= not(qq);
end chaabi;

