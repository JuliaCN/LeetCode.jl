# @lc code=start
using LeetCode

_sum_root_to_leaf(::Nothing) = (0, 0)
function _sum_root_to_leaf(root::TreeNode{Int})
    lft, rgt = _sum_root_to_leaf(root.left), _sum_root_to_leaf(root.right)
    tms = max(1, lft[2] + rgt[2])
    return (lft[1] + rgt[1]) + tms * root.val, tms * 2
end

sum_root_to_leaf(root::TreeNode{Int}) = _sum_root_to_leaf(root)[1]

# BFS Algorithm
# sum_root_to_leaf_bfs(::Nothing) = 0 # unnecessary
function sum_root_to_leaf_bfs(root::TreeNode)
    queue, res = [(root.val, root)], 0
    while !isempty(queue)
        for _ in 1:length(queue)
            val, node = popfirst!(queue)
            if isnothing(node.left) && isnothing(node.right)
                res += val
            else
                !isnothing(node.left) && push!(queue, (val << 1 + node.left.val, node.left))
                !isnothing(node.right) &&
                    push!(queue, (val << 1 + node.right.val, node.right))
            end
        end
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

