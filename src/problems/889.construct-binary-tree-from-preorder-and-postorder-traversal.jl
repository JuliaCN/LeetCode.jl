# ---
# title: 889. Construct Binary Tree from Preorder and Postorder Traversal
# id: problem889
# author: Indigo
# date: 2021-02-01
# difficulty: Medium
# categories: Tree
# link: <https://leetcode.com/problems/construct-binary-tree-from-preorder-and-postorder-traversal/description/>
# hidden: true
# ---
# 
# Return any binary tree that matches the given preorder and postorder
# traversals.
# 
# Values in the traversals `pre` and `post` are distinct positive integers.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: pre = [1,2,4,5,3,6,7], post = [4,5,2,6,7,3,1]
#     Output: [1,2,3,4,5,6,7]
#     
# 
# 
# 
# **Note:**
# 
#   * `1 <= pre.length == post.length <= 30`
#   * `pre[]` and `post[]` are both permutations of `1, 2, ..., pre.length`.
#   * It is guaranteed an answer exists. If there exists multiple answers, you can return any of them.
# 
# 
## @lc code=start
using LeetCode

function construct_from_pre_post(pre::Vector{Int}, post::Vector{Int})
    if isempty(pre)
        return nothing
    end
    root = TreeNode(pre[1])
    if length(pre) == 1
        return root
    end
    idx = findfirst(==(pre[2]), post)
    root.left = construct_from_pre_post(pre[2:1+idx], post[1:idx])
    root.right = construct_from_pre_post(pre[2+idx:end], post[1+idx:end-1])
    root
end
## @lc code=end
