@testset "1551.minimum-operations-to-make-array-equal.jl" begin
    @test min_operations_1551(3) == 2
    @test min_operations_1551(6) == 9
    @test min_operations_1551(58) == 841
    @test min_operations_1551(79) == 1560
end
