function result = factoriel( number )
 [rowNumber, colNumber] = size(number);
 assert(rowNumber == 1 && colNumber == 1, 'Can''t do factoriel of matrix or vectors')
 assert(isnumeric(number) && ~iscell(number), 'Variable that you provide isn''t numeric')
 assert(round(number) == number, 'Please provide integer')
 assert(number >= 0, 'Can''t do factorial of negative numbers')
 assert(imag(number) == 0, 'Can''t do factorial of complex numbers')
 result = fact(number);
end

