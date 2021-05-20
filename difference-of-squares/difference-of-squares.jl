"Square the sum of the first `n` positive integers"
function square_of_sum(n::Int)
    ## Multiple different methods are shown below for evaluating 
    ## the square of the sum.
    
    (n^2+2n^3+n^4)÷4 
    # evalpoly(n, (0,0,1,2,1)) ÷ 4 
    # (n * (n + 1) ÷ 2)^2
end

"Sum the squares of the first `n` positive integers"
function sum_of_squares(n::Int)
    div((n * (n + 1) * (2n + 1)), 6)
end

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
function difference(n::Int)
    square_of_sum(n) - sum_of_squares(n)
end
