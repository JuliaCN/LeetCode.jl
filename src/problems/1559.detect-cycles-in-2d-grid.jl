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

using DataStructures
function contains_cycle(grid::Vector{Vector{String}})
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
            if pos.first < nr && dir != 3 && sym == grid[pos.first + 1][pos.second]
                if visited[pos.first + 1, pos.second]
                    return true
                else
                    visited[pos.first + 1, pos.second] = true
                    enqueue!(q_pos, Pair(pos.first + 1, pos.second))
                    enqueue!(q_dir, 1)
                end
            end
            if pos.first > 1 && dir != 1 && sym == grid[pos.first - 1][pos.second]
                if visited[pos.first - 1, pos.second]
                    return true
                else
                    visited[pos.first - 1, pos.second] = true
                    enqueue!(q_pos, Pair(pos.first - 1, pos.second))
                    enqueue!(q_dir, 3)
                end
            end
            if pos.second < nc && dir != 2 && sym == grid[pos.first][pos.second + 1]
                if visited[pos.first, pos.second + 1]
                    return true
                else
                    visited[pos.first, pos.second + 1] = true
                    enqueue!(q_pos, Pair(pos.first, pos.second + 1))
                    enqueue!(q_dir, 4)
                end
            end

            if pos.second > 1 && dir != 4 && sym == grid[pos.first][pos.second - 1]
                if visited[pos.first, pos.second - 1]
                    return true
                else
                    visited[pos.first, pos.second - 1] = true
                    enqueue!(q_pos, Pair(pos.first, pos.second - 1))
                    enqueue!(q_dir, 2)
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
                # println(grid[r][c])
                return true
            end
        end
    end
    return false    
end
## @lc code=end
