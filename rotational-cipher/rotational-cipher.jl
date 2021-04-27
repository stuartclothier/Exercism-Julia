function rotate(ROT,string)
    codebase = [i for i in 1:126]
    [(codebase[i],codebase[j]) = (Int('A')+(i-Int('A')+ROT)%26, Int('a')+(j-Int('a')+ROT)%26) for i in 65:90 for j in 97:122];

    Coded_array = [Char(codebase[Int(each)]) for each in string]
    if typeof(string) == String
        String(Coded_array)
    else
        Char(Coded_array[1])
    end
end

for i = 0:26
    @eval macro $(Symbol("R$(i)_str"))(s)
        rotate($i,s)
    end
end