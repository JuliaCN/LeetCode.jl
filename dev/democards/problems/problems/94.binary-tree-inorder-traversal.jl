# @lc code=start
using LeetCode

inorder_traversal(::Nothing) = Int[]
function inorder_traversal(root::TreeNode)::Vector{Int}
    res, stack = Int[], []
    while !isempty(stack) || !isnothing(root)
        while !isnothing(root)
            push!(stack, root)
            root = root.left
        end
        root = pop!(stack)
        push!(res, root.val) ## inorder search
        root = root.right
    end
    return res
end

##### code template for inorder traversal and preorder traversal #####
# traversal(::Nothing) = Int[]
# function traversal(root::TreeNode)::Vector{Int}
#     res, stack = Int[], []
#     while !isempty(stack) || !isnothing(root)
#         while !isnothing(root)
#             push!(stack, root)
#             ## preorder traversal: put codes here
#             root = root.left
#         end
#         root = pop!(stack)
#         ## inorder traversal: put codes here
#         root = root.right
#     end
#     res
# end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

