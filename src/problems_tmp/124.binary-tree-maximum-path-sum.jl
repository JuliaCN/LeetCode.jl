function max_path_sum(root::TreeNode)
    max_val = typemin(Int)

    function max_sum_to_leaf(x)
        isnothing(x) && return 0
        left = max_sum_to_leaf(x.left)
        right = max_sum_to_leaf(x.right)
        max_val = max(max_val, left + x.val + right)
        return max(0, x.val + max(left, right))
    end

    max_sum_to_leaf(root)
    return max_val
end
