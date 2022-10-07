format long g

lambda = 1.3.*(10^-6);
Nstep = 2.5 .* 1e-8./ 2:1 .* 1e-7:5 .* 1e-5;
Mstep = 3.5 .* 1e-8./ 2:1 .* 1e-7:5 .* 1e-5;
Ostep = 1.5 .* 1e-8./ 2:1 .* 1e-7:5 .* 1e-5;
omega_x = 1.5 .* 1e-6./ 2; %Średnica x wiązki [ m ]
omega_y = 3.5 .* 1e-6./ 2; %Średnica y wiązki [ m ] 
omega_F = 2.5 .* 1e-6./ 2; % długość sprzężenia modu [ m ]

delta_theta = deg2rad(0.5); % odchylenie osi włókna pod kątem względem osi soczewki (theta)
delta_x = 0.5e-6;%1.5 .* (10.^-6)./ 2; % odsunięcie soczewki w poprzek osi optycznej dx
delta_y = 0.25e-6;%1.5 .* (10.^-6)./ 2; % odsunięcie soczewki w poprzek osi optycznej dy
delta_z = 1e-6;%1.5 .* (10.^-6)./ 2; % odsunięcie soczewki wzdłuż osi optycznej dz

eta_e = zeros(length(omega_F),length(transpose(omega_x)));

for c1 = 1:length(omega_F)
    for c = 1:length(omega_x)
        eta_x_var = eta_x(lambda,omega_F(c1),omega_x(c),delta_z,delta_x);
        eta_y_var = eta_y(lambda,omega_F(c1),omega_y,delta_z,delta_y);
        eta_theta_var = eta_theta(lambda,delta_theta,omega_F(c1),omega_x(c));
        
        eta_e(c1,c) = eta_x_var.*eta_y_var.*eta_theta_var;
    end
end
