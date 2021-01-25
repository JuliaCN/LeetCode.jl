# @lc code=start
using LeetCode

function check_valid_string(s::String)
    lo, hi = 0, 0
    for ch in s
        if ch == '('
            lo += 1
            hi += 1
        elseif ch == ')'
            (lo > 0) && (lo -= 1)
            hi -= 1
        else
            (lo > 0) && (lo -= 1)
            hi += 1
        end
        if hi < 0
            return false
        end
    end
    return lo == 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

