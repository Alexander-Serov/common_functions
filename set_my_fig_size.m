%% Set a correct figure size for a scientific journal.
% Input:
%   Figure handle.
%   If the second argument is provided, it sets the [width, height] of the image in px.
% Be careful, because the result depends on the screen resolution and operating system.

function set_my_fig_size(fig_hand, dimensions)

%% Constants
a = 800;



%% Selecting size based on whether the second argument is provided
switch nargin
    case 1
        fig_size = [1.4*a, a];
    case 2
        fig_size = dimensions;
end;



%% Apply changes to the figure
set(fig_hand, 'Units', 'points');
current_position = get(fig_hand, 'Position');
set(fig_hand, 'Position', ([current_position(1:2), fig_size]));












