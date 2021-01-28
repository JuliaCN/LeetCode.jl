# @lc code=start
using LeetCode

function kth_grammar(N::Int, K::Int)
    res = false
    for i in 1:N
        iseven(K) && (res = !res)
        K = (K + 1) >> 1
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

