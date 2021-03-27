# @lc code=start
using LeetCode

function hamming_weight(n::UInt32)::Int
    count = 0
    while n > 0
        n &= n - 1
        count += 1
    end

    return count
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

