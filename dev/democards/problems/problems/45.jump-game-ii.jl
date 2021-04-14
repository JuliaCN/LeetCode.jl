# @lc code=start
using LeetCode

function jump45(nums::Vector{Int})
    max_pos, len, ed, step = 1, length(nums), 1, 0
    for i in 1:len-1
        max_pos = max(max_pos, i + nums[i])
        if i == ed
            ed = max_pos
            step += 1
        end
    end
    step
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

