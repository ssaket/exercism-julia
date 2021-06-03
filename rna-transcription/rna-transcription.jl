function to_rna(dna)
    mapping = Dict('A' => 'U', 'C' => 'G', 'G' => 'C', 'T' => 'A')
    rna = ""
    for ch in dna
        if haskey(mapping, ch)
            rna *= mapping[ch]
        else
            throw(ErrorException("Invalid Sequence"))
        end
    end
    return rna
end

