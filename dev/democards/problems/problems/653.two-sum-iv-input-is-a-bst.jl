# @lc code=start
using LeetCode

function find_target_inorder_traversal(root::TreeNode, k::Int)::Bool
    stack, nums = TreeNode{Int}[], Real[-Inf32] ## lowest bound
    while !isempty(stack) || !isnothing(root)
        while !isnothing(root)
            push!(stack, root)
            root = root.left
        end
        root = pop!(stack)
        while nums[end] + root.val > k
            pop!(nums)
        end
        root.val + nums[end] == k && return true
        push!(nums, root.val)
        root = root.right
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

