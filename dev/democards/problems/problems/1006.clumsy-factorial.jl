# @lc code=start
using LeetCode

function clumsy(N::Int)
    if N <= 4
        return [1, 2, 6, 7][N]
    end
    mod = 1 + (N & 3)
    return N + [1, 2, 2, -1][mod]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

