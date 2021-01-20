# @lc code=start
using LeetCode

function reverse_words(s::String)
    s_s = split(s, " ", keepempty = false)
    join(reverse(s_s), " ")
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

