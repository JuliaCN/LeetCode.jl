# ---
# title: 363. Max Sum of Rectangle No Larger Than K
# id: problem363
# author: Indigo
# date: 2021-05-29
# difficulty: Hard
# categories: Binary Search, Dynamic Programming, Queue
# link: <https://leetcode.com/problems/max-sum-of-rectangle-no-larger-than-k/description/>
# hidden: true
# ---
# 
# Given a non-empty 2D matrix _matrix_ and an integer _k_ , find the max sum of
# a rectangle in the _matrix_ such that its sum is no larger than _k_.
# 
# **Example:**
# 
#     
#     
#     Input: matrix = [[1,0,1],[0,-2,3]], k = 2
#     Output: 2 
#     Explanation:  Because the sum of rectangle [[0, 1], [-2, 3]] is 2,
#                  and 2 is the max number no larger than k (k = 2).
# 
# **Note:**
# 
#   1. The rectangle inside the matrix must have an area > 0.
#   2. What if the number of rows is much larger than the number of columns?
# 
# 
## @lc code=start
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
## @lc code=end
