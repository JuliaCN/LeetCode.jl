# ---
# title: 64. Minimum Path Sum
# id: problem64
# author: zhwang
# date: 2022-01-17
# difficulty: Medium
# categories: Array, Dynamic Programming
# link: <https://leetcode.com/problems/minimum-path-sum/description/>
# hidden: true
# ---
# 
# Given a `m x n` `grid` filled with non-negative numbers, find a path from top
# left to bottom right, which minimizes the sum of all numbers along its path.
# 
# **Note:** You can only move either down or right at any point in time.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/05/minpath.jpg)
# 
#     
#     
#     Input: grid = [[1,3,1],[1,5,1],[4,2,1]]
#     Output: 7
#     Explanation: Because the path 1 -> 3 -> 1 -> 1 -> 1 minimizes the sum.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: grid = [[1,2,3],[4,5,6]]
#     Output: 12
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == grid.length`
#   * `n == grid[i].length`
#   * `1 <= m, n <= 200`
#   * `0 <= grid[i][j] <= 100`
# 
# 
## @lc code=start
using LeetCode

function min_path_sum!(grid::Vector{Vector{Int}})::Int
    m, n = length(grid), length(grid[1])
    for i in 2:n
        grid[1][i] += grid[1][i - 1]
    end
    for i in 2:m
        grid[i][1] += grid[i - 1][1]
    end
    for i in 2:m
        for j in 2:n
            grid[i][j] += min(grid[i - 1][j], grid[i][j - 1])
        end
    end
    return grid[end][end]
end
min_path_sum(grid::Vector{Vector{Int}}) = min_path_sum!(copy(grid))
## @lc code=end
