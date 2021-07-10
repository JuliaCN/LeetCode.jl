# @lc code=start
using LeetCode

function num_subarrays_with_sum(nums::Vector{Int}, goal::Int)
    cnt = OffsetArray(fill(0, length(nums) + 1), -1)
    s, res = 0, 0
    for num in nums
        cnt[s] += 1
        s += num
        res += get(cnt, s - goal, 0)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

