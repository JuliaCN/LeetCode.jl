@testset "169.majority-element.jl" begin
    @test majority_element([3, 2, 3]) == 3
    @test majority_element([2, 2, 1, 1, 1, 2, 2]) == 2
end
