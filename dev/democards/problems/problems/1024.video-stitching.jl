# @lc code=start
using LeetCode

function video_stitching(clips::Vector{Vector{Int}}, time::Int)
    max_next = fill(0, time)
    last, prev, res = 1, 1, 0
    for it in clips
        max_next[it[1] + 1] = max(max_next[it[1] + 1], it[2] + 1)
    end
    for i in 1:time
        last = max(last, max_next[i])
        i == last && return -1
        if i == prev
            res += 1
            prev = last
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

