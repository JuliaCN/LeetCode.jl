@testset "507.perfect-number.jl" begin
    @test perfect_number(28)
    @test perfect_number(7) == false
end
