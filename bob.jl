function bob(stimulus::AbstractString)
    answer = "Whatever."
    stimulus = strip(stimulus)
    new_stim = join(split(replace(join(split(stimulus, ""), " "), r"[[:punct:]]" => "")))
    new_stim = replace(new_stim, r"[[:digit:]]" => "")
    if all(isspace, stimulus)
        answer = "Fine. Be that way!"
    elseif (all(isuppercase, new_stim) & occursin("?", stimulus) & !isempty(new_stim))
        answer = "Calm down, I know what I'm doing!"
    elseif (stimulus[[end]] == "?")
        answer = "Sure."
    elseif (all(isuppercase, new_stim) & (!isempty(new_stim)))
        answer = "Whoa, chill out!"
    end
    return answer
end
