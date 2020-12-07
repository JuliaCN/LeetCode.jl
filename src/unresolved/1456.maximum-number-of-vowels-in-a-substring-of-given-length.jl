# ---
# title: 1456. Maximum Number of Vowels in a Substring of Given Length
# id: problem1456
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String, Sliding Window
# link: <https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/description/>
# hidden: true
# ---
# 
# Given a string `s` and an integer `k`.
# 
# Return _the maximum number of vowel letters_ in any substring of `s` with
# length `k`.
# 
# **Vowel letters** in English are (a, e, i, o, u).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "abciiidef", k = 3
#     Output: 3
#     Explanation: The substring "iii" contains 3 vowel letters.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "aeiou", k = 2
#     Output: 2
#     Explanation: Any substring of length 2 contains 2 vowels.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "leetcode", k = 3
#     Output: 2
#     Explanation: "lee", "eet" and "ode" contain 2 vowels.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "rhythms", k = 4
#     Output: 0
#     Explanation: We can see that s doesn't have any vowel letters.
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: s = "tryhard", k = 4
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 10^5`
#   * `s` consists of lowercase English letters.
#   * `1 <= k <= s.length`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
