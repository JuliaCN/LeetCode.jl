# @lc code=start
using LeetCode

length_of_last_word(s::String) = length(rsplit(s, ' '; limit = 2, keepempty=false)[end])
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

