# @lc code=start
using LeetCode

function nums_same_consec_diff(n::Int, k::Int)
    (k == 0) && return [(10 ^ n - 1) ÷ 9 * i for i in 1:9]
    function nums_same_consec_diff(n::Int, k::Int, pre::Int)
        (pre < 0 || pre > 9) && return String[]
        (n == 0) && return [""]
        n1, n2 = pre - k, pre + k
        r1 = nums_same_consec_diff(n - 1, k, n1)
        r2 = nums_same_consec_diff(n - 1, k, n2)
        [[string(n1) * r for r in r1]; [string(n2) * r for r in r2]]
    end
    res = Int[]
    for i in 1:9
        tmp = nums_same_consec_diff(n - 1, k, i)
        append!(res, parse(Int, string(i) * t) for t in tmp)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

