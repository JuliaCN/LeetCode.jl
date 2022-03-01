# ---
# title: 110. Balanced Binary Tree
# id: problem110
# author: zhwang
# date: 2022-02-28
# difficulty: Easy
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/balanced-binary-tree/description/>
# hidden: true
# ---
# 
# Given a binary tree, determine if it is height-balanced.
# 
# For this problem, a height-balanced binary tree is defined as:
# 
# > a binary tree in which the left and right subtrees of _every_ node differ in
# > height by no more than 1.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/06/balance_1.jpg)
# 
#     
#     
#     Input: root = [3,9,20,null,null,15,7]
#     Output: true
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/06/balance_2.jpg)
# 
#     
#     
#     Input: root = [1,2,2,3,3,null,null,4,4]
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root = []
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[0, 5000]`.
#   * `-104 <= Node.val <= 104`
# 
# 
## @lc code=start
using LeetCode

is_balanced_binary_tree(::Nothing) = true
function is_balanced_binary_tree(root::TreeNode)::Bool
    tree_depth(::Nothing, depth::Int) = depth
    function tree_depth(tree::TreeNode, depth::Int)::Int
        ## -1 for if tree is not balanceed
        (lt = tree_depth(tree.left, depth + 1)) == -1 && return -1
        (rt = tree_depth(tree.right, depth + 1)) == -1 && return -1
        return abs(lt - rt) <= 1 ? max(lt, rt) : -1
    end
    return tree_depth(root, 0) != -1
end
## @lc code=end
