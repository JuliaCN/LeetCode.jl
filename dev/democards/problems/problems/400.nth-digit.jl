# @lc code=start
using LeetCode

function find_nth_digit(n::Int)
    ant = [0, 10, 190, 2890, 38890, 488890, 5888890, 68888890, 788888890]
    num_begin = [0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000]
    idx = searchsortedlast(ant, n)
    num = (n - ant[idx]) ÷ idx + num_begin[idx]
    posi = (n - ant[idx]) % idx
    return num % (10^(idx - posi)) ÷ 10^(idx - posi - 1)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

