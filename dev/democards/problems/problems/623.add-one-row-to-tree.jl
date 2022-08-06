# @lc code=start
using LeetCode

function add_one_row!(root::TreeNode, val::Int, depth::Int)
    if depth == 1
        node = TreeNode(val)
        node.left = root
        node
    else
        queue = [root]
        for _ in 1:(depth - 2), _ in eachindex(queue)
            node = popfirst!(queue)
            isnothing(node.left) || push!(queue, node.left)
            isnothing(node.right) || push!(queue, node.right)
        end
        for node in queue
            left, right = node.left, node.right
            node.left = TreeNode(val)
            node.left.left = left
            node.right = TreeNode(val)
            node.right.right = right
        end
        root
    end
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

