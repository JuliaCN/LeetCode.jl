# ---
# title: 959. Regions Cut By Slashes
# id: problem959
# author: Indigo
# date: 2021-01-25
# difficulty: Medium
# categories: Depth-first Search, Union Find, Graph
# link: <https://leetcode.com/problems/regions-cut-by-slashes/description/>
# hidden: true
# ---
# 
# In a N x N `grid` composed of 1 x 1 squares, each 1 x 1 square consists of a
# `/`, `\`, or blank space.  These characters divide the square into contiguous
# regions.
# 
# (Note that backslash characters are escaped, so a `\` is represented as
# `"\\"`.)
# 
# Return the number of regions.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [
#       " /",
#       "/ "
#     ]
#     Output: 2
#     Explanation: The 2x2 grid is as follows:
#     ![](https://assets.leetcode.com/uploads/2018/12/15/1.png)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [
#       " /",
#       "  "
#     ]
#     Output: 1
#     Explanation: The 2x2 grid is as follows:
#     ![](https://assets.leetcode.com/uploads/2018/12/15/2.png)
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [
#       "\\/",
#       "/\\"
#     ]
#     Output: 4
#     Explanation: (Recall that because \ characters are escaped, "\\/" refers to \/, and "/\\" refers to /\.)
#     The 2x2 grid is as follows:
#     ![](https://assets.leetcode.com/uploads/2018/12/15/3.png)
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: [
#       "/\\",
#       "\\/"
#     ]
#     Output: 5
#     Explanation: (Recall that because \ characters are escaped, "/\\" refers to /\, and "\\/" refers to \/.)
#     The 2x2 grid is as follows:
#     ![](https://assets.leetcode.com/uploads/2018/12/15/4.png)
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: [
#       "//",
#       "/ "
#     ]
#     Output: 3
#     Explanation: The 2x2 grid is as follows:
#     ![](https://assets.leetcode.com/uploads/2018/12/15/5.png)
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= grid.length == grid[0].length <= 30`
#   2. `grid[i][j]` is either `'/'`, `'\'`, or `' '`.
# 
# 
## @lc code=start
using LeetCode

function regions_by_slashes(grid::Vector{String})
    ## Like Problem 200
    function dfs(grid::Matrix{Int}, r, c)
        grid[r, c] = 1
        (r + 1 <= len * 3) && grid[r+1, c] == 0 && dfs(grid, r+1, c)
        (r - 1 > 0) && grid[r-1, c] == 0 && dfs(grid, r-1, c)
        (c + 1 <= len * 3) && grid[r, c+1] == 0 && dfs(grid, r, c+1)
        (c - 1 > 0) && grid[r, c-1] == 0 && dfs(grid, r, c-1)        
        nothing
    end
    len = length(grid)
    new_grid = fill(0, len * 3, len * 3)
    res = 0
    for i in 1:len
        for j in 1:len
            if grid[i][j] == '\\'
                new_grid[3 * i - 2, 3 * j - 2] = new_grid[3 * i - 1, 3 * j - 1] = new_grid[3 * i, 3 * j] = 1
            elseif grid[i][j] == '/'
                new_grid[3 * i - 2, 3 * j] = new_grid[3 * i - 1, 3 * j - 1] = new_grid[3 * i, 3 * j - 2] = 1
            end
        end
    end
    for r in 1 : len * 3
        for c in 1 : len * 3
            if new_grid[r, c] == 0
                res += 1
                dfs(new_grid, r, c)
            end
        end
    end
    res
end
## @lc code=end
