@testset "496.next-greater-element-i.jl" begin
    @test next_greater_element([4,1,2], [1,3,4,2]) == [-1,3,-1]
    @test next_greater_element([2, 4], [1, 2, 3, 4]) == [3, -1]
end
