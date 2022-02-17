@testset "206.reverse-linked-list.jl" begin
    @test reverse_list(ListNode{Int}([1, 2, 3, 4, 5])) == ListNode{Int}([5, 4, 3, 2, 1])
    @test reverse_list(ListNode{Int}([1, 2])) == ListNode{Int}([2, 1])
    @test reverse_list(nothing) === nothing
end
