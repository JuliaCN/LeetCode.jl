# ---
# title: 861. Score After Flipping Matrix
# id: problem861
# author: AquaIndigo
# date: 2020-12-07
# difficulty: Medium
# categories: Greedy
# link: <https://leetcode.com/problems/score-after-flipping-matrix/description/>
# hidden: true
# ---
# 
# We have a two dimensional matrix `A` where each value is `0` or `1`.
# 
# A move consists of choosing any row or column, and toggling each value in that
# row or column: changing all `0`s to `1`s, and all `1`s to `0`s.
# 
# After making any number of moves, every row of this matrix is interpreted as a
# binary number, and the score of the matrix is the sum of these numbers.
# 
# Return the highest possible score.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [[0,0,1,1],[1,0,1,0],[1,1,0,0]]
#     Output: 39
#     Explanation: Toggled to [[1,1,1,1],[1,0,0,1],[1,1,1,1]].
#     0b1111 + 0b1001 + 0b1111 = 15 + 9 + 15 = 39
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 20`
#   2. `1 <= A[0].length <= 20`
#   3. `A[i][j]` is `0` or `1`.
# 
# 
## @lc code=start
using LeetCode

function matrix_score(A::Vector{Vector{Int}})::Int
    for vec in A     
        vec .⊻= 0 ⊻ vec[1]  ## the first column are all converted to 1
    end
    w, h, res = length(A[1]), length(A), 0
    ## res = h << (w - 1)
    for i in 1:w
        temp_cnt = 0
        for j in 1:h
            temp_cnt += A[j][i]
        end
        res += max(temp_cnt, h - temp_cnt) << (w - i)
    end
    return res
end
## @lc code=end
