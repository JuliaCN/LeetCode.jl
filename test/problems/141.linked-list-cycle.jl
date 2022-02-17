@testset "141.linked-list-cycle.jl" begin
    @test has_cycle(ListNode{Int}([1])) == false

    root = ListNode{Int}([1, 2])
    root.next.next = root
    @test has_cycle(root) == true

    root = ListNode{Int}([3, 2, 0, -4])
    root.next.next.next.next = root.next
    @test has_cycle(root) == true
end
