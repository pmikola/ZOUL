function [output] = eta_theta(lambda,delta_theta,omega_F,omega_x)

output = exp(-((2.*pi.^2)./lambda.^2).*(((delta_theta.^2).*(omega_F.^2).*(omega_x.^2))./(omega_F.^2+omega_x.^2)));

end

