# @lc code=start
using LeetCode

function find_max_consecutive_ones(nums::Vector{Int})
    cnt, tmp = 0, 0
    for num in nums
        num == 1 ? tmp += 1 : tmp = 0
        cnt = max(tmp, cnt)
    end
    return max(tmp, cnt)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

