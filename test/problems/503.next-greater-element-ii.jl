@testset "503.next-greater-element-ii.jl" begin
    @test next_greater_elements([
        2, 25, 19, 17, 9, 18, 12, 27, 25, 1, 12, 17, 9, 21, 18, 24, 16, 19, 8, 21
    ]) == [25, 27, 27, 18, 18, 27, 27, -1, 27, 12, 17, 21, 21, 24, 24, 25, 19, 21, 21, 25]
    @test next_greater_elements([1, 2, 1]) == [2, -1, 2]
end
