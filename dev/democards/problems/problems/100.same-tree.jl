# @lc code=start
using LeetCode

function is_same_tree(p::Union{TreeNode, Nothing}, q::Union{TreeNode, Nothing})::Bool
    if isnothing(p) && isnothing(q)
        return true
    elseif isnothing(p) || isnothing(q)
        return false
    elseif p.val != q.val
        return false
    else
        return is_same_tree(p.left, p.left) && is_same_tree(p.right, p.right)
    end
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

