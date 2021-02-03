# @lc code=start
using LeetCode

function longest_ones(A::Vector{Int}, K::Int)
    l = r = 1
    len = length(A)
    cnt = res = 0
    while r <= len
        (A[r] == 0) && (cnt += 1)
        r += 1
        while cnt > K
            (A[l] == 0) && (cnt -= 1)
            l += 1
        end
        res = max(res, r - l)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

