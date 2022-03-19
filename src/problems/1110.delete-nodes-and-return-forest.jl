# ---
# title: 1110. Delete Nodes And Return Forest
# id: problem1110
# author: Indigo
# date: 2022-03-19
# difficulty: Medium
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/delete-nodes-and-return-forest/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, each node in the tree has a distinct value.
# 
# After deleting all nodes with a value in `to_delete`, we are left with a
# forest (a disjoint union of trees).
# 
# Return the roots of the trees in the remaining forest.  You may return the
# result in any order.
# 
# 
# 
# **Example 1:**
# 
# **![](https://assets.leetcode.com/uploads/2019/07/01/screen-
# shot-2019-07-01-at-53836-pm.png)**
# 
#     
#     
#     Input: root = [1,2,3,4,5,6,7], to_delete = [3,5]
#     Output: [[1,2,null,4],[6],[7]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the given tree is at most `1000`.
#   * Each node has a distinct value between `1` and `1000`.
#   * `to_delete.length <= 1000`
#   * `to_delete` contains distinct values between `1` and `1000`.
# 
# 
## @lc code=start
using LeetCode

function del_nodes1110(node::TreeNode{Int}, to_delete::Vector{Int})
    to_deletes = Set(to_delete)
    res = TreeNode{Int}[]
    queue = [(node, true)]

    while !isempty(queue)
        root, flg = popfirst!(queue)
        if root.val ∈ to_deletes
            !isnothing(root.left) && push!(queue, (root.left))
            !isnothing(root.right) && push!(queue, (root.right))
            continue
        end
        for child in (:left, :right)
            isnothing(getproperty(root, child)) && continue
            if getproperty(root, child).val ∈ to_deletes
                !isnothing(getproperty(root, child).left) && push!(queue, (getproperty(root, child).left, true))
                !isnothing(getproperty(root, child).right) && push!(queue, (getproperty(root, child).right, true))
                setproperty!(root, child, nothing)
            else
                push!(queue, (getproperty(root, child), false))
            end
        end
        flg && push!(res, root)
    end
    res
end
## @lc code=end
