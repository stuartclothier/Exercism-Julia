"Calculates the Hamming Distance between nucleotides"

# Soln A: 'Padded out' soln for readability, contains check for 
# valid nucleotide strings.
function distance(a, b)
    nucleotides = "AGCT"

    # Check lengths of input strings are the same
    if length(a) == length(b)   
        if isnothing(match(Regex("[^$nucleotides]"), a * b))                
            A = split(a, "")
            B = split(b, "")
            sum(A .!= B)
        else
            throw(DomainError((a, b), "Invalid character(s) in strand(s)"))
        end
    else
        throw(ArgumentError("Strings not same length"))
    end
    
end

# Soln B: unzip strings soln
function distance(a, b)
    if length(a) == length(b)
        sum([x != y for (x, y) in zip(a, b)])
    else
        throw(ArgumentError("Strings not same length"))
    end
end
