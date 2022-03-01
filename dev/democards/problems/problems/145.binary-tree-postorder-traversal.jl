# @lc code=start
using LeetCode
postorder_traversal(::Nothing) = Int[]
function postorder_traversal(root::TreeNode)::Vector{Int}
    res, stack = Int[], [(root, -1)] ## -1 for left subtree, 1 for right subtree
    while !isempty(stack)
        cur = last(stack)
        if last(cur) == -1 ## search left subtree
            stack[end] = (cur[1], 1)
            !isnothing(cur[1].left) && push!(stack, (cur[1].left, -1))
        elseif last(cur) == 1 ## search right subtree
            stack[end] = (cur[1], 0)
            !isnothing(cur[1].right) && push!(stack, (cur[1].right, -1))
        else
            cur = pop!(stack)
            push!(res, cur[1].val) ## postorder traversal: put codes here
        end
    end
    return res
end

##### code template for inorder/preorder/postorder traversal #####
# function traversal(root::TreeNode)::Vector{Int}
#     res, stack = Int[], [(root, -1)] ## -1 for left subtree, 1 for right subtree
#     while !isempty(stack)
#         cur = last(stack)
#         if last(cur) == -1 ## search left subtree
#             stack[end] = (cur[1], 1)
#             ## preorder traversal: put codes here
#             !isnothing(cur[1].left) && push!(stack, (cur[1].left, -1))
#         elseif last(cur) == 1 ## search right subtree
#             stack[end] = (cur[1], 0)
#             ## inorder traversal: put codes here
#             !isnothing(cur[1].right) && push!(stack, (cur[1].right, -1))
#         else
#             cur = pop!(stack)
#             ## postorder traversal: put codes here
#         end
#     end
#     return res
# end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

