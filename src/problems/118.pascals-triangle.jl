# ---
# title: 118. Pascal's Triangle
# id: problem118
# author: zhwang
# date: 2022-01-17
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/pascals-triangle/description/>
# hidden: true
# ---
# 
# Given a non-negative integer  _numRows_ , generate the first _numRows_ of
# Pascal's triangle.
# 
# ![](https://upload.wikimedia.org/wikipedia/commons/0/0d/PascalTriangleAnimated2.gif)  
# In Pascal's triangle, each number is the sum of the two numbers directly above
# it.
# 
# **Example:**
# 
#     
#     
#     Input: 5
#     Output:
#     [
#          [1],
#         [1,1],
#        [1,2,1],
#       [1,3,3,1],
#      [1,4,6,4,1]
#     ]
#     
# 
# 
## @lc code=start
using LeetCode

pascals_triangle(numRows::Int) = [[binomial(k, i) for i in 0:k] for k in 0:(numRows - 1)]
## @lc code=end
