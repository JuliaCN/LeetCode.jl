@testset "231.power-of-two.jl" begin
    @test !is_power_of_two(-1)
    @test !is_power_of_two(-5)
    n = 1
    for _ in 1:30
        @test is_power_of_two(n)
        @test !is_power_of_two(n + 13)
        n <<= 1
    end     
end