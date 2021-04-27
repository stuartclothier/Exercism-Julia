"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""

function count_nucleotides(strand)
    
    nucleotides = "AGCT"

    if issubset(strand, nucleotides)
        Dict(base => count(==(base), strand) for base in nucleotides)
    else
        throw(DomainError(strand, "Invalid character(s) in strand"))
    end
    
end
