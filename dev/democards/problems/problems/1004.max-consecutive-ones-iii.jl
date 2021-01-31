# @lc code=start
using LeetCode

function longest_ones(A::Vector{Int}, K::Int)
    l = r = 1
    len = length(A)
    cnt = res = 0
    while r <= len
        if A[r] == 0
            cnt += 1
        end
        r += 1
        while cnt > K
            if A[l] == 0
                cnt -= 1
            end
            l += 1
        end
        res = max(res, r - l)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

