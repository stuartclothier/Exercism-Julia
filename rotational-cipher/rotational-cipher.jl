function rotate(ROT, string)
    
    codebase = [i for i in 1:126]
    [(codebase[i + Int('A')], codebase[i + Int('a')]) = 
    (Int('A') + (i + ROT) % 26, Int('a') + (i + ROT) % 26) 
    for i in 0:25];

    Coded_array = [Char(codebase[Int(each)]) for each in string]
    if typeof(string) == String
        String(Coded_array)
    else
        Char(Coded_array[1])
    end
end

for i = 0:26
    @eval macro $(Symbol("R$(i)_str"))(s)
        rotate($i, s)
    end
end

