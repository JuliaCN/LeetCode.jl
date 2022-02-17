# @lc code=start
using LeetCode
reverse_words_557(s::String) = join([reverse(i) for i in split(s)], " ")

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

