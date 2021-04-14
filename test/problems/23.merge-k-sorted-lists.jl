@testset "2.add-two-numbers.jl" begin
    @test merge_k_lists([ListNode{Int}([1, 4, 5]), ListNode{Int}([1, 3, 4]),
                         ListNode{Int}([2, 6])]) == ListNode{Int}([1, 1, 2, 3, 4, 4, 5, 6])
    @test merge_k_lists(ListNode{Int}[]) === nothing
    @test merge_k_lists([nothing]) === nothing 
end