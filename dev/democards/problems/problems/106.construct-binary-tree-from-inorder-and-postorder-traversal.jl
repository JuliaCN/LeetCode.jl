# @lc code=start
using LeetCode

function build_tree_inpost(inorder::AbstractArray, postorder::AbstractArray)::TreeNode
    root = TreeNode(last(postorder))
    pos = findfirst(==(root.val), inorder)
    pos != 1 && (
        root.left = build_tree_inpost(
            @view(inorder[1:(pos - 1)]), @view(postorder[1:(pos - 1)])
        )
    )
    pos != length(postorder) && (
        root.right = build_tree_inpost(
            @view(inorder[(pos + 1):end]), @view(postorder[pos:(end - 1)])
        )
    )
    return root
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

