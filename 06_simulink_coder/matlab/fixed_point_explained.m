% En este código se explica rápidamente como interpretar y trabajar con
% números con punto fijo.

% Un número punto fijo en Matlab se puede representar con la función 
%   fi(value, signed bit, total word length, fraction bits)

clc; clear; close all;
format long

%% Ejemplo sin signo
% Este es un número con 12 bits que representan la fracción, y 4 bits que
% representan la parte entera, sin signo
a_fxp = fi(8.123456789, 0, 16, 12)  % 8.123535156
a_bin = bin(a_fxp) % 1000000111111010

% El cálculo para pasar de binario a decimal, es muy parecido al que se usa
% para números enteros, pero el exponente se vuelve negativo.

% Bit1  1 0 0 0 | 0  0  0  1  1  1  1  1  1  0   1   0 
% 2^x   3 2 1 0   -1 -2 -3 -4 -5 -6 -7 -8 -9 -10 -11 -12    = 8.123535156

% En vez de usar exponentes negativos, es más práctico trabajar con
% exponentes todos positivos como si fuera un número entero normal, y sumar
% todos los bits.

% Bit1  1  0  0  0  0  0  0 1 1 1 1 1 1 0 1 0 
% 2^x   15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0  = 33274

% Y el resultado "real" se puede obtener al multiplicar el número por 2^-f,
% donde "f" es la cantidad de bits fraccionarios.

a_int = int(a_fxp)
a_dec = double(a_int)*2^-12

%% Ejemplo con signo
% Este es un número con 4 bits que representan la fracción, 4 el valor
% entero, y uno el signo
b_fxp = fi(-5.123456789, 1, 9, 4) % -5.125
b_bin = bin(b_fxp)  % 110101110

% El procedimiento es el mismo que para números no signados. Sumamos todos
% los bits como si fuera un número entero (recordar restar el MSB), y luego
% multiplicamos por 2^-f.

b_int = int(b_fxp)
b_dec = double(b_int)*2^-4
