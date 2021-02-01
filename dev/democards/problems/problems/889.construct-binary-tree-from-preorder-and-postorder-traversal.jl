# @lc code=start
using LeetCode

function construct_from_pre_post(pre::Vector{Int}, post::Vector{Int})
    if isempty(pre)
        return nothing
    end
    root = TreeNode(pre[1])
    if length(pre) == 1
        return root
    end
    idx = findfirst(==(pre[2]), post)
    root.left = construct_from_pre_post(pre[2:1+idx], post[1:idx])
    root.right = construct_from_pre_post(pre[2+idx:end], post[1+idx:end-1])
    root
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

