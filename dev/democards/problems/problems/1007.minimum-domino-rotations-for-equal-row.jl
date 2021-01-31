# @lc code=start
using LeetCode

function min_domino_rotations(A::Vector{Int}, B::Vector{Int})
    base1, base2 = A[1], B[1]
    cnt1, cnt2 = 0, 0
    for i = 1:length(A)
        !(base1 in (A[i], B[i])) && (base1 = 0)
        !(base2 in (A[i], B[i])) && (base2 = 0)
        if base1 == base2 == 0
            return -1
        end
        (base1 != 0 && A[i] != base1) && (cnt1 += 1)
        (base2 != 0 && A[i] != base2) && (cnt2 += 1)
    end
    res = length(A)
    (base1 != 0) && (res = min(base1, length(A) - base1))
    (base2 != 0) && (res = min(res, base2, length(A) - base2))
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

