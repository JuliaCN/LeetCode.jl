# @lc code=start
using LeetCode

function bst_from_preorder(preorder::AbstractVector{Int})
    if isempty(preorder)
        return nothing
    end
    i, f = 2, preorder[1]
    root = TreeNode(f)
    while i <= length(preorder) && preorder[i] < f
        i += 1
    end
    i -= 1
    root.left = bst_from_preorder(@view preorder[2:i])
    root.right = bst_from_preorder(@view preorder[i+1:end])
    root
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

