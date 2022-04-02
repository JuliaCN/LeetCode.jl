# @lc code=start
using LeetCode

can_make_arith(arr::Vector{Int})::Bool = length(unique!(diff(sort(arr)))) == 1

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

