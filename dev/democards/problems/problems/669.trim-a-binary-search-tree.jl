# @lc code=start
using LeetCode

trim_BST(::Nothing, L::Int, R::Int) = nothing

function trim_BST(root::TreeNode{Int}, L::Int, R::Int)
    root.val > R && return trim_BST(root.left, L, R)
    root.val < L && return trim_BST(root.right, L, R)
    root.left = trim_BST(root.left, L, R)
    root.right = trim_BST(root.right, L, R)
    return root
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

