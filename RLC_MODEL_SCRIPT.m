clc;
close all;
clear all;

%parameters

R =  2.4;
L =  300e-3;
C = 100e-6;

%supply

U = 100;
Um = sqrt(2)*U;
f = 50;
w = 2*pi*f;

%solver

T =1/f;
NumberOfSteps = 20;
StepSize= T/NumberOfSteps;

result = sim("RLC_MODEL_SIMULINK.slx", [0 2]);

fig1 = figure();
plot(result.current.time, result.current.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig1, 'Fig1.jpg');

% 2ND R VALUE

R = 100;

result = sim("RLC_MODEL_SIMULINK.slx", [0 2]);

fig2 = figure();
plot(result.current.time, result.current.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig2, 'Fig2.jpg');

% 3RD R VALUE

R = 240;

result = sim("RLC_MODEL_SIMULINK.slx", [0 2]);

fig3 = figure();
plot(result.current.time, result.current.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig3, 'Fig3.jpg');

% 2ND L VALUE

L =  300e-2;

result = sim("RLC_MODEL_SIMULINK.slx", [0 2]);

fig4 = figure();
plot(result.current.time, result.current.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig4, 'Fig4.jpg');

% 3RD L VALUE

L =  300e-1;

result = sim("RLC_MODEL_SIMULINK.slx", [0 2]);

fig5 = figure();
plot(result.current.time, result.current.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig5, 'Fig5.jpg');