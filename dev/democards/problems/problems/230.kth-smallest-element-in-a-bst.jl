# @lc code=start
using LeetCode

function kth_smallest_in_BST(root, k::Int)::Int
    isnothing(root) && return true
    arr = Int[]
    function pre_tra(root::TreeNode{Int})
        pre_tra(root.left)
        push!(arr, root.val)
        pre_tra(root.right)
    end
    pre_tra(::Nothing) = nothing
    pre_tra(root)
    arr[k]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

