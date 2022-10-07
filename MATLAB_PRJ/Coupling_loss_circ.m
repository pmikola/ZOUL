lambda = 1.3e-6;
Nstep = 2.5 .* (10.^-8)./ 2:1 .* (10.^-7):5 .* (10.^-5);
Mstep = 3.5 .* (10.^-8)./ 2:1 .* (10.^-7):5 .* (10.^-5);
Ostep = 1.5 .* (10.^-8)./ 2:1 .* (10.^-7):5 .* (10.^-5);
omega_x = 3.5e-6./2; %Średnica x wiązki [ m ]
%omega_y = 2.5 .* 1e-7./ 2 : 0.1976e-7 : 1e-5; %Średnica y wiązki [ m ] 

omega_F = 4.5e-6./ 2; % długość sprzężenia modu [ m ]

delta_theta = deg2rad(0.5);%[deg2rad(0),deg2rad(1.5),deg2rad(3)]; % odchylenie osi włókna pod kątem względem osi soczewki (theta)
delta_x = 0.5e-6;%1.5 .* (10.^-6)./ 2; % odsunięcie soczewki w poprzek osi optycznej dx
delta_y = 0;%1.5 .* (10.^-6)./ 2; % odsunięcie soczewki w poprzek osi optycznej dy
delta_z = 1e-6;%1.5 .* (10.^-6)./ 2; % odsunięcie soczewki wzdłuż osi optycznej dz

%eta_x_var = eta_x(lambda,omega_F,omega_x,delta_z,delta_x);
%eta_y_var = eta_x(lambda,omega_F,omega_y,delta_z,delta_y);
%eta_theta_var = eta_theta(lambda,delta_theta,omega_F,omega_x);

n_zero = 1;

fi_tot = zeros(length(omega_F),length(omega_x));

for c2 = 1:length(delta_theta)
    for c1 = 1:length(omega_F)
        eta_total = eta_tot(lambda,omega_x(c2),omega_F(c1),delta_theta,delta_x,delta_z,n_zero);
        fi_tot(c1,c2) = -log(eta_tot(lambda,omega_x(c2),omega_F(c1),delta_theta,delta_x,delta_z,n_zero)); % [ loss in dB] ]
    end
end


