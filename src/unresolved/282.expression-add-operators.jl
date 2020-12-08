# ---
# title: 282. Expression Add Operators
# id: problem282
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Divide and Conquer
# link: <https://leetcode.com/problems/expression-add-operators/description/>
# hidden: true
# ---
# 
# Given a string that contains only digits `0-9` and a target value, return all
# possibilities to add **binary** operators (not unary) `+`, `-`, or `*` between
# the digits so they evaluate to the target value.
# 
# **Example 1:**
# 
#     
#     
#     Input: _num_ = "123", _target_ = 6
#     Output: ["1+2+3", "1*2*3"] 
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: _num_ = "232", _target_ = 8
#     Output: ["2*3+2", "2+3*2"]
# 
# **Example 3:**
# 
#     
#     
#     Input: _num_ = "105", _target_ = 5
#     Output: ["1*0+5","10-5"]
# 
# **Example 4:**
# 
#     
#     
#     Input: _num_ = "00", _target_ = 0
#     Output: ["0+0", "0-0", "0*0"]
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: _num_ = "3456237490", _target_ = 9191
#     Output: []
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= num.length <= 10`
#   * `num` only contain digits.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
