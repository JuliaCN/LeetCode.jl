# @lc code=start
using LeetCode

function max_chunks_to_sorted_ii(arr::Vector{Int})
    return count(i == num + 1 for (i, num) in enumerate(accumulate(max, arr)))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

