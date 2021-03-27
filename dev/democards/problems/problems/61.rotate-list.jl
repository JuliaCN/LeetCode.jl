# @lc code=start
using LeetCode

function rotate_right(head::ListNode, k::Int)::ListNode
    isnothing(head) && return head

    last_element, length = head, 1
    while !isnothing(next(last_element))
        last_element = next(last_element)
        length += 1
    end

    k = k % length
    next!(last_element, head)

    temp_element = head
    for _ = 0:(length-k-2)
        temp_element = next(temp_element)
    end

    answer = next(temp_element)
    next!(temp_element, nothing)

    return answer
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

