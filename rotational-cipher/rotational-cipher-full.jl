## Method 1: Using codebase

# codebase = [i for i in 1:126]

# function rotate(ROT, str::Char)
    
#     [(codebase[i + Int('A')], codebase[i + Int('a')]) = 
#     (Int('A') + (i + ROT) % 26, Int('a') + (i + ROT) % 26) 
#     for i in 0:25];

#     Char(codebase[Int(str)])
# end

## Method 2: Using z limit

function rotate(ROT, str::Char)
    if 'a' <= str <= 'z'
        char = Char((Int(str) + ROT)) 
        char <= 'z' ? char :  char - 26
    elseif 'A' <= str <= 'Z'
        char = Char((Int(str) + ROT)) 
        char <= 'Z' ? char :  char - 26
    else
        str
    end
end

## Method 3: Using modulus

# function rotate(ROT, str::Char)
#     if 'a' <= str <= 'z'
#         Char(str - 97 + ROT) % 26 + 97) 
        
#     elseif 'A' <= str <= 'Z'
#         Char(str - 65 + ROT) % 26 + 65)
#     else
#         str
#     end
# end

function rotate(ROT, str::String)
    map(each -> rotate(ROT, each), str)
end
    
for i = 0:26
    @eval macro $(Symbol("R$(i)_str"))(s)
        rotate($i, s)
    end
end