# @lc code=start
using LeetCode

function majority_element(nums::Vector{Int})::Int
    res = vote = 0
    for num in nums
        if vote == 0
            vote += 1
            res = num
        else
            vote += (res == num) ? 1 : -1
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

