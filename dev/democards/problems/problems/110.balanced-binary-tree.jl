# @lc code=start
using LeetCode

is_balanced_binary_tree(::Nothing) = true
function is_balanced_binary_tree(root::TreeNode)::Bool
    tree_depth(::Nothing, depth::Int) = depth
    function tree_depth(tree::TreeNode, depth::Int)::Int
        # -1 for if tree is not balanceed
        (lt = tree_depth(tree.left, depth + 1)) == -1 && return -1
        (rt = tree_depth(tree.right, depth + 1)) == -1 && return -1
        return abs(lt - rt) <= 1 ? max(lt, rt) : -1
    end
    return tree_depth(root, 0) != -1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

