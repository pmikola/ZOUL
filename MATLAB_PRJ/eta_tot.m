function [output] = eta_tot(lambda,omega_x,omega_F,delta_theta,delta_x,delta_z,n_zero)

D = (omega_F./omega_x).^2;
k = (2 .*pi.*n_zero)./lambda;
A = ((k.*omega_x).^2)./2;
G = (2.*delta_z)./(k.*omega_x.^2);
B = G.^2 + (D+1).^2;
F = (2.*delta_x)./(k.*omega_x.^2);
C = (D+1).*F.^2 + 2.*D.*F.*G.*sin(delta_theta) + D.*((G.^2 + D + 1).^2).*(sin(delta_theta)).^2;



output = (4.*D./B).*exp(((-A.*C)./B));

end

