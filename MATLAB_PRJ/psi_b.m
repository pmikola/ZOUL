function [output] = psi_b(omega_x,omega_y)
output = @(x,y) abs(sqrt(2./pi.*omega_x.*omega_y).*exp(-((x.^2)./omega_x.^2)).*exp(-((y.^2)./omega_y.^2))).^2;
end

