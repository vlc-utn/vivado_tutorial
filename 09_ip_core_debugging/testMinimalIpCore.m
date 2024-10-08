%% Test Minimal Ip Core
clc; clear; close all;
addpath("../")

%% Inputs
dataInA = [
    zeros(5, 1);
    2*ones(5, 1);
    3*ones(5, 1);
    4*ones(5, 1);
];

dataInB = [
    zeros(5, 1);
    5*ones(5, 1);
    6*ones(5, 1);
    7*ones(5, 1);
];

expectedOutATimesB = [
    zeros(5, 1);
    zeros(2, 1); % Two delays
    2*5*ones(5, 1);
    3*6*ones(5, 1);
    4*7*ones(5, 1);
];

expectedOutAPlusB = [
    zeros(5, 1);
    zeros(2, 1); % Two delays
    (2+5)*ones(5, 1);
    (3+6)*ones(5, 1);
    (4+7)*ones(5, 1);
];

%% Simulation Time
fs = 100e6;                 % Sampling frequency
latency = 2/fs;             % Algorithm latency. Delay between input and output
stopTime = (length(dataInA)-1)/fs + latency;

%% Run the simulation
model_name = "minimalIpCore";

load_system(model_name);
simOut = sim(model_name);

outATimesB = get(simOut, "aTimesB");
outAPlusB = get(simOut, "aPlusB");

%% Compare with MATLAB reference algorithm
assert(isequal(expectedOutAPlusB, outAPlusB));
assert(isequal(expectedOutATimesB, outATimesB));

disp("Test Successful!");

%% Generate output file
fileName = "data.mem";
input = {dataInA; dataInB; outATimesB; outAPlusB};
bitLen = [8; 8; 16; 9];
header = "dataInA,dataInB,outATimesB,outAPlusB";
createVivadoDataFile(fileName, input, bitLen, header, ","); 
