@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim TEST_MUX_Four_1_behav -key {Behavioral:sim_1:Functional:TEST_MUX_Four_1} -tclbatch TEST_MUX_Four_1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
