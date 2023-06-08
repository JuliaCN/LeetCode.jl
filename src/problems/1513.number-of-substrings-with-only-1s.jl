# ---
# title: 1513. Number of Substrings With Only 1s
# id: problem1513
# author: Indigo
# date: 2022-10-19
# difficulty: Medium
# categories: Math, String
# link: <https://leetcode.com/problems/number-of-substrings-with-only-1s/description/>
# hidden: true
# ---
# 
# Given a binary string `s` (a string consisting only of '0' and '1's).
# 
# Return the number of substrings with all characters 1's.
# 
# Since the answer may be too large, return it modulo 10^9 + 7.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "0110111"
#     Output: 9
#     Explanation: There are 9 substring in total with only 1's characters.
#     "1" -> 5 times.
#     "11" -> 3 times.
#     "111" -> 1 time.
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "101"
#     Output: 2
#     Explanation: Substring "1" is shown 2 times in s.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "111111"
#     Output: 21
#     Explanation: Each substring contains only 1's characters.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "000"
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `s[i] == '0'` or `s[i] == '1'`
#   * `1 <= s.length <= 10^5`
# 
# 
## @lc code=start
using LeetCode

function num_sub(s::String)
    ss = split(s, '0')
    return sum(binomial(length(subs) + 1, 2) for subs in ss)
end
## @lc code=end
