function b = dec2binl(d, l)
%DEC2BINL Convert a decimal number into a binary array vector.
% Args:
%   - d = Decimal number.
%   - l = Minimum length of the binary number in bits (zeros will be 
%   appended on the right).
% Output:
%   - b = Binary number.
arguments(Input)
    d uint32
    l uint32 = 0
end
arguments(Output)
    b (:,1) logical
end
    b = logical(dec2bin(d) - '0')';
    if (length(b) < l)
        b = [zeros(l - length(b), 1); b];
    end
end