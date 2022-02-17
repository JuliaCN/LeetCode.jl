@testset "203.remove-linked-list-elements.jl" begin
    @test remove_elements!(ListNode{Int}([1, 2, 6, 3, 4, 5, 6]), 6) ==
        ListNode{Int}([1, 2, 3, 4, 5])
    @test remove_elements!(nothing, 1) === nothing
    @test remove_elements!(ListNode{Int}([7, 7, 7, 7]), 7) === nothing
end
