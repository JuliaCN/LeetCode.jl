# ---
# title: 1556. Thousand Separator
# id: problem1556
# author: Indigo
# date: 2021-01-22
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/thousand-separator/description/>
# hidden: true
# ---
# 
# Given an integer `n`, add a dot (".") as the thousands separator and return it
# in string format.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 987
#     Output: "987"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 1234
#     Output: "1.234"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 123456789
#     Output: "123.456.789"
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: n = 0
#     Output: "0"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= n < 2^31`
# 
# 
## @lc code=start
using LeetCode

function thousand_separator(n::Int)
    s = string(n)
    r = length(s) % 3
    ed = 0
    if r == 0
        r += 3
        ed += 1
    end
    res = s[1:r]
    for i in 1 : length(s) ÷ 3 - ed
        res *= "." * s[r + i * 3 - 2 : r + i * 3]
    end
    res
end
## @lc code=end
