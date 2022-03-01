# ---
# title: 104. Maximum Depth of Binary Tree
# id: problem104
# author: zhwang
# date: 2022-02-20
# difficulty: Easy
# categories: Tree, Depth-first Search, Recursion
# link: <https://leetcode.com/problems/maximum-depth-of-binary-tree/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, return _its maximum depth_.
# 
# A binary tree's **maximum depth**  is the number of nodes along the longest
# path from the root node down to the farthest leaf node.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/26/tmp-tree.jpg)
# 
#     
#     
#     Input: root = [3,9,20,null,null,15,7]
#     Output: 3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: root = [1,null,2]
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root = []
#     Output: 0
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: root = [0]
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[0, 104]`.
#   * `-100 <= Node.val <= 100`
# 
# 
## @lc code=start
using LeetCode

maximum_depth_of_btree(::Nothing) = 0
function maximum_depth_of_btree(root::TreeNode)
    return maximum(maximum_depth_of_btree, [root.left, root.right]) + 1
end
## @lc code=end
