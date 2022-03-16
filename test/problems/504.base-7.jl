@testset "504.base-7.jl" begin
    @test convert_to_base7(100) == "202"
    @test convert_to_base7(-7) == "-10"
    @test convert_to_base7(0) == "0"
end
