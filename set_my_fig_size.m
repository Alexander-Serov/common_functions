

function set_my_fig_size(fig_hand, short_side)

%% Constants
a = 800;

%% Checking the number of arguments
switch nargin
    case 2
        fig_size = [1.4, 1] .* short_side;
    case 1
        fig_size = [1.4*a, a];
end;

current_position = get(fig_hand, 'Position');

set(fig_hand, 'Position', ([current_position(1:2), fig_size]));













