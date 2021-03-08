# ---
# title: 1163. Last Substring in Lexicographical Order
# id: problem1163
# author: Indigo
# date: 2021-03-06
# difficulty: Hard
# categories: String, Suffix Array
# link: <https://leetcode.com/problems/last-substring-in-lexicographical-order/description/>
# hidden: true
# ---
# 
# Given a string `s`, return the last substring of `s` in lexicographical order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "abab"
#     Output: "bab"
#     Explanation: The substrings are ["a", "ab", "aba", "abab", "b", "ba", "bab"]. The lexicographically maximum substring is "bab".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "leetcode"
#     Output: "tcode"
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= s.length <= 4 * 10^5`
#   2. s contains only lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function last_substring(s::String)
    m_ch = maximum(s)
    mc_pos = findall(==(m_ch), s)
    pos, window_len, new_window_len = first(mc_pos), 1, 1
    for idx in 2:length(mc_pos)
        if mc_pos[idx] == mc_pos[idx - 1] + 1
            new_window_len += 1
        else
            if new_window_len > window_len
                window_len = new_window_len
                pos = mc_pos[idx - 1] - new_window_len + 1
            end
            new_window_len = 1
        end
    end
    return s[pos:end]
end
## @lc code=end
