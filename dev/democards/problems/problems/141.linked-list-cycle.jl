# @lc code=start
using LeetCode
function has_cycle(head::Union{ListNode,Nothing})::Bool
    isnothing(head) && return false
    swift = slow = head
    while !isnothing(swift.next) && !isnothing(swift.next.next)
        slow, swift = slow.next, swift.next.next
        slow === swift && return true
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

