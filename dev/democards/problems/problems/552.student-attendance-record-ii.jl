# @lc code=start
using LeetCode

function check_record(n::Int)
    P = [1 1 0 1 0 0
        1 0 1 1 0 0
        1 0 0 1 0 0
        0 0 0 1 1 0
        0 0 0 1 0 1
        0 0 0 1 0 0]
    res = mat_fast_mul(P, n, Int(1e9 + 7))
    sum(@view res[1, :]) % Int(1e9 + 7)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

