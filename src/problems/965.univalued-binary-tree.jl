# ---
# title: 965. Univalued Binary Tree
# id: problem965
# author: Indigo
# date: 2021-02-19
# difficulty: Easy
# categories: Tree
# link: <https://leetcode.com/problems/univalued-binary-tree/description/>
# hidden: true
# ---
# 
# A binary tree is _univalued_ if every node in the tree has the same value.
# 
# Return `true` if and only if the given tree is univalued.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/28/unival_bst_1.png)
# 
#     
#     
#     Input: [1,1,1,1,1,null,1]
#     Output: true
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/28/unival_bst_2.png)
# 
#     
#     
#     Input: [2,2,2,5,2]
#     Output: false
#     
# 
# 
# 
# **Note:**
# 
#   1. The number of nodes in the given tree will be in the range `[1, 100]`.
#   2. Each node's value will be an integer in the range `[0, 99]`.
# 
# 
## @lc code=start
using LeetCode

function is_unival_tree(root::TreeNode)
    is_unival_tree(::Nothing, ::Int) = true
    is_unival_tree(root::TreeNode, val::Int) = 
        (root.val != val) ? false :
               is_unival_tree(root.left, val) && is_unival_tree(root.right, val)
    return is_unival_tree(root, root.val)
end
## @lc code=end
