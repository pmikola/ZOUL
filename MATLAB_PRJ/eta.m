function [output] = eta(omega_F,omega_x,omega_y)

psi_b_prim = psi_b(omega_x,omega_y);
psi_F_prim = psi_F(omega_F);

psi_b_bis = integral2(psi_b_prim,-omega_F,omega_F,-omega_F,omega_F);
psi_F_bis = integral2(psi_F_prim,-omega_F,omega_F,-omega_F,omega_F);

pre_umerator = @(x,y) sqrt(2./pi).*( 1 ./ omega_F ).* exp(-(((x.^2) + (y.^2))./(omega_F.^2)))...
.*sqrt(2./pi.*omega_x.*omega_y).*exp(-((x.^2)./omega_x.^2)).*exp(-((y.^2)./omega_y.^2));

denominator = psi_b_bis .* psi_F_bis;
numerator = abs(integral2(pre_umerator,-omega_F,omega_F,-omega_F,omega_F)).^2;

output = numerator ./ denominator;

end

