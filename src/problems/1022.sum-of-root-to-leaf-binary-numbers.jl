# ---
# title: 1022. Sum of Root To Leaf Binary Numbers
# id: problem1022
# author: Indigo
# date: 2022-03-19
# difficulty: Easy
# categories: Tree
# link: <https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers/description/>
# hidden: true
# ---
# 
# You are given the `root` of a binary tree where each node has a value `0` or
# `1`.  Each root-to-leaf path represents a binary number starting with the most
# significant bit.  For example, if the path is `0 -> 1 -> 1 -> 0 -> 1`, then
# this could represent `01101` in binary, which is `13`.
# 
# For all leaves in the tree, consider the numbers represented by the path from
# the root to that leaf.
# 
# Return _the sum of these numbers_. The answer is **guaranteed** to fit in a
# **32-bits** integer.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/04/04/sum-of-root-to-leaf-binary-
# numbers.png)
# 
#     
#     
#     Input: root = [1,0,1,0,1,0,1]
#     Output: 22
#     Explanation: (100) + (101) + (110) + (111) = 4 + 5 + 6 + 7 = 22
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: root = [0]
#     Output: 0
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root = [1]
#     Output: 1
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: root = [1,1]
#     Output: 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[1, 1000]`.
#   * `Node.val` is `0` or `1`.
# 
# 
## @lc code=start
using LeetCode

_sum_root_to_leaf(::Nothing) = (0, 0)
function _sum_root_to_leaf(root::TreeNode{Int})
    lft, rgt = _sum_root_to_leaf(root.left), _sum_root_to_leaf(root.right)
    tms = max(1, lft[2] + rgt[2])
    return (lft[1] + rgt[1]) + tms * root.val, tms * 2
end

sum_root_to_leaf(root::TreeNode{Int}) = _sum_root_to_leaf(root)[1]
## @lc code=end
