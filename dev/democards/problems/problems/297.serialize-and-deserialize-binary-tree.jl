# @lc code=start
using LeetCode

serialize(::Nothing) = "[]"
function serialize(root::TreeNode{Int})::String
    res, queue, hasnew = String[], Union{TreeNode,Nothing}[root], true
    while hasnew
        hasnew = false
        for _ in 1:length(queue)
            node = popfirst!(queue)
            if !isnothing(node)
                push!(res, string(node.val))
                push!(queue, node.left)
                push!(queue, node.right)
                all(isnothing.([node.left, node.right])) || (hasnew = true)
            else
                push!(res, "null")
            end
        end
    end
    return "[" * join(res, ',') * "]"
end

function deserialize(data::String)::Union{TreeNode,Nothing}
    data == "[]" && return nothing
    vals = split(data[2:(end - 1)], ',')
    root, n = TreeNode(parse(Int, vals[1])), length(vals)
    queue, m = [root], 2
    while m <= n
        for _ in 1:length(queue) ## new nodes
            node = popfirst!(queue)
            if vals[m] != "null"
                node.left = TreeNode(parse(Int, vals[m]))
                push!(queue, node.left)
            end
            if vals[m + 1] != "null"
                node.right = TreeNode(parse(Int, vals[m + 1]))
                push!(queue, node.right)
            end
            m += 2
        end
    end
    return root
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

