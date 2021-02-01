# @lc code=start
using LeetCode

function increasing_bst(root::TreeNode{Int})
    p = TreeNode(0)
    q = p
    function mid_tranv(root::TreeNode{Int})
        (root.left !== nothing) && mid_tranv(root.left)
        q.right = TreeNode(root.val)
        q = q.right
        (root.right !== nothing) && mid_tranv(root.right)
        nothing
    end
    mid_tranv(root)
    p.right
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

