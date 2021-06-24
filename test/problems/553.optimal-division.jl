@testset "553.optimal-division.jl" begin
    @test optimal_division([1000, 100, 10, 2]) == "1000/(100/10/2)"
    @test optimal_division([1000, 100, 10, 2]) == "1000/(100/10/2)"
end
