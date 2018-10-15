function [year,position,heightfeet,heightinches,heightinchestotal,weight,arms,hands,fortyyd,twentyyd,tenyd,twentyss,threecone,vertical,broad,bench1,nflgrade,college,draftPosition] = importfile(filename, startRow, endRow)
%IMPORTFILE Import numeric data from a text file as column vectors.
%   [YEAR,POSITION,HEIGHTFEET,HEIGHTINCHES,HEIGHTINCHESTOTAL,WEIGHT,ARMS,HANDS,FORTYYD,TWENTYYD,TENYD,TWENTYSS,THREECONE,VERTICAL,BROAD,BENCH1,NFLGRADE,COLLEGE,DRAFTPOSITION]
%   = IMPORTFILE(FILENAME) Reads data from text file FILENAME for the
%   default selection.
%
%   [YEAR,POSITION,HEIGHTFEET,HEIGHTINCHES,HEIGHTINCHESTOTAL,WEIGHT,ARMS,HANDS,FORTYYD,TWENTYYD,TENYD,TWENTYSS,THREECONE,VERTICAL,BROAD,BENCH1,NFLGRADE,COLLEGE,DRAFTPOSITION]
%   = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads data from rows STARTROW
%   through ENDROW of text file FILENAME.
%
% Example:
%   [year,position,heightfeet,heightinches,heightinchestotal,weight,arms,hands,fortyyd,twentyyd,tenyd,twentyss,threecone,vertical,broad,bench1,nflgrade,college,draftPosition] = importfile('combine_all.csv',2, 4626);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2018/10/02 11:52:48

%% Initialize variables.
delimiter = ',';
if nargin<=2
    startRow = 2;
    endRow = inf;
end

%% Read columns of data as text:
% For more information, see the TEXTSCAN documentation.
formatSpec = '%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%q%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(block)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Convert the contents of columns containing numeric text to numbers.
% Replace non-numeric text with NaN.
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = mat2cell(dataArray{col}, ones(length(dataArray{col}), 1));
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));

for col=[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,19]
    % Converts text in the input cell array to numbers. Replaced non-numeric
    % text with NaN.
    rawData = dataArray{col};
    for row=1:size(rawData, 1)
        % Create a regular expression to detect and remove non-numeric prefixes and
        % suffixes.
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\,]*)+[\.]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\,]*)*[\.]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData(row), regexstr, 'names');
            numbers = result.numbers;
            
            % Detected commas in non-thousand locations.
            invalidThousandsSeparator = false;
            if numbers.contains(',')
                thousandsRegExp = '^\d+?(\,\d{3})*\.{0,1}\d*$';
                if isempty(regexp(numbers, thousandsRegExp, 'once'))
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            % Convert numeric text to numbers.
            if ~invalidThousandsSeparator
                numbers = textscan(char(strrep(numbers, ',', '')), '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch
            raw{row, col} = rawData{row};
        end
    end
end


%% Split data into numeric and string columns.
rawNumericColumns = raw(:, [1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,19]);
rawStringColumns = string(raw(:, [2,18]));


%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),rawNumericColumns); % Find non-numeric cells
rawNumericColumns(R) = {NaN}; % Replace non-numeric cells

%% Make sure any text containing <undefined> is properly converted to an <undefined> categorical
idx = (rawStringColumns(:, 1) == "<undefined>");
rawStringColumns(idx, 1) = "";

%% Allocate imported array to column variable names
year = cell2mat(rawNumericColumns(:, 1));
position = categorical(rawStringColumns(:, 1));
heightfeet = cell2mat(rawNumericColumns(:, 2));
heightinches = cell2mat(rawNumericColumns(:, 3));
heightinchestotal = cell2mat(rawNumericColumns(:, 4));
weight = cell2mat(rawNumericColumns(:, 5));
arms = cell2mat(rawNumericColumns(:, 6));
hands = cell2mat(rawNumericColumns(:, 7));
fortyyd = cell2mat(rawNumericColumns(:, 8));
twentyyd = cell2mat(rawNumericColumns(:, 9));
tenyd = cell2mat(rawNumericColumns(:, 10));
twentyss = cell2mat(rawNumericColumns(:, 11));
threecone = cell2mat(rawNumericColumns(:, 12));
vertical = cell2mat(rawNumericColumns(:, 13));
broad = cell2mat(rawNumericColumns(:, 14));
bench1 = cell2mat(rawNumericColumns(:, 15));
nflgrade = cell2mat(rawNumericColumns(:, 16));
college = rawStringColumns(:, 2);
draftPosition = cell2mat(rawNumericColumns(:, 17));


