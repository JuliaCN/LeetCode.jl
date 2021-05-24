# ---
# title: 129. Sum Root to Leaf Numbers
# id: problem129
# author: Qling
# date: 2021-05-24
# difficulty: Medium
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/sum-root-to-leaf-numbers/description/>
# hidden: true
# ---
# 
# Given a binary tree containing digits from `0-9` only, each root-to-leaf path
# could represent a number.
# 
# An example is the root-to-leaf path `1->2->3` which represents the number
# `123`.
# 
# Find the total sum of all root-to-leaf numbers.
# 
# **Note:**  A leaf is a node with no children.
# 
# **Example:**
# 
#     
#     
#     Input: [1,2,3]
#         1
#        / \
#       2   3
#     Output: 25
#     Explanation:
#     The root-to-leaf path 1->2 represents the number 12.
#     The root-to-leaf path 1->3 represents the number 13.
#     Therefore, sum = 12 + 13 = 25.
# 
# **Example 2:**
# 
#     
#     
#     Input: [4,9,0,5,1]
#         4
#        / \
#       9   0
#      / \
#     5   1
#     Output: 1026
#     Explanation:
#     The root-to-leaf path 4->9->5 represents the number 495.
#     The root-to-leaf path 4->9->1 represents the number 491.
#     The root-to-leaf path 4->0 represents the number 40.
#     Therefore, sum = 495 + 491 + 40 = 1026.
# 
# 
## @lc code=start
using LeetCode
using DataStructures

function sum_numbers(root::TreeNode)::Int
    queue, res = Deque{TreeNode}(), 0

    !isnothing(root) && push!(queue, root)

    while !isempty(queue)
        node = popfirst!(queue)
        if isnothing(node.left) && isnothing(node.right)
            res += node.val
        end
        if !isnothing(node.left)
            node.left.val += node.val * 10
            push!(queue, node.left)
        end
        if !isnothing(node.right)
            node.right.val += node.val * 10
            push!(queue, node.right)
        end
    end

    return res
end
## @lc code=end
