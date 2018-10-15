% Kelsey Reeves
% October 15, 2018
% This script allows the user to play Tic Tac Toe. If the user would
% like to play, the computer will generate a move first and then prompt the 
% user for the next move. The game continues until there is a 
% winner or a tie. The user will then be asked if they would like to play again. 
% This pattern will continue until the player says no.

% Asks the user if they would like to play
disp('Welcome to Tic Tac Toe!');
player = input('Would you like to play? (y/n): ','s');
fprintf('\n')

ticTacToe = true;
while (ticTacToe)
    askPlayer = true;
    % Determines if the game will be played based on the user's input
    while (askPlayer)
        if strcmp(player,'y')
            askPlayer = false;
        elseif strcmp(player,'n')
            disp('Very well then. Bye!')
            break
        else
            player = input('Try again. Enter y for yes or n for no: ','s');
            fprintf('\n')
        end     
    end
    
    if strcmp(player,'n')
        break
    end
    
    again = true;
    while (again)
        % Displays a countdown to being playing
        disp('Begin playing after the countdown from 3! Ready in...')
        fprintf('\n')
        
        a = [3];
        for i = length(a)
            pause(1)
            disp(a)
        end        
        b = [2];
        for i = length(b)
            pause(1)
            disp(b)
        end
        c = [1];
        for i = length(c)
            pause(1)
            disp(c)
        end
        
        pause(1)
        disp('Game on!')
        pause(1)
        fprintf('\n')
        disp('This is the gameboard.')
        fprintf('\n')
        gameBoard = zeros(3,3);
        disp(gameBoard)
        
        % First move by computer
        % Gameboard is updated and displayed
        disp('Me first! I am ones.');
        fprintf('\n')
        gameBoard(1,2) = 1;                 
        disp(gameBoard);
        
        % Prompts the user for their move
        % Second move of the game
        disp('Your turn! You are twos. Choose a spot by entering the row (1, 2 or 3), then column (1, 2 or 3.)')
        row = input('row: ');
        column = input('column: ');
        fprintf('\n')
        
        % After the user makes their move, the gameboard will be updated and displayed. 
        playGame = true;
        while (playGame)
            secondMove = true;                
            while (secondMove)
                if (row == 1) && (column == 1) && (gameBoard(1,1) == 0);
                    gameBoard(1,1) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) == 0);
                    gameBoard(1,2) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) == 0);
                    gameBoard(1,3) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) == 0);
                    gameBoard(2,1) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) == 0);
                    gameBoard(2,2) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) == 0);
                    gameBoard(2,3) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) == 0);
                    gameBoard(3,1) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) == 0);
                    gameBoard(3,2) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) == 0);
                    gameBoard(3,3) = 2;
                    disp(gameBoard)
                    secondMove = false;
                elseif (row == 1) && (column == 1) && (gameBoard(1,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                else               
                    disp('Try again. Please enter either 1, 2 or 3');
                    row = input('row: ');
                    column = input('column: ');
                end
            end
                       
            % Computer move
            % Third move of the game
            disp('My turn!')
            fprintf('\n')
                    
            % The computer picks the next available spot.
            thirdMove = true;                      
            while (thirdMove)
                if (gameBoard(1,1) == 0)
                    gameBoard(1,1) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif (gameBoard(1,2) == 0)
                    gamBoard(1,2) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif gameBoard(1,3) == 0
                    gameBoard(1,3) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif gameBoard(2,1) == 0
                    gameBoard(2,1) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif gameBoard(2,2) == 0
                    gameBoard(2,2) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif gameBoard(2,3) == 0
                    gameBoard(2,3) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif gameBoard(3,1) == 0
                    gameBoard(3,1) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif gameBoard(3,2) == 0
                    gameBoard(3,2) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                elseif gameBoard(3,3) == 0
                    gameBoard(3,3) = 1;
                    disp(gameBoard)
                    thirdMove = false;
                end
            end
            
            % Prompts the user for their next move
            % Fourth move of the game
            disp('Your turn!')
            row = input('row: ');
            column = input('column: ');
            fprintf('\n')
                   
            % After the user makes their move by entering the row and column 
            % of the spot they want to choose, the gameboard will be updated and displayed.
            fourthMove = true;
            while (fourthMove)
                if (row == 1) && (column == 1) && (gameBoard(1,1) == 0);
                    gameBoard(1,1) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) == 0);
                    gameBoard(1,2) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) == 0);
                    gameBoard(1,3) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) == 0);
                    gameBoard(2,1) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) == 0);
                    gameBoard(2,2) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) == 0);
                    gameBoard(2,3) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) == 0);
                    gameBoard(3,1) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) == 0);
                    gameBoard(3,2) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) == 0);
                    gameBoard(3,3) = 2;
                    disp(gameBoard)
                    fourthMove = false;
                elseif (row == 1) && (column == 1) && (gameBoard(1,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                else
                    disp('Try again. Please enter either 1, 2 or 3');
                    row = input('row: ');
                    column = input('column: ');
                end
            end
            
            % Computer move
            % Fifth move of the game
            disp('My turn!')
            fprintf('\n')

            % The computer picks the next available spot.
            fifthMove = true;
            while (fifthMove)
                if gameBoard(1,1) == 0;
                    gameBoard(1,1) = 1;
                    disp(gameBoard)
                    fifthMove = false;
                elseif gameBoard(1,2) == 0;
                    gamBoard(1,2) = 1;
                    disp(gameBoard)
                    fifthMove = false;                   
                elseif gameBoard(1,3) == 0;
                    gameBoard(1,3) = 1;
                    disp(gameBoard)
                    fifthMove = false;
                elseif gameBoard(2,1) == 0;
                    gameBoard(2,1) = 1;
                    disp(gameBoard)
                    fifthMove = false;                   
                elseif gameBoard(2,2) == 0;
                    gameBoard(2,2) = 1;
                    disp(gameBoard)
                    fifthMove = false;                   
                elseif gameBoard(2,3) == 0;
                    gameBoard(2,3) = 1;
                    disp(gameBoard)
                    fifthMove = false;                 
                elseif gameBoard(3,1) == 0;
                    gameBoard(3,1) = 1;
                    disp(gameBoard)
                    fifthMove = false;             
                elseif gameBoard(3,2) == 0;
                    gameBoard(3,2) = 1;
                    disp(gameBoard)
                    fifthMove = false;               
                elseif gameBoard(3,3) == 0;
                    gameBoard(3,3) = 1;
                    disp(gameBoard)
                    fifthMove = false;           
                end
            end        
   
            % Checks to see if there is a winner
            % Calculates the range and sum of each win condition and determines a winner
            % If there is not a winner yet, the game continues.
            if (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            end
            
            % Prompts the user for their next move
            % Fourth move of the game
            disp('Your turn!')
            row = input('row: ');
            column = input('column: ');
            fprintf('\n')

            % After the user makes their move by entering the row and column of 
            % the spot they want to choose, the gameboard will be updated and displayed.
            sixthMove = true;                       
            while (sixthMove)
                if (row == 1) && (column == 1) && (gameBoard(1,1) == 0);
                    gameBoard(1,1) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) == 0);
                    gameBoard(1,2) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) == 0);
                    gameBoard(1,3) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) == 0);
                    gameBoard(2,1) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) == 0);
                    gameBoard(2,2) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) == 0);
                    gameBoard(2,3) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) == 0);
                    gameBoard(3,1) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) == 0);
                    gameBoard(3,2) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) == 0);
                    gameBoard(3,3) = 2;
                    disp(gameBoard)
                    sixthMove = false;
                elseif (row == 1) && (column == 1) && (gameBoard(1,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                else
                    disp('Try again. Please enter either 1, 2 or 3');
                    row = input('row: ');
                    column = input('column: ');
                end
            end
            
            % Checks to see if there is a winner
            % Calculates the range and sum of each win condition and determines a winner
            % If there is not a winner yet, the game continues.
            if (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            end
            
            % Computer move
            % Seventh move of the game
            disp('My turn!')
            fprintf('\n')
            
            seventhMove = true;
            while (seventhMove)
                if gameBoard(1,1) == 0;
                    gameBoard(1,1) = 1;
                    disp(gameBoard)
                    seventhMove = false;
                elseif gameBoard(1,2) == 0;
                    gamBoard(1,2) = 1;
                    disp(gameBoard)
                    seventhMove = false;                   
                elseif gameBoard(1,3) == 0;
                    gameBoard(1,3) = 1;
                    disp(gameBoard)
                    seventhMove = false;
                elseif gameBoard(2,1) == 0;
                    gameBoard(2,1) = 1;
                    disp(gameBoard)
                    seventhMove = false;                   
                elseif gameBoard(2,2) == 0;
                    gameBoard(2,2) = 1;
                    disp(gameBoard)
                    seventhMove = false;                   
                elseif gameBoard(2,3) == 0;
                    gameBoard(2,3) = 1;
                    disp(gameBoard)
                    seventhMove = false;                 
                elseif gameBoard(3,1) == 0;
                    gameBoard(3,1) = 1;
                    disp(gameBoard)
                    seventhMove = false;             
                elseif gameBoard(3,2) == 0;
                    gameBoard(3,2) = 1;
                    disp(gameBoard)
                    seventhMove = false;               
                elseif gameBoard(3,3) == 0;
                    gameBoard(3,3) = 1;
                    disp(gameBoard)
                    seventhMove = false;           
                end
            end        
            
            % Checks to see if there is a winner
            % Calculates the range and sum of each win condition and determines a winner
            % If there is not a winner yet, the game continues.
            if (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            end
            
            % Prompts the user for their next move
            % Eighth move of the game
            disp('Your turn!')
            row = input('row: ');
            column = input('column: ');
            fprintf('\n')
            
            % After the user makes their move by entering the row and column of 
            % the spot they want to choose, the gameboard will be updated and displayed.
            eighthMove = true;
            while (eighthMove)
                if (row == 1) && (column == 1) && (gameBoard(1,1) == 0);
                    gameBoard(1,1) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) == 0);
                    gameBoard(1,2) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) == 0);
                    gameBoard(1,3) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) == 0);
                    gameBoard(2,1) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) == 0);
                    gameBoard(2,2) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) == 0);
                    gameBoard(2,3) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) == 0);
                    gameBoard(3,1) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) == 0);
                    gameBoard(3,2) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) == 0);
                    gameBoard(3,3) = 2;
                    disp(gameBoard)
                    eighthMove = false;
                elseif (row == 1) && (column == 1) && (gameBoard(1,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 2) && (gameBoard(1,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 1) && (column == 3) && (gameBoard(1,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 1) && (gameBoard(2,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 2) && (gameBoard(2,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 2) && (column == 3) && (gameBoard(2,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 1) && (gameBoard(3,1) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 2) && (gameBoard(3,2) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                elseif (row == 3) && (column == 3) && (gameBoard(3,3) > 0);
                    disp('Spot already taken! Choose another spot.')
                    row = input('row: ');
                    column = input('column: ');
                else
                    disp('Try again. Please enter either 1, 2 or 3');
                    row = input('row: ');
                    column = input('column: ');
                end
            end
            
            % Checks to see if there is a winner
            % Calculates the range and sum of each win condition and determines a winner
            % If there is not a winner yet, the game continues.
            if (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            end
            
            % Computer move
            % Ninth and final move of the game
            disp('My turn!')
            fprintf('\n')
            
            ninthMove = true;
            while (ninthMove)
                if gameBoard(1,1) == 0;
                    gameBoard(1,1) = 1;
                    disp(gameBoard)
                    ninthMove = false;
                elseif gameBoard(1,2) == 0;
                    gamBoard(1,2) = 1;
                    disp(gameBoard)
                    ninthMove = false;                   
                elseif gameBoard(1,3) == 0;
                    gameBoard(1,3) = 1;
                    disp(gameBoard)
                    ninthMove = false;
                elseif gameBoard(2,1) == 0;
                    gameBoard(2,1) = 1;
                    disp(gameBoard)
                    ninthMove = false;                   
                elseif gameBoard(2,2) == 0;
                    gameBoard(2,2) = 1;
                    disp(gameBoard)
                    ninthMove = false;                   
                elseif gameBoard(2,3) == 0;
                    gameBoard(2,3) = 1;
                    disp(gameBoard)
                    ninthMove = false;                 
                elseif gameBoard(3,1) == 0;
                    gameBoard(3,1) = 1;
                    disp(gameBoard)
                    ninthMove = false;             
                elseif gameBoard(3,2) == 0;
                    gameBoard(3,2) = 1;
                    disp(gameBoard)
                    ninthMove = false;               
                elseif gameBoard(3,3) == 0;
                    gameBoard(3,3) = 1;
                    disp(gameBoard)
                    ninthMove = false;           
                end
            end
            
            % Checks to see if there is a winner
            % Calculates the range and sum of each win condition and determines a winner
            % If there is not a winner, the game ends in a tie.
            if (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(1,:)) == 0) && (sum(gameBoard(1,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(2,:)) == 0) && (sum(gameBoard(2,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(3,:)) == 0) && (sum(gameBoard(3,:)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,1)) == 0) && (sum(gameBoard(:,1)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,2)) == 0) && (sum(gameBoard(:,2)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(gameBoard(:,3)) == 0) && (sum(gameBoard(:,3)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range(diag(gameBoard)) == 0) && (sum(diag(gameBoard)) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 3)
                disp('Ha! I win! You lose!')
                break
            elseif (range([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 0) && (sum([gameBoard(1,3),gameBoard(2,2),gameBoard(3,1)]) == 6)
                disp('Good job! You won! But only because I let you.')
                break
            else
                disp('We tied!')
                break
            end
        end
        
        % Asks the user if they would like to play again
        % If yes, the game starts over with the computer's first move
        % If no, the program ends
        player = input('Would you like to play again? y/n: ','s');
        askAgain = true;
        while (askAgain)
            if strcmp(player,'y')
                askAgain = false;
            elseif strcmp(player,'n')
                disp('Very well then. Bye!')
                break
            else
                player = input('Try again. Enter y for yes or n for no: ','s');
            end
        end
        
        if strcmp(player,'n')
            break
        end        
        
    end
    
    if strcmp(player,'n')
        break
    end
end

    




