format long g

lambda = 1.3*10^-6;
Nstep = 2.5 .* (10.^-8)./ 2:1 .* (10.^-7):5 .* (10.^-5);
Mstep = 3.5 .* (10.^-8)./ 2:1 .* (10.^-7):5 .* (10.^-5);
Ostep = 1.5 .* (10.^-8)./ 2:1 .* (10.^-7):5 .* (10.^-5);
omega_x = 2.5e-6./ 2; %Średnica x wiązki [ m ]
omega_y = 3.5e-6./ 2; % średnica y wiązki [ m ] 
omega_F = 1.5e-6./ 2; % długość sprzężenia modu [ m ]


eta_factor = eta(omega_F,omega_x,omega_y);

o = 1;
O = length(Ostep);
eta_fun_omega_F = zeros(O,1);
for k = Ostep
       eta_fun_omega_F(o) = eta(k,omega_x,omega_y);
       o = o + 1;
end

n = 1;
N = length(Nstep);
eta_fun_omega_x = zeros(N,1);
for k = Nstep
       eta_fun_omega_x(n) = eta(omega_F,k,omega_y);
       n = n + 1;
end

m = 1;
M = length(Mstep);
eta_fun_omega_y = zeros(M,1);
for k = Mstep
       eta_fun_omega_y(m) = eta(omega_F,omega_x,k);
       m = m + 1;
end
%[n,m,v] = find(psi_b_prim);
%psi_b_prim =  sort(psi_b_prim(v));

