# ---
# title: 1161. Maximum Level Sum of a Binary Tree
# id: problem1161
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Tree, Breadth-first Search
# link: <https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, the level of its root is `1`, the level of
# its children is `2`, and so on.
# 
# Return the **smallest** level `X` such that the sum of all the values of nodes
# at level `X` is **maximal**.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/05/03/capture.JPG)
# 
#     
#     
#     Input: root = [1,7,0,7,-8,null,null]
#     Output: 2
#     Explanation:
#     Level 1 sum = 1.
#     Level 2 sum = 7 + 0 = 7.
#     Level 3 sum = 7 + -8 = -1.
#     So we return the level with the maximum sum which is level 2.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: root = [989,null,10250,98693,-89388,null,null,null,-32127]
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[1, 104]`.
#   * `-105 <= Node.val <= 105`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
