# @lc code=start
using LeetCode

function invert_tree!(root::Union{TreeNode{Int},Nothing})::Union{TreeNode,Nothing}
    isnothing(root) && return nothing
    queue = [root]
    while !isempty(queue)
        node = popfirst!(queue)
        if !isnothing(node.left)
            push!(queue, node.left)
        end
        if !isnothing(node.right)
            push!(queue, node.right)
        end
        node.left, node.right = node.right, node.left
    end
    return root
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

