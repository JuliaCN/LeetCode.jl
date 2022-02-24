@testset "217.contains-duplicate.jl" begin
    @test contains_duplicate([1, 2, 3, 1]) == true
    @test contains_duplicate([1, 2, 3, 4]) == false
    @test contains_duplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]) == true
end
