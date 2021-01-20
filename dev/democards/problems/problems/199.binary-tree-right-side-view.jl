# @lc code=start
using LeetCode

function right_side_view(root::TreeNode{Int})::Vector{Int}
    q = Queue{Pair{TreeNode{Int}, Int}}()
    res = Int[]
    enqueue!(q, Pair(root, 1))
    while !isempty(q)
        nd, layer = dequeue!(q)
        (nd.left !== nothing) && enqueue!(q, Pair(nd.left, layer + 1))
        (nd.right !== nothing) && enqueue!(q, Pair(nd.right, layer + 1))
        (isempty(q) || layer < first(q).second) && (push!(res, nd.val))
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

