# ---
# title: 297. Serialize and Deserialize Binary Tree
# id: problem297
# author: zhwang
# date: 2022-03-11
# difficulty: Hard
# categories: Tree, Design
# link: <https://leetcode.com/problems/serialize-and-deserialize-binary-tree/description/>
# hidden: true
# ---
# 
# Serialization is the process of converting a data structure or object into a
# sequence of bits so that it can be stored in a file or memory buffer, or
# transmitted across a network connection link to be reconstructed later in the
# same or another computer environment.
# 
# Design an algorithm to serialize and deserialize a binary tree. There is no
# restriction on how your serialization/deserialization algorithm should work.
# You just need to ensure that a binary tree can be serialized to a string and
# this string can be deserialized to the original tree structure.
# 
# **Clarification:** The input/output format is the same as [how LeetCode
# serializes a binary tree](https://leetcode.com/faq/#binary-tree). You do not necessarily need to
# follow this format, so please be creative and come up with different
# approaches yourself.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/09/15/serdeser.jpg)
# 
#     
#     
#     Input: root = [1,2,3,null,null,4,5]
#     Output: [1,2,3,null,null,4,5]
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
#     
#     
#     Input: root = [1,2]
#     Output: [1,2]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[0, 104]`.
#   * `-1000 <= Node.val <= 1000`
# 
# 
## @lc code=start
using LeetCode

serialize(::Nothing) = "[]"
function serialize(root::TreeNode{Int})::String
    res, queue, hasnew = String[], Union{TreeNode,Nothing}[root], true
    while hasnew
        hasnew = false
        for _ in 1:length(queue)
            node = popfirst!(queue)
            if !isnothing(node)
                push!(res, string(node.val))
                push!(queue, node.left)
                push!(queue, node.right)
                all(isnothing.([node.left, node.right])) || (hasnew = true)
            else
                push!(res, "null")
            end
        end
    end
    return "[" * join(res, ',') * "]"
end

function deserialize(data::String)::Union{TreeNode,Nothing}
    data == "[]" && return nothing
    vals = split(data[2:(end - 1)], ',')
    root, n = TreeNode(parse(Int, vals[1])), length(vals)
    queue, m = [root], 2
    while m <= n
        for _ in 1:length(queue) ## new nodes
            node = popfirst!(queue)
            if vals[m] != "null"
                node.left = TreeNode(parse(Int, vals[m]))
                push!(queue, node.left)
            end
            if vals[m + 1] != "null"
                node.right = TreeNode(parse(Int, vals[m + 1]))
                push!(queue, node.right)
            end
            m += 2
        end
    end
    return root
end

## @lc code=end
