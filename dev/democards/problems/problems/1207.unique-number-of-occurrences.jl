# @lc code=start
using LeetCode

function unique_number_of_occurrences(arr::Vector{Int})
    counts = Dict{Int, Int}()
    for a in arr
        counts[a] = get(counts, a, 0) + 1
    end
    vs = values(counts)
    return length(vs) == length(unique(vs))
end

# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

