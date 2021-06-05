# ---
# title: 102. Binary Tree Level Order Traversal
# id: problem102
# author: Indigo
# date: 2021-06-02
# difficulty: Medium
# categories: Tree, Breadth-first Search
# link: <https://leetcode.com/problems/binary-tree-level-order-traversal/description/>
# hidden: true
# ---
# 
# Given a binary tree, return the _level order_ traversal of its nodes' values.
# (ie, from left to right, level by level).
# 
# For example:  
# Given binary tree `[3,9,20,null,null,15,7]`,  
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
# return its level order traversal as:  
# 
#     
#     
#     [
#       [3],
#       [9,20],
#       [15,7]
#     ]
#     
# 
# 
## @lc code=start
using LeetCode

function level_order(root::Union{Nothing, TreeNode{Int}})
    isnothing(root) && return Int[]
    q = TreeNode{Int}[]
    q2 = TreeNode{Int}[]
    res = Vector{Int}[]
    push!(q, root)
    while !isempty(q)
        push!(res, Int[])
        while !isempty(q)
            fst = popfirst!(q)
            push!(res[end], fst.val)
            !isnothing(fst.left) && push!(q2, fst.left) 
            !isnothing(fst.right) && push!(q2, fst.right)
        end
        q, q2 = q2, q
    end    
    return res
end
## @lc code=end
