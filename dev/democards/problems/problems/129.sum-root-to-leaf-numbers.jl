# @lc code=start
using LeetCode
using DataStructures

function sum_numbers(root::TreeNode)::Int
    queue, res = Deque{TreeNode}(), 0

    !isnothing(root) && push!(queue, root)

    while !isempty(queue)
        node = popfirst!(queue)
        if isnothing(node.left) && isnothing(node.right)
            res += node.val
        end
        if !isnothing(node.left)
            node.left.val += node.val * 10
            push!(queue, node.left)
        end
        if !isnothing(node.right)
            node.right.val += node.val * 10
            push!(queue, node.right)
        end
    end

    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

