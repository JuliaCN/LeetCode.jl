@testset "83.remove-duplicates-from-sorted-list.jl" begin
    @test delete_duplicates!(ListNode{Int}([1, 1, 2])) == ListNode{Int}([1, 2])
    @test delete_duplicates!(ListNode{Int}([1, 1, 2, 3, 3])) == ListNode{Int}([1, 2, 3])
    @test delete_duplicates!(ListNode{Int}([1, 1, 1])) == ListNode(1)
end
