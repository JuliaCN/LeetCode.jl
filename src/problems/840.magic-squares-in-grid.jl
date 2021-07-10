# ---
# title: 840. Magic Squares In Grid
# id: problem840
# author: Indigo
# date: 2021-07-09
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/magic-squares-in-grid/description/>
# hidden: true
# ---
# 
# A `3 x 3` magic square is a `3 x 3` grid filled with distinct numbers
# **from**`1` **to**`9` such that each row, column, and both diagonals all have
# the same sum.
# 
# Given a `row x col` `grid` of integers, how many `3 x 3` "magic square"
# subgrids are there?  (Each subgrid is contiguous).
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/09/11/magic_main.jpg)
# 
#     
#     
#     Input: grid = [[4,3,8,4],[9,5,1,9],[2,7,6,2]]
#     Output: 1
#     Explanation:
#     The following subgrid is a 3 x 3 magic square:
#     ![](https://assets.leetcode.com/uploads/2020/09/11/magic_valid.jpg)
#     while this one is not:
#     ![](https://assets.leetcode.com/uploads/2020/09/11/magic_invalid.jpg)
#     In total, there is only one magic square inside the given grid.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: grid = [[8]]
#     Output: 0
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: grid = [[4,4],[3,3]]
#     Output: 0
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: grid = [[4,7,8],[9,5,1],[2,3,6]]
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `row == grid.length`
#   * `col == grid[i].length`
#   * `1 <= row, col <= 10`
#   * `0 <= grid[i][j] <= 15`
# 
# 
## @lc code=start
using LeetCode

function num_magic_squares_inside(grid::Matrix{Int})::Int
    r = [15, 15, 15]
    function is_magic_square(grid::AbstractMatrix{Int})
        sum(grid; dims=1) != reshape(r, 1, 3) && return false
        sum(grid; dims=2) != reshape(r, 3, 1) && return false
        sum(grid[i, i] for i in 1:3) == sum(grid[i, 4 - i] for i in 1:3) == 15 && return true
        return false
    end
    res = 0
    for j in 1:size(grid,2)-2, i in 1:size(grid,1)-2
        sub_mat = @view(grid[CartesianIndex(i, j):CartesianIndex(i+2, j+2)])
        all(x -> x in sub_mat, 1:9) && is_magic_square(sub_mat) && (res += 1)
    end
    return res
end
## @lc code=end
