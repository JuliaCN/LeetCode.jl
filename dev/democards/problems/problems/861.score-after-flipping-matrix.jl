# @lc code=start
using LeetCode

function matrix_score(A::Vector{Vector{Int}})::Int
    for vec in A
        vec .⊻= 0 ⊻ vec[1]  ## the first column are all converted to 1
    end
    w, h, res = length(A[1]), length(A), 0
    # res = h << (w - 1)
    for i in 1:w
        temp_cnt = 0
        for j in 1:h
            temp_cnt += A[j][i]
        end
        res += max(temp_cnt, h - temp_cnt) << (w - i)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

