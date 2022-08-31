@testset "1037.valid-boomerang.jl" begin
    @test is_boomerang([[1, 1], [2, 3], [3, 2]])
    @test !is_boomerang([[1, 1], [2, 2], [3, 3]])
end
