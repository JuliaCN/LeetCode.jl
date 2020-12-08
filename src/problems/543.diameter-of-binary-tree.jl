# ---
# title: 543. Diameter of Binary Tree
# id: problem543
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Tree
# link: <https://leetcode.com/problems/diameter-of-binary-tree/description/>
# hidden: true
# ---
# 
# Given a binary tree, you need to compute the length of the diameter of the
# tree. The diameter of a binary tree is the length of the **longest** path
# between any two nodes in a tree. This path may or may not pass through the
# root.
# 
# **Example:**  
# Given a binary tree  
# 
#     
#     
#               1
#              / \
#             2   3
#            / \     
#           4   5    
#     
# 
# Return **3** , which is the length of the path [4,2,1,3] or [5,2,1,3].
# 
# **Note:** The length of path between two nodes is represented by the number of
# edges between them.
# 
# 
## @lc code=start
using LeetCode

function diameter_of_binary_tree(root::TreeNode)::Int
    return max(
        diameter_of_binary_tree(root.left),
        diameter_of_binary_tree(root.right),
        _max_depth_to_leaf(root.left) + _max_depth_to_leaf(root.right) + 1,
    ) - 1
end

diameter_of_binary_tree(root::Nothing) = 0

function _max_depth_to_leaf(root::TreeNode)
    return max(1 + _max_depth_to_leaf(root.left), 1 + _max_depth_to_leaf(root.right))
end

_max_depth_to_leaf(::Nothing) = 0
## @lc code=end
