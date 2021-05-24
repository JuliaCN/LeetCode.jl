# ---
# title: 100. Same Tree
# id: problem100
# author: Qling
# date: 2021-05-23
# difficulty: Easy
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/same-tree/description/>
# hidden: true
# ---
# 
# Given two binary trees, write a function to check if they are the same or not.
# 
# Two binary trees are considered the same if they are structurally identical
# and the nodes have the same value.
# 
# **Example 1:**
# 
#     
#     
#     Input:     1         1
#               / \       / \
#              2   3     2   3
#     
#             [1,2,3],   [1,2,3]
#     
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input:     1         1
#               /           \
#              2             2
#     
#             [1,2],     [1,null,2]
#     
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input:     1         1
#               / \       / \
#              2   1     1   2
#     
#             [1,2,1],   [1,1,2]
#     
#     Output: false
#     
# 
# 
## @lc code=start
using LeetCode

function is_same_tree(p::Union{TreeNode, Nothing}, q::Union{TreeNode, Nothing})::Bool
    if isnothing(p) && isnothing(q)
        return true
    elseif isnothing(p) || isnothing(q)
        return false
    elseif p.val != q.val
        return false
    else
        return is_same_tree(p.left, p.left) && is_same_tree(p.right, p.right)
    end
end

## @lc code=end
