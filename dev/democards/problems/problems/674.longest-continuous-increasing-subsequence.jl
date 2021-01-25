# @lc code=start
using LeetCode

function find_length_of_lcis(nums::Vector{Int})
    res, tmp = 0, 1
    for i in 2:length(nums)
        if nums[i] > nums[i - 1]
            tmp += 1
        else
            res = max(res, tmp)
            tmp = 1
        end
    end
    min(max(tmp, res), length(nums))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

