# @lc code=start
using LeetCode

function h_index_ii(citations::Vector{Int})
    l, r = 1, length(citations) + 1
    while l < r
        mid = l + r >> 1
        if citations[end + 1 - mid] >= mid
            l = mid
        else
            r = mid - 1
        end
    end
    return r
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

