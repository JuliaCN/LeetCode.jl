# ---
# title: 971. Flip Binary Tree To Match Preorder Traversal
# id: problem971
# author: Indigo
# date: 2021-02-20
# difficulty: Medium
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/flip-binary-tree-to-match-preorder-traversal/description/>
# hidden: true
# ---
# 
# Given a binary tree with `N` nodes, each node has a different value from `{1,
# ..., N}`.
# 
# A node in this binary tree can be _flipped_  by swapping the left child and
# the right child of that node.
# 
# Consider the sequence of `N` values reported by a preorder traversal starting
# from the root.  Call such a sequence of `N` values the  _voyage_  of the tree.
# 
# (Recall that a _preorder traversal_  of a node means we report the current
# node's value, then preorder-traverse the left child, then preorder-traverse
# the right child.)
# 
# Our goal is to flip the **least number** of nodes in the tree so that the
# voyage of the tree matches the `voyage` we are given.
# 
# If we can do so, then return a list of the values of all nodes flipped.  You
# may return the answer in any order.
# 
# If we cannot do so, then return the list `[-1]`.
# 
# 
# 
# **Example 1:**
# 
# **![](https://assets.leetcode.com/uploads/2019/01/02/1219-01.png)**
# 
#     
#     
#     Input: root = [1,2], voyage = [2,1]
#     Output: [-1]
#     
# 
# **Example 2:**
# 
# **![](https://assets.leetcode.com/uploads/2019/01/02/1219-02.png)**
# 
#     
#     
#     Input: root = [1,2,3], voyage = [1,3,2]
#     Output: [1]
#     
# 
# **Example 3:**
# 
# **![](https://assets.leetcode.com/uploads/2019/01/02/1219-02.png)**
# 
#     
#     
#     Input: root = [1,2,3], voyage = [1,2,3]
#     Output: []
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= N <= 100`
# 
# 
## @lc code=start
using LeetCode

function flip_match_voyage(root::TreeNode, voyage::Vector{Int})
    res = Int[]
    i = 1
    dfs(::Nothing) = nothing
    function dfs(node::TreeNode)
        if node.val != voyage[i]
            res = [-1]
            return
        end
        i += 1
        if i ≤ length(voyage) && node.left !== nothing && node.left.val != voyage[i]
            push!(res, node.val)
            dfs(node.right)
            dfs(node.left)
        else
            dfs(node.left)
            dfs(node.right)
        end
    end
    dfs(root)
    return (!isempty(res) && res[1] == -1) ? [-1] : res
end
## @lc code=end
