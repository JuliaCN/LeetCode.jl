# ---
# title: 1578. Minimum Deletion Cost to Avoid Repeating Letters
# id: problem1578
# author: Indigo
# date: 2021-01-27
# difficulty: Medium
# categories: Greedy
# link: <https://leetcode.com/problems/minimum-deletion-cost-to-avoid-repeating-letters/description/>
# hidden: true
# ---
# 
# Given a string `s` and an array of integers `cost` where `cost[i]` is the cost
# of deleting the `ith` character in `s`.
# 
# Return the minimum cost of deletions such that there are no two identical
# letters next to each other.
# 
# Notice that you will delete the chosen characters at the same time, in other
# words, after deleting a character, the costs of deleting other characters will
# not change.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "abaac", cost = [1,2,3,4,5]
#     Output: 3
#     Explanation: Delete the letter "a" with cost 3 to get "abac" (String without two identical letters next to each other).
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "abc", cost = [1,2,3]
#     Output: 0
#     Explanation: You don't need to delete any character because there are no identical letters next to each other.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "aabaa", cost = [1,2,3,4,1]
#     Output: 2
#     Explanation: Delete the first and the last character, getting the string ("aba").
#     
# 
# 
# 
# **Constraints:**
# 
#   * `s.length == cost.length`
#   * `1 <= s.length, cost.length <= 10^5`
#   * `1 <= cost[i] <= 10^4`
#   * `s` contains only lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function min_cost_1578(s::String, cost::Vector{Int})
    if length(s) == 0
        return 0
    end
    s *= "0"
    lst_char = s[1]
    len, res = 1, 0
    for i in 2:length(s)
        if s[i] == lst_char
            len += 1
        else
            res += sum(cost[i-len:i-1]) - maximum(cost[i-len:i-1])
            len, lst_char = 1, s[i]
        end
    end
    res
end
## @lc code=end
