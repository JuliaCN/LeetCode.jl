# @lc code=start
using LeetCode

function frequency_sort(nums::Vector{Int})
    freq = counter(nums)
    sort!(nums, by = x -> (freq[x], -x))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

