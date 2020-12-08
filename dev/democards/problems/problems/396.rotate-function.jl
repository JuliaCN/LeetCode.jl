# @lc code=start
using LeetCode

function max_rotate_function(A::Vector{Int})::Int
    # f(i+1) = f(i) + ∑(A) - A[end] * length(A)
    s = sum(A)
    n = length(A)
    cur = sum(k -> (k - 1) * A[k], 1:n)
    res = cur
    for i in n:-1:2
        cur += s - n * A[i]
        res = max(res, cur)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

