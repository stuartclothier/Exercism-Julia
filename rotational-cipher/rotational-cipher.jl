function rotate(ROT, str::Char)
    if str in 'a':'z'
        str + ROT  <= 'z' ? str + ROT :  str + ROT - 26
    elseif str in 'A':'Z'
        str + ROT  <= 'Z' ? str + ROT :  str + ROT - 26
    else
        str
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