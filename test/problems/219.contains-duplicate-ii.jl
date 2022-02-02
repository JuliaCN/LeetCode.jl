@testset "219.contains-duplicate-ii.jl" begin
    @test contains_nearby_duplicate([1, 2, 3, 1], 3) == true
    @test contains_nearby_duplicate([1, 0, 1, 1], 1) == true
    @test contains_nearby_duplicate([1, 2, 3, 1, 2, 3], 2) == false
    @test contains_nearby_duplicate([1, 1, 3, 2], 0) == false
end
