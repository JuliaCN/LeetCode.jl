# @lc code=start
using LeetCode

insert_into_bst(::Nothing, val::Int) = TreeNode(val)
function insert_into_bst(root::TreeNode, val::Int)::TreeNode
    if root.val > val
        root.left = insert_into_bst(root.left, val)
    else
        root.right = insert_into_bst(root.right, val)
    end
    return root
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

