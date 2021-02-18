# ---
# title: 994. Rotting Oranges
# id: problem994
# author: Indigo
# date: 2021-02-18
# difficulty: Medium
# categories: Breadth-first Search
# link: <https://leetcode.com/problems/rotting-oranges/description/>
# hidden: true
# ---
# 
# In a given grid, each cell can have one of three values:
# 
#   * the value `0` representing an empty cell;
#   * the value `1` representing a fresh orange;
#   * the value `2` representing a rotten orange.
# 
# Every minute, any fresh orange that is adjacent (4-directionally) to a rotten
# orange becomes rotten.
# 
# Return the minimum number of minutes that must elapse until no cell has a
# fresh orange.  If this is impossible, return `-1` instead.
# 
# 
# 
# **Example 1:**
# 
# **![](https://assets.leetcode.com/uploads/2019/02/16/oranges.png)**
# 
#     
#     
#     Input: [[2,1,1],[1,1,0],[0,1,1]]
#     Output: 4
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [[2,1,1],[0,1,1],[1,0,1]]
#     Output: -1
#     Explanation: The orange in the bottom left corner (row 2, column 0) is never rotten, because rotting only happens 4-directionally.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [[0,2]]
#     Output: 0
#     Explanation: Since there are already no fresh oranges at minute 0, the answer is just 0.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= grid.length <= 10`
#   2. `1 <= grid[0].length <= 10`
#   3. `grid[i][j]` is only `0`, `1`, or `2`.
# 
# 
## @lc code=start
using LeetCode, DataStructures

function oranges_rotting(grid::Vector{Vector{Int}})
    nr, nc = length(grid), length(grid[1])
    visited = fill(false, nr, nc)
    q = Queue{Tuple{Int,Int,Int}}()
    left, res = 0, 0
    for r in 1:nr, c in 1:nc
        if grid[r][c] == 2
            enqueue!(q, (r, c, 0))
        elseif grid[r][c] == 1
            left += 1
        end
    end
    dirs = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    while !isempty(q)
        tp = dequeue!(q)
        for dir in dirs
            nb = (tp[1] + dir[1], tp[2] + dir[2], tp[3] + 1)
            if 0 < nb[1] ≤ nr &&
               0 < nb[2] ≤ nc &&
               !visited[nb[1], nb[2]] &&
               grid[nb[1]][nb[2]] == 1
                left -= 1
                visited[nb[1], nb[2]] = true
                enqueue!(q, nb)
            end
        end
        res = tp[3]
    end
    left == 0 ? res : -1
end
## @lc code=end
