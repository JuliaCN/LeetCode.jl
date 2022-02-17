# @lc code=start
using LeetCode

function delete_duplicates!(head::Union{ListNode,Nothing})::Union{ListNode,Nothing}
    cur = head
    while !isnothing(cur)
        node, value = next(cur), val(cur)
        while !isnothing(node) && val(node) == value
            cur.next = node = next(node)
        end
        cur = next(cur)
    end
    return head
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

