# ---
# title: 200. Number of Islands
# id: problem200
# author: Indigo
# date: 2021-01-20
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search, Union Find
# link: <https://leetcode.com/problems/number-of-islands/description/>
# hidden: true
# ---
# 
# Given an `m x n` 2d `grid` map of `'1'`s (land) and `'0'`s (water), return
# _the number of islands_.
# 
# An **island** is surrounded by water and is formed by connecting adjacent
# lands horizontally or vertically. You may assume all four edges of the grid
# are all surrounded by water.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: grid = [
#       ["1","1","1","1","0"],
#       ["1","1","0","1","0"],
#       ["1","1","0","0","0"],
#       ["0","0","0","0","0"]
#     ]
#     Output: 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: grid = [
#       ["1","1","0","0","0"],
#       ["1","1","0","0","0"],
#       ["0","0","1","0","0"],
#       ["0","0","0","1","1"]
#     ]
#     Output: 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == grid.length`
#   * `n == grid[i].length`
#   * `1 <= m, n <= 300`
#   * `grid[i][j]` is `'0'` or `'1'`.
# 
# 
## @lc code=start
using LeetCode

function lands_num(grid::Vector{Vector{String}})
    nr, nc = length(grid), length(grid[1])
    function dfs(grid::Vector{Vector{String}}, r, c)
        grid[r][c] = "0"
        (r + 1 <= nr) && grid[r+1][c] == "1" && dfs(grid, r+1, c)
        (r - 1 > 0) && grid[r-1][c] == "1" && dfs(grid, r-1, c)
        (c + 1 <= nc) && grid[r][c+1] == "1" && dfs(grid, r, c+1)
        (c - 1 > 0) && grid[r][c-1] == "1" && dfs(grid, r, c-1)        
        nothing
    end
    res = 0
    for i in 1:nr
        for j in 1:nc
            if grid[i][j] == "1"
                res += 1
                dfs(grid, i, j)                
            end 
        end
    end    
    res
end 
## @lc code=end
