function  printgamestate(gamestate)
% printgamestate
% 
% Turns array of moves into a neat and easy to read interface in the
% command window
% 
% Dominick Anatala 2017 Version 1.1
% modified for connect4 layout
% made modular for board size so we can have different board sizes, idk how
% this'll affect making an AI

% modular way of printing columns
fprintf('    ');
for length = 1:size(gamestate, 2);
    fprintf(' %d ', length);
end
fprintf('\n');

% prints out bulk of screen
for Row = 1:size(gamestate, 1)
%   Converts the numerical value to the player pieces, X or O
    fprintf('  |')

    for Col = 1:size(gamestate, 2)
        if gamestate(Row,Col) == 1
            gamestate(Row,Col) = 'O';
        elseif gamestate(Row,Col) == 2
            gamestate(Row,Col) = 'X';
        else
            gamestate(Row,Col) = ' ';
        end
        fprintf('  %s', gamestate(Row, Col))
        
    end
     fprintf('  |\n')
end

% modular way of printing bottom of connect4 board
fprintf('  -')
for length = 1:size(gamestate,2)
   fprintf('---');
end
fprintf('---\n')

