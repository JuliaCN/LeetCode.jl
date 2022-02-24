@testset "19.remove-nth-node-from-end-of-list.jl" begin
    @test remove_nth_from_end_by_double_pointers!(ListNode{Int}([1, 2, 3, 4, 5]), 2) ==
        ListNode{Int}([1, 2, 3, 5])
    @test isnothing(remove_nth_from_end_by_double_pointers!(ListNode{Int}([1]), 1))
    @test remove_nth_from_end_by_double_pointers!(ListNode{Int}([1, 2]), 2) ==
        ListNode{Int}([2])
end
