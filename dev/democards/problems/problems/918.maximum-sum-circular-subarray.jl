# @lc code=start
using LeetCode

function max_subarray_sum_circular(nums)
    length(nums) < 1 && return 0
    csum = cur_max = maxn = cur_min = minn = nums[1]
    for i in 2:length(nums)
        csum += nums[i]
        cur_max = (cur_max > 0) ? cur_max + nums[i] : nums[i]
        maxn = max(maxn, cur_max)
        cur_min = (cur_min < 0) ? cur_min + nums[i] : nums[i]
        minn = min(minn, cur_min)
    end
    return maxn < 0 ? maxn : max(csum - minn, maxn)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

