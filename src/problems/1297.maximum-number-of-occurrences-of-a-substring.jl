# ---
# title: 1297. Maximum Number of Occurrences of a Substring
# id: problem1297
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String, Bit Manipulation
# link: <https://leetcode.com/problems/maximum-number-of-occurrences-of-a-substring/description/>
# hidden: true
# ---
# 
# Given a string `s`, return the maximum number of ocurrences of **any**
# substring under the following rules:
# 
#   * The number of unique characters in the substring must be less than or equal to `maxLetters`.
#   * The substring size must be between `minSize` and `maxSize` inclusive.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "aababcaab", maxLetters = 2, minSize = 3, maxSize = 4
#     Output: 2
#     Explanation: Substring "aab" has 2 ocurrences in the original string.
#     It satisfies the conditions, 2 unique letters and size 3 (between minSize and maxSize).
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "aaaa", maxLetters = 1, minSize = 3, maxSize = 3
#     Output: 2
#     Explanation: Substring "aaa" occur 2 times in the string. It can overlap.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "aabcabcab", maxLetters = 2, minSize = 2, maxSize = 3
#     Output: 3
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "abcde", maxLetters = 2, minSize = 3, maxSize = 3
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 10^5`
#   * `1 <= maxLetters <= 26`
#   * `1 <= minSize <= maxSize <= min(26, s.length)`
#   * `s` only contains lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function max_freq(s::String, max_letters::Int, min_size::Int, max_size::Int)::Int
    counts = Dict{SubString,Int}()
    if max_size < min_size
        0
    else
        for i in 1:(length(s) - min_size + 1)
            for j in (i + min_size - 1):min(length(s), i + max_size + 1)
                ŝ = SubString(s, i, j)
                if length(Set(ŝ)) <= max_letters
                    counts[ŝ] = get(counts, ŝ, 0) + 1
                end
            end
        end
    end
    return length(counts) > 0 ? maximum(values(counts)) : 0
end
## @lc code=end
