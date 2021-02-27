# @lc code=start
using LeetCode

function distribute_coins(root::TreeNode{Int})
    dfs(::Nothing) = 0
    function dfs(root::TreeNode{Int})
        l = dfs(root.left)
        r = dfs(root.right)
        res = res + abs(l) + abs(r)
        root.val + l + r - 1
    end
    res = 0
    dfs(root)
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

