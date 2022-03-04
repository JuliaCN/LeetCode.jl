# @lc code=start
using LeetCode

function find_min_fibonacci_numbers(k::Int)
    fibs = [0, 1, 1]
    while fibs[end] <= k
        push!(fibs, fibs[end] + fibs[end - 1])
    end
    """
    If we need 2 or more fib_i's,
    we can always use fib_{i+1} and fib_{i-2} to replace them:
    2fib_i = fib_i + fib_{i-1} + fib_{i-2} = fib_{i+1} + fib_{i-2}.

    So greedy algorithm can be performed.
    """
    pop!(fibs)
    res = 0
    idx = length(fibs) + 1
    while k != 0
        idx -= 1
        k >= fibs[idx] || continue
        k -= fibs[idx]
        res += 1
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

