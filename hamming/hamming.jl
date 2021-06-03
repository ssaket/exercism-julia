"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("wrong sequence lengh"))
    end
    dist = 0
    for (i,j) in zip(a,b)
        if i != j
            dist += 1
        end
    end
    return dist
end

distance("ahg", "ahj")