# ---
# title: 720. Longest Word in Dictionary
# id: problem720
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Hash Table, Trie
# link: <https://leetcode.com/problems/longest-word-in-dictionary/description/>
# hidden: true
# ---
# 
# Given a list of strings `words` representing an English Dictionary, find the
# longest word in `words` that can be built one character at a time by other
# words in `words`. If there is more than one possible answer, return the
# longest word with the smallest lexicographical order.
# 
# If there is no answer, return the empty string.
# 
# **Example 1:**  
# 
#     
#     
#     Input: 
#     words = ["w","wo","wor","worl", "world"]
#     Output: "world"
#     Explanation: 
#     The word "world" can be built one character at a time by "w", "wo", "wor", and "worl".
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: 
#     words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
#     Output: "apple"
#     Explanation: 
#     Both "apply" and "apple" can be built from other words in the dictionary. However, "apple" is lexicographically smaller than "apply".
#     
# 
# **Note:**
# 
# * All the strings in the input will only contain lowercase letters.
# * The length of `words` will be in the range `[1, 1000]`.
# * The length of `words[i]` will be in the range `[1, 30]`.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
