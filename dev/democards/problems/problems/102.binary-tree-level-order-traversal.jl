# @lc code=start
using LeetCode

function level_order(root::Union{Nothing, TreeNode{Int}})
    isnothing(root) && return Int[]
    q = TreeNode{Int}[]
    q2 = TreeNode{Int}[]
    res = Vector{Int}[]
    push!(q, root)
    while !isempty(q)
        push!(res, Int[])
        while !isempty(q)
            fst = popfirst!(q)
            push!(res[end], fst.val)
            !isnothing(fst.left) && push!(q2, fst.left)
            !isnothing(fst.right) && push!(q2, fst.right)
        end
        q, q2 = q2, q
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

