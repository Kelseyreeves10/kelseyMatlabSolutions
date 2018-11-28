function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Kelsey Reeves
%
%         DUE: November 27, 2018
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 10 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;     % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');

% 3rd bug found) The condition in this loop allowed an infinite loop. Patrick helped 
% us find this one. The '||' needed to be changed to '&&'.
while level ~= beginner && level ~= moderate && level ~= advanced
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

% 1st bug found) When I ran the code there was an error. The error stated that the 
% expression to the left of the equals sign was not a valid target for
% an assignment, so I changed it to a double equals sign in order for it
% to be a conditional.
if level == beginner
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
else
    % 4th bug found) When I entered 3 for my level of play, the error said undefined
    % variable. I capitalized the H in 'advancedHighest' so that the
    % variables matched. 
    highest = advancedHighest;
end

% randomly select secret number between 1 and highest for level of play
% 5th bug found) Randomly selecting a secret number correctly did not work with this
% code, so I changed it to randomly choosing an integer between 1 and the
% highest possible number based on the chosen level of play.
secretNumber = randi(highest,1);

% initialize number of guesses and User_guess
% 8th bug found) I changed the number of tries equal to zero instead of 1 because the 
% number of tries that the program said I took was always one
% more than what I actually took.
numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    % 9th bug found) When I chose the beginner level, the secret number was
    % 10. I knew this because guessing the number 9 was too low, but when I
    % guessed the number 10, the program said it was not a valid guess, so
    % I changed the greater than or equal to sign to just a greater than
    % sign in order for the highest possible number to be an option.
    while userGuess < 1 || userGuess > highest
        
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        
        userGuess = input('');
        
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    numOfTries = numOfTries + 1;
    
    % report whether the user's guess was high, low, or correct
    % 6th bug found) The program was always telling me that my guess was too low because
    % the first two conditions were the same, so I changed the 
    % greater than sign to a less than sign.
    if userGuess < secretNumber
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else % 10th bug found) Although this probably isn't one of the bugs, I
         % specified this statement to make it more clear that they 
         % guessed the secret number in %d tries.
        fprintf('\nCongratulations!  You guessed the secret number %d in %d tries.\n\n', ...
            secretNumber, numOfTries); % 7th bug found) The fprintf statement was
            % incorrect when I was trying to play the game, so I used the documentation 
            % to figure out what was wrong with it and figured out that it was missing the
            % numOfTries expression at the end.
        fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
    end % 2nd bug found) When I ran the code, an error said these statements were
        % missing an end, so I added an end.
end  % of guessing while loop

% end of game