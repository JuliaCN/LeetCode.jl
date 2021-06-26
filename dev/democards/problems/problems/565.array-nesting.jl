# @lc code=start
using LeetCode

function array_nesting(nums::Vector{Int})
    visited = fill(false, length(nums))
    res = 0
    for (idx, num) in enumerate(nums)
        num += 1
        visited[idx] && continue
        tmp = 1
        visited[idx] = true
        while !visited[num]
            visited[num] = true
            num = nums[num] + 1
            tmp += 1
        end
        res = max(res, tmp)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

