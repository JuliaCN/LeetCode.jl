@testset "136.single-number.jl" begin
    @test single_number_136([4, 1, 2, 1, 2]) == 4
    @test single_number_136([2, 2, 1]) == 1
end
