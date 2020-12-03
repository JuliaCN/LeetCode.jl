@doc doc"""
@lc app=leetcode id=124 lang=python3

[124] Binary Tree Maximum Path Sum

https://leetcode.com/problems/binary-tree-maximum-path-sum/description/

algorithms
Hard (31.97%)
Likes:    4403
Dislikes: 331
Total Accepted:    415.6K
Total Submissions: 1.2M
Testcase Example:  '[1,2,3]'

Given a non-empty binary tree, find the maximum path sum.

For this problem, a path is defined as any sequence of nodes from some
starting node to any node in the tree along the parent-child connections. The
path must contain at least one node and does not need to go through the
root.

Example 1:


Input: [1,2,3]

⁠      1
⁠     / \
⁠    2   3

Output: 6


Example 2:


Input: [-10,9,20,null,null,15,7]

-10
/ \
9  20
/  \
15   7

Output: 42




@lc code=start
"""
function max_path_sum(root::TreeNode)
    max_val = typemin(Int)

    function max_sum_to_leaf(x)
        isnothing(x) && return 0
        left = max_sum_to_leaf(x.left)
        right = max_sum_to_leaf(x.right)
        max_val = max(max_val, left + x.val + right)
        return max(0, x.val + max(left, right))
    end

    max_sum_to_leaf(root)
    return max_val
end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

