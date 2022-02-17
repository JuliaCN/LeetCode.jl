# @lc code=start
using LeetCode

function contains_nearby_duplicate(nums::Vector{Int}, k::Int)::Bool
    pos = Dict{Int,Int}()
    for (i, num) in enumerate(nums)
        haskey(pos, num) && i - pos[num] <= k && return true
        pos[num] = i
    end
    return false
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

