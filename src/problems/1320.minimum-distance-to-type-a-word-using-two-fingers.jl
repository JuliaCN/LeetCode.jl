# ---
# title: 1320. Minimum Distance to Type a Word Using Two Fingers
# id: problem1320
# author: Indigo
# date: 2021-01-23
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/minimum-distance-to-type-a-word-using-two-fingers/description/>
# hidden: true
# ---
# 
# ![](https://assets.leetcode.com/uploads/2020/01/02/leetcode_keyboard.png)
# 
# You have a keyboard layout as shown above in the XY plane, where each English
# uppercase letter is located at some coordinate, for example, the letter **A**
# is located at coordinate **(0,0)** , the letter **B** is located at coordinate
# **(0,1)** , the letter **P** is located at coordinate **(2,3)** and the letter
# **Z** is located at coordinate **(4,1)**.
# 
# Given the string `word`, return the minimum total distance to type such string
# using only two fingers. The distance between coordinates **(x 1,y1)** and **(x
# 2,y2)** is **|x 1 \- x2| + |y1 \- y2|**.
# 
# Note that the initial positions of your two fingers are considered free so
# don't count towards your total distance, also your two fingers do not have to
# start at the first letter or the first two letters.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: word = "CAKE"
#     Output: 3
#     Explanation: Using two fingers, one optimal way to type "CAKE" is: 
#     Finger 1 on letter 'C' -> cost = 0 
#     Finger 1 on letter 'A' -> cost = Distance from letter 'C' to letter 'A' = 2 
#     Finger 2 on letter 'K' -> cost = 0 
#     Finger 2 on letter 'E' -> cost = Distance from letter 'K' to letter 'E' = 1 
#     Total distance = 3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: word = "HAPPY"
#     Output: 6
#     Explanation:
#     Using two fingers, one optimal way to type "HAPPY" is:
#     Finger 1 on letter 'H' -> cost = 0
#     Finger 1 on letter 'A' -> cost = Distance from letter 'H' to letter 'A' = 2
#     Finger 2 on letter 'P' -> cost = 0
#     Finger 2 on letter 'P' -> cost = Distance from letter 'P' to letter 'P' = 0
#     Finger 1 on letter 'Y' -> cost = Distance from letter 'A' to letter 'Y' = 4
#     Total distance = 6
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: word = "NEW"
#     Output: 3
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: word = "YEAR"
#     Output: 7
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= word.length <= 300`
#   * Each `word[i]` is an English uppercase letter.
# 
# 
## @lc code=start
using LeetCode

function minimum_distance(word::String)
    distance(p, q) = abs(p ÷ 6 - q ÷ 6) + abs(p % 6 - q % 6)
    len = length(word)
    dp = fill(typemax(Int) >> 1, len, 26, 26)
    dp[1, :, word[1] - 'A' + 1] .= dp[1, word[1] - 'A' + 1, :] .= 0
    for i in 2:len
        cur = word[i] - 'A' + 1
        prev = word[i - 1] - 'A' + 1
        d = distance(cur - 1, prev - 1)
        for j in 1:26
            dp[i, cur, j] = min(dp[i, cur, j], dp[i - 1, prev, j] + d)
            dp[i, j, cur] = min(dp[i, j, cur], dp[i - 1, j, prev] + d)
            if prev == j
                for k in 1:26
                    d0 = distance(k - 1, cur - 1)
                    dp[i, cur, prev] = min(dp[i, cur, prev], dp[i - 1, k, prev] + d0)
                    dp[i, prev, cur] = min(dp[i, prev, cur], dp[i - 1, prev, k] + d0)
                end
            end
        end
    end
    min(minimum(dp[len, :, word[end] - 'A' + 1]), minimum(dp[len, word[end] - 'A' + 1, :]))
end
## @lc code=end
