# ---
# title: 67. Add Binary
# id: problem67
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Math, String
# link: <https://leetcode.com/problems/add-binary/description/>
# hidden: true
# ---
# 
# Given two binary strings `a` and `b`, return _their sum as a binary string_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: a = "11", b = "1"
#     Output: "100"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: a = "1010", b = "1011"
#     Output: "10101"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= a.length, b.length <= 104`
#   * `a` and `b` consist only of `'0'` or `'1'` characters.
#   * Each string does not contain leading zeros except for the zero itself.
# 
# 
## @lc code=start
using LeetCode

function add_binary(a::String, b::String)

    num1 = parse(Int64, a; base=2)
    num2 = parse(Int64, b; base=2)

    sum = num1 + num2

    return string(sum, base=2)

end


## add your code here:
## @lc code=end
