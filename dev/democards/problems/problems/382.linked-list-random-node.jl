# @lc code=start
using LeetCode

function get_random(head::ListNode)::Int
    node, i, res = head, 1, 0
    while !isnothing(node)
        if rand(1:i) == 1  ## 1/i prob for value change
            res = node.val
        end
        node = node.next
        i += 1
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

