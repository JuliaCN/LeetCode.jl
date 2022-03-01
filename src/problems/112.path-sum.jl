# ---
# title: 112. Path Sum
# id: problem112
# author: zhwang
# date: 2022-02-21
# difficulty: Easy
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/path-sum/description/>
# hidden: true
# ---
# 
# Given a binary tree and a sum, determine if the tree has a root-to-leaf path
# such that adding up all the values along the path equals the given sum.
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
#          **/** \
#         **4**   8
#        **/**   / \
#       **11**  13  4
#      /  **\**      \
#     7    **2**      1
#     
# 
# return true, as there exist a root-to-leaf path `5->4->11->2` which sum is 22.
# 
# 
## @lc code=start
using LeetCode

has_path_sum(::Nothing, ::Int) = false
function has_path_sum(root::TreeNode, target_sum::Int)::Bool
    root.val == target_sum && isnothing(root.left) && isnothing(root.right) && return true
    return any(has_path_sum.([root.left, root.right], target_sum - root.val))
end

## @lc code=end
