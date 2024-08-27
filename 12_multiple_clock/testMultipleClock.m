%% Test Multiple Clock
clc; clear; close all;
addpath("../")

%% Inputs
dataIn = (1:1:50)';
validIn = true(size(dataIn));
clockRatio = 8;

expectedOut = false(length(dataIn)*clockRatio, 1);

for i=1:clockRatio:length(expectedOut)
    expectedOut(i:i+clockRatio-1, 1) = dec2binl(dataIn((i+clockRatio-1)/clockRatio), clockRatio);
    expectedOut(i:i+clockRatio-1, 1) = flip(expectedOut(i:i+clockRatio-1, 1));
end

%% Simulation Time
fs = 100e6;                 % Sampling frequency
latency = 50/fs;             % Algorithm latency. Delay between input and output
stopTime = (length(dataIn)-1)/(fs/8) + latency;

%% Run the simulation
model_name = "HDLMultipleClock";

load_system(model_name);
simOut = sim(model_name);

dataOut = get(simOut, "dataOut");
validOut = get(simOut, "validOut");

%% Compare with MATLAB reference algorithm

out = dataOut(validOut == true);
assert(isequal(out, expectedOut));
disp("Test Successful!");

%% Generate output file
fileName = "data.mem";

% Since dataIn and dataOut need to have the same size, repeat the input
% data clockRatio times
dataIn = repmat(dataIn.', clockRatio, 1);
dataIn = dataIn(:);

validIn = true(size(dataIn));

input = {validIn; dataIn; validOut; dataOut};
bitLen = [1; 8; 1; 1];
header = "validIn,dataIn,validOut,dataOut";
createVivadoDataFile(fileName, input, bitLen, header, ","); 
