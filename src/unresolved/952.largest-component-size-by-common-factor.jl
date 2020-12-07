# ---
# title: 952. Largest Component Size by Common Factor
# id: problem952
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Math, Union Find
# link: <https://leetcode.com/problems/largest-component-size-by-common-factor/description/>
# hidden: true
# ---
# 
# Given a non-empty array of unique positive integers `A`, consider the
# following graph:
# 
#   * There are `A.length` nodes, labelled `A[0]` to `A[A.length - 1];`
#   * There is an edge between `A[i]` and `A[j]` if and only if `A[i]` and `A[j]` share a common factor greater than 1.
# 
# Return the size of the largest connected component in the graph.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [4,6,15,35]
#     Output: 4
#     ![](https://assets.leetcode.com/uploads/2018/12/01/ex1.png)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [20,50,9,63]
#     Output: 2
#     ![](https://assets.leetcode.com/uploads/2018/12/01/ex2.png)
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [2,3,6,7,4,12,21,39]
#     Output: 8
#     ![](https://assets.leetcode.com/uploads/2018/12/01/ex3.png)
#     
# 
# **Note:**
# 
#   1. `1 <= A.length <= 20000`
#   2. `1 <= A[i] <= 100000`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
