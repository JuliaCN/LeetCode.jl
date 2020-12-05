function diameter_of_binary_tree(root::TreeNode)::Int
    return max(
        diameter_of_binary_tree(root.left),
        diameter_of_binary_tree(root.right),
        _max_depth_to_leaf(root.left) + _max_depth_to_leaf(root.right) + 1,
    ) - 1
end

diameter_of_binary_tree(root::Nothing) = 0

function _max_depth_to_leaf(root::TreeNode)
    return max(1 + _max_depth_to_leaf(root.left), 1 + _max_depth_to_leaf(root.right))
end

_max_depth_to_leaf(::Nothing) = 0
