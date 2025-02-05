%%%%%%% RIAL descrete communication vs RIAL with action communicated 

%% 
clear; close all; clc; 
curve1_A = csvread("RIAL_2m_blue_down_loss.csv",2,1);
curve2_A = csvread("RIAL_2m_blue_down_n_cycles.csv",2,1);
curve3_A = csvread("RIAL_2m_blue_down_reward.csv",2,1);

curve1_B = csvread("RIAL_Action_blue_up_loss.csv",2,1);
curve2_B = csvread("RIAL_Action_blue_up_n_cycles.csv",2,1);
curve3_B =  csvread("RIAL_Action_blue_up_reward.csv",2,1);

alpha = 0.98
width = 2.2


% loss
figure('Name','RIAL_Action_comm vs RIAL-Action-Com loss')

curve1_A_smooth = smooth(curve1_A(:,2), alpha);
curve1_B_smooth = smooth(curve1_B(:,2), alpha);
hold on 
semilogy(curve1_A(:,1),curve1_A(:,2))
semilogy(curve1_B(:,1),curve1_B(:,2)) 

semilogy(curve1_A(:,1),curve1_A_smooth, 'LineWidth',width)
semilogy(curve1_B(:,1),curve1_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-loss','RIAL-Action-Com-loss','RIAL-2m-loss-lisse','RIAL-Action-Com-loss-lisse', 'Interpreter','latex')
a = xlabel('épisodes','Interpreter','latex'); a.FontSize = 15; 
b = ylabel('loss','Interpreter','latex'); b.FontSize = 15; 
title('Le loss : RIAL-2m VS RIAL-Action','Interpreter','latex','FontSize',15)
print('RIAL-2m VS RIAL-Action-Com loss','-dpng')
% n cycles
figure('Name','RIAL_Action_comm vs RIAL-Action-Com n cycles')

curve2_A_smooth = smooth(curve2_A(:,2), alpha);
curve2_B_smooth = smooth(curve2_B(:,2), alpha);
hold on 
plot(curve2_A(:,1),curve2_A(:,2))
plot(curve2_B(:,1),curve2_B(:,2)) 

plot(curve2_A(:,1),curve2_A_smooth, 'LineWidth',width)
plot(curve2_B(:,1),curve2_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-n-cycles','RIAL-Action-Com-n-cycles','RIAL-2m-n-cycles-lisse','RIAL-Action-Com-n-cycles-lisse', 'Interpreter','latex')
a = xlabel('épisodes','Interpreter','latex'); a.FontSize = 15; 
b = ylabel('n-cycles','Interpreter','latex'); b.FontSize = 15;
title('Le nombre de cycles : RIAL-2m VS RIAL-Action','Interpreter','latex','FontSize',15)
print('RIAL-2m VS RIAL-Action-Com ncycles','-dpng')

% reward 
figure('Name','RIAL_Action_comm vs RIAL-Action-Com reward')

curve3_A_smooth = smooth(curve3_A(:,2), alpha);
curve3_B_smooth = smooth(curve3_B(:,2), alpha);
hold on 
plot(curve3_A(:,1),curve3_A(:,2))
plot(curve3_B(:,1),curve3_B(:,2)) 

plot(curve3_A(:,1),curve3_A_smooth, 'LineWidth',width)
plot(curve3_B(:,1),curve3_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-récompense','VDN-Qvalues-récompense','RIAL-2m-récompense-lisse','VDN-Qvalues-récompense-lisse', 'Interpreter','latex','Location','southeast')
a = xlabel('épisodes','Interpreter','latex'); a.FontSize = 15; 
b = ylabel('récompense','Interpreter','latex'); b.FontSize = 15;
title('La recompense : RIAL-2m VS RIAL-Action','Interpreter','latex','FontSize',15)
print('RIAL-2m VS RIAL-Action-Com reward','-dpng')

%% VDN vs RIAL 2m 
clear; close all; clc; 
curve1_A = csvread("RIAL_2m_blue_down_loss.csv",2,1);
curve2_A = csvread("RIAL_2m_blue_down_n_cycles.csv",2,1);
curve3_A = csvread("RIAL_2m_blue_down_reward.csv",2,1);

curve1_B = csvread("VDN_test_loss.csv",2,1);
curve2_B = csvread("VDN_no_com_n_cycles.csv",2,1);
curve3_B =  csvread("VDN_No_com_reward.csv",2,1);

alpha = 0.98
width = 2.2


% loss
figure('Name','RIAL_Action_comm vs RIAL-Action-Com loss')

curve1_A_smooth = smooth(curve1_A(:,2), alpha);
curve1_B_smooth = smooth(curve1_B(:,2), alpha);
hold on 
semilogy(curve1_A(:,1),curve1_A(:,2))
semilogy(curve1_B(:,1),curve1_B(:,2)) 

semilogy(curve1_A(:,1),curve1_A_smooth, 'LineWidth',width)
semilogy(curve1_B(:,1),curve1_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-loss','VDN-loss','RIAL-2m-loss-lisse','VDN-loss-lisse', 'Interpreter','latex')
a = xlabel('épisodes','Interpreter','latex'); a.FontSize = 15; 
b = ylabel('loss','Interpreter','latex'); b.FontSize = 15; 
title('Le loss : RIAL-2m VS VDN','Interpreter','latex','FontSize',15)
print('RIAL-2m VS VDN loss','-dpng')
% n cycles
figure('Name','RIAL_Action_comm vs RIAL-Action-Com n cycles')

curve2_A_smooth = smooth(curve2_A(:,2), alpha);
curve2_B_smooth = smooth(curve2_B(:,2), alpha);
hold on 
plot(curve2_A(:,1),curve2_A(:,2))
plot(curve2_B(:,1),curve2_B(:,2)) 

plot(curve2_A(:,1),curve2_A_smooth, 'LineWidth',width)
plot(curve2_B(:,1),curve2_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-n-cycles','VDN-n-cycles','RIAL-2m-n-cycles-lisse','VDN-n-cycles-lisse', 'Interpreter','latex')
a = xlabel('épisodes','Interpreter','latex'); a.FontSize = 15; 
b = ylabel('n-cycles','Interpreter','latex'); b.FontSize = 15; 
title('Le nombre de cycles : RIAL-2m VS VDN','Interpreter','latex','FontSize',15)
print('RIAL-2m VS VDN ncycles','-dpng')

% reward 
figure('Name','RIAL_Action_comm vs RIAL-Action-Com reward')

curve3_A_smooth = smooth(curve3_A(:,2), alpha);
curve3_B_smooth = smooth(curve3_B(:,2), alpha);
hold on 
plot(curve3_A(:,1),curve3_A(:,2))
plot(curve3_B(:,1),curve3_B(:,2)) 

plot(curve3_A(:,1),curve3_A_smooth, 'LineWidth',width)
plot(curve3_B(:,1),curve3_B_smooth, 'LineWidth',width)
grid on 
legend('RIAL-2m-récompense','VDN-récompense','RIAL-2m-récompense-lisse','VDN-récompense-lisse', 'Interpreter','latex','Location','southeast')
a = xlabel('épisodes','Interpreter','latex'); a.FontSize = 15; 
b = ylabel('récompense','Interpreter','latex'); b.FontSize = 15; 
title('La recompense : RIAL-2m VS VDN','Interpreter','latex','FontSize',15)
print('RIAL-2m VS VDN reward','-dpng')