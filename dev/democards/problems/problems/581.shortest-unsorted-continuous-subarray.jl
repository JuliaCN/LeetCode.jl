# @lc code=start
using LeetCode

function find_unsorted_subarray(nums::Vector{Int})
    stk = Int[]
    l, r = length(nums) + 1, 1
    for i in eachindex(nums)
        while !isempty(stk) && nums[stk[end]] > nums[i]
            l = min(l, pop!(stk))
        end
        push!(stk, i)
    end
    empty!(stk)
    for i in length(nums):-1:1
        while !isempty(stk) && nums[stk[end]] < nums[i]
            r = max(r, pop!(stk))
        end
        push!(stk, i)
    end
    return r - l > 0 ? r - l + 1 : 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

