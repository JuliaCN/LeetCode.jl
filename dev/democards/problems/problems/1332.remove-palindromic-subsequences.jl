# @lc code=start
using LeetCode

remove_palindromic_subsequences(s::String) = (s == reverse(s)) ? 1 : 2

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

