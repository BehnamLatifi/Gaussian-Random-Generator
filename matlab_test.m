clc;
clear;
close all;

vhdl_outputs = importdata(['C:\Users\Behnam\Desktop\fpga_tamrin\p8\','\','logfile.log']);
histogram(vhdl_outputs)