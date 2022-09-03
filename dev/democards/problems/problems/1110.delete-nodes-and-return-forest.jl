# @lc code=start
using LeetCode

function del_nodes1110(node::TreeNode{Int}, to_delete::Vector{Int})
    to_deletes = Set(to_delete)
    res = TreeNode{Int}[]
    queue = [(node, true)]

    while !isempty(queue)
        root, flg = popfirst!(queue)
        if root.val ∈ to_deletes
            !isnothing(root.left) && push!(queue, (root.left, true))
            !isnothing(root.right) && push!(queue, (root.right, true))
            continue
        end
        for child in (:left, :right)
            isnothing(getproperty(root, child)) && continue
            if getproperty(root, child).val ∈ to_deletes
                !isnothing(getproperty(root, child).left) &&
                    push!(queue, (getproperty(root, child).left, true))
                !isnothing(getproperty(root, child).right) &&
                    push!(queue, (getproperty(root, child).right, true))
                setproperty!(root, child, nothing)
            else
                push!(queue, (getproperty(root, child), false))
            end
        end
        flg && push!(res, root)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

