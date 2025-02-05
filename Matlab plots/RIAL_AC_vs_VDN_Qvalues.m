%%%%%%% RIAL Action communicated vs VDN with Qvalues communicated 

%%% Matlab plots RIAL_2M vs RIAL_Qvales
%% 
clear; close all; clc; 
curve1_A = csvread("RIAL_2m_blue_down_loss.csv",2,1);
curve2_A = csvread("RIAL_2m_blue_down_n_cycles.csv",2,1);
curve3_A = csvread("RIAL_2m_blue_down_reward.csv",2,1);

curve1_B = csvread("VDN_Qvalues_loss.csv",2,1);
curve2_B = csvread("VDN_Qvalues_n_cycles.csv",2,1);
curve3_B =  csvread("VDN_Qvalues_reward.csv",2,1);

alpha = 0.98
width = 2.2


% loss
figure('Name','RIAL_Action_comm vs VDN Qvalues loss')

curve1_A_smooth = smooth(curve1_A(:,2), alpha);
curve1_B_smooth = smooth(curve1_B(:,2), alpha);
hold on 
semilogy(curve1_A(:,1),curve1_A(:,2))
semilogy(curve1_B(:,1),curve1_B(:,2)) 

semilogy(curve1_A(:,1),curve1_A_smooth, 'LineWidth',width)
semilogy(curve1_B(:,1),curve1_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-loss','VDN-Qvalues-loss','RIAL-2m-loss-lisse','VDN-Qvalues-loss-lisse', 'Interpreter','latex')
xlabel('épisodes','Interpreter','latex')
ylabel('loss','Interpreter','latex')
title('Le loss : RIAL-2m VS VDN-Qvalues','Interpreter','latex')
print('RIAL-2m VS VDN-Qvalues loss','-dpng')
% n cycles
figure('Name','RIAL_Action_comm vs VDN Qvalues n cycles')

curve2_A_smooth = smooth(curve2_A(:,2), alpha);
curve2_B_smooth = smooth(curve2_B(:,2), alpha);
hold on 
plot(curve2_A(:,1),curve2_A(:,2))
plot(curve2_B(:,1),curve2_B(:,2)) 

plot(curve2_A(:,1),curve2_A_smooth, 'LineWidth',width)
plot(curve2_B(:,1),curve2_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-n-cycles','VDN-Qvalues-n-cycles','RIAL-2m-n-cycles-lisse','VDN-Qvalues-n-cycles-lisse', 'Interpreter','latex')
xlabel('épisodes','Interpreter','latex')
ylabel('n-cycles','Interpreter','latex')
title('Le nombre de cycles : RIAL-2m VS VDN-Qvalues','Interpreter','latex')
print('RIAL-2m VS VDN-Qvalues ncycles','-dpng')

% reward 
figure('Name','RIAL_Action_comm vs VDN Qvalues reward')

curve3_A_smooth = smooth(curve3_A(:,2), alpha);
curve3_B_smooth = smooth(curve3_B(:,2), alpha);
hold on 
plot(curve3_A(:,1),curve3_A(:,2))
plot(curve3_B(:,1),curve3_B(:,2)) 

plot(curve3_A(:,1),curve3_A_smooth, 'LineWidth',width)
plot(curve3_B(:,1),curve3_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-récompense','VDN-Qvalues-récompense','RIAL-2m-récompense-lisse','VDN-Qvalues-récompense-lisse', 'Interpreter','latex','Location','southeast')
xlabel('épisodes','Interpreter','latex')
ylabel('récompense','Interpreter','latex')
title('La récompense : RIAL-2m VS VDN-Qvalues','Interpreter','latex')
print('RIAL-2m VS VDN-Qvalues reward','-dpng')