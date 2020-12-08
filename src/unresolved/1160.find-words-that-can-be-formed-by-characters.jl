# ---
# title: 1160. Find Words That Can Be Formed by Characters
# id: problem1160
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/description/>
# hidden: true
# ---
# 
# You are given an array of strings `words` and a string `chars`.
# 
# A string is _good_  if it can be formed by characters from `chars` (each
# character can only be used once).
# 
# Return the sum of lengths of all good strings in `words`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: words = ["cat","bt","hat","tree"], chars = "atach"
#     Output: 6
#     Explanation:
#     The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: words = ["hello","world","leetcode"], chars = "welldonehoneyr"
#     Output: 10
#     Explanation:
#     The strings that can be formed are "hello" and "world" so the answer is 5 + 5 = 10.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= words.length <= 1000`
#   2. `1 <= words[i].length, chars.length <= 100`
#   3. All strings contain lowercase English letters only.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
