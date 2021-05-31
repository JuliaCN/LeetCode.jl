# @lc code=start
using LeetCode

function min_operations(nums::Vector{Int}, x::Int)
    target = sum(nums) - x
    target < 0 && return -1
    println(target)
    left, right, maxn = 0, 0, -1
    len = length(nums)
    while right < len
        target -= nums[right += 1]
        while target < 0
            target += nums[left += 1]
        end
        (target == 0) && (maxn = max(maxn, right - left))
    end
    maxn == -1 ? maxn : len - maxn
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

