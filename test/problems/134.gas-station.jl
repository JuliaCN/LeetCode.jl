@testset "134.gas-station.jl" begin
    @test can_complete_circuit([2, 3, 4], [3, 4, 3]) == -1
    @test can_complete_circuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2]) == 3
end
