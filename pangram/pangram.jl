"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    a = fill(0, 26)
    for ch in lowercase(input)
        ch = Int(ch)
        if ch > 96 && ch < 123
            ind = (ch + 1) - 97
            a[ind] += 1 
        end
    end
    return length(findall(x -> x > 0, a)) >= 26
end


ispangram("the quick brown fox jumps over the lazy dog")
