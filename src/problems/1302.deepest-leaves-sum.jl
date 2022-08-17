# ---
# title: 1302. Deepest Leaves Sum
# id: problem1302
# author: zhwang
# date: 2022-08-17
# difficulty: Medium
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/deepest-leaves-sum/description/>
# hidden: true
# ---
# 
# Given a binary tree, return the sum of values of its deepest leaves.
# 
# 
# 
# **Example 1:**
# 
# **![](https://assets.leetcode.com/uploads/2019/07/31/1483_ex1.png)**
# 
#     
#     
#     Input: root = [1,2,3,4,5,null,6,7,null,null,null,null,8]
#     Output: 15
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is between `1` and `10^4`.
#   * The value of nodes is between `1` and `100`.
# 
# 
## @lc code=start
using LeetCode

function deepest_leaves_sum(root::TreeNode)
    nodes = [root]
    while true
        val = 0
        for _ in eachindex(nodes)
            node = popfirst!(nodes)
            val += node.val
            isnothing(node.left) || push!(nodes, node.left)
            isnothing(node.right) || push!(nodes, node.right)
        end
        isempty(nodes) && return val
    end
    return 0
end

## @lc code=end
