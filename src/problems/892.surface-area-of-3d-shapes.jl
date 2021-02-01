# ---
# title: 892. Surface Area of 3D Shapes
# id: problem892
# author: Indigo
# date: 2021-02-01
# difficulty: Easy
# categories: Math, Geometry
# link: <https://leetcode.com/problems/surface-area-of-3d-shapes/description/>
# hidden: true
# ---
# 
# On a `N * N` grid, we place some `1 * 1 * 1 `cubes.
# 
# Each value `v = grid[i][j]` represents a tower of `v` cubes placed on top of
# grid cell `(i, j)`.
# 
# Return the total surface area of the resulting shapes.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [[2]]
#     Output: 10
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [[1,2],[3,4]]
#     Output: 34
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [[1,0],[0,2]]
#     Output: 16
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: [[1,1,1],[1,0,1],[1,1,1]]
#     Output: 32
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: [[2,2,2],[2,1,2],[2,2,2]]
#     Output: 46
#     
# 
# 
# 
# **Note:**
# 
#   * `1 <= N <= 50`
#   * `0 <= grid[i][j] <= 50`
# 
# 
## @lc code=start
using LeetCode

function surface_area(grid::Vector{Vector{Int}})
    res = 2 * sum(sum(1 for i in row if i != 0) for row in grid)
    res += sum(row[1] + row[end] + sum(abs, diff(row)) for row in grid)
    return res += sum(grid[1][i] +
                      grid[end][i] +
                      ((length(grid) > 1) ?
                       (sum(abs(grid[row][i] - grid[row - 1][i]) for row in 2:length(grid))) :
                       0) for i in 1:length(grid[1]))
end
function surface_area(grid::Matrix{Int})
    res = 2 * sum(sum(1 for i in row if i != 0) for row in grid)
    res += sum(row[1] + row[end] + sum(abs, diff(row)) for row in eachrow(grid))
    res += sum(col[1] + col[end] + sum(abs, diff(col)) for col in eachcol(grid))
    res
end
## @lc code=end
