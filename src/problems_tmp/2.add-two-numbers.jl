function add_two_numbers(l1::ListNode, l2::ListNode)::ListNode
    carry = 0
    fake_head = cur = ListNode()

    while !isnothing(l1) || !isnothing(l2) || !iszero(carry)
        v1, v2 = 0, 0

        if !isnothing(l1)
            v1 = val(l1)
            l1 = next(l1)
        end

        if !isnothing(l2)
            v2 = val(l2)
            l2 = next(l2)
        end

        carry, v = divrem(v1 + v2 + carry, 10)
        next!(cur, ListNode(v))
        cur = next(cur)
    end

    return next(fake_head)
end
