# ---
# title: 877. Stone Game
# id: problem877
# author: Indigo
# date: 2021-06-16
# difficulty: Medium
# categories: Math, Dynamic Programming, Minimax
# link: <https://leetcode.com/problems/stone-game/description/>
# hidden: true
# ---
# 
# Alex and Lee play a game with piles of stones.  There are an even number of
# piles **arranged in a row** , and each pile has a positive integer number of
# stones `piles[i]`.
# 
# The objective of the game is to end with the most stones.  The total number of
# stones is odd, so there are no ties.
# 
# Alex and Lee take turns, with Alex starting first.  Each turn, a player takes
# the entire pile of stones from either the beginning or the end of the row.
# This continues until there are no more piles left, at which point the person
# with the most stones wins.
# 
# Assuming Alex and Lee play optimally, return `True` if and only if Alex wins
# the game.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: piles = [5,3,4,5]
#     Output: true
#     Explanation:
#     Alex starts first, and can only take the first 5 or the last 5.
#     Say he takes the first 5, so that the row becomes [3, 4, 5].
#     If Lee takes 3, then the board is [4, 5], and Alex takes 5 to win with 10 points.
#     If Lee takes the last 5, then the board is [3, 4], and Alex takes 4 to win with 9 points.
#     This demonstrated that taking the first 5 was a winning move for Alex, so we return true.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= piles.length <= 500`
#   * `piles.length` is even.
#   * `1 <= piles[i] <= 500`
#   * `sum(piles)` is odd.
# 
# 
## @lc code=start
using LeetCode

function stone_game(piles::Vector{Int})
    len = length(piles)
    dp = Matrix{Int}(undef, len, len)
    for i in 1:len
        dp[i, i] = piles[i]
    end
    for i in (len - 1):-1:1, j in (i + 1):len
        dp[i, j] = max(piles[i] - dp[i + 1, j], piles[j] - dp[i, j - 1])
    end
    return dp[1, end] > 0
end

stone_game(::Vector{Int}) = true
## @lc code=end
