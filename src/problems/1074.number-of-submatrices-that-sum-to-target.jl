# ---
# title: 1074. Number of Submatrices That Sum to Target
# id: problem1074
# author: Indigo
# date: 2021-05-29
# difficulty: Hard
# categories: Array, Dynamic Programming, Sliding Window
# link: <https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/description/>
# hidden: true
# ---
# 
# Given a `matrix` and a `target`, return the number of non-empty submatrices
# that sum to target.
# 
# A submatrix `x1, y1, x2, y2` is the set of all cells `matrix[x][y]` with `x1
# <= x <= x2` and `y1 <= y <= y2`.
# 
# Two submatrices `(x1, y1, x2, y2)` and `(x1', y1', x2', y2')` are different if
# they have some coordinate that is different: for example, if `x1 != x1'`.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/09/02/mate1.jpg)
# 
#     
#     
#     Input: matrix = [[0,1,0],[1,1,1],[0,1,0]], target = 0
#     Output: 4
#     Explanation: The four 1x1 submatrices that only contain 0.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: matrix = [[1,-1],[-1,1]], target = 0
#     Output: 5
#     Explanation: The two 1x2 submatrices, plus the two 2x1 submatrices, plus the 2x2 submatrix.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: matrix = [[904]], target = 0
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= matrix.length <= 100`
#   * `1 <= matrix[0].length <= 100`
#   * `-1000 <= matrix[i] <= 1000`
#   * `-10^8 <= target <= 10^8`
# 
# 
## @lc code=start
using LeetCode

function num_submatrix_sum_target(matrix::AbstractMatrix{Int}, target::Int)
    m, n = size(matrix)
    m > n && return num_submatrix_sum_target(matrix', target)
    pref_sum = OffsetArray(fill(0, m + 1, n + 1), -1, -1)
    
    for i in 1:m, j in 1:n
        pref_sum[i, j] = pref_sum[i - 1, j] + pref_sum[i, j - 1] + matrix[i, j] - pref_sum[i - 1, j - 1]
    end
    res = 0
    for top in 1:m, bot in top:m
        sum_cnt = Dict{Int, Int}()
        for r in 1:n
            rows_sum = pref_sum[bot, r] - pref_sum[top - 1, r]
            rows_sum == target && (res += 1)
            res += get(sum_cnt, rows_sum - target, 0)
            sum_cnt[rows_sum] = get(sum_cnt, rows_sum, 0) + 1
        end
    end
    return res
end
## @lc code=end

