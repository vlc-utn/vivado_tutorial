function [] = createVivadoDataFile(fileName, input, bitLength, header, spacer)
%CREATEVIVADODATAFILE Creates a file with inputs and outputs to check on a
% Vivado testbench
% The format of the file is the following (without the "<>"):
%   <header>
%   <input{1}><spacer><input{2}><spacer>...<input{n}><spacer>
% Where <input<{1}> is a column with all the values for that input channel.
arguments(Input)
    fileName string
    input (:,1) cell
    bitLength (:, 1) double
    header string = "Default header\n"
    spacer string = ","
end
    %% Inputs to strings
    % Find which input is larger than the rest
    for i=1:1:length(input)
        lengths(i) = length(input{i});
    end
    [~, idx] = max(lengths);
    
    % Append zeros to equal all sizes
    for i=1:1:length(input)
        input{i} = [input{i}; zeros(lengths(idx)-length(input{i}), 1)];
    end
    
    for i=1:1:length(input)
        input{i} = dec2bin(input{i}, bitLength(i));
    end

    % Add a "newline" character to the header, if not present
    headerChar = char(header);
    if (strcmp(headerChar(end-1:end), '\n') == false)
        header = strcat(header, "\n");
    end
    
    %% File formatting
    fileID = fopen(fileName, "w");
    
    fprintf(fileID, header);
    for i=1:1:length(input{1})
        for j=1:1:length(input)
            fprintf(fileID, "%s%s", input{j}(i,:), spacer);
        end
        fprintf(fileID, "\n");
    end
    fclose(fileID);
    
    fprintf("File \'%s\' was written successfully!\n", fileName);
end

