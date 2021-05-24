@testset "24.swap-nodes-in-pairs.jl" begin
    @test swap_pairs(ListNode{Int}([1, 2, 3, 4])) == ListNode{Int}([2, 1, 4, 3])
    @test swap_pairs(ListNode{Int}()) == ListNode{Int}()
    @test swap_pairs(ListNode{Int}([1])) == ListNode{Int}([1])
end
