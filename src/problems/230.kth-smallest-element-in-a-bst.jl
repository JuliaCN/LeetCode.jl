# ---
# title: 230. Kth Smallest Element in a BST
# id: problem230
# author: Indigo
# date: 2021-06-03
# difficulty: Medium
# categories: Binary Search, Tree
# link: <https://leetcode.com/problems/kth-smallest-element-in-a-bst/description/>
# hidden: true
# ---
# 
# Given a binary search tree, write a function `kthSmallest` to find the **k**
# th smallest element in it.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: root = [3,1,4,null,2], k = 1
#        3
#       / \
#      1   4
#       \
#        2
#     Output: 1
# 
# **Example 2:**
# 
#     
#     
#     Input: root = [5,3,6,2,4,null,null,1], k = 3
#            5
#           / \
#          3   6
#         / \
#        2   4
#       /
#      1
#     Output: 3
#     
# 
# **Follow up:**  
# What if the BST is modified (insert/delete operations) often and you need to
# find the kth smallest frequently? How would you optimize the kthSmallest
# routine?
# 
# 
# 
# **Constraints:**
# 
#   * The number of elements of the BST is between `1` to `10^4`.
#   * You may assume `k` is always valid, `1 ≤ k ≤ BST's total elements`.
# 
# 
## @lc code=start
using LeetCode

function kth_smallest_in_BST(root, k::Int)::Int
    isnothing(root) && return true
    arr = Int[]
    function pre_tra(root::TreeNode{Int})
        pre_tra(root.left)
        push!(arr, root.val)
        pre_tra(root.right)
    end
    pre_tra(::Nothing) = nothing
    pre_tra(root)
    arr[k]
end
## @lc code=end
