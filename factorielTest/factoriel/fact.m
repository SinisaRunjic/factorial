function res = fact( n )
    if(n>1)
        res = n * fact(n-1);
    else
        res = 1;
    end
end

