# @lc code=start
using LeetCode

has_path_sum(::Nothing, ::Int) = false
function has_path_sum(root::TreeNode, target_sum::Int)::Bool
    root.val == target_sum && isnothing(root.left) && isnothing(root.right) && return true
    return any(has_path_sum.([root.left, root.right], target_sum - root.val))
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

