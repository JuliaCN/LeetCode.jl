# @lc code=start
using LeetCode

function next_greater_elements(nums::Vector{Int})
    stk = Int[]
    res = fill(-1, size(nums))
    for rd in 1:2, (idx, num) in enumerate(nums)
        while !isempty(stk) && nums[stk[end]] < num
            res[pop!(stk)] = num
        end
        (rd == 1) && push!(stk, idx)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

