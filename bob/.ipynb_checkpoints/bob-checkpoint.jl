function bob(stimulus)

    stimulus = strip(stimulus)
    
    if isempty(stimulus)
        "Fine. Be that way!"
    elseif stimulus == uppercase(stimulus) && any(isuppercase, stimulus)
        if stimulus[end] == '?'
            "Calm down, I know what I'm doing!"
        else
            "Whoa, chill out!"
        end 
    elseif stimulus[end] == '?'
        "Sure."        
    else
        "Whatever."
    end
end
