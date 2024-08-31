%% Test Minimal Ip Core
clc; clear; close all;
addpath("../")

%% Inputs
dataIn = [
    2*ones(4, 1);
    3*ones(4, 1);
    4*ones(4, 1);
];

validIn = true(size(dataIn));

first = [false(16, 1); true];

expectedOut = [
    2; 4; 6; 8;
    9; 10; 11; 12;
    13; 14; 15; 255;
];

%% Simulation Time
fs = 100e6;                 % Sampling frequency
latency = 50/fs;             % Algorithm latency. Delay between input and output
stopTime = (length(dataIn)-1)/fs + latency;

%% Run the simulation
model_name = "HDLAXI4Stream";

load_system(model_name);
simOut = sim(model_name);

dataOut = get(simOut, "dataOut");
validOut = get(simOut, "validOut");

%% Compare with MATLAB reference algorithm
dataOut = dataOut(validOut == true);
assert(isequal(expectedOut, dataOut));

disp("Test Successful!");

%% Generate input file
fileName = "data_in.mem";
input = {dataIn;};
bitLen = 8;
header = "dataIn";
createVivadoDataFile(fileName, input, bitLen, header, ",");

%% Generate output file
fileName = "data_out.mem";
input = {dataOut;};
bitLen = 8;
header = "dataOut";
createVivadoDataFile(fileName, input, bitLen, header, ",");


