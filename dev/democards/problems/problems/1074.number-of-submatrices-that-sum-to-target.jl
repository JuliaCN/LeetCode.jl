# @lc code=start
using LeetCode

function num_submatrix_sum_target(matrix::AbstractMatrix{Int}, target::Int)
    m, n = size(matrix)
    m > n && return num_submatrix_sum_target(matrix', target)
    pref_sum = OffsetArray(fill(0, m + 1, n + 1), -1, -1)

    for i in 1:m, j in 1:n
        pref_sum[i, j] = pref_sum[i - 1, j] + pref_sum[i, j - 1] + matrix[i, j] - pref_sum[i - 1, j - 1]
    end
    res = 0
    for tp in 1:m, bot in tp:m
        sum_cnt = Dict{Int, Int}()
        for r in 1:n
            rows_sum = pref_sum[bot, r] - pref_sum[tp - 1, r]
            rows_sum == target && (res += 1)
            res += get(sum_cnt, rows_sum - target, 0)
            sum_cnt[rows_sum] = get(sum_cnt, rows_sum, 0) + 1
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

