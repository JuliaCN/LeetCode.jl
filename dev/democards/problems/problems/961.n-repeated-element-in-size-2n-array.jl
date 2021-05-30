# @lc code=start
using LeetCode

function repeated_n_times(A::Vector{Int})
    for i in 2:length(A)
        if A[i] == A[i - 1]
            return A[i]
        end
    end

    # 3X3X OR 3XX3 OR X3X3
    return (A[1] == A[3] || A[1] == A[4]) ? A[1] : A[2]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

