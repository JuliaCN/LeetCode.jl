# @lc code=start
using LeetCode

_sum_root_to_leaf(::Nothing) = (0, 0)
function _sum_root_to_leaf(root::TreeNode{Int})
    lft, rgt = _sum_root_to_leaf(root.left), _sum_root_to_leaf(root.right)
    tms = max(1, lft[2] + rgt[2])
    return (lft[1] + rgt[1]) + tms * root.val, tms * 2
end

sum_root_to_leaf(root::TreeNode{Int}) = _sum_root_to_leaf(root)[1]
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

