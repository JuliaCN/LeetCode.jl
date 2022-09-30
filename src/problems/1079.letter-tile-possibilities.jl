# ---
# title: 1079. Letter Tile Possibilities
# id: problem1079
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Backtracking
# link: <https://leetcode.com/problems/letter-tile-possibilities/description/>
# hidden: true
# ---
# 
# You have `n`  `tiles`, where each tile has one letter `tiles[i]` printed on
# it.
# 
# Return _the number of possible non-empty sequences of letters_ you can make
# using the letters printed on those `tiles`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: tiles = "AAB"
#     Output: 8
#     Explanation: The possible sequences are "A", "B", "AA", "AB", "BA", "AAB", "ABA", "BAA".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: tiles = "AAABBC"
#     Output: 188
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: tiles = "V"
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= tiles.length <= 7`
#   * `tiles` consists of uppercase English letters.
# 
# 
## @lc code=start
using LeetCode

function letter_tile_possibilities(tiles::String)
    cnt = zeros(Int, 26)
    for c in tiles
        cnt[c - 'A' + 1] += 1
    end
    function dfs(cnt::Vector{Int})
        res = 0
        for i in 1:26
            cnt[i] == 0 && continue
            res += 1
            cnt[i] -= 1
            res += dfs(cnt)
            cnt[i] += 1
        end
        res
    end
    dfs(cnt)
end
## @lc code=end
