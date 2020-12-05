@doc doc"""
@lc app=leetcode id=543 lang=python3

[543] Diameter of Binary Tree

https://leetcode.com/problems/diameter-of-binary-tree/description/

algorithms
Easy (48.12%)
Likes:    3749
Dislikes: 223
Total Accepted:    393.5K
Total Submissions: 806.4K
Testcase Example:  '[1,2,3,4,5]'


Given a binary tree, you need to compute the length of the diameter of the
tree. The diameter of a binary tree is the length of the longest path between
any two nodes in a tree. This path may or may not pass through the root.



Example:
Given a binary tree 

⁠         1
⁠        / \
⁠       2   3
⁠      / \     
⁠     4   5    



Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].


Note:
The length of path between two nodes is represented by the number of edges
between them.



@lc code=start
"""
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
# @lc code=end
