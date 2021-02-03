# ---
# title: 424. Longest Repeating Character Replacement
# id: problem424
# author: Indigo
# date: 2020-02-02
# difficulty: Medium
# categories: Two Pointers, Sliding Window
# link: <https://leetcode.com/problems/longest-repeating-character-replacement/description/>
# hidden: true
# ---
# 
# Given a string `s` that consists of only uppercase English letters, you can
# perform at most `k` operations on that string.
# 
# In one operation, you can choose **any** character of the string and change it
# to any other uppercase English character.
# 
# Find the length of the longest sub-string containing all repeating letters you
# can get after performing the above operations.
# 
# **Note:**  
# Both the string's length and _k_ will not exceed 104.
# 
# **Example 1:**
# 
#     
#     
#     Input:
#     s = "ABAB", k = 2
#     
#     Output:
#     4
#     
#     Explanation:
#     Replace the two 'A's with two 'B's or vice versa.
#     
# 
# 
# 
# **Example 2:**
# 
#     
#     
#     Input:
#     s = "AABABBA", k = 1
#     
#     Output:
#     4
#     
#     Explanation:
#     Replace the one 'A' in the middle with 'B' and form "AABBBBA".
#     The substring "BBBB" has the longest repeating letters, which is 4.
#     
# 
# 
# 
# 
## @lc code=start
using LeetCode

function character_replacement(s::String, k::Int)
    i, j, len, maxn = 1, 1, length(s), 0
    cntr = fill(0, 26)
    while j ≤ len
        maxn = max(maxn, cntr[s[j] - 'A' + 1] += 1)
        if maxn + k < j - i + 1
            cntr[s[i] - 'A' + 1] -= 1
            i += 1
        end
        j += 1
    end
    j - i
end
## @lc code=end
