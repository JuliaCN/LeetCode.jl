# @lc code=start
using LeetCode

function is_valid_BST(root)
    isnothing(root) && return true
    arr = Int[]
    function pre_tra(root::TreeNode{Int})
        pre_tra(root.left)
        push!(arr, root.val)
        return pre_tra(root.right)
    end
    pre_tra(::Nothing) = nothing
    pre_tra(root)
    return issorted(arr; lt=!isless, rev=true)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

