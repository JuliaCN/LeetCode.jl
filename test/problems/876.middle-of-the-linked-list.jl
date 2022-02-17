@testset "876.middle-of-the-linked-list.jl" begin
    head = ListNode{Int}([1, 2, 3, 4, 5])
    expected = head.next.next
    @test middle_node_by_double_pointers(head) === expected

    head = ListNode{Int}([1, 2, 3, 4, 5, 6])
    expected = head.next.next.next
    @test middle_node_by_double_pointers(head) === expected
end
