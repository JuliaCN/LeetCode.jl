# ---
# title: 692. Top K Frequent Words
# id: problem692
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Hash Table, Heap, Trie
# link: <https://leetcode.com/problems/top-k-frequent-words/description/>
# hidden: true
# ---
# 
# Given a non-empty list of words, return the _k_ most frequent elements.
# 
# Your answer should be sorted by frequency from highest to lowest. If two words
# have the same frequency, then the word with the lower alphabetical order comes
# first.
# 
# **Example 1:**  
# 
#     
#     
#     Input: ["i", "love", "leetcode", "i", "love", "coding"], k = 2
#     Output: ["i", "love"]
#     Explanation: "i" and "love" are the two most frequent words.
#         Note that "i" comes before "love" due to a lower alphabetical order.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: ["the", "day", "is", "sunny", "the", "the", "the", "sunny", "is", "is"], k = 4
#     Output: ["the", "is", "sunny", "day"]
#     Explanation: "the", "is", "sunny" and "day" are the four most frequent words,
#         with the number of occurrence being 4, 3, 2 and 1 respectively.
#     
# 
# **Note:**  
# 
#   1. You may assume _k_ is always valid, 1 ≤ _k_ ≤ number of unique elements.
#   2. Input words contain only lowercase letters.
# 
# **Follow up:**  
# 
#   1. Try to solve it in _O_ ( _n_ log _k_ ) time and _O_ ( _n_ ) extra space.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
