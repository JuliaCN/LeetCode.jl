# @lc code=start
using LeetCode

width_of_binary_tree(root::Nothing) = 0

function width_of_binary_tree(root::TreeNode{Int})::Int
    q1 = Tuple{TreeNode{Int}, Int}[]
    q2 = copy(q1)
    push!(q1, (root, 1))
    res = 1
    while !isempty(q1)
        res = max(res, q1[end][2] - q1[1][2] + 1)
        for (nd, idx) in q1
            !isnothing(nd.left) && push!(q2, (nd.left, idx << 1))
            !isnothing(nd.right) && push!(q2, (nd.right, (idx << 1) + 1))
        end
        q1, q2 = q2, q1
        empty!(q2)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

