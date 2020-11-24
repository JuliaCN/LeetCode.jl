@testset "1658.minimum-operations-to-reduce-x-to-zero.jl" begin
    @test min_operations([1, 1, 14, 2, 3], 5) == 2
    @test min_operations([5, 6, 7, 8, 9], 4) == -1
    @test min_operations([3, 2, 20, 1, 1, 3], 10) == 5
    @test min_operations(
        [
            8828,
            9581,
            49,
            9818,
            9974,
            9869,
            9991,
            10000,
            10000,
            10000,
            9999,
            9993,
            9904,
            8819,
            1231,
            6309,
        ],
        134365,
    ) == 16
end
