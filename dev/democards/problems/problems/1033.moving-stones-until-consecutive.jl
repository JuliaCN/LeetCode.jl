# @lc code=start
using LeetCode

function num_moves_stones(a::Int, b::Int, c::Int)
    a, b, c = sort([a, b, c])
    return (min(1, b - a - 1) + min(1, c - b - 1), c - a - 2)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

