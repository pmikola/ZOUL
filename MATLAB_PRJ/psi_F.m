function [output] = psi_F(omega_F)
output = @(x,y) abs(sqrt(2./pi).*( 1 ./ omega_F ).* exp(-(((x.^2) + (y.^2))./(omega_F.^2)))).^2;
end

