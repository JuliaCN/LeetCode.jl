# @lc code=start
using LeetCode

function lowest_common_ancestor_235(root::TreeNode, p::TreeNode, q::TreeNode)::TreeNode
    lv, gv = p.val < q.val ? (p.val, q.val) : (q.val, p.val)
    while true
        lv <= root.val <= gv && return root
        root = root.val < lv ? root.right : root.left
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

