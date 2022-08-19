# @lc code=start
using LeetCode

function min_startvalue(nums::Vector{Int})
    total = mintotal = 0
    for num in nums
        total += num
        mintotal = min(mintotal, total)
    end
    return 1 - min(0, mintotal)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

