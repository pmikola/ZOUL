function [output] = eta_y(lambda,omega_F,omega_y,delta_z,delta_y)

numerator = 2.*exp(-((2.*(delta_y.^2)) ./ ((omega_F .^2) + (omega_y.^2))));
denominator = sqrt(((omega_F./omega_y + omega_y./omega_F).^2) + ((lambda.^2).*(delta_z.^2) ./ (pi.^2).*(omega_y.^2).*(omega_F.^2)));

output = numerator ./ denominator;
end

