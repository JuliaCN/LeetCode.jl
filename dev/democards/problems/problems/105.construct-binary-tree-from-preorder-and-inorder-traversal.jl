# @lc code=start
using LeetCode

# using @view macro
function build_tree_105(preorder::AbstractArray, inorder::AbstractArray)::TreeNode
    root = TreeNode(first(preorder))
    pos = findfirst(==(root.val), inorder)
    pos != 1 &&
        (root.left = build_tree_105(@view(preorder[2:pos]), @view(inorder[1:(pos - 1)])))
    pos != length(preorder) && (
        root.right = build_tree_105(
            @view(preorder[(pos + 1):end]), @view(inorder[(pos + 1):end])
        )
    )
    return root
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

