# ---
# title: 709. To Lower Case
# id: problem709
# author: Tian Jun
# date: 2020-11-14
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/to-lower-case/description/>
# hidden: true
# ---
# 
# Implement function ToLowerCase() that has a string parameter str, and returns
# the same string in lowercase.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "Hello"
#     Output: "hello"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "here"
#     Output: "here"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: "LOVELY"
#     Output: "lovely"
#     
# 
# 
## @lc code=start
using LeetCode

function toLowerCase(s::String)::String
    return lowercase(s)
end
## @lc code=end
