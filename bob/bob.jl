function bob(stimulus)
    if occursin(r"\?\s*$", stimulus) && all(isuppercase, stimulus) return "Calm down, I know what I'm doing!" end
    if occursin(r"\?\s*$", stimulus) && !all(isuppercase, stimulus) return "Sure." end
    if occursin(r"^[A-Z0-9]+[, ]*[A-Z0-9 ]*\W*[A-Z0-9 ]*\W*$", stimulus) return "Whoa, chill out!" end
    if occursin(r"^[ \t\r\n]*$", stimulus) return "Fine. Be that way!" end
    return "Whatever."
end