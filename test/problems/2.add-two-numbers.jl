@testset "add two numbers" begin
    a = ListNode{Int}([2, 4, 3])
    b = ListNode{Int}([5, 6, 4])
    expected = ListNode{Int}([7, 0, 8])
    @test expected == add_two_numbers(a, b)
end
