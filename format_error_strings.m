%% Format mean and error to the same precision and outputs strings.
% Extra digits are kept for errors lying in the interval [0.10; 0.135] * 10^x.
% The numbers in this interval are considered requiring additional significant digits.
% Input: 
%   Mean and error as real numbers
% Output: 
%   Formatted strings for the mean and corresponding error


function [str_mean, str_std] = format_error_strings(flt_mean, flt_std)

%% Initialize
str_mean = '';
str_std = '';
int_keep_extra_digit = 0;



%% Determine the scale of the standard error
[mant, expnt] = get_mant_and_exp(flt_std);



%% Determine if an extra digit should be kept
% This defines the interval [0.10; 0.135] of mantissas requiring extra precision.
if mant >= 1 && mant < 1.35
    int_keep_extra_digit = 1;
end;



%% Format the error string for output
% Calculate number of digits to output.
num_digits = -expnt + int_keep_extra_digit;     
% Positive if the output number is not integer.
if num_digits >= 0                              
    format = sprintf('%%.%if', num_digits);     
else
    % If negative, the output number will be integer and needs to be rounded.
    format = '%.0f';
    flt_std = round(flt_std, num_digits);       
end;
% Create the error output string.
str_std = sprintf(format, flt_std);             



%% Format the output string for the mean 
% Check that at least one significant digit will be kept
[~, expnt] = get_mant_and_exp(flt_mean);        
% Keep at least one significan digit in the mean
num_digits = max([- expnt, num_digits]);        
flt_mean = round(flt_mean, num_digits);         
format = sprintf('%%.%if', num_digits);         
str_mean = sprintf(format, flt_mean);           



end                                             
















