%% Create Input File
% Creates a file readable by Vivado testbenchs
clc; clear; close all;
addpath("../");

%% Inputs
% First line of the new file
fileName = "data_in.mem";
header = "in_a;in_b;output;\n";
spacer = ',';

bitLength(1) = 16;
input{1} = [
    zeros(10, 1);
    55*ones(20, 1);
    47*ones(20, 1);
];

bitLength(2) = 16;
input{2} = [
    zeros(10, 1);
    99*ones(20, 1);
    34*ones(20, 1);
];

bitLength(3) = 16;
input{3} = [
    zeros(19, 1);
    99*55*ones(20,1);
    47*34*ones(20,1);
];

createVivadoDataFile(fileName, input, bitLength, header, spacer);


