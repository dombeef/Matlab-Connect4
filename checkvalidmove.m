function  validmove = checkvalidmove(col, gamestate)
% checkvalidmove
% 
% This function checks if the column the player chose is full or not or if
% its within bounds
% Dominick Anatala 2017 Version 1.1
% modified for connect 4

% First checks if the move is within bounds
if col > size(gamestate, 1) || col < 1 
    validmove = false;
    return;
end

% check if the column is all full
for length = 1:size(gamestate, 2)
    if gamestate(col, length) == 0
        validmove = true;
    end
end