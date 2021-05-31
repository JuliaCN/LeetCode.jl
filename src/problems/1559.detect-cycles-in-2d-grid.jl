# ---
# title: 1559. Detect Cycles in 2D Grid
# id: problem1559
# author: Indigo
# date: 2021-01-22
# difficulty: Hard
# categories: Depth-first Search
# link: <https://leetcode.com/problems/detect-cycles-in-2d-grid/description/>
# hidden: true
# ---
# 
# Given a 2D array of characters `grid` of size `m x n`, you need to find if
# there exists any cycle consisting of the **same value**  in `grid`.
# 
# A cycle is a path of **length 4  or more** in the grid that starts and ends at
# the same cell. From a given cell, you can move to one of the cells adjacent to
# it - in one of the four directions (up, down, left, or right), if it has the
# **same value** of the current cell.
# 
# Also, you cannot move to the cell that you visited in your last move. For
# example, the cycle `(1, 1) -> (1, 2) -> (1, 1)` is invalid because from `(1,
# 2)` we visited `(1, 1)` which was the last visited cell.
# 
# Return `true` if any cycle of the same value exists in `grid`, otherwise,
# return `false`.
# 
# 
# 
# **Example 1:**
# 
# **![](https://assets.leetcode.com/uploads/2020/07/15/1.png)**
# 
#     
#     
#     Input: grid = [["a","a","a","a"],["a","b","b","a"],["a","b","b","a"],["a","a","a","a"]]
#     Output: true
#     Explanation: There are two valid cycles shown in different colors in the image below:
#     ![](https://assets.leetcode.com/uploads/2020/07/15/11.png)
#     
# 
# **Example 2:**
# 
# **![](https://assets.leetcode.com/uploads/2020/07/15/22.png)**
# 
#     
#     
#     Input: grid = [["c","c","c","a"],["c","d","c","c"],["c","c","e","c"],["f","c","c","c"]]
#     Output: true
#     Explanation: There is only one valid cycle highlighted in the image below:
#     ![](https://assets.leetcode.com/uploads/2020/07/15/2.png)
#     
# 
# **Example 3:**
# 
# **![](https://assets.leetcode.com/uploads/2020/07/15/3.png)**
# 
#     
#     
#     Input: grid = [["a","b","b"],["b","z","b"],["b","b","a"]]
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == grid.length`
#   * `n == grid[i].length`
#   * `1 <= m <= 500`
#   * `1 <= n <= 500`
#   * `grid` consists only of lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function contains_cycle(grid::Vector{Vector{String}})
    dirs = ((1, 0, 3), (-1, 0, 0), (0, 1, 1), (0, -1, 2))
    function bfs(grid::Vector{Vector{String}}, r::Int, c::Int)
        sym = grid[r][c]
        q_pos = Queue{Pair{Int, Int}}()
        q_dir = Queue{Int}()
        enqueue!(q_pos, Pair(r, c))
        enqueue!(q_dir, 0)
        visited[r, c] = true
        while !isempty(q_pos)
            pos = dequeue!(q_pos)
            dir = dequeue!(q_dir)
            for d in dirs
                nx, ny = pos.first + d[1], pos.second + d[2]
                if 0 < nx <= nr && 0 < ny <= nc && dir != d[3] && sym == grid[nx][ny]
                    if visited[nx, ny]
                        return true
                    else
                        visited[nx, ny] = true
                        enqueue!(q_pos, Pair(nx, ny))
                        enqueue!(q_dir, 3 - d[3])
                    end
                end
            end
        end
        false
    end
    nr, nc = length(grid), length(grid[1])
    visited = fill(false, nr, nc)
    for r in 1 : nr  
        for c in 1 : nc
            if !visited[r, c] && bfs(grid, r, c)
                ## println(grid[r][c])
                return true
            end
        end
    end
    return false    
end
## @lc code=end
