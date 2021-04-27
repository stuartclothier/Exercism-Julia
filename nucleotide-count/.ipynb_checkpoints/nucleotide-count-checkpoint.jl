"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    
if length(collect(eachmatch(r"A|C|G|T", strand))) == length(strand)
    a = Dict( letter => length(collect(eachmatch(Regex("$letter"), strand))) for letter in "ACGT" )
else
   throw(DomainError())
end
    
end
