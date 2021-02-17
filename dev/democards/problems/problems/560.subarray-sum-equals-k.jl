# @lc code=start
using LeetCode

function subarray_sum(nums::Vector{Int}, k::Int)
    mp = DefaultDict(0, 0 => 1)
    res, pre_sum = 0, 0
    for num in nums
        pre_sum += num
        res += mp[pre_sum - k]
        mp[pre_sum] += 1
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

