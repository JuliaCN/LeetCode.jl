# @lc code=start
using LeetCode

function path_sum_113(node::Union{Nothing,TreeNode}, target::Int)::Vector{Vector{Int}}
    isnothing(node) && return Vector{Vector{Int}}[]
    isnothing(node.left) &&
        isnothing(node.right) &&
        return node.val != target ? Vector{Vector{Int}}[] : [[target]]
    paths = path_sum_113(node.left, target - node.val)
    paths = vcat(paths, path_sum_113(node.right, target - node.val))
    for path in paths
        pushfirst!(path, node.val)
    end
    return paths
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

