# @lc code=start
using LeetCode

function first_bad_version(n::Int, is_bad_version::Function)::Int
    left, right = 1, n
    while left <= right
        mid = (left + right) >> 1
        if is_bad_version(mid)
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return left
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

