@testset "775.global-and-local-inversions.jl" begin
    @test is_ideal_permutation([1,0,2]) == true
    @test is_ideal_permutation([1,2,0]) == false
end