close all;
clear all;
addpath('./function')
load('./data/gaits/stand_up_gait.mat'); % load theta, time
plot_figure = 1;
[th, dth, ddth] = joint_trajectory(theta, time, plot_figure);

th = th*180/pi;
csvwrite('./data/gaits/stand_up_gait.csv', th);
