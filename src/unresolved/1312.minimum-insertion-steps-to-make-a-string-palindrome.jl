# ---
# title: 1312. Minimum Insertion Steps to Make a String Palindrome
# id: problem1312
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/minimum-insertion-steps-to-make-a-string-palindrome/description/>
# hidden: true
# ---
# 
# Given a string `s`. In one step you can insert any character at any index of
# the string.
# 
# Return _the minimum number of steps_ to make `s` palindrome.
# 
# A  **Palindrome String**  is one that reads the same backward as well as
# forward.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "zzazz"
#     Output: 0
#     Explanation: The string "zzazz" is already palindrome we don't need any insertions.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "mbadm"
#     Output: 2
#     Explanation: String can be "mbdadbm" or "mdbabdm".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "leetcode"
#     Output: 5
#     Explanation: Inserting 5 characters the string becomes "leetcodocteel".
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "g"
#     Output: 0
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: s = "no"
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 500`
#   * All characters of `s` are lower case English letters.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
