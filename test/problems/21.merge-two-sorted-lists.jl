@testset "21.merge-two-sorted-lists.jl" begin
    list1 = ListNode{Int}([1, 2, 4])
    list2 = ListNode{Int}([1, 3, 4])
    expected = ListNode{Int}([1, 1, 2, 3, 4, 4])
    @test merge_two_lists(list1, list2) == expected
    @test merge_two_lists(nothing, ListNode(0)) == ListNode(0)
    @test merge_two_lists(nothing, nothing) === nothing
end
