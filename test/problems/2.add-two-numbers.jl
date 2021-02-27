@testset "2.add two numbers.jl" begin
    a = ListNode{Int}([2, 4, 3])
    b = ListNode{Int}([5, 6, 4])
    expected = ListNode{Int}([7, 0, 8])
    @test expected == add_two_numbers(a, b)
    @test add_two_numbers(ListNode{Int}([0]), ListNode{Int}([0])) == ListNode{Int}([0])
    @test add_two_numbers(
        ListNode{Int}([9, 9, 9, 9, 9, 9, 9]), ListNode{Int}([9, 9, 9, 9])
    ) == ListNode{Int}([8, 9, 9, 9, 0, 0, 0, 1])
end
