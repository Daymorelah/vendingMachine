-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/04/2015 06:50:27"
                                                                        
-- Vhdl Self-Checking Test Bench (with test vectors) for design :       dazmarlah_machine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

LIBRARY STD;                                                            
USE STD.textio.ALL;                                                     

PACKAGE dazmarlah_machine_vhd_tb_types IS
-- input port types                                                       
-- output port names                                                     
CONSTANT botl_out_name : STRING (1 TO 8) := "botl_out";
CONSTANT fifty_out_name : STRING (1 TO 9) := "fifty_out";
CONSTANT hund_out_name : STRING (1 TO 8) := "hund_out";
CONSTANT twohund_out_name : STRING (1 TO 11) := "twohund_out";
-- n(outputs)                                                            
CONSTANT o_num : INTEGER := 4;
-- mismatches vector type                                                
TYPE mmvec IS ARRAY (0 to (o_num - 1)) OF INTEGER;
-- exp o/ first change track vector type                                     
TYPE trackvec IS ARRAY (1 to o_num) OF BIT;
-- sampler type                                                            
SUBTYPE sample_type IS STD_LOGIC;                                          
-- utility functions                                                     
FUNCTION std_logic_to_char (a: STD_LOGIC) RETURN CHARACTER;              
FUNCTION std_logic_vector_to_string (a: STD_LOGIC_VECTOR) RETURN STRING; 
PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC; justified: IN SIDE:= RIGHT; field:IN WIDTH:=0);                                               
PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC_VECTOR; justified: IN SIDE:= RIGHT; field:IN WIDTH:=0);                                        
PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC; real_value : IN STD_LOGIC);                                   
PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC_VECTOR; real_value : IN STD_LOGIC_VECTOR);                     

END dazmarlah_machine_vhd_tb_types;

PACKAGE BODY dazmarlah_machine_vhd_tb_types IS
        FUNCTION std_logic_to_char (a: STD_LOGIC)  
                RETURN CHARACTER IS                
        BEGIN                                      
        CASE a IS                                  
         WHEN 'U' =>                               
          RETURN 'U';                              
         WHEN 'X' =>                               
          RETURN 'X';                              
         WHEN '0' =>                               
          RETURN '0';                              
         WHEN '1' =>                               
          RETURN '1';                              
         WHEN 'Z' =>                               
          RETURN 'Z';                              
         WHEN 'W' =>                               
          RETURN 'W';                              
         WHEN 'L' =>                               
          RETURN 'L';                              
         WHEN 'H' =>                               
          RETURN 'H';                              
         WHEN '-' =>                               
          RETURN 'D';                              
        END CASE;                                  
        END;                                       

        FUNCTION std_logic_vector_to_string (a: STD_LOGIC_VECTOR)       
                RETURN STRING IS                                        
        VARIABLE result : STRING(1 TO a'LENGTH);                        
        VARIABLE j : NATURAL := 1;                                      
        BEGIN                                                           
                FOR i IN a'RANGE LOOP                                   
                        result(j) := std_logic_to_char(a(i));           
                        j := j + 1;                                     
                END LOOP;                                               
                RETURN result;                                          
        END;                                                            

        PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC; justified: IN SIDE:=RIGHT; field:IN WIDTH:=0) IS 
        BEGIN                                                           
                write(L,std_logic_to_char(VALUE),JUSTIFIED,field);      
        END;                                                            
                                                                        
        PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC_VECTOR; justified: IN SIDE:= RIGHT; field:IN WIDTH:=0) IS                           
        BEGIN                                                               
                write(L,std_logic_vector_to_string(VALUE),JUSTIFIED,field); 
        END;                                                                

        PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC; real_value : IN STD_LOGIC) IS                               
        VARIABLE txt : LINE;                                              
        BEGIN                                                             
        write(txt,string'("ERROR! Vector Mismatch for output port "));  
        write(txt,output_port_name);                                      
        write(txt,string'(" :: @time = "));                             
        write(txt,NOW);                                                   
		writeline(output,txt);                                            
        write(txt,string'("     Expected value = "));                   
        write(txt,expected_value);                                        
		writeline(output,txt);                                            
        write(txt,string'("     Real value = "));                       
        write(txt,real_value);                                            
        writeline(output,txt);                                            
        END;                                                              

        PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC_VECTOR; real_value : IN STD_LOGIC_VECTOR) IS                 
        VARIABLE txt : LINE;                                              
        BEGIN                                                             
        write(txt,string'("ERROR! Vector Mismatch for output port "));  
        write(txt,output_port_name);                                      
        write(txt,string'(" :: @time = "));                             
        write(txt,NOW);                                                   
		writeline(output,txt);                                            
        write(txt,string'("     Expected value = "));                   
        write(txt,expected_value);                                        
		writeline(output,txt);                                            
        write(txt,string'("     Real value = "));                       
        write(txt,real_value);                                            
        writeline(output,txt);                                            
        END;                                                              

END dazmarlah_machine_vhd_tb_types;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

USE WORK.dazmarlah_machine_vhd_tb_types.ALL;                                         

ENTITY dazmarlah_machine_vhd_sample_tst IS
PORT (
	clk : IN STD_LOGIC;
	fifty_in : IN STD_LOGIC;
	hund_in : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	temp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	twohund_in : IN STD_LOGIC;
	sampler : OUT sample_type
	);
END dazmarlah_machine_vhd_sample_tst;

ARCHITECTURE sample_arch OF dazmarlah_machine_vhd_sample_tst IS
SIGNAL tbo_int_sample_clk : sample_type := '-';
SIGNAL current_time : TIME := 0 ps;
BEGIN
t_prcs_sample : PROCESS ( clk , fifty_in , hund_in , rst , temp , twohund_in )
BEGIN
	IF (NOW > 0 ps) THEN
		IF (NOW > 0 ps) AND (NOW /= current_time) THEN
			IF (tbo_int_sample_clk = '-') THEN
				tbo_int_sample_clk <= '0';
			ELSE
				tbo_int_sample_clk <= NOT tbo_int_sample_clk ;
			END IF;
		END IF;
		current_time <= NOW;
	END IF;
END PROCESS t_prcs_sample;
sampler <= tbo_int_sample_clk;
END sample_arch;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

LIBRARY STD;                                                            
USE STD.textio.ALL;                                                     

USE WORK.dazmarlah_machine_vhd_tb_types.ALL;                                         

ENTITY dazmarlah_machine_vhd_check_tst IS 
GENERIC (
	debug_tbench : BIT := '0'
);
PORT ( 
	botl_out : IN STD_LOGIC;
	fifty_out : IN STD_LOGIC;
	hund_out : IN STD_LOGIC;
	twohund_out : IN STD_LOGIC;
	sampler : IN sample_type
);
END dazmarlah_machine_vhd_check_tst;
ARCHITECTURE ovec_arch OF dazmarlah_machine_vhd_check_tst IS
SIGNAL botl_out_expected,botl_out_expected_prev,botl_out_prev : STD_LOGIC;
SIGNAL fifty_out_expected,fifty_out_expected_prev,fifty_out_prev : STD_LOGIC;
SIGNAL hund_out_expected,hund_out_expected_prev,hund_out_prev : STD_LOGIC;
SIGNAL twohund_out_expected,twohund_out_expected_prev,twohund_out_prev : STD_LOGIC;

SIGNAL trigger : BIT := '0';
SIGNAL trigger_e : BIT := '0';
SIGNAL trigger_r : BIT := '0';
SIGNAL trigger_i : BIT := '0';
SIGNAL num_mismatches : mmvec := (OTHERS => 0);

BEGIN

-- Update history buffers  expected /o
t_prcs_update_o_expected_hist : PROCESS (trigger) 
BEGIN
	botl_out_expected_prev <= botl_out_expected;
	fifty_out_expected_prev <= fifty_out_expected;
	hund_out_expected_prev <= hund_out_expected;
	twohund_out_expected_prev <= twohund_out_expected;
END PROCESS t_prcs_update_o_expected_hist;


-- Update history buffers  real /o
t_prcs_update_o_real_hist : PROCESS (trigger) 
BEGIN
	botl_out_prev <= botl_out;
	fifty_out_prev <= fifty_out;
	hund_out_prev <= hund_out;
	twohund_out_prev <= twohund_out;
END PROCESS t_prcs_update_o_real_hist;



-- expected botl_out
t_prcs_botl_out: PROCESS
BEGIN
	botl_out_expected <= '0';
	WAIT FOR 14999 ps;
	botl_out_expected <= '1';
	WAIT FOR 2474 ps;
	botl_out_expected <= '0';
	WAIT FOR 39526 ps;
	FOR i IN 1 TO 3
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 2474 ps;
	botl_out_expected <= '0';
	WAIT FOR 9526 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 15000 ps;
	FOR i IN 1 TO 5
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 15000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 2474 ps;
	botl_out_expected <= '0';
	WAIT FOR 9526 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 21000 ps;
	FOR i IN 1 TO 6
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 33000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 2474 ps;
	botl_out_expected <= '0';
	WAIT FOR 9526 ps;
	FOR i IN 1 TO 9
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 33000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 15128 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 14872 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 2474 ps;
	botl_out_expected <= '0';
	WAIT FOR 21526 ps;
	FOR i IN 1 TO 2
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 15000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 2474 ps;
	botl_out_expected <= '0';
	WAIT FOR 36801 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 5725 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 21000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 51000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 18275 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 5725 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 21000 ps;
	FOR i IN 1 TO 4
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 15000 ps;
	FOR i IN 1 TO 4
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 33000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 2474 ps;
	botl_out_expected <= '0';
	WAIT FOR 9526 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 15000 ps;
	FOR i IN 1 TO 2
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 24275 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 5725 ps;
	FOR i IN 1 TO 7
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 33000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 3000 ps;
	botl_out_expected <= '1';
	WAIT FOR 3000 ps;
	botl_out_expected <= '0';
	WAIT FOR 21000 ps;
	FOR i IN 1 TO 2
	LOOP
		botl_out_expected <= '1';
		WAIT FOR 3000 ps;
		botl_out_expected <= '0';
		WAIT FOR 3000 ps;
	END LOOP;
	botl_out_expected <= '1';
WAIT;
END PROCESS t_prcs_botl_out;

-- expected fifty_out
t_prcs_fifty_out: PROCESS
BEGIN
	fifty_out_expected <= '0';
WAIT;
END PROCESS t_prcs_fifty_out;

-- expected hund_out
t_prcs_hund_out: PROCESS
BEGIN
	hund_out_expected <= '0';
	WAIT FOR 530939 ps;
	hund_out_expected <= '1';
	WAIT FOR 3000 ps;
	hund_out_expected <= '0';
	WAIT FOR 117000 ps;
	hund_out_expected <= '1';
	WAIT FOR 3000 ps;
	hund_out_expected <= '0';
	WAIT FOR 213000 ps;
	hund_out_expected <= '1';
	WAIT FOR 3000 ps;
	hund_out_expected <= '0';
WAIT;
END PROCESS t_prcs_hund_out;

-- expected twohund_out
t_prcs_twohund_out: PROCESS
BEGIN
	twohund_out_expected <= '0';
	WAIT FOR 769809 ps;
	twohund_out_expected <= '1';
	WAIT FOR 3000 ps;
	twohund_out_expected <= '0';
WAIT;
END PROCESS t_prcs_twohund_out;

-- Set trigger on real/expected o/ pattern changes                        

t_prcs_trigger_e : PROCESS(botl_out_expected,fifty_out_expected,hund_out_expected,twohund_out_expected)
BEGIN
	trigger_e <= NOT trigger_e;
END PROCESS t_prcs_trigger_e;

t_prcs_trigger_r : PROCESS(botl_out,fifty_out,hund_out,twohund_out)
BEGIN
	trigger_r <= NOT trigger_r;
END PROCESS t_prcs_trigger_r;


t_prcs_selfcheck : PROCESS
VARIABLE i : INTEGER := 1;
VARIABLE txt : LINE;

VARIABLE last_botl_out_exp : STD_LOGIC := 'U';
VARIABLE last_fifty_out_exp : STD_LOGIC := 'U';
VARIABLE last_hund_out_exp : STD_LOGIC := 'U';
VARIABLE last_twohund_out_exp : STD_LOGIC := 'U';

VARIABLE on_first_change : trackvec := "1111";
BEGIN

WAIT UNTIL (sampler'LAST_VALUE = '1'OR sampler'LAST_VALUE = '0')
	AND sampler'EVENT;
IF (debug_tbench = '1') THEN
	write(txt,string'("Scanning pattern "));
	write(txt,i);
	writeline(output,txt);
	write(txt,string'("| expected "));write(txt,botl_out_name);write(txt,string'(" = "));write(txt,botl_out_expected_prev);
	write(txt,string'("| expected "));write(txt,fifty_out_name);write(txt,string'(" = "));write(txt,fifty_out_expected_prev);
	write(txt,string'("| expected "));write(txt,hund_out_name);write(txt,string'(" = "));write(txt,hund_out_expected_prev);
	write(txt,string'("| expected "));write(txt,twohund_out_name);write(txt,string'(" = "));write(txt,twohund_out_expected_prev);
	writeline(output,txt);
	write(txt,string'("| real "));write(txt,botl_out_name);write(txt,string'(" = "));write(txt,botl_out_prev);
	write(txt,string'("| real "));write(txt,fifty_out_name);write(txt,string'(" = "));write(txt,fifty_out_prev);
	write(txt,string'("| real "));write(txt,hund_out_name);write(txt,string'(" = "));write(txt,hund_out_prev);
	write(txt,string'("| real "));write(txt,twohund_out_name);write(txt,string'(" = "));write(txt,twohund_out_prev);
	writeline(output,txt);
	i := i + 1;
END IF;
IF ( botl_out_expected_prev /= 'X' ) AND (botl_out_expected_prev /= 'U' ) AND (botl_out_prev /= botl_out_expected_prev) AND (
	(botl_out_expected_prev /= last_botl_out_exp) OR
	(on_first_change(1) = '1')
		) THEN
	throw_error("botl_out",botl_out_expected_prev,botl_out_prev);
	num_mismatches(0) <= num_mismatches(0) + 1;
	on_first_change(1) := '0';
	last_botl_out_exp := botl_out_expected_prev;
END IF;
IF ( fifty_out_expected_prev /= 'X' ) AND (fifty_out_expected_prev /= 'U' ) AND (fifty_out_prev /= fifty_out_expected_prev) AND (
	(fifty_out_expected_prev /= last_fifty_out_exp) OR
	(on_first_change(2) = '1')
		) THEN
	throw_error("fifty_out",fifty_out_expected_prev,fifty_out_prev);
	num_mismatches(1) <= num_mismatches(1) + 1;
	on_first_change(2) := '0';
	last_fifty_out_exp := fifty_out_expected_prev;
END IF;
IF ( hund_out_expected_prev /= 'X' ) AND (hund_out_expected_prev /= 'U' ) AND (hund_out_prev /= hund_out_expected_prev) AND (
	(hund_out_expected_prev /= last_hund_out_exp) OR
	(on_first_change(3) = '1')
		) THEN
	throw_error("hund_out",hund_out_expected_prev,hund_out_prev);
	num_mismatches(2) <= num_mismatches(2) + 1;
	on_first_change(3) := '0';
	last_hund_out_exp := hund_out_expected_prev;
END IF;
IF ( twohund_out_expected_prev /= 'X' ) AND (twohund_out_expected_prev /= 'U' ) AND (twohund_out_prev /= twohund_out_expected_prev) AND (
	(twohund_out_expected_prev /= last_twohund_out_exp) OR
	(on_first_change(4) = '1')
		) THEN
	throw_error("twohund_out",twohund_out_expected_prev,twohund_out_prev);
	num_mismatches(3) <= num_mismatches(3) + 1;
	on_first_change(4) := '0';
	last_twohund_out_exp := twohund_out_expected_prev;
END IF;
    trigger_i <= NOT trigger_i;
END PROCESS t_prcs_selfcheck;


t_prcs_trigger_res : PROCESS(trigger_e,trigger_i,trigger_r)
BEGIN
	trigger <= trigger_i XOR trigger_e XOR trigger_r;
END PROCESS t_prcs_trigger_res;

t_prcs_endsim : PROCESS
VARIABLE txt : LINE;
VARIABLE total_mismatches : INTEGER := 0;
BEGIN
WAIT FOR 1000000 ps;
total_mismatches := num_mismatches(0) + num_mismatches(1) + num_mismatches(2) + num_mismatches(3);
IF (total_mismatches = 0) THEN                                              
        write(txt,string'("Simulation passed !"));                        
        writeline(output,txt);                                              
ELSE                                                                        
        write(txt,total_mismatches);                                        
        write(txt,string'(" mismatched vectors : Simulation failed !"));  
        writeline(output,txt);                                              
END IF;                                                                     
WAIT;
END PROCESS t_prcs_endsim;

END ovec_arch;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

LIBRARY STD;                                                            
USE STD.textio.ALL;                                                     

USE WORK.dazmarlah_machine_vhd_tb_types.ALL;                                         

ENTITY dazmarlah_machine_vhd_vec_tst IS
END dazmarlah_machine_vhd_vec_tst;
ARCHITECTURE dazmarlah_machine_arch OF dazmarlah_machine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL botl_out : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL fifty_in : STD_LOGIC;
SIGNAL fifty_out : STD_LOGIC;
SIGNAL hund_in : STD_LOGIC;
SIGNAL hund_out : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL temp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL twohund_in : STD_LOGIC;
SIGNAL twohund_out : STD_LOGIC;
SIGNAL sampler : sample_type;

COMPONENT dazmarlah_machine
	PORT (
	botl_out : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	fifty_in : IN STD_LOGIC;
	fifty_out : OUT STD_LOGIC;
	hund_in : IN STD_LOGIC;
	hund_out : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	temp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	twohund_in : IN STD_LOGIC;
	twohund_out : OUT STD_LOGIC
	);
END COMPONENT;
COMPONENT dazmarlah_machine_vhd_check_tst
PORT ( 
	botl_out : IN STD_LOGIC;
	fifty_out : IN STD_LOGIC;
	hund_out : IN STD_LOGIC;
	twohund_out : IN STD_LOGIC;
	sampler : IN sample_type
);
END COMPONENT;
COMPONENT dazmarlah_machine_vhd_sample_tst
PORT (
	clk : IN STD_LOGIC;
	fifty_in : IN STD_LOGIC;
	hund_in : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	temp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	twohund_in : IN STD_LOGIC;
	sampler : OUT sample_type
	);
END COMPONENT;
BEGIN
	i1 : dazmarlah_machine
	PORT MAP (
-- list connections between master ports and signals
	botl_out => botl_out,
	clk => clk,
	fifty_in => fifty_in,
	fifty_out => fifty_out,
	hund_in => hund_in,
	hund_out => hund_out,
	rst => rst,
	temp => temp,
	twohund_in => twohund_in,
	twohund_out => twohund_out
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 333
	LOOP
		clk <= '0';
		WAIT FOR 1500 ps;
		clk <= '1';
		WAIT FOR 1500 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- fifty_in
t_prcs_fifty_in: PROCESS
BEGIN
	FOR i IN 1 TO 166
	LOOP
		fifty_in <= '0';
		WAIT FOR 3000 ps;
		fifty_in <= '1';
		WAIT FOR 3000 ps;
	END LOOP;
	fifty_in <= '0';
	WAIT FOR 3000 ps;
	fifty_in <= '1';
WAIT;
END PROCESS t_prcs_fifty_in;

-- hund_in
t_prcs_hund_in: PROCESS
BEGIN
LOOP
	hund_in <= '0';
	WAIT FOR 2000 ps;
	hund_in <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_hund_in;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 40000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 50000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 60000 ps;
	rst <= '1';
	WAIT FOR 30000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 30000 ps;
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 50000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 40000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 30000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 70000 ps;
	rst <= '1';
	WAIT FOR 30000 ps;
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- temp[2]
t_prcs_temp_2: PROCESS
BEGIN
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 15000 ps;
	temp(2) <= '0';
	WAIT FOR 20000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 20000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 15000 ps;
	temp(2) <= '1';
	WAIT FOR 15000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 25000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 15000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 15000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 20000 ps;
	temp(2) <= '0';
	WAIT FOR 15000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 15000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 15000 ps;
	temp(2) <= '0';
	WAIT FOR 15000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 20000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 15000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 35000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 15000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 25000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 15000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 10000 ps;
	temp(2) <= '1';
	WAIT FOR 20000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 20000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 15000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 15000 ps;
	temp(2) <= '1';
	WAIT FOR 20000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 10000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
	WAIT FOR 5000 ps;
	temp(2) <= '1';
	WAIT FOR 5000 ps;
	temp(2) <= '0';
WAIT;
END PROCESS t_prcs_temp_2;
-- temp[1]
t_prcs_temp_1: PROCESS
BEGIN
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 15000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 25000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 20000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 15000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 30000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 20000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 20000 ps;
	temp(1) <= '1';
	WAIT FOR 25000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 20000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 20000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 20000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 15000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 15000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 40000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 20000 ps;
	temp(1) <= '1';
	WAIT FOR 15000 ps;
	temp(1) <= '0';
	WAIT FOR 15000 ps;
	temp(1) <= '1';
	WAIT FOR 15000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 10000 ps;
	temp(1) <= '1';
	WAIT FOR 5000 ps;
	temp(1) <= '0';
	WAIT FOR 5000 ps;
	temp(1) <= '1';
	WAIT FOR 10000 ps;
	temp(1) <= '0';
	WAIT FOR 20000 ps;
	temp(1) <= '1';
WAIT;
END PROCESS t_prcs_temp_1;
-- temp[0]
t_prcs_temp_0: PROCESS
BEGIN
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 20000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 15000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 20000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 35000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 30000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 10000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 20000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 15000 ps;
	temp(0) <= '0';
	WAIT FOR 25000 ps;
	temp(0) <= '1';
	WAIT FOR 10000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 10000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 20000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 15000 ps;
	temp(0) <= '0';
	WAIT FOR 20000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 15000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 35000 ps;
	temp(0) <= '0';
	WAIT FOR 25000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 10000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 10000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 25000 ps;
	temp(0) <= '1';
	WAIT FOR 20000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 35000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 10000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 15000 ps;
	temp(0) <= '0';
	WAIT FOR 15000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 10000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
	WAIT FOR 5000 ps;
	temp(0) <= '0';
	WAIT FOR 5000 ps;
	temp(0) <= '1';
WAIT;
END PROCESS t_prcs_temp_0;

-- twohund_in
t_prcs_twohund_in: PROCESS
BEGIN
LOOP
	twohund_in <= '0';
	WAIT FOR 4000 ps;
	twohund_in <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_twohund_in;
tb_sample : dazmarlah_machine_vhd_sample_tst
PORT MAP (
	clk => clk,
	fifty_in => fifty_in,
	hund_in => hund_in,
	rst => rst,
	temp => temp,
	twohund_in => twohund_in,
	sampler => sampler
	);

tb_out : dazmarlah_machine_vhd_check_tst
PORT MAP (
	botl_out => botl_out,
	fifty_out => fifty_out,
	hund_out => hund_out,
	twohund_out => twohund_out,
	sampler => sampler
	);
END dazmarlah_machine_arch;
