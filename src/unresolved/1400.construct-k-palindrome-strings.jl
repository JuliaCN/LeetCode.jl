# ---
# title: 1400. Construct K Palindrome Strings
# id: problem1400
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Greedy
# link: <https://leetcode.com/problems/construct-k-palindrome-strings/description/>
# hidden: true
# ---
# 
# Given a string `s` and an integer `k`. You should construct `k` non-empty
# **palindrome** strings using **all the characters** in `s`.
# 
# Return _**True**_ if you can use all the characters in `s` to construct `k`
# palindrome strings or _**False**_ otherwise.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "annabelle", k = 2
#     Output: true
#     Explanation: You can construct two palindromes using all characters in s.
#     Some possible constructions "anna" + "elble", "anbna" + "elle", "anellena" + "b"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "leetcode", k = 3
#     Output: false
#     Explanation: It is impossible to construct 3 palindromes using all the characters of s.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "true", k = 4
#     Output: true
#     Explanation: The only possible solution is to put each character in a separate string.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "yzyzyzyzyzyzyzy", k = 2
#     Output: true
#     Explanation: Simply you can put all z's in one string and all y's in the other string. Both strings will be palindrome.
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: s = "cr", k = 7
#     Output: false
#     Explanation: We don't have enough characters in s to construct 7 palindromes.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 10^5`
#   * All characters in `s` are lower-case English letters.
#   * `1 <= k <= 10^5`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
