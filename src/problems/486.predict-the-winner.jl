# ---
# title: 486. Predict the Winner
# id: problem486
# author: zhwang
# date: 2022-05-29
# difficulty: Medium
# categories: Dynamic Programming, Minimax
# link: <https://leetcode.com/problems/predict-the-winner/description/>
# hidden: true
# ---
# 
# Given an array of scores that are non-negative integers. Player 1 picks one of
# the numbers from either end of the array followed by the player 2 and then
# player 1 and so on. Each time a player picks a number, that number will not be
# available for the next player. This continues until all the scores have been
# chosen. The player with the maximum score wins.
# 
# Given an array of scores, predict whether player 1 is the winner. You can
# assume each player plays to maximize his score.
# 
# **Example 1:**
# 
#     
#     
#     Input: [1, 5, 2]
#     Output: False
#     Explanation: Initially, player 1 can choose between 1 and 2. 
#     If he chooses 2 (or 1), then player 2 can choose from 1 (or 2) and 5. If player 2 chooses 5, then player 1 will be left with 1 (or 2). 
#     So, final score of player 1 is 1 + 2 = 3, and player 2 is 5. 
#     Hence, player 1 will never be the winner and you need to return False.
#     
# 
# 
# 
# **Example 2:**
# 
#     
#     
#     Input: [1, 5, 233, 7]
#     Output: True
#     Explanation: Player 1 first chooses 1. Then player 2 have to choose between 5 and 7. No matter which number player 2 choose, player 1 can choose 233.
#     Finally, player 1 has more score (234) than player 2 (12), so you need to return True representing player1 can win.
#     
# 
# 
# 
# **Constraints:**
# 
#   * 1 <= length of the array <= 20.
#   * Any scores in the given array are non-negative integers and will not exceed 10,000,000.
#   * If the scores of both players are equal, then player 1 is still the winner.
# 
# 
## @lc code=start
using LeetCode
function is_ipv4(text::String)
    data = split(text, '.')
    length(data) != 4 && return false
    any(length(x) > 1 && first(x) == '0' for x in data) && return false
    try
        all(0 <= parse(Int, x) <= 255 for x in data)
    catch
        return false
    end
end

function is_ipv6(text::String)
    data = split(text, ':')
    length(data) != 8 && return false
    any(length(x) > 4 for x in data) && return false
    return all(all.(isxdigit, data))
end

function valid_ip_address(query_ip::String)::String
    is_ipv4(query_ip) && return "IPv4"
    is_ipv6(query_ip) && return "IPv6"
    return "Neither"
end

## @lc code=end
