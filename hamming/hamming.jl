"Calculates Hamming Distance between two strings"

function distance(a, b)
    if length(a) == length(b)
        sum(split(a, "") .!= split(b, ""))
    else
        throw(ArgumentError("Strings not same length"))
    end
end
