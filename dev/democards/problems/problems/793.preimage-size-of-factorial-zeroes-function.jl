# @lc code=start
using LeetCode

function preimage_size_fzf(K::Int)
    zeta(x) = x > 0 ? x ÷ 5 + zeta(x ÷ 5) : 0
    lo, hi = K, 5 * K + 1
    while lo < hi
        mid = (lo + hi) ÷ 2
        z_mid = zeta(mid)
        if z_mid == K
            return 5
        elseif z_mid < K
            lo = mid + 1
        else
            hi = mid
        end
    end
    return 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

