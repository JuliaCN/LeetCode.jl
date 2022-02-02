# ---
# title: 63. Unique Paths II
# id: problem63
# author: zhwang
# date: 2022-01-17
# difficulty: Medium
# categories: Array, Dynamic Programming
# link: <https://leetcode.com/problems/unique-paths-ii/description/>
# hidden: true
# ---
# 
# A robot is located at the top-left corner of a `m x n` grid (marked 'Start' in
# the diagram below).
# 
# The robot can only move either down or right at any point in time. The robot
# is trying to reach the bottom-right corner of the grid (marked 'Finish' in the
# diagram below).
# 
# Now consider if some obstacles are added to the grids. How many unique paths
# would there be?
# 
# An obstacle and space is marked as `1` and `0` respectively in the grid.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/04/robot1.jpg)
# 
#     
#     
#     Input: obstacleGrid = [[0,0,0],[0,1,0],[0,0,0]]
#     Output: 2
#     Explanation: There is one obstacle in the middle of the 3x3 grid above.
#     There are two ways to reach the bottom-right corner:
#     1. Right -> Right -> Down -> Down
#     2. Down -> Down -> Right -> Right
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/04/robot2.jpg)
# 
#     
#     
#     Input: obstacleGrid = [[0,1],[0,0]]
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == obstacleGrid.length`
#   * `n == obstacleGrid[i].length`
#   * `1 <= m, n <= 100`
#   * `obstacleGrid[i][j]` is `0` or `1`.
# 
# 
## @lc code=start
using LeetCode

function unique_path_with_obstacles_63!(obstacleGrid::Vector{Vector{Int}})::Int
    m, n = length(obstacleGrid), length(obstacleGrid[1])
    obstacleGrid[1][1] = 1 - obstacleGrid[1][1]
    for i in 2:n
        obstacleGrid[1][i] = obstacleGrid[1][i] == 1 ? 0 : obstacleGrid[1][i - 1]
    end
    for i in 2:m
        obstacleGrid[i][1] = obstacleGrid[i][1] == 1 ? 0 : obstacleGrid[i - 1][1]
    end
    for i in 2:m
        for j in 2:n
            obstacleGrid[i][j] = if obstacleGrid[i][j] == 1
                0
            else
                obstacleGrid[i - 1][j] + obstacleGrid[i][j - 1]
            end
        end
    end
    return obstacleGrid[end][end]
end
function unique_path_with_obstacles_63(obstacleGrid::Vector{Vector{Int}})
    return unique_path_with_obstacles_63!(copy(obstacleGrid))
end
## @lc code=end
