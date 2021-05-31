# @lc code=start
using LeetCode

function is_cousins(root::TreeNode{Int}, x, y)
    q = NTuple{2, Union{Nothing, TreeNode}}[]
    push!(q, (root, nothing))
    while !isempty(q)
        n = length(q)
        rec_parent = TreeNode{Int}[]
        for i in 1:n
            cur, par = popfirst!(q)
            if cur.val == x || cur.val == y
                push!(rec_parent, par)
            end
            isnothing(cur.left) || push!(q, (cur.left, cur))
            isnothing(cur.right) || push!(q, (cur.right, cur))
        end
        length(rec_parent) == 0 && continue
        length(rec_parent) == 1 && return false
        length(rec_parent) == 2 && return rec_parent[1] != rec_parent[2]
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

