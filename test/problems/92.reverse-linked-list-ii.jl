@testset "92.reverse-linked-list-ii.jl" begin
    @test reverse_between(ListNode{Int}([1, 2, 3, 4, 5]), 2, 4) == 
          ListNode{Int}([1, 4, 3, 2, 5])
    @test reverse_between(ListNode{Int}([1, 2, 3, 4, 5]), 1, 3) ==
          ListNode{Int}([3, 2, 1, 4, 5])
end
