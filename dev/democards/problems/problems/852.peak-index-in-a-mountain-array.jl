# @lc code=start
using LeetCode

peak_index_in_mountain_array(arr) =
    searchsortedfirst(1:(length(arr) - 1), length(arr) - 1; by=i -> arr[i] > arr[i + 1])

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

