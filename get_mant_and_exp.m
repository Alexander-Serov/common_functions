%% Extract the mantissa and the exponent of a number
% Input: 
%   A real number
% Output:
%   The mantissa and the exponent


function [mant, expnt] = get_mant_and_exp(numb)
    sgn = sign(numb);
    expnt = fix(log10(abs(numb)));
    mant = sgn * 10^(log10(abs(numb))-expnt);
    if abs(mant) < 1
        mant = mant * 10;
        expnt = expnt - 1;
    end
end