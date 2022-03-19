@testset "1019.next-greater-node-in-linked-list.jl" begin
    @test next_larger_nodes(ListNode{Int}([1, 7, 5, 1, 9, 2, 5, 1])) ==
        [7, 9, 9, 9, 0, 5, 0, 0]
    @test next_larger_nodes(ListNode{Int}([2, 7, 4, 3, 5])) == [7, 0, 5, 5, 0]
    @test next_larger_nodes(ListNode{Int}([2, 1, 5])) == [5, 5, 0]
end
