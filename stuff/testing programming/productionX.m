function [ rateX ] = productionX( Y, Kyx )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
beta = 1; % maximum rate
n = 9999999999 % Hill coefficient
rateX = beta * Kyx^n / (Y + Kyx)^n;

return