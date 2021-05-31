# ---
# title: 993. Cousins in Binary Tree
# id: problem993
# author: Indigo
# date: 2020-10-31
# difficulty: Easy
# categories: Tree, Breadth-first Search
# link: <https://leetcode.com/problems/cousins-in-binary-tree/description/>
# hidden: true
# ---
# 
# In a binary tree, the root node is at depth `0`, and children of each depth
# `k` node are at depth `k+1`.
# 
# Two nodes of a binary tree are _cousins_ if they have the same depth, but have
# **different parents**.
# 
# We are given the `root` of a binary tree with unique values, and the values
# `x` and `y` of two different nodes in the tree.
# 
# Return `true` if and only if the nodes corresponding to the values `x` and `y`
# are cousins.
# 
# 
# 
# **Example 1:  
# ![](https://assets.leetcode.com/uploads/2019/02/12/q1248-01.png)**
# 
#     
#     
#     Input: root = [1,2,3,4], x = 4, y = 3
#     Output: false
#     
# 
# **Example 2:  
# ![](https://assets.leetcode.com/uploads/2019/02/12/q1248-02.png)**
# 
#     
#     
#     Input: root = [1,2,3,null,4,null,5], x = 5, y = 4
#     Output: true
#     
# 
# **Example 3:**
# 
# **![](https://assets.leetcode.com/uploads/2019/02/13/q1248-03.png)**
# 
#     
#     
#     Input: root = [1,2,3,null,4], x = 2, y = 3
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree will be between `2` and `100`.
#   * Each node has a unique integer value from `1` to `100`.
# 
# 
## @lc code=start
using LeetCode

function is_cousins(root::TreeNode{Int}, x, y)
    q = NTuple{2, Union{Nothing, TreeNode}}[]
    push!(q, (root, nothing))
    while !isempty(q)
        n = length(q)
        rec_parent = TreeNode{Int}[]
        for i in 1:n
            cur, par = popfirst!(q)
            if cur.val == x || cur.val == y
                push!(rec_parent, par)
            end
            isnothing(cur.left) || push!(q, (cur.left, cur))
            isnothing(cur.right) || push!(q, (cur.right, cur))
        end
        length(rec_parent) == 0 && continue
        length(rec_parent) == 1 && return false
        length(rec_parent) == 2 && return rec_parent[1] != rec_parent[2]        
    end
end
## @lc code=end
