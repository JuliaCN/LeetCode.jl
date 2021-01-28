# @lc code=start
using LeetCode

function is_ideal_permutation(A::Vector{Int})
    m = A[end]
    for i in length(A):-1:3
        m = min(m, A[i])
        if A[i - 2] > m
            return false
        end
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

