# @lc code=start
using LeetCode

function max_score_1432(card_points::Vector{Int}, k::Int)
    len, tt = length(card_points), sum(card_points)
    i, j = 1, len - k
    minn = sum(card_points[i:j])
    tmp = minn
    while j < len
        tmp -= card_points[i]
        i += 1
        tmp += card_points[j += 1]
        minn = min(tmp, minn)
    end
    tt - minn
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

