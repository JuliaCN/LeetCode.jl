# ---
# title: 417. Pacific Atlantic Water Flow
# id: problem417
# author: Indigo
# date: 2021-06-20
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/pacific-atlantic-water-flow/description/>
# hidden: true
# ---
# 
# Given an `m x n` matrix of non-negative integers representing the height of
# each unit cell in a continent, the "Pacific ocean" touches the left and top
# edges of the matrix and the "Atlantic ocean" touches the right and bottom
# edges.
# 
# Water can only flow in four directions (up, down, left, or right) from a cell
# to another one with height equal or lower.
# 
# Find the list of grid coordinates where water can flow to both the Pacific and
# Atlantic ocean.
# 
# **Note:**
# 
#   1. The order of returned grid coordinates does not matter.
#   2. Both _m_ and _n_ are less than 150.
# 
# 
# 
# **Example:**
# 
#     
#     
#     Given the following 5x5 matrix:
#     
#       Pacific ~   ~   ~   ~   ~ 
#            ~  1   2   2   3  (5) *
#            ~  3   2   3  (4) (4) *
#            ~  2   4  (5)  3   1  *
#            ~ (6) (7)  1   4   5  *
#            ~ (5)  1   1   2   4  *
#               *   *   *   *   * Atlantic
#     
#     Return:
#     
#     [[0, 4], [1, 3], [1, 4], [2, 2], [3, 0], [3, 1], [4, 0]] (positions with parentheses in above matrix).
#     
# 
# 
# 
# 
## @lc code=start
using LeetCode

function pacific_atlantic(heights::Matrix{Int})
    r, c = size(heights)
    visited = fill(false, r, c)
    res = fill(0x0, r, c)
    res[1:end, 1] .= 0x1
    res[1, 1:end] .= 0x1
    res[end, 1:end] .= 0x2
    res[1:end, end] .= 0x2
    res[1, end] = res[end, 1] = 0x3
    dirs = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    function dfs(x, y)
        visited[x, y] = true
        for dir in dirs
            nx, ny = x + dir[1], y + dir[2]
            (0 < nx <= r && 0 < ny <= c) || continue
            if heights[x, y] <= heights[nx, ny]
                res[nx, ny] |= res[x, y]
                !visited[nx, ny] && dfs(nx, ny)
            end
        end
    end
    for i in 1:r
        dfs(i, 1), dfs(i, c)
    end
    for j in 1:c
        dfs(1, j), dfs(r, j)
    end
    r = Set{Tuple{Int, Int}}()
    for cidx in CartesianIndices(res)
        res[cidx] == 0x3 && push!(r, cidx.I)
    end
    return r
end
## @lc code=end
