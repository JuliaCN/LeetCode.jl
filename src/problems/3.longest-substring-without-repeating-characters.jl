# ---
# title: 3. Longest Substring Without Repeating Characters
# id: problem3
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Hash Table, Two Pointers, String, Sliding Window
# link: <https://leetcode.com/problems/longest-substring-without-repeating-characters/description/>
# hidden: true
# ---
# 
# Given a string `s`, find the length of the **longest substring** without
# repeating characters.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "abcabcbb"
#     Output: 3
#     Explanation: The answer is "abc", with the length of 3.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "bbbbb"
#     Output: 1
#     Explanation: The answer is "b", with the length of 1.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "pwwkew"
#     Output: 3
#     Explanation: The answer is "wke", with the length of 3.
#     Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = ""
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= s.length <= 5 * 104`
#   * `s` consists of English letters, digits, symbols and spaces.
# 
# 
## @lc code=start
using LeetCode

function length_of_longest_substring(s::String)::Int
    max_string, max_len = "", 0
    for c in s
        ## if c occurs twice in max_string
        if c in max_string
            max_string = max_string[(findfirst(c, max_string) + 1):end] * c
        else
            max_string *= c
            max_len = max(length(max_string), max_len)
        end
    end
    return max_len
end
## @lc code=end
