# @lc code=start
using LeetCode

function insert_into_max_tree(root::TreeNode{Int}, val::Int)
    tmp = TreeNode(val)
    if val > root.val
        tmp.left = root
        return tmp
    end
    root.right = insert_into_max_tree(root.right, val)
    return root
end
insert_into_max_tree(::Nothing, val::Int) = TreeNode(val)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

