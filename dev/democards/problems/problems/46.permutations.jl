# @lc code=start
using LeetCode

permutation(nums::Vector{Int}) = permutation!(copy(nums))
function permutation!(nums::Vector{Int})
    sort!(nums)
    res = Vector{Vector{Int}}()
    n = length(nums)
    sizehint!(res, factorial(n))
    function dfs(nums::Vector{Int}, path::Vector{Int}, used::Vector{Bool}, len::Int)
        if len == n # alternatively, len = sum(used)
            push!(res, copy(path))
            return nothing
        end
        for i in 1:n
            used[i] && continue
            used[i] = true
            path[len + 1] = nums[i]
            dfs(nums, path, used, len + 1)
            used[i] = false
        end
    end
    dfs(nums, Vector{Int}(undef, n), fill(false, n), 0)
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

