# @lc code=start
using LeetCode

function is_unival_tree(root::TreeNode)
    is_unival_tree(::Nothing, ::Int) = true
    is_unival_tree(root::TreeNode, val::Int) =
        (root.val != val) ? false :
               is_unival_tree(root.left, val) && is_unival_tree(root.right, val)
    return is_unival_tree(root, root.val)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

