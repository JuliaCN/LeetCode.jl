# @lc code=start
using LeetCode

function tree_path_sum(root::TreeNode{Int}, sm::Int)::Int
    res = 0
    tsum(::Nothing, sm::Int) = nothing
    function tsum(root::TreeNode{Int}, sm::Int)::Nothing
        sm -= root.val
        sm == 0 && (res += 1)
        tsum(root.left, sm)
        tsum(root.right, sm)
    end
    tsum(root, sm)
    res += tree_path_sum(root.left, sm)
    res += tree_path_sum(root.right, sm)
end

tree_path_sum(root::Nothing, sum::Int) = 0
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

