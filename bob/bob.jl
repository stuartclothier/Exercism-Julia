function bob(stimulus)

    response = Dict(
        :question => "Sure.",
        :yelling => "Whoa, chill out!",
        :silence => "Fine. Be that way!",
        :misc => "Whatever.",
        :forceful_question => "Calm down, I know what I'm doing!",
)

    if stimulus == uppercase(stimulus)
        if stimulus[end] == '?'
            "Calm down, I know what I'm doing!"
        else
            "Whoa, chill out!"
        end
    elseif stimulus[end] == '?'
    "Sure."
    elseif length(stimulus) == 0
        "Fine. Be that way!"
    else
        "Whatever."
    end
end

print(bob("HELLO?"))