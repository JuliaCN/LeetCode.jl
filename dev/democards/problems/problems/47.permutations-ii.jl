# @lc code=start
using LeetCode

function permutationII(nums::Vector{Int})::Vector{Vector{Int}}
    res = Vector{Vector{Int}}()
    n = length(nums)
    function dfs(nums::Vector{Int}, path::Vector{Int}, used::Vector{Bool})
        if length(path) == n
            push!(res, copy(path))
            return nothing
        end
        @inbounds for i in 1:n
            if used[i] || (i > 1 && nums[i] == nums[i - 1] && !used[i - 1])
                continue
            end
            push!(path, nums[i])
            used[i] = true
            dfs(nums, path, used)
            pop!(path)
            used[i] = false
        end
    end
    sort!(nums)
    dfs(nums, Vector{Int}(), fill(false, n))
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

