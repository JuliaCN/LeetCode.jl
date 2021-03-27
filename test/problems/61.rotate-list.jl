@testset "61.rotate-list.jl" begin
    @test rotate_right(ListNode{Int}([1, 2, 3, 4, 5]), 2) == ListNode{Int}([4, 5, 1, 2, 3])
    @test rotate_right(ListNode{Int}([0, 1, 2]), 4) == ListNode{Int}([2, 0, 1])
end
