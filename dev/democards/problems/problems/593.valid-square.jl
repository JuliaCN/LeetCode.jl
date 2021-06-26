# @lc code=start
using LeetCode

function valid_square(ps::Vector{Vector{Int}})
    sort!(ps)
    ps[1] + ps[4] != ps[2] + ps[3] && return false
    sum((ps[1] .- ps[2]) .^ 2) != sum((ps[1] .- ps[3]) .^ 2) && return false
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

