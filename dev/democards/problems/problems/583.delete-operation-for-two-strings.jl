# @lc code=start
using LeetCode

min_distance583(word1::String, word2::String) =
    length(word2) + length(word2) - 2longest_common_subsequence(word1, word2)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

