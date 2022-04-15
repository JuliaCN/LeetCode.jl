# @lc code=start
using LeetCode

function prefixes_div_by5(nums::Vector{Int})
    len = length(nums)
    res = fill(false, len)
    cur = 0
    for i in 1:len
        cur = cur * 2 + nums[i]
        cur % 5 == 0 && (res[i] = true)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

