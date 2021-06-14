# @lc code=start
using LeetCode

function nth_super_ugly_number(n::Int, primes::Vector{Int})
    dp = fill(1, n)
    len = length(primes)
    cur_min = primes[:]
    ptrs = fill(1, len)

    @inbounds for i in 2:n
        minn = minimum(cur_min)
        dp[i] = minn
        @simd for pidx in 1:len
            if minn == cur_min[pidx]
                ptrs[pidx] += 1
                cur_min[pidx] = dp[ptrs[pidx]] * primes[pidx]
            end
        end
    end
    return dp[end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

