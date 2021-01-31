# @lc code=start
using LeetCode

function ship_within_days(weights::Vector{Int}, D::Int)
    lo, hi = maximum(weights), sum(weights)
    while lo < hi
        mid = (lo + hi) ÷ 2
        cnt = 1
        tt = 0
        for w in weights
            tt += w
            if tt > mid
                cnt += 1
                tt = w
            end
        end
        if cnt > D
            lo = mid + 1
        else
            hi = mid
        end
    end
    lo
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

