"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    mydict = Dict(i => 0 for i in ['A', 'C', 'G', 'T'])
    for c in strand
        if haskey(mydict, c)
            mydict[c] += 1
        else
            throw(DomainError(-1))
        end
    end
    return mydict
end


