@testset "725.split-linked-list-in-parts.jl" begin
    @test split_list_to_parts(ListNode{Int}([1, 2, 3]), 5) ==
          [ListNode(1), ListNode(2), ListNode(3), nothing, nothing]
    @test split_list_to_parts(nothing, 3) == [nothing, nothing, nothing]
    @test split_list_to_parts(ListNode{Int}([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), 3) ==
          [ListNode{Int}([1, 2, 3, 4]), ListNode{Int}([5, 6, 7]), ListNode{Int}([8, 9, 10])]
end
