# ---
# title: 113. Path Sum II
# id: problem113
# author: zhwang
# date: 2022-01-23
# difficulty: Medium
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/path-sum-ii/description/>
# hidden: true
# ---
# 
# Given a binary tree and a sum, find all root-to-leaf paths where each path's
# sum equals the given sum.
# 
# **Note:**  A leaf is a node with no children.
# 
# **Example:**
# 
# Given the below binary tree and `sum = 22`,
# 
#     
#     
#           **5**
#          **/ \**
#         **4   8**
#        **/**   / **\**
#       **11**  13  **4**
#      /  **\**    **/** \
#     7    **2**  **5**   1
#     
# 
# Return:
# 
#     
#     
#     [
#        [5,4,11,2],
#        [5,8,4,5]
#     ]
#     
# 
# 
## @lc code=start
using LeetCode

function path_sum_113(node::Union{Nothing,TreeNode}, target::Int)::Vector{Vector{Int}}
    isnothing(node) && return Vector{Vector{Int}}[]
    isnothing(node.left) &&
        isnothing(node.right) &&
        return node.val != target ? Vector{Vector{Int}}[] : [[target]]
    paths = path_sum_113(node.left, target - node.val)
    paths = vcat(paths, path_sum_113(node.right, target - node.val))
    for path in paths
        pushfirst!(path, node.val)
    end
    return paths
end

## @lc code=end
