function detect_anagrams(subject, candidates)
    # candidates = map(lowercase, candidates);
    # filter!(!isequal(lowercase(subject)), candidates)
    res = Vector{String}()
    for can in candidates
        length(subject) != length(can) && continue
        larr = collect(lowercase(can))
        flag = true
        for l in lowercase(subject)
            l in larr && (deleteat!(larr, findfirst(isequal(l), larr)); continue)
            flag = false
        end
        flag && !(can in res) && push!(res, can)
    end
    return res
end
detect_anagrams("ant", ["tan", "stand", "at"])