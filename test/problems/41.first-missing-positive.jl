@testset "41.first-missing-positive.jl" begin
    @test first_missing_positive([1, 2, 0]) == 3
    @test first_missing_positive([3, 4, -1, 1]) == 2
    @test first_missing_positive([7, 8, 9, 11, 12]) == 1
end
