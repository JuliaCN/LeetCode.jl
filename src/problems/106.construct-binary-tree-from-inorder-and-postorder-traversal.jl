# ---
# title: 106. Construct Binary Tree from Inorder and Postorder Traversal
# id: problem106
# author: zhwang
# date: 2022-03-02
# difficulty: Medium
# categories: Array, Tree, Depth-first Search
# link: <https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/description/>
# hidden: true
# ---
# 
# Given inorder and postorder traversal of a tree, construct the binary tree.
# 
# **Note:**  
# You may assume that duplicates do not exist in the tree.
# 
# For example, given
# 
#     
#     
#     inorder = [9,3,15,20,7]
#     postorder = [9,15,7,20,3]
# 
# Return the following binary tree:
# 
#     
#     
#         3
#        / \
#       9  20
#         /  \
#        15   7
#     
# 
# 
## @lc code=start
using LeetCode

function build_tree_inpost(inorder::AbstractArray, postorder::AbstractArray)::TreeNode
    root = TreeNode(last(postorder))
    pos = findfirst(==(root.val), inorder)
    pos != 1 && (
        root.left = build_tree_inpost(
            @view(inorder[1:(pos - 1)]), @view(postorder[1:(pos - 1)])
        )
    )
    pos != length(postorder) && (
        root.right = build_tree_inpost(
            @view(inorder[(pos + 1):end]), @view(postorder[pos:(end - 1)])
        )
    )
    return root
end
## @lc code=end
