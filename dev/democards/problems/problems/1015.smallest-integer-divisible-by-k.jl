# @lc code=start
using LeetCode

function smallest_repunit_div_by_k(K::Int)
    if K % 2 == 0 || K % 5 == 0
        return -1
    end
    r, len = 0, 1
    while true
        r = (10 * r % K + 1) % K
        if r == 0
            return len
        end
        len += 1
    end
    len
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

