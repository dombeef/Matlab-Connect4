function  gamestate = placemove(col, gamestate, player)
% placemove
% 
% Created to place move onto board, basically by dropping piece down to
% lowest possible place
% 
% Dominick Anatala 2017 Version 1.0

for length = 1:size(gamestate,1)
    if gamestate(length, col) ~= 0 && length ~= 1
        row = length - 1;
        gamestate(row, col) = player;
        break;
    end
    
    if length == size(gamestate,1) && gamestate(length,col) == 0
        gamestate(length, col) = player;
    end
        
end