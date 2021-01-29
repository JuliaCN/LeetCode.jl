# ---
# title: 790. Domino and Tromino Tiling
# id: problem790
# author: Indigo
# date: 2021-01-29
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/domino-and-tromino-tiling/description/>
# hidden: true
# ---
# 
# We have two types of tiles: a 2x1 domino shape, and an "L" tromino shape.
# These shapes may be rotated.
# 
#     
#     
#     XX  <- domino
#     
#     XX  <- "L" tromino
#     X
#     
# 
# Given N, how many ways are there to tile a 2 x N board? **Return your answer
# modulo 10^9 + 7**.
# 
# (In a tiling, every square must be covered by a tile. Two tilings are
# different if and only if there are two 4-directionally adjacent cells on the
# board such that exactly one of the tilings has both squares occupied by a
# tile.)
# 
#     
#     
#     **Example:**
#     Input: 3
#     Output: 5
#     Explanation: 
#     The five different ways are listed below, different letters indicates different tiles:
#     XYZ XXZ XYY XXY XYY
#     XYZ YYZ XZZ XYY XXY
# 
# **Note:**
# 
#   * N  will be in range `[1, 1000]`.
# 
# 
# 
# 
## @lc code=start
using LeetCode

function num_tilings(N::Int)
    f0, f1= 1, 1
    g0, g1 = 0, 1
    for i in 1:N-1
        f0, f1, g0, g1 = f1, f0 + f1 + 2 * g0, g1, g1 + f1
    end
    f1
end
## @lc code=end
