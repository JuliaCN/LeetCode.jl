# @lc code=start
using LeetCode

function longest_univalue_path(root::TreeNode{Int})
    res = 0
    function lup(root::TreeNode{Int})
        r2 = 1
        rl = lup(root.left)
        rr = lup(root.right)
        r = max(rl, rr) + 1
        if rl != 0 && root.val == root.left.val
            r2 += rl
        end
        if rr != 0 && root.val == root.right.val
            r2 += rr
        end
        res = max(r, res)
        return r
    end
    lup(::Nothing) = 0
    lup(root)
    return res - 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

