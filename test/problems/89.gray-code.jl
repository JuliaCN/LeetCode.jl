@testset "89.gray-code.jl" begin
    @test gray_code(2) == [0,1,3,2]
    @test gray_code(0) == [0]
end