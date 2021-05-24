@testset "160.intersection-of-two-linked-lists.jl" begin
    @test get_intersection_node(
        ListNode{Int}([4, 2, 8, 4, 5]), ListNode{Int}([5, 0, 1, 8, 4, 5])
    ) == ListNode{Int}([8, 4, 5])
    @test get_intersection_node(ListNode{Int}([0, 9, 1, 2, 4]), ListNode{Int}([3, 2, 4])) ==
          ListNode{Int}([2, 4])
    @test get_intersection_node(ListNode{Int}([2, 6, 4]), ListNode{Int}([1, 5])) == nothing
end
