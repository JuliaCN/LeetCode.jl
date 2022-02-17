# @lc code=start
using LeetCode

function loweset_common_ancestor_236(
    root::TreeNode{Int}, p::TreeNode{Int}, q::TreeNode{Int}
)::TreeNode{Int}
    function dfs(node::Union{TreeNode{Int},Nothing})
        (isnothing(node) || node == p || node == q) && return node
        left, right = dfs(node.left), dfs(node.right)
        isnothing(left) && isnothing(right) && return nothing
        !isnothing(left) && !isnothing(right) && return node
        return !isnothing(left) ? left : right
    end
    return dfs(root)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

