# ---
# title: 140. Word Break II
# id: problem140
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming, Backtracking
# link: <https://leetcode.com/problems/word-break-ii/description/>
# hidden: true
# ---
# 
# Given a **non-empty** string _s_ and a dictionary _wordDict_ containing a list
# of **non-empty** words, add spaces in _s_ to construct a sentence where each
# word is a valid dictionary word. Return all such possible sentences.
# 
# **Note:**
# 
#   * The same word in the dictionary may be reused multiple times in the segmentation.
#   * You may assume the dictionary does not contain duplicate words.
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "catsanddog"
#     wordDict = ["cat", "cats", "and", "sand", "dog"]
#     Output:[
#       "cats and dog",
#       "cat sand dog"
#     ]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "pineapplepenapple"
#     wordDict = ["apple", "pen", "applepen", "pine", "pineapple"]
#     Output: [
#       "pine apple pen apple",
#       "pineapple pen apple",
#       "pine applepen apple"
#     ]
#     Explanation: Note that you are allowed to reuse a dictionary word.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "catsandog"
#     wordDict = ["cats", "dog", "sand", "and", "cat"]
#     Output: []
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
