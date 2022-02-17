# @lc code=start
using LeetCode

is_symmetric_tree(root::TreeNode{Int})::Bool = is_mirror_tree(root.left, root.right)
function is_mirror_tree(
    t1::Union{TreeNode{Int},Nothing}, t2::Union{TreeNode{Int},Nothing}
)::Bool
    isnothing(t1) && isnothing(t2) && return true
    (isnothing(t1) || isnothing(t2)) && return false
    t1.val != t2.val && return false
    return is_mirror_tree(t1.left, t2.right) && is_mirror_tree(t1.right, t2.left)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

