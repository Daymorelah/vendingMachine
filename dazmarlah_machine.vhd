-------------------------------------
library ieee;
use ieee.std_logic_1164.all;
-------------------------------------
entity dazmarlah_machine is
port ( fifty_in, hund_in, twohund_in : in boolean ;
	fifty_out, hund_out, twohund_out, botl_out : out std_logic;
	clk, rst : in std_logic;
	signal temp: bit_vector (2 downto 0):="000" );
end dazmarlah_machine;
-------------------------------------
architecture design of dazmarlah_machine is 
	type state is ( state_0, state_1, state_2, state_3, state_4, 
	state_5, state_6, state_7,state_8, state_9);
	signal present_st, next_state : state ;
	 
begin
---------LOWER SECTION------------------
	process (rst,clk)
begin
	if (rst='1')then
	present_st <= state_0;
	elsif (clk'event and clk='1') then
	present_st <= next_state;
	end if; end process;
------UPPER SECTION-----------------------
process (fifty_in, hund_in, twohund_in, present_st)
begin
	case present_st is
	  when state_0 =>
	  fifty_out <= '0';
	  hund_out <= '0';
	  twohund_out <= '0';
	  botl_out <= '0';
	  if (fifty_in) then next_state <= state_1;
	  elsif (hund_in) then next_state <= state_2;
	  elsif (twohund_in) then next_state<= state_3;
	  else next_state<= state_0;
	  end if;
	  when state_1 =>
	  fifty_out <= '0';
	  hund_out <= '0';
	  twohund_out <= '0';
	  botl_out <= '1';
	  next_state<= state_0;
	  when state_2 =>
	  fifty_out <= '0';
	  hund_out <= '0';
	  twohund_out <= '0';
	  botl_out <= '0';
	  if (temp<="001") then next_state <= state_4;
	  elsif (temp<="010") then next_state <= state_5;
	  else next_state<= state_0;
	  end if;
	  when state_3 =>
	  fifty_out <= '0';
	  hund_out <= '0';
	  twohund_out <= '0';
	  botl_out <= '0';
	  if (temp<="011") then next_state <= state_6;
	  elsif (temp<="100") then next_state <= state_7;
	elsif (temp<="101") then next_state <= state_8;
	elsif (temp<="110") then next_state <= state_9;
	  else next_state<= state_0;
	  end if;
	  when state_4 =>
	  fifty_out <= '1';
	  hund_out <= '0';
	  twohund_out <= '0';
	  botl_out <= '0';
	  next_state<= state_1;
	  when state_5 =>
	  fifty_out <= '0';
	  hund_out <= '0';
	  twohund_out <= '0';
	  botl_out <= '1';
	  botl_out <= '1';
	  next_state<= state_0;
	  when state_6=>
	  fifty_out <= '0';
	  hund_out <= '1';
	  twohund_out <= '0';
	  botl_out <= '0';
	  next_state<= state_5;
	  when state_7 =>
	  fifty_out <= '1';
	  hund_out <= '1';
	  twohund_out <= '0';
	  botl_out <= '0';
	  next_state<= state_1;
	  when state_8 =>
	  fifty_out <= '0';
	  hund_out <= '0';
	  twohund_out <= '0';
	  botl_out <= '1';
	  botl_out <= '1';
	  botl_out <= '1';
	  botl_out <= '1';
	  next_state<= state_0;
	  when state_9 =>
	  fifty_out <= '0';
	  hund_out <= '0';
	  twohund_out <= '1';
	  botl_out <= '0';
	  next_state<= state_0; end case; end process; end design;
	