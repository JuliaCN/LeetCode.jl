# ---
# title: 1001. Grid Illumination
# id: problem1001
# author: Indigo
# date: 2021-01-30
# difficulty: Hard
# categories: Hash Table
# link: <https://leetcode.com/problems/grid-illumination/description/>
# hidden: true
# ---
# 
# You are given a `grid` of size `N x N`, and each cell of this grid has a lamp
# that is initially **turned off**.
# 
# You are also given an array of lamp positions `lamps`, where `lamps[i] =
# [rowi, coli]` indicates that the lamp at `grid[rowi][coli]` is **turned on**.
# When a lamp is turned on, it **illuminates its cell** and **all  other cells**
# in the same **row, column, or diagonal**.
# 
# Finally, you are given a query array `queries`, where `queries[i] = [rowi,
# coli]`. For the `ith` query, determine whether `grid[rowi][coli]` is
# illuminated or not. After answering the `ith` query,  **turn off** the lamp at
# `grid[rowi][coli]` and its **8 adjacent lamps** if they exist. A lamp is
# adjacent if its cell shares either a side or corner with `grid[rowi][coli]`.
# 
# Return _an array of integers_`ans` _,_ _  where _`ans[i]` _should be_`1` _  if
# the lamp in the _`ith` _query was illuminated, or  _`0` _  if the lamp was
# not._
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/19/illu_1.jpg)
# 
#     
#     
#     Input: N = 5, lamps = [[0,0],[4,4]], queries = [[1,1],[1,0]]
#     Output: [1,0]
#     Explanation: We have the initial grid with all lamps turned off. In the above picture we see the grid after turning on the lamp at grid[0][0] then turning on the lamp at grid[4][4].
#     The 0th query asks if the lamp at grid[1][1] is illuminated or not (the blue square). It is illuminated, so set ans[0] = 1. Then, we turn off all lamps in the red square.
#     ![](https://assets.leetcode.com/uploads/2020/08/19/illu_step1.jpg)
#     The 1st query asks if the lamp at grid[1][0] is illuminated or not (the blue square). It is not illuminated, so set ans[1] = 1. Then, we turn off all lamps in the red rectangle.
#     ![](https://assets.leetcode.com/uploads/2020/08/19/illu_step2.jpg)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: N = 5, lamps = [[0,0],[4,4]], queries = [[1,1],[1,1]]
#     Output: [1,1]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: N = 5, lamps = [[0,0],[0,4]], queries = [[0,4],[0,1],[1,4]]
#     Output: [1,1,0]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= N <= 109`
#   * `0 <= lamps.length <= 20000`
#   * `lamps[i].length == 2`
#   * `0 <= lamps[i][j] < N`
#   * `0 <= queries.length <= 20000`
#   * `queries[i].length == 2`
#   * `0 <= queries[i][j] < N`
# 
# 
## @lc code=start
using LeetCode

function grid_illumination(N, lamps::Vector{Tuple{Int,Int}}, query::Vector{Tuple{Int,Int}})
    function update!(lamp, q)
        col_illum[lamp[2]] += q
        row_illum[lamp[1]] += q
        main_diag_illum[lamp[2]-lamp[1]] += q
        d_diag_illum[lamp[2]+lamp[1]] += q
    end
    dirs = [
        -1 -1 -1 0 0 0 1 1 1
        1 0 -1 1 0 -1 1 0 -1
    ]
    col_illum = DefaultDict{Int,Int}(0)
    row_illum = DefaultDict{Int,Int}(0)
    main_diag_illum = DefaultDict{Int,Int}(0)
    d_diag_illum = DefaultDict{Int,Int}(0)
    illum_pos = Set(lamps)
    res = fill(0, length(query))
    for lamp in lamps
        update!(lamp, 1)
    end
    for (idx, q) in enumerate(query)
        if col_illum[q[2]] > 0 ||
           row_illum[q[1]] > 0 ||
           main_diag_illum[q[2]-q[1]] > 0 ||
           main_diag_illum[q[2]+q[1]] > 0
            res[idx] = 1
        end
        for dir in 1:9
            new_pos = (q[1] + dirs[1, dir], q[2] + dirs[2, dir])
            if new_pos in illum_pos
                pop!(illum_pos)
                update!(new_pos, -1)
            end
        end
    end
    res
end
## @lc code=end
