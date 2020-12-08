# ---
# title: 1147. Longest Chunked Palindrome Decomposition
# id: problem1147
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming, Rolling Hash
# link: <https://leetcode.com/problems/longest-chunked-palindrome-decomposition/description/>
# hidden: true
# ---
# 
# Return the largest possible `k` such that there exists `a_1, a_2, ..., a_k`
# such that:
# 
#   * Each `a_i` is a non-empty string;
#   * Their concatenation `a_1 + a_2 + ... + a_k` is equal to `text`;
#   * For all `1 <= i <= k`,  `a_i = a_{k+1 - i}`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: text = "ghiabcdefhelloadamhelloabcdefghi"
#     Output: 7
#     Explanation: We can split the string on "(ghi)(abcdef)(hello)(adam)(hello)(abcdef)(ghi)".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: text = "merchant"
#     Output: 1
#     Explanation: We can split the string on "(merchant)".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: text = "antaprezatepzapreanta"
#     Output: 11
#     Explanation: We can split the string on "(a)(nt)(a)(pre)(za)(tpe)(za)(pre)(a)(nt)(a)".
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: text = "aaa"
#     Output: 3
#     Explanation: We can split the string on "(a)(a)(a)".
#     
# 
# 
# 
# **Constraints:**
# 
#   * `text` consists only of lowercase English characters.
#   * `1 <= text.length <= 1000`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
