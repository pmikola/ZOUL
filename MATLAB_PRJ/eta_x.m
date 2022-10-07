function [output] = eta_x(lambda,omega_F,omega_x,delta_z,delta_x)

numerator = 2.*exp(-((2.*(delta_x.^2)) ./ ((omega_F .^2) + (omega_x.^2))));
denominator = sqrt(((omega_F./omega_x + omega_x./omega_F).^2) + ((lambda.^2).*(delta_z.^2) ./ (pi.^2).*(omega_x.^2).*(omega_F.^2)));

output = numerator ./ denominator;

end