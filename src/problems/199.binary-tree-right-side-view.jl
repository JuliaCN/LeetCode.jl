# ---
# title: 199. Binary Tree Right Side View
# id: problem199
# author: Indigo
# date: 2021-01-20
# difficulty: Medium
# categories: Tree, Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/binary-tree-right-side-view/description/>
# hidden: true
# ---
# 
# Given a binary tree, imagine yourself standing on the _right_ side of it,
# return the values of the nodes you can see ordered from top to bottom.
# 
# **Example:**
# 
#     
#     
#     Input:  [1,2,3,null,5,null,4]
#     Output:  [1, 3, 4]
#     Explanation:
#        1            <---
#      /   \
#     2     3         <---
#      \     \
#       5     4       <---
#     
# 
# 
## @lc code=start
using LeetCode

function right_side_view(root::TreeNode{Int})::Vector{Int}
    q = Queue{Pair{TreeNode{Int}, Int}}()
    res = Int[]
    enqueue!(q, Pair(root, 1))
    while !isempty(q)
        nd, layer = dequeue!(q)
        (nd.left !== nothing) && enqueue!(q, Pair(nd.left, layer + 1))
        (nd.right !== nothing) && enqueue!(q, Pair(nd.right, layer + 1))
        (isempty(q) || layer < first(q).second) && (push!(res, nd.val))
    end
    res
end
## @lc code=end
