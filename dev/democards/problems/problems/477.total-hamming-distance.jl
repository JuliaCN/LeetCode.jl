# @lc code=start
using LeetCode

function total_hamming_distance(nums)
    res, n = 0, length(nums)
    for i in 0:30
        c = 0
        for num in nums
            c += (num >> i) & 1
        end
        res += c * (n - c)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

