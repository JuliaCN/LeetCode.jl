@testset "1486.xor-operation-in-an-array.jl" begin
    @test xor_operation(5, 0) == 8
    @test xor_operation(4, 3) == 8
    @test xor_operation(1, 7) == 7
    @test xor_operation(10, 5) == 2
end