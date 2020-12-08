# ---
# title: 515. Find Largest Value in Each Tree Row
# id: problem515
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Tree, Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/find-largest-value-in-each-tree-row/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, return _an array of the largest value in
# each row_ of the tree **(0-indexed)**.
# 
# 
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/21/largest_e1.jpg)
# 
#     
#     
#     Input: root = [1,3,2,5,3,null,9]
#     Output: [1,3,9]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: root = [1,2,3]
#     Output: [1,3]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root = [1]
#     Output: [1]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: root = [1,null,2]
#     Output: [1,2]
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: root = []
#     Output: []
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree will be in the range `[0, 104]`.
#   * `-231 <= Node.val <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
