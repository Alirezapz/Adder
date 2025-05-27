clear; clc; close all;

%% Generics & Constants

inputWidth = 16;
outputWidth = 20;

batchNum = 10;
dataNum = 5;

%% Input Generation

dataIn = % ToDo

inputFile = fopen('input_data.txt', 'w');
fprintf(inputFile, '%d\t%d\t%d\n', zeros(3, 100));

% ToDo

fprintf(inputFile, '%d\t%d\t%d\n', zeros(3, 100));
fclose(inputFile);

%% Matlab Ouput

dataOutMatlab = % ToDo

%% Simulation

appendText = % ToDo
fid = fopen('../tcl/Adder.tcl', 'r');

lines = {};
while ~feof(fid)
    line = fgetl(fid);
    if contains(line, 'vsim') 
        line = [line, appendText]; 
    end
    lines{end+1} = line; 
end
fclose(fid);

fid = fopen('run.tcl', 'w');
fprintf(fid, '%s\n', lines{:});
fclose(fid);

!start vsim -do run.tcl

%% Output Validation

outputFile = fopen('output_data.txt', 'r');
dataOutVhdl = fscanf(outputFile, '%d');
fclose(outputFile);

error = % ToDo

plot(error)
title('Error')

if sum(error) == 0
    disp("No Error Occurred")
else
    disp("Error Occurred")
end