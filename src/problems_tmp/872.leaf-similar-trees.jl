function leaf_similar(root1::TreeNode{V}, root2::TreeNode{V})::Bool where {V}
    leaves1 = V[]
    leaves2 = V[]
    find_leaves!(root1, leaves1)
    find_leaves!(root2, leaves2)
    return leaves1 == leaves2
end

function find_leaves!(t::TreeNode, leaves)
    if isnothing(t.left) && isnothing(t.right)
        push!(leaves, t.val)
    else
        find_leaves!(t.left, leaves)
        find_leaves!(t.right, leaves)
    end
end

find_leaves!(::Nothing, leaves) = nothing
