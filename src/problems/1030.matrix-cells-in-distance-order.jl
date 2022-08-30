# ---
# title: 1030. Matrix Cells in Distance Order
# id: problem1030
# author: Indigo
# date: 2022-08-30
# difficulty: Easy
# categories: Sort
# link: <https://leetcode.com/problems/matrix-cells-in-distance-order/description/>
# hidden: true
# ---
# 
# We are given a matrix with `R` rows and `C` columns has cells with integer
# coordinates `(r, c)`, where `0 <= r < R` and `0 <= c < C`.
# 
# Additionally, we are given a cell in that matrix with coordinates `(r0, c0)`.
# 
# Return the coordinates of all cells in the matrix, sorted by their distance
# from `(r0, c0)` from smallest distance to largest distance.  Here, the
# distance between two cells `(r1, c1)` and `(r2, c2)` is the Manhattan
# distance, `|r1 - r2| + |c1 - c2|`.  (You may return the answer in any order
# that satisfies this condition.)
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: R = 1, C = 2, r0 = 0, c0 = 0
#     Output: [[0,0],[0,1]]
#     Explanation: The distances from (r0, c0) to other cells are: [0,1]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: R = 2, C = 2, r0 = 0, c0 = 1
#     Output: [[0,1],[0,0],[1,1],[1,0]]
#     Explanation: The distances from (r0, c0) to other cells are: [0,1,1,2]
#     The answer [[0,1],[1,1],[0,0],[1,0]] would also be accepted as correct.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: R = 2, C = 3, r0 = 1, c0 = 2
#     Output: [[1,2],[0,2],[1,1],[0,1],[1,0],[0,0]]
#     Explanation: The distances from (r0, c0) to other cells are: [0,1,1,2,2,3]
#     There are other answers that would also be accepted as correct, such as [[1,2],[1,1],[0,2],[1,0],[0,1],[0,0]].
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= R <= 100`
#   2. `1 <= C <= 100`
#   3. `0 <= r0 < R`
#   4. `0 <= c0 < C`
# 
# 
## @lc code=start
using LeetCode

function all_cells_dist_order(rows::Int, cols::Int, rcenter::Int, ccenter::Int)
    rs = max(rcenter - 1, rows - rcenter)
    cs = max(ccenter - 1, cols - ccenter)
    iters = rs + cs
    res = Vector{Tuple{Int,Int}}(undef, rows * cols)
    res[1] = (rcenter, ccenter)
    idx = 2
    cidx = CartesianIndex(1, 1):CartesianIndex(rows, cols)
    for i in 1:iters
        for j in (-i):i
            for k in (i - abs(j), abs(j) - i)
                cur_idx = CartesianIndex(rcenter + j, ccenter + k)
                if cur_idx in cidx
                    res[idx] = cur_idx.I
                    idx += 1
                end
                k == 0 && break
            end
        end
    end
    return res
end
## @lc code=end
