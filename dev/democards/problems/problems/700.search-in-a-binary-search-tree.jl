# @lc code=start
using LeetCode

function search_bst(root::TreeNode, val::Int)::Union{TreeNode,Nothing}
    while !isnothing(root)
        root.val == val && return root
        root = (root.val > val) ? root.left : root.right
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

