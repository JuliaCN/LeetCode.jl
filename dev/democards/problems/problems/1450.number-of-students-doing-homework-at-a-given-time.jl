# @lc code=start
using LeetCode

function busystudent(starttime::AbstractVector, endtime::AbstractVector, query::Int)
    return count(s ≤ query ≤ e for (s, e) in zip(starttime, endtime))
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

