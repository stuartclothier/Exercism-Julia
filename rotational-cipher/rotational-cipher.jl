function rotate(ROT, c::Char)
    if 'a' <= c <= 'z'
        (c - 'a' + ROT) % 26 + 'a'
    elseif 'A' <= c <= 'Z'
        (c - 'A' + ROT) % 26 + 'A'
    else
        c
    end
end

function rotate(ROT, str::String)
    map(each -> rotate(ROT, each), str)
end
    
for i = 0:26
    @eval macro $(Symbol("R$(i)_str"))(s)
        rotate($i, s)
    end
end