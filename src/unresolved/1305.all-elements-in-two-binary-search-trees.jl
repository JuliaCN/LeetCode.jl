# ---
# title: 1305. All Elements in Two Binary Search Trees
# id: problem1305
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Sort, Tree
# link: <https://leetcode.com/problems/all-elements-in-two-binary-search-trees/description/>
# hidden: true
# ---
# 
# Given two binary search trees `root1` and `root2`.
# 
# Return a list containing _all the integers_ from _both trees_ sorted in
# **ascending** order.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/12/18/q2-e1.png)
# 
#     
#     
#     Input: root1 = [2,1,4], root2 = [1,0,3]
#     Output: [0,1,1,2,3,4]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: root1 = [0,-10,10], root2 = [5,1,7,0,2]
#     Output: [-10,0,0,1,2,5,7,10]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root1 = [], root2 = [5,1,7,0,2]
#     Output: [0,1,2,5,7]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: root1 = [0,-10,10], root2 = []
#     Output: [-10,0,10]
#     
# 
# **Example 5:**
# 
# ![](https://assets.leetcode.com/uploads/2019/12/18/q2-e5-.png)
# 
#     
#     
#     Input: root1 = [1,null,8], root2 = [8,1]
#     Output: [1,1,8,8]
#     
# 
# 
# 
# **Constraints:**
# 
#   * Each tree has at most `5000` nodes.
#   * Each node's value is between `[-10^5, 10^5]`.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
