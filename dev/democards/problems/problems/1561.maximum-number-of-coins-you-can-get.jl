# @lc code=start
using LeetCode

function max_coins(piles::Vector{Int})
    len = length(sort!(piles))
    return sum(piles[i] for i in len ÷ 3 + 1 : 2 : len - 1)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

