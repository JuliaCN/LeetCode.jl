# @lc code=start
using LeetCode

function max_sum_submatrix(matrix::AbstractMatrix{Int}, k::Int)
    m, n = size(matrix)
    m > n && return max_sum_submatrix(matrix', k)
    pref_sum = OffsetArray(fill(0, m + 1, n + 1), -1, -1)

    for i in 1:m, j in 1:n
        pref_sum[i, j] = pref_sum[i - 1, j] + pref_sum[i, j - 1] + matrix[i, j] -
                         pref_sum[i - 1, j - 1]
    end
    res = typemin(Int)
    for tp in 1:m, bot in tp:m
        ss = SortedSet{Int}()
        push!(ss, 0)
        for r in 1:n
            rows_sum = pref_sum[bot, r] - pref_sum[tp - 1, r]
            res = max(res, rows_sum - deref((ss, searchsortedfirst(ss, rows_sum - k))))
            push!(ss, rows_sum)
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

