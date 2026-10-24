clear; clc; close all

%% ERROR ISO_SS_UNI

ea = 1.713673082482910;

figure('Name','Error vs N DOFs','NumberTitle','off');
% Ferreira
name_1 = 'Ferreira';
X = [75 243 867 3267 12675];
Y = [1.456996 1.640222 1.687585 1.699526 1.702517];
plot(X,Y,'-o')
grid on 
grid minor
hold on
xlabel('N DOFs')
ylabel('||E_{r}|| (%)')
legend(name_1)
ylim([0 10])

%% ERROR ISO_CL_UNI

ea = 0.390225679186014;