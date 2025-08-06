# @lc code=start
using LeetCode

function maximumWealth(accounts::Array{<:Integer,2})::Int
    return maximum(sum(accounts; dims=2))
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

