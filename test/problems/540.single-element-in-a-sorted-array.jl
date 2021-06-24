@testset "540.single-element-in-a-sorted-array.jl" begin
    @test single_non_duplicate([1, 1, 2, 3, 3, 4, 4, 8, 8]) == 2
    @test single_non_duplicate([3, 3, 7, 7, 10, 11, 11]) == 10
    @test single_non_duplicate([3, 3, 7, 7, 10, 11, 11, 15, 15, 18, 18]) == 10
    @test single_non_duplicate([2, 3, 3, 4, 4, 8, 8]) == 2
    @test single_non_duplicate([1, 1, 2]) == 2
    @test single_non_duplicate([2]) == 2
end
