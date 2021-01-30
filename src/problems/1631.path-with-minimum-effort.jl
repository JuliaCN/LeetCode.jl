# ---
# title: 1631. Path With Minimum Effort
# id: problem1631
# author: Indigo
# date: 2021-01-30
# difficulty: Medium
# categories: Binary Search, Depth-first Search, Union Find, Graph
# link: <https://leetcode.com/problems/path-with-minimum-effort/description/>
# hidden: true
# ---
# 
# You are a hiker preparing for an upcoming hike. You are given `heights`, a 2D
# array of size `rows x columns`, where `heights[row][col]` represents the
# height of cell `(row, col)`. You are situated in the top-left cell, `(0, 0)`,
# and you hope to travel to the bottom-right cell, `(rows-1, columns-1)` (i.e.,
# **0-indexed** ). You can move **up** , **down** , **left** , or **right** ,
# and you wish to find a route that requires the minimum **effort**.
# 
# A route's **effort** is the **maximum absolute difference** **** in heights
# between two consecutive cells of the route.
# 
# Return _the minimum **effort** required to travel from the top-left cell to
# the bottom-right cell._
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/04/ex1.png)
# 
#     
#     
#     Input: heights = [[1,2,2],[3,8,2],[5,3,5]]
#     Output: 2
#     Explanation: The route of [1,3,5,3,5] has a maximum absolute difference of 2 in consecutive cells.
#     This is better than the route of [1,2,2,2,5], where the maximum absolute difference is 3.
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/04/ex2.png)
# 
#     
#     
#     Input: heights = [[1,2,3],[3,8,4],[5,3,5]]
#     Output: 1
#     Explanation: The route of [1,2,3,4,5] has a maximum absolute difference of 1 in consecutive cells, which is better than route [1,3,5,3,5].
#     
# 
# **Example 3:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/04/ex3.png)
# 
#     
#     
#     Input: heights = [[1,2,1,1,1],[1,2,1,2,1],[1,2,1,2,1],[1,2,1,2,1],[1,1,1,2,1]]
#     Output: 0
#     Explanation: This route does not require any effort.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `rows == heights.length`
#   * `columns == heights[i].length`
#   * `1 <= rows, columns <= 100`
#   * `1 <= heights[i][j] <= 106`
# 
# 
## @lc code=start
using LeetCode

function minimum_effort_path(heights::Vector{Vector{Int}})
    m, n = length(heights), length(heights[1])
    ds = IntDisjointSets(m * n)
    map = SortedMultiDict{Int, Pair{Int, Int}}()
    for i in 1:m-1
        for j in 1:n-1
            insert!(map, abs(heights[i][j] - heights[i+1][j]), Pair((i - 1) * n + j, i * n + j))
            insert!(map, abs(heights[i][j] - heights[i][j+1]), Pair((i - 1) * n + j, (i - 1) * n + j + 1))
        end
    end
    for i in 1:m-1
        insert!(map, abs(heights[i][n] - heights[i+1][n]), Pair(i * n, (i + 1) * n))
    end
    for j in 1:n-1
        insert!(map, abs(heights[m][j] - heights[m][j+1]), Pair((m-1) * n + j, (m-1) * n + j + 1))
    end
    for (dist, edge) in map
        union!(ds, edge.first, edge.second)
        if in_same_set(ds, 1, m * n)
            return dist
        end
    end
    return 0
end
## @lc code=end
