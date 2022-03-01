# @lc code=start
using LeetCode

maximum_depth_of_btree(::Nothing) = 0
function maximum_depth_of_btree(root::TreeNode)
    return maximum(maximum_depth_of_btree, [root.left, root.right]) + 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

