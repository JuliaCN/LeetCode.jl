# ---
# title: 890. Find and Replace Pattern
# id: problem890
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/find-and-replace-pattern/description/>
# hidden: true
# ---
# 
# You have a list of `words` and a `pattern`, and you want to know which words
# in `words` matches the pattern.
# 
# A word matches the pattern if there exists a permutation of letters `p` so
# that after replacing every letter `x` in the pattern with `p(x)`, we get the
# desired word.
# 
# ( _Recall that a permutation of letters is a bijection from letters to
# letters: every letter maps to another letter, and no two letters map to the
# same letter._ )
# 
# Return a list of the words in `words` that match the given pattern.
# 
# You may return the answer in any order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: words = ["abc","deq","mee","aqq","dkd","ccc"], pattern = "abb"
#     Output: ["mee","aqq"]
#     Explanation: "mee" matches the pattern because there is a permutation {a -> m, b -> e, ...}. 
#     "ccc" does not match the pattern because {a -> c, b -> c, ...} is not a permutation,
#     since a and b map to the same letter.
# 
# 
# 
# **Note:**
# 
#   * `1 <= words.length <= 50`
#   * `1 <= pattern.length = words[i].length <= 20`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
