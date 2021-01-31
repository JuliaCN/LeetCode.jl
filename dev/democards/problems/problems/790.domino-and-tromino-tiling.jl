# @lc code=start
using LeetCode

function num_tilings(N::Int)
    f0, f1= 1, 1
    g0, g1 = 0, 1
    for i in 1:N-1
        f0, f1, g0, g1 = f1, f0 + f1 + 2 * g0, g1, g1 + f1
    end
    f1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

