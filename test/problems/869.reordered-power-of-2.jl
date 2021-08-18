@testset "869.reordered-power-of-2.jl" begin
    @test reordered_power_of2(1)
    @test !reordered_power_of2(10)
    @test !reordered_power_of2(24)
    @test reordered_power_of2(46)
    @test reordered_power_of2(16)
end
