# ---
# title: 1038. Binary Search Tree to Greater Sum Tree
# id: problem1038
# author: Indigo
# date: 2021-07-31
# difficulty: Medium
# categories: Binary Search Tree
# link: <https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/description/>
# hidden: true
# ---
# 
# Given the `root` of a Binary Search Tree (BST), convert it to a Greater Tree
# such that every key of the original BST is changed to the original key plus
# sum of all keys greater than the original key in BST.
# 
# As a reminder, a _binary search tree_ is a tree that satisfies these
# constraints:
# 
#   * The left subtree of a node contains only nodes with keys  **less than**  the node's key.
#   * The right subtree of a node contains only nodes with keys  **greater than**  the node's key.
#   * Both the left and right subtrees must also be binary search trees.
# 
# **Note:** This question is the same as 538:
# <https://leetcode.comhttps://leetcode.com/problems/convert-bst-to-greater-tree/>
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/05/02/tree.png)
# 
#     
#     
#     Input: root = [4,1,6,0,2,5,7,null,null,null,3,null,null,null,8]
#     Output: [30,36,21,36,35,26,15,null,null,null,33,null,null,null,8]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: root = [0,null,1]
#     Output: [1,null,1]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root = [1,0,2]
#     Output: [3,3,2]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: root = [3,2,4,1]
#     Output: [7,9,4,10]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[1, 100]`.
#   * `0 <= Node.val <= 100`
#   * All the values in the tree are **unique**.
#   * `root` is guaranteed to be a valid binary search tree.
# 
# 
## @lc code=start
using LeetCode

bst_to_gst(::Nothing) = nothing
function bst_to_gst(root::TreeNode{Int})::TreeNode{Int}
    s = 0
    rev_first_ord(::Nothing) = nothing
    function rev_first_ord(node::TreeNode{Int})
        rev_first_ord(node.right)
        s += node.val
        node.val = s
        return rev_first_ord(node.left)
    end
    !isnothing(root) && rev_first_ord(root)
    return root
end
## @lc code=end
