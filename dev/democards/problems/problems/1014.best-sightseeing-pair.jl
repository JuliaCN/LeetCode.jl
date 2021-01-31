# @lc code=start
using LeetCode

function max_score_sightseeing_pair(A::Vector{Int})
    res, mx = 0, A[1] + 0
    for j in 2:length(A)
        res = max(res, A[j] - j + 1 + mx)
        mx = max(mx, A[j] + j - 1)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

