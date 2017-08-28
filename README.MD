This folder contains common functions shared by my different MATLAB projects.



=== format_error_string ===

This function formats mean and error to the same precision and outputs strings.
Extra digits are kept for errors lying in the interval [0.10; 0.135] * 10^x.
The numbers in this interval are considered requiring additional significant digits.
Input: 
  Mean and error as real numbers
Output: 
  Formatted strings for the mean and corresponding error



=== get_mant_and_exp ===

Extract the mantissa and the exponent of a number
Input: 
  A real number
Output:
  The mantissa and the exponent



=== set_my_fig_size ===

Set a correct figure size for a scientific journal.
Input:
  Figure handle.
  If the second argument is provided, it sets the [width, height] of the image in px.
Be careful, because the result depends on the screen resolution and operating system.