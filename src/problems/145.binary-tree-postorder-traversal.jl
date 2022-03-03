# ---
# title: 145. Binary Tree Postorder Traversal
# id: problem145
# author: zhwang
# date: 2022-02-19
# difficulty: Medium
# categories: Stack, Tree
# link: <https://leetcode.com/problems/binary-tree-postorder-traversal/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, return _the postorder traversal of its
# nodes ' values_.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/28/pre1.jpg)
# 
#     
#     
#     Input: root = [1,null,2,3]
#     Output: [3,2,1]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: root = []
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root = [1]
#     Output: [1]
#     
# 
# **Example 4:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/28/pre3.jpg)
# 
#     
#     
#     Input: root = [1,2]
#     Output: [2,1]
#     
# 
# **Example 5:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/28/pre2.jpg)
# 
#     
#     
#     Input: root = [1,null,2]
#     Output: [2,1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of the nodes in the tree is in the range `[0, 100]`.
#   * `-100 <= Node.val <= 100`
# 
# 
# 
# **Follow up:**
# 
# Recursive solution is trivial, could you do it iteratively?
# 
# 
# 
# 
## @lc code=start
using LeetCode
postorder_traversal(::Nothing) = Int[]
function postorder_traversal(root::TreeNode)::Vector{Int}
    res, stack = Int[], [(root, -1)] ## -1 for left subtree, 1 for right subtree
    while !isempty(stack)
        cur = last(stack)
        if last(cur) == -1 ## search left subtree
            stack[end] = (cur[1], 1)
            !isnothing(cur[1].left) && push!(stack, (cur[1].left, -1))
        elseif last(cur) == 1 ## search right subtree
            stack[end] = (cur[1], 0)
            !isnothing(cur[1].right) && push!(stack, (cur[1].right, -1))
        else
            cur = pop!(stack)
            push!(res, cur[1].val) ## postorder traversal: put codes here
        end
    end
    return res
end

##### code template for inorder/preorder/postorder traversal #####
## function traversal(root::TreeNode)::Vector{Int}
##     res, stack = Int[], [(root, -1)] ## -1 for left subtree, 1 for right subtree
##     while !isempty(stack)
##         cur = last(stack)
##         if last(cur) == -1 ## search left subtree
##             stack[end] = (cur[1], 1)
##             ## preorder traversal: put codes here
##             !isnothing(cur[1].left) && push!(stack, (cur[1].left, -1))
##         elseif last(cur) == 1 ## search right subtree
##             stack[end] = (cur[1], 0)
##             ## inorder traversal: put codes here
##             !isnothing(cur[1].right) && push!(stack, (cur[1].right, -1))
##         else
##             cur = pop!(stack)
##             ## postorder traversal: put codes here
##         end
##     end
##     return res
## end

## @lc code=end
