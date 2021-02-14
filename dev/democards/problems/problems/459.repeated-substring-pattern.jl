# @lc code=start
using LeetCode

function repeated_substring_pattern(s::String)
    findnext(s, s^2, 2) != length(s) + 1 : 2 * length(s)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

